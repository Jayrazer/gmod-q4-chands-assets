include("weapons/weapon_quake4_base/ai_translations.lua")

if SERVER then

	AddCSLuaFile("shared.lua")
	SWEP.Weight				= 5
	SWEP.AutoSwitchTo		= false
	SWEP.AutoSwitchFrom		= false
	CreateClientConVar( "quake4_armtype", 0, true, false, "0 = Human, 1 = Strogg" )
	
	util.AddNetworkString("D3HitCheck")

else

	SWEP.DrawAmmo			= true
	SWEP.DrawCrosshair		= false
	SWEP.ViewModelFOV		= 90
	SWEP.ViewModelFlip		= false
	SWEP.BobScale			= 0
	SWEP.SwayBounds			= 3
	
	SWEP.WepSelectIconY		= 20
	SWEP.WepSelectIconX		= 10
	SWEP.WepSelectIconWide	= 20
	
	CreateConVar("quake4_strip_on_upgrade", 0)
	CreateClientConVar("quake4_crosshair", 1)
	CreateClientConVar("quake4_smokeeffect", 1)
	CreateClientConVar("quake4_autoreload", 1, true, true)	
	
	surface.CreateFont("doom3ammodisp", {
		font = "Bolt Regular",
		size = 32,
		weight = 0,
		blursize = 0,
		scanlines = 0,
		antialias = true,
		underline = false,
		italic = false,
		strikeout = false,
		symbol = false,
		rotary = false,
		shadow = false,
		additive = false,
		outline = false
	})
	
end

local cvar_cmodelsq4 = CreateConVar("quake4_sv_cmodels", 0, {FCVAR_NOTIFY, FCVAR_REPLICATED, FCVAR_ARCHIVE}, "Enable c_ models for Quake 4 weapons")

SWEP.Author					= "Hidden & Matsilagi"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions			= ""
SWEP.Category				= "Quake 4"
SWEP.Spawnable				= false

SWEP.Primary.Recoil			= 1
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0
SWEP.Primary.Delay			= 0
SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "none"

SWEP.Secondary.Ammo			= "none"
SWEP.ReloadAmmo				= 0

SWEP.IdleAmmoCheck			= false

SWEP.SmokeForward			= 30
SWEP.SmokeRight				= 6
SWEP.SmokeUp				= -18
SWEP.SmokeSize				= 20
SWEP.MuzzleName				= "quake4_muzzlelight"

local quake4_STATE_DEPLOY = 0
local quake4_STATE_HOLSTER = 1
local quake4_STATE_RELOAD = 2
local quake4_STATE_IDLE = 3
local quake4_STATE_ATTACK = 4
local QUAKE4_STATE_CHARGE = 5

function SWEP:SetIronsights(b)

        self.Weapon:SetNetworkedBool("Ironsights", b)
end

function SWEP:GetIronsights()

        return self.Weapon:GetNWBool("Ironsights")
end

function SWEP:SetupDataTables()
	self:NetworkVar("Bool", 0, "CannotReload")
	self:NetworkVar("Bool", 1, "Attack")
	self:NetworkVar("Int", 0, "State")
	self:NetworkVar("Float", 0, "IdleDelay")
	self:NetworkVar("Float", 1, "CannotHolster")
	self:NetworkVar("Float", 2, "ReloadTimer")
	self:NetworkVar("Float", 3, "ChargeTime")
	self:NetworkVar("Float", 4, "AttackDelay")
end

function SWEP:Initialize()
	self:SetHoldType(self.HoldType)
	self:AmmoDisplay()
	hook.Add("EntityTakeDamage", self, self.HitCheck)
	self:ApplyViewModel()
end

function SWEP:ApplyViewModel()
	if cvar_cmodelsq4:GetBool() then
		local mdl = string.gsub(self.ViewModel, "v_", "c_")
		if self.ViewModel != mdl and util.IsValidModel(mdl) then
			self.ViewModel = mdl
		end
		self.UseHands = true
	else
		local mdl = string.gsub(self.ViewModel, "c_", "v_")
		if self.ViewModel != mdl and util.IsValidModel(mdl) then
			self.ViewModel = mdl
		end
		self.UseHands = false
	end
