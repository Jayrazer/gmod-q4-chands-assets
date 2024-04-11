// Created by Crowbar 0.74

$modelname "weapons\quake4\v_q4_shotgun.mdl"

$bodygroup "gun"
{
	studio "md5mesh.002.smd"
}
$bodygroup "arms"
{
	studio "md5mesh.smd"
}
$bodygroup "clip"
{
	blank
	studio "md5mesh.001.smd"
}
$bodygroup "gui"
{
	studio "md5mesh.004.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 2.287 -9.334 -1.799

$cdmaterials "models\weapons\quake4\shotgun\"
$cdmaterials "models\weapons\quake4\"

// This list shows the VMT file names used in the SMD files.
// "sgv2_lo.vmt"
// "inview_arms.vmt"
// "clip.vmt"
// "shotgungui.vmt"

$attachment "muzzle" "flash" 0 0 0 rotate 0 0 0
$attachment "2" "eject" 0 0 0 rotate 0 0 0

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -7.343 -8.806 -12.28 26.012 13.379 8.683

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "rt_elbo" -6.56951 -4.092292 -1.459362 5.787352 1.629225 2.903208
// $hbox 0 "rt_wrst" -2.698441 -2.889205 -1.830774 15.071412 2.814073 1.560435
// $hbox 0 "body" -0.827629 -2.917253 -6.905157 15.071395 2.004131 12.775585
// $hbox 0 "pump" -0.899682 -0.589154 -2.626514 0.884141 1.752846 2.62985
// $hbox 0 "lft_shldr" 0 -2.561887 -3.029123 9.567403 2.157461 1.513179
// $hbox 0 "lft_elbo" -0.816004 -1.629225 -2.09507 7.298657 2.027451 1.091281
// $hbox 0 "lft_wrst" -2.298517 -2.333802 -1.830773 2.585299 2.754224 1.560433
// $hbox 0 "lft_mddl_1" -0.713496 -0.505908 -0.668789 0.936551 0.548913 0.629605
// $hbox 0 "lft_ndx_1" -1.355837 -0.654523 -0.541729 0.976812 0.452225 0.550788
// $hbox 0 "lft_pnky_1" -1.040757 -0.601692 -0.718243 0.481915 0.578311 0.625727
// $hbox 0 "lft_thmb_1" -1.094927 -0.644272 -0.653334 1.191972 1.305839 1.770124
// $hbox 0 "rt_ndx_1" -1.35589 -0.708296 -0.756331 1.36083 0.405718 0.541569
// $hbox 0 "rt_ring_1" -0.925053 -0.389879 -0.973353 0.972666 0.82751 1.252126
// $hbox 0 "rt_thmb_1" -1.094887 -0.644482 -1.770199 1.191954 1.305762 0.653324

$definebone "origin" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "rt_elbo" "origin" -0.936915 -10.674068 0.398269 -34.784497 108.037439 -12.12837 0 0 0 0 0 0
$definebone "rt_wrst" "rt_elbo" -5.630835 0.000002 -0.000003 36.5413 -13.58798 91.931136 0 0 0 0 0 0
$definebone "body" "rt_wrst" 15.071412 2.814073 -0.495041 0.000002 -0.000003 -0.000002 0 0 0 0 0 0
$definebone "eject" "body" -0.694088 0.761815 -0.865999 0 146.193779 89.999982 0 0 0 0 0 0
$definebone "flash" "body" 0 1.130372 11.898879 -89.916217 -89.933251 -89.981786 0 0 0 0 0 0
$definebone "pump" "body" 0 -0.898175 6.693087 0.000002 -0.000003 -0.000002 0 0 0 0 0 0
$definebone "lft_shldr" "origin" -0.41759 4.759695 4.801268 36.560821 95.018156 -161.810938 0 0 0 0 0 0
$definebone "lft_elbo" "lft_shldr" 7.39161 0.000003 0 5.320488 18.02462 -15.905767 0 0 0 0 0 0
$definebone "lft_wrst" "body" 15.071395 -2.814075 0.495044 0.000002 -0.000003 -0.000002 0 0 0 0 0 0
$definebone "lft_mddl_1" "lft_wrst" 2.140142 -2.1065 0.416214 -2.33469 -77.213342 -175.244581 0 0 0 0 0 0
$definebone "lft_mddl_2" "lft_mddl_1" 0.751455 0 -0.000002 -2.974622 33.44343 4.492903 0 0 0 0 0 0
$definebone "lft_mddl_3" "lft_mddl_2" 0.622728 0 0.000001 0.000004 12.078296 -0.00006 0 0 0 0 0 0
$definebone "lft_ndx_1" "lft_wrst" 1.871826 -2.001557 1.081956 -10.50541 -71.112023 -167.422389 0 0 0 0 0 0
$definebone "lft_ndx_2" "lft_ndx_1" 0.714059 0.000002 0 2.287822 39.850763 -2.738228 0 0 0 0 0 0
$definebone "lft_ndx_3" "lft_ndx_2" 0.594057 0 0 0.00006 6.181586 -0.000005 0 0 0 0 0 0
$definebone "lft_pnky_1" "lft_wrst" 2.014828 -1.862438 -0.835691 15.462179 -67.556254 167.514528 0 0 0 0 0 0
$definebone "lft_pnky_2" "lft_pnky_1" 0.481915 -0.000001 0 -2.847596 31.515319 4.63214 0 0 0 0 0 0
$definebone "lft_ring_5" "lft_wrst" 2.099159 -2.108599 -0.261976 -1.107242 -71.408876 -178.498415 0 0 0 0 0 0
$definebone "lft_ring_2" "lft_ring_5" 0.629718 -0.000002 0 -3.86477 29.864336 6.695354 0 0 0 0 0 0
$definebone "lft_ring_3" "lft_ring_2" 0.553844 0 0.000001 -0.000053 24.523231 -0.000177 0 0 0 0 0 0
$definebone "lft_thmb_1" "lft_wrst" 0.068836 -0.930294 0.92419 -38.657638 -95.431553 -62.569116 0 0 0 0 0 0
$definebone "lft_thmb_2" "lft_thmb_1" 0.799067 0.000003 0.000002 -0.000003 20.611356 -0.000055 0 0 0 0 0 0
$definebone "lft_thmb_3" "lft_thmb_2" 0.654902 -0.000001 0 -0.000003 9.360474 0 0 0 0 0 0 0
$definebone "rt_ndx_1" "rt_wrst" -1.871881 -2.001599 1.081956 -10.50633 -108.884444 -0.000001 0 0 0 0 0 0
$definebone "rt_ndx_2" "rt_ndx_1" 0.713971 0.000004 0 5.76722 39.546071 -6.938865 0 0 0 0 0 0
$definebone "rt_ndx_3" "rt_ndx_2" 0.594103 0.000002 0 -0.000463 6.184858 0.004125 0 0 0 0 0 0
$definebone "rt_ring_1" "rt_wrst" -2.210934 -2.078908 -0.254036 -1.106957 -108.598881 -0.000001 0 0 0 0 0 0
$definebone "rt_ring_2" "rt_ring_1" 0.629839 0.000004 0 4.611334 29.776394 -7.998436 0 0 0 0 0 0
$definebone "rt_ring_3" "rt_ring_2" 0.553843 0 0 0.000857 24.530904 -0.001893 0 0 0 0 0 0
$definebone "rt_thmb_1" "rt_wrst" -0.06883 -0.930326 0.924191 -38.661934 -84.567536 -117.423683 0 0 0 0 0 0
$definebone "rt_thmb_2" "rt_thmb_1" 0.798988 0 0.000003 0 20.617713 -0.000063 0 0 0 0 0 0
$definebone "rt_thmb_3" "rt_thmb_2" 0.654999 0.000001 -0.000003 0.002923 9.357375 -0.017998 0 0 0 0 0 0
$definebone "clip" "rt_wrst" 15.071412 1.214791 1.062907 0.000002 -0.000003 -0.000002 0 0 0 0 0 0


$sequence "idle" {
	"v_q4_shotgun_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "raise" {
	"v_q4_shotgun_anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload_start" {
	"v_q4_shotgun_anims\reload_start.smd"
	activity "ACT_SHOTGUN_RELOAD_START" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload_loop" {
	"v_q4_shotgun_anims\reload_loop.smd"
	activity "ACT_VM_RELOAD_SILENCED" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "reload_clip" {
	"v_q4_shotgun_anims\reload_clip.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload_end" {
	"v_q4_shotgun_anims\reload_end.smd"
	activity "ACT_SHOTGUN_RELOAD_FINISH" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "fire" {
	"v_q4_shotgun_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event 6001 12 "2" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "lower" {
	"v_q4_shotgun_anims\lower.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}
