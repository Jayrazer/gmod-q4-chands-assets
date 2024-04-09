local function Quake4_SettingsPanel(Panel)
	Panel:AddControl("Label", {Text = "Quake 4 SWEPs Settings"})
	Panel:AddControl("CheckBox", {Label = "Enable c_models", Command = "quake4_sv_cmodels"})
	Panel:AddControl("CheckBox", {Label = "Auto Reload", Command = "quake4_autoreload"})
	Panel:AddControl("CheckBox", {Label = "Smoke Effect", Command = "quake4_smokeeffect"})
	Panel:AddControl("CheckBox", {Label = "Strip inferior weapon on upgrade (buggy)", Command = "quake4_strip_on_upgrade"})
	Panel:AddControl("Slider", {Label = "Arm Skin", Command = "quake4_armtype", Type = "Integer", Min = 0, Max = 1})
	Panel:AddControl("Label", {Text = "0 - Marine \n1 - Strogg"})
	Panel:AddControl("Slider", {Label = "Crosshair", Command = "quake4_crosshair", Type = "Integer", Min = 0, Max = 2})
	Panel:AddControl("Label", {Text = "0 - HL2 \n1 - Dynamic \n2 - Static"})
	Panel:AddControl("Label", {Text = ""})
end

local function Quake4_PopulateToolMenu()
	spawnmenu.AddToolMenuOption("Utilities", "Quake", "Quake 4 SWEPs", "Quake 4", "", "", Quake4_SettingsPanel)
end

hook.Add("PopulateToolMenu", "Quake4_PopulateToolMenu", Quake4_PopulateToolMenu)