end

function SWEP:AmmoDisplay()
end

function SWEP:Deploy()
	self:SetNextPrimaryFire(CurTime() +.5)
	self:SendWeaponAnim(ACT_VM_DRAW)
	self:PlayDeploySound()
	self:Idle()
	self:SpecialDeploy()
	return true
end

function SWEP:SpecialDeploy()
end

function SWEP:PlayDeploySound()
	self:SetState(quake4_STATE_DEPLOY)
	self:SetCannotReload(nil)
	local owner = self:GetOwner()
	if (owner && owner:IsValid() && owner:IsPlayer() && owner:Alive()) then
		self:EmitSound(self.DeploySound)
	end
end

function SWEP:WeaponSound(snd, lvl)
	lvl = lvl or 100
	local chan = CHAN_AUTO
	if self.Owner:IsNPC() then
		chan = CHAN_WEAPON
	end
	self:EmitSound(snd, lvl, 100, 1, chan)
end

function SWEP:DoSound(snd)
	if game.SinglePlayer() and SERVER or !game.SinglePlayer() then
		self:EmitSound(snd, 75, 100, 1, CHAN_AUTO)
	end
end

function SWEP:DoomRecoil(num)
	if !IsFirstTimePredicted() and SERVER then return end
	if !self.Owner:IsNPC() then
		if num < 1 then
			local rand = math.Rand(-2,-1)*num
			self.Owner:SetViewPunchAngles(Angle(rand, 0, 0))
			self.Owner:ViewPunch(Angle(-rand, 0, 0))
		else
			self.Owner:ViewPunch(Angle(math.Rand(-1,-.5) * num, 0, 0))
		end
	end
end

function SWEP:SpecialHolster()
end

function SWEP:OnRemove()
	RunConsoleCommand( "pp_mat_overlay", "" )
	if IsValid(self.Owner) then
		--print("fixing submaterials")
		self.Owner:GetViewModel():SetSubMaterial(0, nil)
		self.Owner:GetViewModel():SetSubMaterial(1, nil)
		self.Owner:GetViewModel():SetSubMaterial(2, nil)
		self.Owner:GetViewModel():SetSubMaterial(3, nil)
	end
end

function SWEP:Holster(wep)
	if self == wep then
		return
	end
	
	if self:GetState() == quake4_STATE_HOLSTER or !IsValid(wep) then
		self:SetState(quake4_STATE_HOLSTER)
		self:OnRemove()
		if game.SinglePlayer then self:CallOnClient("OnRemove") end
		self:StopSound(self.ReloadSound)
		return true
	end
	
	if self:GetCannotHolster() > 0 then return false end

	if IsValid(wep) then
		self:SpecialHolster()
		self:SetCannotReload(true)
		self:SetNextPrimaryFire(CurTime() + .5)
		self:SendWeaponAnim(ACT_VM_HOLSTER)
		self.NewWeapon = wep:GetClass()
		if self:GetState() == quake4_STATE_HOLSTER then return end
		timer.Simple(.2, function()
			if IsValid(self) and IsValid(self.Owner) and self.Owner:Alive() then
				self:SetState(quake4_STATE_HOLSTER)
				if SERVER then self.Owner:SelectWeapon(self.NewWeapon) end
			end
		end)
	end
	
	RunConsoleCommand( "pp_mat_overlay", "" )

	return false
end

function SWEP:SecondaryAttack()
end

function SWEP:LowAmmoWarning(ammo)
	if SERVER then return end
	if self:Clip1() <= ammo then
		if !self.LowAmmo then
			self.LowAmmo = true
			self:EmitSound("weapons/doom3/machinegun/lowammo3.wav")
		end
	else
		self.LowAmmo = nil
	end
end

