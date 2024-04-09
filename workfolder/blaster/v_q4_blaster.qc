// Created by Crowbar 0.74

$modelname "weapons\quake4\c_q4_blaster.mdl"

$scale 1.5

$bodygroup "gun"
{
	studio "md5mesh.001.smd"
}
//$bodygroup "arms"
//{
//	studio "md5mesh.smd"
//}
$bodygroup "flash"
{
	blank
	studio "md5mesh.002.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -1.421 -9.359 -4.823

$cdmaterials "models\weapons\quake4\blaster\"
$cdmaterials "models\weapons\quake4\"

$attachment "muzzle" "barrel" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -1.173 -8.814 -10.736 19.89 5.971 1.09

$definebone "origin" "" 0 0 0 0 0 2.000024 0 0 0 0 0 0
$definebone "rt_elbo" "origin" 8.384664 -6.168166 -5.739418 6.820076 -170.286137 -98.2309 0 0 0 0 0 0
$definebone "rt_wrst" "rt_elbo" -4.953509 0.000004 0.000002 60.818723 -20.583743 90.160239 0 0 0 0 0 0
$definebone "body" "rt_wrst" -0.652369 -1.271205 1.083471 10.486789 -32.35642 73.836558 0 0 0 0 0 0
$definebone "barrel" "body" -0.000003 1.075019 5.667686 -89.999975 -89.999982 0 0 0 0 0 0 0
$definebone "slide" "body" -0.000001 1.769109 3.538221 -0.000061 -0.000001 0.000058 0 0 0 0 0 0
$definebone "lft_shldr" "origin" 6.532007 2.575891 -7.492135 4.437501 -47.378567 43.814315 0 0 0 0 0 0
$definebone "lft_elbo" "lft_shldr" 6.427487 -0.000001 0 7.336668 25.327721 -15.099508 0 0 0 0 0 0
$definebone "lft_wrst" "body" 1.02217 -2.8771 0.51343 -12.712039 -166.449279 6.150243 0 0 0 0 0 0
$definebone "lft_mddl_1" "lft_wrst" 1.860993 -1.831742 0.361929 -0.48774 -98.037018 -174.725979 0 0 0 0 0 0
$definebone "lft_mddl_2" "lft_mddl_1" 0.653439 0.000003 0.000001 -2.974794 33.443424 4.492849 0 0 0 0 0 0
$definebone "lft_mddl_3" "lft_mddl_2" 0.541503 0.000001 0.000001 0.000002 12.07823 -0.000057 0 0 0 0 0 0
$definebone "lft_ndx_1" "lft_wrst" 1.627672 -1.740485 0.940833 -5.391247 -91.580542 -164.559092 0 0 0 0 0 0
$definebone "lft_ndx_2" "lft_ndx_1" 0.620923 -0.000001 -0.000003 2.287822 39.850701 -2.738166 0 0 0 0 0 0
$definebone "lft_ndx_3" "lft_ndx_2" 0.516572 0 -0.000004 0 6.181579 -0.000002 0 0 0 0 0 0
$definebone "lft_pnky_1" "lft_wrst" 1.752023 -1.619514 -0.726686 10.063544 -88.270974 162.885422 0 0 0 0 0 0
$definebone "lft_pnky_2" "lft_pnky_1" 0.419056 0 0.000002 -2.847593 31.515309 4.632013 0 0 0 0 0 0
$definebone "lft_ring_5" "lft_wrst" 1.825356 -1.833569 -0.227804 -0.498916 -92.300328 -178.20234 0 0 0 0 0 0
$definebone "lft_ring_2" "lft_ring_5" 0.547581 0 0 -3.864882 29.864449 6.695182 0 0 0 0 0 0
$definebone "lft_ring_3" "lft_ring_2" 0.481605 0 0 0.000009 24.523099 -0.000002 0 0 0 0 0 0
$definebone "lft_thmb_1" "lft_wrst" 0.059855 -0.808953 0.803646 -29.336124 -75.37014 -82.088075 0 0 0 0 0 0
$definebone "lft_thmb_2" "lft_thmb_1" 0.694841 0.000001 0 0.000006 24.355348 0.000003 0 0 0 0 0 0
$definebone "lft_thmb_3" "lft_thmb_2" 0.569483 -0.000002 0 -0.000002 50.089858 0.000063 0 0 0 0 0 0
$definebone "rt_ndx_1" "rt_wrst" -1.627722 -1.740523 0.940832 -23.073871 -116.978382 2.233676 0 0 0 0 0 0
$definebone "rt_ndx_2" "rt_ndx_1" 0.620847 -0.000001 0 4.725699 23.439077 -12.696803 0 0 0 0 0 0
$definebone "rt_ndx_3" "rt_ndx_2" 0.516608 -0.000002 -0.000001 2.839982 11.266246 3.529533 0 0 0 0 0 0
$definebone "rt_ring_1" "rt_wrst" -1.922551 -1.807748 -0.2209 1.993205 -50.486747 6.328607 0 0 0 0 0 0
$definebone "rt_ring_2" "rt_ring_1" 0.547686 -0.000002 0 5.760574 28.097447 -3.649453 0 0 0 0 0 0
$definebone "rt_ring_3" "rt_ring_2" 0.481603 -0.000004 0 -3.914561 69.096147 3.176706 0 0 0 0 0 0
$definebone "rt_thmb_1" "rt_wrst" -0.059854 -0.80898 0.803646 -8.475113 -95.649655 177.421691 0 0 0 0 0 0
$definebone "rt_thmb_2" "rt_thmb_1" 0.694772 -0.000001 0 -0.007965 17.184035 0.434703 0 0 0 0 0 0
$definebone "rt_thmb_3" "rt_thmb_2" 0.569563 0.000002 -0.000001 -5.692966 14.929451 -0.691331 0 0 0 0 0 0

$include "quake4.qci"

$sequence "idle" {
	"v_q4_blaster_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "raise" {
	"v_q4_blaster_anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "fire" {
	"v_q4_blaster_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "fire2" {
	"v_q4_blaster_anims\fire2.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "charge" {
	"v_q4_blaster_anims\charge.smd"
	activity "ACT_VM_PULLBACK" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "lower" {
	"v_q4_blaster_anims\lower.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "flashlight" {
	"v_q4_blaster_anims\flashlight.smd"
	activity "ACT_VM_ATTACH_SILENCER" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}
