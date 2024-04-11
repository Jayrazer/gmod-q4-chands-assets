// Created by Crowbar 0.74

$modelname "weapons\quake4\v_q4_hyperblaster.mdl"

$bodygroup "gun"
{
	studio "md5mesh.001.smd"
}
$bodygroup "arms"
{
	studio "md5mesh.smd"
}
$bodygroup "can"
{
	blank
	studio "md5mesh.002.smd"
}
$bodygroup "battery"
{
	studio "md5mesh.004.smd"
	studio "md5mesh.003.smd"
}
$bodygroup "gui"
{
	studio "md5mesh.005.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -1.764 -4.859 -5.446

$cdmaterials "models\weapons\quake4\hyperblaster\"
$cdmaterials "models\weapons\quake4\"

// This list shows the VMT file names used in the SMD files.
// "mhb_lo_d.vmt"
// "inview_arms.vmt"
// "battery1.vmt"
// "battery3.vmt"
// "battery2.vmt"
// "mhbgui.vmt"

$attachment "muzzle" "barrel" 0 0 0 rotate 0 0 0

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -9 -8.937 -12.677 18.718 5.408 1.785

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "origin" 0 -6.740267 -11.194669 12.503798 0.970694 0
// $hbox 0 "rt_elbo" -5.712618 -3.558511 -1.269015 5.032481 1.416721 2.524526
// $hbox 0 "rt_wrst" -4.403723 -4.104992 -1.619201 1.984598 2.363255 3.757938
// $hbox 0 "body" -0.729919 -3.330649 -5.834022 1.178796 2.647814 5.295144
// $hbox 0 "front_rotate" -1.136151 -0.729843 -0.436788 1.159363 3.030615 6.634167
// $hbox 0 "lower_pump" -0.838264 -0.588537 -1.348315 0.83827 0.937234 1.357293
// $hbox 0 "lft_shldr" 0 -2.227728 -2.634024 8.319478 1.876054 1.315806
// $hbox 0 "lft_elbo" -0.812565 -1.717351 -1.821805 6.346659 1.81517 0.948938
// $hbox 0 "lft_wrst" -1.827712 -2.024404 -1.404644 2.438363 2.383108 1.356904
// $hbox 0 "lft_mddl_1" -1.744626 -0.437485 -0.58156 0.814391 0.566837 0.465321
// $hbox 0 "lft_pnky_1" -0.98528 -0.550547 -0.735595 0.564138 0.623967 0.544105
// $hbox 0 "lft_thmb_1" -0.802016 -0.492314 -1.107518 1.0365 1.38738 1.368897
// $hbox 0 "rt_ring_1" -1.681744 -0.779598 -0.813445 0.917833 1.245658 1.195484
// $hbox 0 "rt_thmb_1" -1.032039 -0.587729 -0.603139 0.921979 1.373148 0.792479
// $hbox 0 "ammo_can" -1.342648 -1.342648 -3.137051 1.342649 1.342649 0.059049

$definebone "origin" "" 0 0 0 0 0 4.999974 0 0 0 0 0 0
$definebone "rt_elbo" "origin" 10.115639 -6.740267 -7.33282 8.985735 -170.952586 -99.11961 0 0 0 0 0 0
$definebone "rt_wrst" "rt_elbo" -4.953509 0.000004 0.000002 41.092648 -9.487777 101.334517 0 0 0 0 0 0
$definebone "body" "rt_wrst" -0.267054 -1.43364 1.750586 4.60108 -59.026686 81.311018 0 0 0 0 0 0
$definebone "front_rotate" "body" -0.000002 -0.490824 4.909908 0.000002 0 -0.000001 0 0 0 0 0 0
$definebone "ammo_release_lft" "front_rotate" 0.896572 0.455063 0.749237 0.000002 0 -0.000001 0 0 0 0 0 0
$definebone "ammo_release_rt" "front_rotate" -0.896939 0.455063 0.749233 0.000002 0 -0.000001 0 0 0 0 0 0
$definebone "barrel" "front_rotate" -0.000004 1.789969 6.634167 -89.999982 0 0 0 0 0 0 0 0
$definebone "lower_pump" "front_rotate" -0.000002 -0.485458 2.365192 0.000002 0 -0.000001 0 0 0 0 0 0
$definebone "lft_shldr" "origin" 12.503798 0.970694 -11.194669 -12.893613 -44.846896 50.231438 0 0 0 0 0 0
$definebone "lft_elbo" "lft_shldr" 6.427488 0 0.000001 8.67515 30.46136 -14.384047 0 0 0 0 0 0
$definebone "lft_wrst" "lft_elbo" 4.896362 0.000002 0.000002 15.251502 -56.368844 -149.095708 0 0 0 0 0 0
$definebone "lft_mddl_1" "lft_wrst" 1.860991 -1.83174 0.361923 -0.487509 -98.037011 -174.725924 0 0 0 0 0 0
$definebone "lft_mddl_2" "lft_mddl_1" 0.653439 -0.000002 0.000001 -2.974798 33.443482 4.492793 0 0 0 0 0 0
$definebone "lft_mddl_3" "lft_mddl_2" 0.541503 -0.000004 -0.000001 -0.000063 12.078238 0.00006 0 0 0 0 0 0
$definebone "lft_ndx_1" "lft_wrst" 1.627672 -1.740487 0.940829 -5.391249 -91.58059 -164.55927 0 0 0 0 0 0
$definebone "lft_ndx_2" "lft_ndx_1" 0.620921 -0.000002 0 2.287821 39.850701 -2.738168 0 0 0 0 0 0
$definebone "lft_ndx_3" "lft_ndx_2" 0.51657 -0.000002 -0.000001 0 6.181582 0.000055 0 0 0 0 0 0
$definebone "lft_pnky_1" "lft_wrst" 1.752022 -1.619513 -0.726689 10.063657 -88.271015 162.885395 0 0 0 0 0 0
$definebone "lft_pnky_2" "lft_pnky_1" 0.419057 -0.000002 0 -2.847598 31.515309 4.632026 0 0 0 0 0 0
$definebone "lft_pnky_3" "lft_pnky_2" 0.465913 -0.000002 0 -0.000058 10.7347 0.000063 0 0 0 0 0 0
$definebone "lft_ring_5" "lft_wrst" 1.825356 -1.833567 -0.227807 -0.498397 -92.300321 -178.202053 0 0 0 0 0 0
$definebone "lft_ring_2" "lft_ring_5" 0.547583 -0.000002 -0.000003 -3.864939 29.864504 6.695241 0 0 0 0 0 0
$definebone "lft_ring_3" "lft_ring_2" 0.481604 -0.000002 0.000002 0.000004 24.523113 -0.000003 0 0 0 0 0 0
$definebone "lft_thmb_1" "lft_wrst" 0.059855 -0.808951 0.803643 -23.85968 -86.987589 -51.750468 0 0 0 0 0 0
$definebone "lft_thmb_2" "lft_thmb_1" 0.694839 0 0 -0.00035 11.707137 0.000005 0 0 0 0 0 0
$definebone "lft_thmb_3" "lft_thmb_2" 0.56948 0 0 0.000285 -11.06868 -0.00005 0 0 0 0 0 0
$definebone "rt_ndx_1" "rt_wrst" -1.840227 -1.661455 1.02272 -22.244285 -133.894521 15.840278 0 0 0 0 0 0
$definebone "rt_ndx_2" "rt_ndx_1" 0.449124 0.029195 -0.041302 7.772803 47.42744 -10.516238 0 0 0 0 0 0
$definebone "rt_ndx_3" "rt_ndx_2" 0.472649 0.083349 -0.026953 2.836828 70.329939 3.526899 0 0 0 0 0 0
$definebone "rt_ring_1" "rt_wrst" -1.653875 -1.922122 -0.420925 -1.235584 -65.40027 17.354952 0 0 0 0 0 0
$definebone "rt_ring_2" "rt_ring_1" 0.547686 0.000002 0 10.284535 74.877854 -2.041908 0 0 0 0 0 0
$definebone "rt_ring_3" "rt_ring_2" 0.481602 -0.000001 0 -3.913701 30.129955 3.175562 0 0 0 0 0 0
$definebone "rt_thmb_1" "rt_wrst" -0.133749 -0.924482 0.736151 -0.154699 -86.077568 172.706388 0 0 0 0 0 0
$definebone "rt_thmb_2" "rt_thmb_1" 0.694774 -0.000002 0 -0.007792 39.376809 0.434761 0 0 0 0 0 0
$definebone "rt_thmb_3" "rt_thmb_2" 0.569563 0.000003 0.000001 -5.692621 15.979108 -0.691273 0 0 0 0 0 0
$definebone "ammo_can" "rt_wrst" -4.403723 -4.104992 3.757938 4.60108 -59.026686 81.311018 0 0 0 0 0 0


$sequence "idle" {
	"v_q4_hyperblaster_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "raise" {
	"v_q4_hyperblaster_anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "fire" {
	"v_q4_hyperblaster_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "COMBINE MUZZLE" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "lower" {
	"v_q4_hyperblaster_anims\lower.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload" {
	"v_q4_hyperblaster_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}