function SWEP:CanPrimaryAttack()
	if !IsValid(self.Owner) then return false end

	if (self:Clip1() <= 0) then
		self:DryFire()
		self:SetNextPrimaryFire(CurTime() + 0.3)
		//self:Reload()
		return false
	end
	
	self:SetState(quake4_STATE_ATTACK)
	return true
end

function SWEP:Reload()
	self:SetIronsights(0)
	if SERVER then
		if ConVarExists("fov_desired") and IsValid(self.Owner) then
			self.Owner:SetFOV(GetConVar("fov_desired"):GetInt(), 0.05)
		end
	end
	if CLIENT then
		RunConsoleCommand( "pp_mat_overlay", "" )
	end

	if self.Owner:IsNPC() then
		self:DefaultReload(ACT_VM_RELOAD)
		self:SetClip1(self:Clip1() + self.Primary.ClipSize)
		return
	end
	if self:Ammo1() <= self.ReloadAmmo or self:Clip1() >= self.Primary.ClipSize then return end
	if self:GetState() == quake4_STATE_RELOAD or self:GetCannotReload() or self:GetAttack() or self:GetCannotHolster() > 0 then return end
	self:SetState(quake4_STATE_RELOAD)
	self:SpecialReload()
	self:DefaultReload(ACT_VM_RELOAD)
	self:EmitSound(self.ReloadSound)
	self:Idle()
end

function SWEP:SpecialReload()
end

function SWEP:Think()
	self:SpecialThink()
	if game.SinglePlayer() and CLIENT then return end
	
	if IsValid(self.Owner) and self.Owner:Alive() and self.Owner:GetInfoNum("quake4_autoreload", 1) >= 1 and self:Clip1() <= 0 and self:Ammo1() > 0 and self:GetNextPrimaryFire() <= CurTime() and self.Primary.ClipSize > 0 then
		self:Reload()
	end
	
	local idle = self:GetIdleDelay()
	if idle > 0 and CurTime() > idle then
		self:SetIdleDelay(0)
		self:SetState(quake4_STATE_IDLE)
		if self.IdleAmmoCheck then
			if IsValid(self) and self:GetState() == quake4_STATE_IDLE then
				local getseq = self:GetSequence()
				local getact = self:GetSequenceActivity(getseq)
				if self:Clip1() > 0 or getact == ACT_VM_RELOAD then
					self:SendWeaponAnim(ACT_VM_IDLE)
				else
					self:SendWeaponAnim(ACT_VM_IDLE_EMPTY)
				end
			end
		else
			if self:GetState() == quake4_STATE_IDLE then
				self:SendWeaponAnim(ACT_VM_IDLE)
			end
		end
	end
	local cantholster = self:GetCannotHolster()
	if cantholster > 0 and CurTime() > cantholster then
		self:SetCannotHolster(0)
	end
end

function SWEP:Idle(time)
	time = time or self:SequenceDuration() -.2
	self:SetIdleDelay(CurTime() +time)
end

function SWEP:SpecialThink()
end

function SWEP:HitCheck(victim, dmginfo)
	local attacker = dmginfo:GetAttacker()
	if attacker and IsValid(attacker) and attacker == self:GetOwner() and IsValid(self) and attacker:GetActiveWeapon() == self and self:GetOwner():IsPlayer() and victim:IsValid() and (victim:IsPlayer() or victim:IsNPC()) and attacker != victim then
		if victim:IsPlayer() and !victim:Alive() then return end
		net.Start("D3HitCheck")
		net.Send(self.Owner)
	end
end

function SWEP:ShootBullet(dmg, recoil, numbul, cone)
	numbul 	= numbul 	or 1
	cone 	= cone 		or 0.01

	local bullet = {}
	bullet.Num 		= numbul
	bullet.Src 		= self.Owner:GetShootPos()
	bullet.Dir 		= self.Owner:GetAimVector()
	bullet.Spread 	= Vector(cone, cone, 0)
	bullet.Tracer	= 3
	bullet.Force	= 4
	bullet.Damage	= dmg
	
	self.Owner:FireBullets(bullet)
	self.Owner:SetAnimation(PLAYER_ATTACK1)
