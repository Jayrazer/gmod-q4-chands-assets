// Created by Crowbar 0.74

$modelname "weapons\quake4\c_q4_machinegun.mdl"

$scale 1.75

$bodygroup "gun"
{
	studio "md5mesh.smd"
}
$bodygroup "scope"
{
	studio "md5mesh.001.smd"
}
$bodygroup "arms"
{
	blank
}
$bodygroup "clip"
{
	studio "md5mesh.007.smd"
	studio "md5mesh.008.smd"
}
$bodygroup "gui"
{
	studio "md5mesh.004.smd"
}
$bodygroup "gui2"
{
	studio "md5mesh.005.smd"
}
$bodygroup "flash"
{
	blank
	studio "md5mesh.006.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -1.526 -7.875 11.518

$cdmaterials "models\weapons\quake4\machinegun\"
$cdmaterials "models\weapons\quake4\blaster\"
$cdmaterials "models\weapons\quake4\"

$attachment "muzzle" "barrel_1" 0 0 0 rotate 0 0 0
$attachment "2" "eject" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -9.8 -9.636 -11.321 25.549 6.585 34.356

$definebone "origin" "" 0 0 0 0 0 -3.000007 0 0 0 0 0 0
$definebone "eject" "origin" -0.643315 -0.695796 1.39849 -19.084566 -180.000005 90.000023 0 0 0 0 0 0
$definebone "gun_jt" "origin" 0 0 0 1.929779 89.999982 89.999982 0 0 0 0 0 0
$definebone "barrel_1" "gun_jt" -11.98392 1.205798 -0.000001 0 -178.070299 0 0 0 0 0 0 0
$definebone "front_grip" "gun_jt" -7.368042 -0.966209 0 -89.999982 1.929779 0 0 0 0 0 0 0
$definebone "racking_round_jt" "gun_jt" -1.512791 1.15836 0 -89.999982 1.929779 0 0 0 0 0 0 0
$definebone "trigger" "gun_jt" 1.535027 -0.717866 0 -0.028018 -86.645888 179.96793 0 0 0 0 0 0
$definebone "lft_shldr" "origin" 4.138865 0.363122 34.603706 36.560954 5.018136 -161.81102 0 0 0 0 0 0
$definebone "lft_elbo" "lft_shldr" 6.427491 -0.000004 -0.000015 5.320658 18.024507 -15.905654 0 0 0 0 0 0
$definebone "lft_wrst" "lft_elbo" 4.896364 0.000001 0.000004 36.541235 -13.58798 -88.068876 0 0 0 0 0 0
$definebone "lft_mddl_1" "lft_wrst" 1.860994 -1.831739 0.361924 -2.334747 -77.213444 -175.244581 0 0 0 0 0 0
$definebone "lft_mddl_2" "lft_mddl_1" 0.653442 0 0 -2.974798 33.443376 4.492792 0 0 0 0 0 0
$definebone "lft_mddl_3" "lft_mddl_2" 0.541504 0 0 -0.000001 12.078239 0.000001 0 0 0 0 0 0
$definebone "lft_ndx_1" "lft_wrst" 1.627675 -1.740484 0.94083 -10.505356 -71.11203 -167.422389 0 0 0 0 0 0
$definebone "lft_ndx_2" "lft_ndx_1" 0.620922 0 0 2.287822 39.850643 -2.738165 0 0 0 0 0 0
$definebone "lft_ndx_3" "lft_ndx_2" 0.516575 0 -0.000001 0.000001 6.181582 -0.000002 0 0 0 0 0 0
$definebone "lft_pnky_1" "lft_wrst" 1.752025 -1.619511 -0.726689 15.462184 -67.556424 167.514583 0 0 0 0 0 0
$definebone "lft_pnky_2" "lft_pnky_1" 0.419054 -0.000004 0 -2.847543 31.515251 4.632077 0 0 0 0 0 0
$definebone "lft_pnky_3" "lft_pnky_2" 0.465912 -0.000001 0.000001 -0.000057 10.734705 0.000002 0 0 0 0 0 0
$definebone "lft_ring_1" "lft_wrst" 1.825357 -1.833565 -0.227806 -1.107242 -71.408938 -178.498415 0 0 0 0 0 0
$definebone "lft_ring_2" "lft_ring_1" 0.547579 0.000002 0 -3.864886 29.864398 6.695184 0 0 0 0 0 0
$definebone "lft_ring_3" "lft_ring_2" 0.481602 -0.000001 0 -0.000001 24.523104 0.000002 0 0 0 0 0 0
$definebone "lft_thmb_1" "lft_wrst" 0.059856 -0.808952 0.803643 -38.657518 -95.431615 -62.569109 0 0 0 0 0 0
$definebone "lft_thmb_2" "lft_thmb_1" 0.694841 -0.000003 0 -0.000004 20.611291 -0.000061 0 0 0 0 0 0
$definebone "lft_thmb_3" "lft_thmb_2" 0.569481 0.000001 0 -0.000003 9.360407 -0.000003 0 0 0 0 0 0
$definebone "rt_elbo" "origin" -9.281799 0.814709 30.775011 -34.784501 18.037452 -12.12837 0 0 0 0 0 0
$definebone "rt_wrst" "rt_elbo" -4.896375 0.000003 -0.000015 36.541293 -13.587983 91.931081 0 0 0 0 0 0
$definebone "rt_ndx_1" "rt_wrst" -1.627724 -1.74052 0.94083 10.505298 71.111913 12.577682 0 0 0 0 0 0
$definebone "rt_ndx_2" "rt_ndx_1" -0.620842 -0.000031 0.000019 2.287823 39.850763 -2.738165 0 0 0 0 0 0
$definebone "rt_ndx_3" "rt_ndx_2" -0.516609 0.000056 -0.000007 0.000003 6.181581 0.000003 0 0 0 0 0 0
$definebone "rt_ring_1" "rt_wrst" -1.92255 -1.807747 -0.220902 1.107127 71.408815 1.501664 0 0 0 0 0 0
$definebone "rt_ring_2" "rt_ring_1" -0.547684 0.000072 -0.000004 -3.864944 29.864449 6.69524 0 0 0 0 0 0
$definebone "rt_ring_3" "rt_ring_2" -0.481602 -0.000006 0.000001 0.000001 24.523115 -0.000001 0 0 0 0 0 0
$definebone "rt_thmb_1" "rt_wrst" -0.059854 -0.808977 0.803643 38.657583 95.431731 117.43091 0 0 0 0 0 0
$definebone "rt_thmb_2" "rt_thmb_1" -0.694771 0.000052 -0.000019 0.000048 20.611402 0.000172 0 0 0 0 0 0
$definebone "rt_thmb_3" "rt_thmb_2" -0.569563 -0.000021 0.000013 0.000049 9.360351 -0.000114 0 0 0 0 0 0
$definebone "clip_jt" "origin" 0 -0.948243 -0.778408 0 0 89.999982 0 0 0 0 0 0
$definebone "flashlight" "gun_jt" -9.889821 -0.024778 0 0 -178.070299 0 0 0 0 0 0 0

$include "quake4.qci"

$sequence "idle" {
	"v_q4_machinegun_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "raise" {
	"v_q4_machinegun_anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload" {
	"v_q4_machinegun_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "fire" {
	"v_q4_machinegun_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "lower" {
	"v_q4_machinegun_anims\lower.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "flashlight" {
	"v_q4_machinegun_anims\flashlight.smd"
	activity "ACT_VM_ATTACH_SILENCER" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}