end

function SWEP:DrawWeaponSelection(x, y, wide, tall, alpha)
	surface.SetDrawColor(255, 235, 20, alpha)
	surface.SetTexture(self.WepSelectIcon)
	local texw, texh = surface.GetTextureSize(self.WepSelectIcon)
	
	wide = (texw*wide)/160
	tall = tall/1.75
	x = x + wide/8
	y = y + tall/3
	
	if texw == 64 then
		x = x + wide*.6
	end

	surface.DrawTexturedRect(x, y, wide, tall)
end

function SWEP:DryFire()
	self:EmitSound("weapons/doom3/shotgun/dryfire_0"..math.random(1,3)..".wav")
end

function SWEP:Smoke()
	if IsFirstTimePredicted() then
		local fx = EffectData()
		fx:SetEntity(self)
		fx:SetOrigin(self.Owner:GetShootPos() +self.Owner:GetForward() *self.SmokeForward +self.Owner:GetRight() *self.SmokeRight +self.Owner:GetUp() *self.SmokeUp)
		fx:SetNormal(self.Owner:GetAimVector())
		fx:SetAttachment("1")
		fx:SetScale(self.SmokeSize)
		util.Effect("quake4_smoke", fx)
	end
end

function SWEP:Muzzleflash()
	if IsFirstTimePredicted() then
		local fx = EffectData()
		fx:SetEntity(self)
		fx:SetOrigin(self.Owner:GetShootPos())
		fx:SetAttachment(1)
		util.Effect(self.MuzzleName, fx)
	end
end

hook.Add("InitPostEntity", "q4_chands_patch", function()

	local blaster = weapons.GetStored("weapon_q4_blaster")
	blaster.Base = "weapon_quake4_cbase"
	
	local darkmatter = weapons.GetStored("weapon_q4_darkmatter")
	darkmatter.Base = "weapon_quake4_cbase"
	
	local gauntlet = weapons.GetStored("weapon_q4_gauntlet")
	gauntlet.Base = "weapon_quake4_cbase"
	
	local nade = weapons.GetStored("weapon_q4_grenadelauncher")
	nade.Base = "weapon_quake4_cbase"
	
	local hyper = weapons.GetStored("weapon_q4_hyperblaster")
	hyper.Base = "weapon_quake4_cbase"
	
	local hyperbounce = weapons.GetStored("weapon_q4_hyperblaster_bounce")
	hyperbounce.Base = "weapon_quake4_cbase"
	
	local lightning = weapons.GetStored("weapon_q4_lightning")
	lightning.Base = "weapon_quake4_cbase"
	
	local mg = weapons.GetStored("weapon_q4_machinegun")
	mg.Base = "weapon_quake4_cbase"
	
	local mgmag = weapons.GetStored("weapon_q4_machinegun_mag")
	mgmag.Base = "weapon_quake4_cbase"
	
	local nail = weapons.GetStored("weapon_q4_nailgun")
	nail.Base = "weapon_quake4_cbase"
	
	local nail2mag = weapons.GetStored("weapon_q4_nailgun_2mag")
	nail2mag.Base = "weapon_quake4_cbase"
	
	local nailtrack = weapons.GetStored("weapon_q4_nailgun_track")
	nailtrack.Base = "weapon_quake4_cbase"
	
	local napalm = weapons.GetStored("weapon_q4_napalmlauncher")
	napalm.Base = "weapon_quake4_cbase"
	
	local rail = weapons.GetStored("weapon_q4_railgun")
	rail.Base = "weapon_quake4_cbase"
	
	local railpen = weapons.GetStored("weapon_q4_railgun_pen")
	railpen.Base = "weapon_quake4_cbase"
	
	local roxxet = weapons.GetStored("weapon_q4_rocketlauncher")
	roxxet.Base = "weapon_quake4_cbase"
	
	local roxxetmp = weapons.GetStored("weapon_q4_rocketlauncher_mp")
	roxxetmp.Base = "weapon_quake4_cbase"
	
	local shotgun = weapons.GetStored("weapon_q4_shotgun")
	shotgun.Base = "weapon_quake4_cbase"
	
	local shotgunmag = weapons.GetStored("weapon_q4_shotgun_clip")
	shotgunmag.Base = "weapon_quake4_cbase"
	
end)

if CLIENT then

local mat_crosshaircenter = surface.GetTextureID("doom3hud/crosshaircenter")
function SWEP:DrawHUD()
	if ConVarExists("cl_drawhud") then
		if GetConVar("cl_drawhud"):GetInt() < 1 then return end
	end
	if cvars.Number("quake4_crosshair") == 0 then
		self.DrawCrosshair		= true
	else
		self.DrawCrosshair		= false
	end

	local x, y
		
	if self.Owner == LocalPlayer() and self.Owner:ShouldDrawLocalPlayer() then
		local tr = util.GetPlayerTrace(self.Owner)
		local trace = util.TraceLine(tr)
		
		local coords = trace.HitPos:ToScreen()
		x, y = coords.x, coords.y
	else
		x, y = ScrW() / 2, ScrH() / 2
	end
	
	if cvars.Number("quake4_crosshair") == 1 then
		local col1 = Color(255, 255, 255, 200)
		if self.cHitTime and self.cHitTime > CurTime() then
			col1 = Color(255, 0, 0, 150)
		end
		
		if self:GetClass() == "weapon_q4_machinegun" or self:GetClass() == "weapon_q4_machinegun_mag" then
			mat_crosshaircenter = surface.GetTextureID("quake4hud/crosshair_smg")
		elseif self:GetClass() == "weapon_q4_blaster" or self:GetClass() == "weapon_q4_hyperblaster" or self:GetClass() == "weapon_q4_hyperblaster_bounce" then
			mat_crosshaircenter = surface.GetTextureID("quake4hud/crosshair_blaster")
		elseif self:GetClass() == "weapon_q4_grenadelauncher" or self:GetClass() == "weapon_q4_darkmatter" then
			mat_crosshaircenter = surface.GetTextureID("quake4hud/crosshair_grenadelauncher")
		elseif self:GetClass() == "weapon_q4_nailgun" or self:GetClass() == "weapon_q4_nailgun_2mag" or self:GetClass() == "weapon_q4_nailgun_track" then
			mat_crosshaircenter = surface.GetTextureID("quake4hud/crosshair_nailgun")
		elseif self:GetClass() == "weapon_q4_shotgun" or self:GetClass() == "weapon_q4_shotgun_clip" or self:GetClass() == "weapon_q4_gauntlet" then
			mat_crosshaircenter = surface.GetTextureID("quake4hud/crosshair_shotgun")
		elseif self:GetClass() == "weapon_q4_rocketlauncher" or self:GetClass() == "weapon_q4_rocketlauncher_mp" then
			mat_crosshaircenter = surface.GetTextureID("quake4hud/crosshair_rocketlauncher")
		elseif self:GetClass() == "weapon_q4_lightning" then
			mat_crosshaircenter = surface.GetTextureID("quake4hud/crosshair_lightninggun")
		elseif self:GetClass() == "weapon_q4_railgun" or self:GetClass() == "weapon_q4_railgun_pen" then
			mat_crosshaircenter = surface.GetTextureID("quake4hud/crosshair_railgun")
		elseif self:GetClass() == "weapon_q4_napalmlauncher" then
			mat_crosshaircenter = surface.GetTextureID("quake4hud/crosshair_napalm")
		else
			mat_crosshaircenter = surface.GetTextureID("doom3hud/crosshaircenter")
		end
		surface.SetTexture(mat_crosshaircenter)
		surface.SetDrawColor(col1)
		if self:GetClass() == "weapon_q4_grenadelauncher" or self:GetClass() == "weapon_q4_darkmatter" then
			surface.DrawTexturedRect(x - 64, y - 31, 128, 64)
		else
			surface.DrawTexturedRect(x - 32, y - 32, 64, 64)
		end
		
	elseif cvars.Number("quake4_crosshair") == 2 then	
		surface.SetDrawColor( 255, 255, 255, 255 )
		local gap = 10
		local length = gap + 5
		surface.DrawLine( x - length, y, x - gap, y )
		surface.DrawLine( x + length, y, x + gap, y )
		surface.DrawLine( x, y - length, x, y - gap )
		surface.DrawLine( x, y + length, x, y + gap )
	end
end

net.Receive("D3HitCheck", function()
	LocalPlayer():GetActiveWeapon().cHitTime = CurTime() + .15
end)

local SwayOldAng = Angle()
local t = 1
local BobTime = 0
local BobTimeLast = RealTime()

function SWEP:CalcViewModelView(vm, oldpos, oldang, pos, ang)
	if !IsValid(vm) or !IsValid(self.Owner) then return end
	local reg = debug.getregistry()
	local GetVelocity = reg.Entity.GetVelocity
	local Length = reg.Vector.Length2D
	local vel = Length(GetVelocity(self.Owner))
	
	local bob
	local RT = RealTime()
	if game.SinglePlayer() then RT = CurTime() end
	
	local cl_bobmodel_side = 0
	local cl_bobmodel_up = .04
	local cl_viewmodel_scale = 4

	local xyspeed = math.Clamp(vel, 0, 800)

	BobTime = BobTime + (RT - BobTimeLast) * (math.min(xyspeed, 230)/40)
	BobTimeLast = RT
	if (!game.SinglePlayer() and IsFirstTimePredicted()) or game.SinglePlayer() then
		if self.Owner:IsOnGround() then
			t = Lerp(FrameTime()*16, t, 1)
		else
			t = math.max(Lerp(FrameTime()*6, t, 0.01), 0)
		end
	end
	
	local swayangles = SwayOldAng
	if !game.SinglePlayer() and IsFirstTimePredicted() or game.SinglePlayer() then
		swayangles = LerpAngle(FrameTime()*8, swayangles, oldang)
	end
	SwayOldAng = swayangles	
	local sway = oldang - swayangles
	local swayscale = self.SwayBounds*.1
	
	oldang:RotateAroundAxis(oldang:Up() * swayscale, -sway[2])
	oldang:RotateAroundAxis(oldang:Right() * swayscale, sway[1])
	
	local bspeed = xyspeed * 0.01
	
	local idle = math.sin(CurTime()) * math.Clamp(vel*.01, .25, 8)	
	
	bob = bspeed * cl_bobmodel_side * cl_viewmodel_scale * math.sin(BobTime) * t
	oldang:RotateAroundAxis(oldang:Up(), bob )
	oldang:RotateAroundAxis(oldang:Forward(), bob/3 )
	bob = bspeed * cl_bobmodel_up * cl_viewmodel_scale * math.cos(BobTime * 3.2) * t
	oldang:RotateAroundAxis(oldang:Right(), bob )
	
	-- idle viewmodel movement
	local PosMod, AngMod = Vector(0,0,0), Angle(0,0,0)
	CT = UnPredictedCurTime()/2
	cos1, sin1 = math.cos(CT), math.sin(CT)
	tan = math.atan(cos1 * sin1, cos1 * sin1)
			
	AngMod.x = AngMod.x + tan * 1
	AngMod.y = AngMod.y + tan * 1.15
	AngMod.z = AngMod.z + tan
			
	PosMod.y = PosMod.y + tan * 0.2 
	

	return oldpos+PosMod, oldang+AngMod
end






SWEP.vRenderOrder = nil
	function SWEP:ViewModelDrawn()
		
		local vm = self.Owner:GetViewModel()
		if !IsValid(vm) then return end
		
		if (!self.VElements) then return end
		
		self:UpdateBonePositions(vm)

		if (!self.vRenderOrder) then
			
			// we build a render order because sprites need to be drawn after models
			self.vRenderOrder = {}

			for k, v in pairs( self.VElements ) do
				if (v.type == "Model") then
					table.insert(self.vRenderOrder, 1, k)
				elseif (v.type == "Sprite" or v.type == "Quad") then
					table.insert(self.vRenderOrder, k)
				end
			end
			
		end

		for k, name in ipairs( self.vRenderOrder ) do
		
			local v = self.VElements[name]
			if (!v) then self.vRenderOrder = nil break end
			if (v.hide) then continue end
			
			local model = v.modelEnt
			local sprite = v.spriteMaterial
			
			if (!v.bone) then continue end
			
			local pos, ang = self:GetBoneOrientation( self.VElements, v, vm )
			
			if (!pos) then continue end
			
			if (v.type == "Model" and IsValid(model)) then

				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)

				model:SetAngles(ang)
				//model:SetModelScale(v.size)
				local matrix = Matrix()
				matrix:Scale(v.size)
				model:EnableMatrix( "RenderMultiply", matrix )
				
				if (v.material == "") then
					model:SetMaterial("")
				elseif (model:GetMaterial() != v.material) then
					model:SetMaterial( v.material )
				end
				
				if (v.skin and v.skin != model:GetSkin()) then
					model:SetSkin(v.skin)
				end
				
				if (v.bodygroup) then
					for k, v in pairs( v.bodygroup ) do
						if (model:GetBodygroup(k) != v) then
							model:SetBodygroup(k, v)
						end
					end
				end
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(true)
				end
				
				render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
				render.SetBlend(v.color.a/255)
				model:DrawModel()
				render.SetBlend(1)
				render.SetColorModulation(1, 1, 1)
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(false)
				end
				
			elseif (v.type == "Sprite" and sprite) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				render.SetMaterial(sprite)
				render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
				
			elseif (v.type == "Quad" and v.draw_func) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
				cam.Start3D2D(drawpos, ang, v.size)
					v.draw_func( self )
				cam.End3D2D()

			end
			
		end
		
	end

	function SWEP:GetBoneOrientation( basetab, tab, ent, bone_override )
		
		local bone, pos, ang
		if (tab.rel and tab.rel != "") then
			
			local v = basetab[tab.rel]
			
			if (!v) then return end
			
			// Technically, if there exists an element with the same name as a bone
			// you can get in an infinite loop. Let's just hope nobody's that stupid.
			pos, ang = self:GetBoneOrientation( basetab, v, ent )
			
			if (!pos) then return end
			
			pos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
			ang:RotateAroundAxis(ang:Up(), v.angle.y)
			ang:RotateAroundAxis(ang:Right(), v.angle.p)
			ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
		else
		
			bone = ent:LookupBone(bone_override or tab.bone)

			if (!bone) then return end
			
			pos, ang = Vector(0,0,0), Angle(0,0,0)
			local m = ent:GetBoneMatrix(bone)
			if (m) then
				pos, ang = m:GetTranslation(), m:GetAngles()
			end
			
			if (IsValid(self.Owner) and self.Owner:IsPlayer() and 
				ent == self.Owner:GetViewModel() and self.ViewModelFlip) then
				ang.r = -ang.r // Fixes mirrored models
			end
		
		end
		
		return pos, ang
	end

	function SWEP:UpdateBonePositions(vm)
	end
	 
	function SWEP:ResetBonePositions(vm)
		
		if (!vm:GetBoneCount()) then return end
		for i=0, vm:GetBoneCount() do
			vm:ManipulateBoneScale( i, Vector(1, 1, 1) )
			vm:ManipulateBoneAngles( i, Angle(0, 0, 0) )
			vm:ManipulateBonePosition( i, Vector(0, 0, 0) )
		end
		
	end

end