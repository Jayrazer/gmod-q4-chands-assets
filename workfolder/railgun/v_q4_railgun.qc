// Created by Crowbar 0.74

$modelname "weapons\quake4\c_q4_railgun.mdl"

$scale 1.75

$bodygroup "gun"
{
	studio "md5mesh.002.smd"
}
$bodygroup "arms"
{
	blank
}
$bodygroup "slug"
{
	studio "md5mesh.001.smd"
}
$bodygroup "gui"
{
	studio "md5mesh.004.smd"
}
$bodygroup "mod"
{
	blank
	studio "md5mesh.003.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -4.36 -11.729 -4.591

$cdmaterials "models\weapons\quake4\railgun\"
$cdmaterials "models\weapons\quake4\"

// This list shows the VMT file names used in the SMD files.
// "rg.vmt"
// "inview_arms.vmt"
// "rl_slug.vmt"
// "railgui.vmt"
// "rg_mod.vmt"

$attachment "muzzle" "srocket_muzzle_flash" 0 0 0 rotate 0 0 0

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -2.888 -12.672 -10.481 26.346 3.952 1.299

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "origin" 0 -8.998741 -7.437763 9.543895 0 0
// $hbox 0 "rt_elbo" -5.712616 -3.558512 -1.269011 5.032477 1.41672 2.524528
// $hbox 0 "rt_wrst" -12.383101 -7.675029 -1.610406 2.013346 2.473829 1.356901
// $hbox 0 "srocket_body" -1.508691 -3.477479 -7.430687 2.461888 4.026571 11.007683
// $hbox 0 "srocket_barrel_slide" -1.570121 -0.984175 -4.301493 1.615473 1.365723 4.739197
// $hbox 0 "lft_shldr" 0 -2.22773 -2.634022 8.319482 1.876051 1.315807
// $hbox 0 "lft_elbo" -0.79994 -1.678457 -1.821807 6.346658 1.813154 0.948936
// $hbox 0 "rt_ring_1" -1.213404 -0.595568 -0.957336 0.942985 1.532882 1.006794
// $hbox 0 "rt_thmb_1" -0.446084 -0.488947 -1.007942 0.994501 1.075068 0.950266
// $hbox 0 "lft_wrst" -2.143478 -2.056267 -1.08267 2.759435 1.649987 1.881048
// $hbox 0 "lft_mddl_1" -1.751917 -0.453585 -0.626603 0.814397 0.693844 0.469989
// $hbox 0 "lft_pnky_1" -0.895458 -0.704392 -0.737656 0.564143 0.682836 0.447267
// $hbox 0 "lft_thmb_1" -1.835761 -0.401031 -0.633498 1.036504 1.155957 1.539248

$definebone "origin" "" 0 0 0 -3.000007 0 3.99999 0 0 0 0 0 0
$definebone "rt_elbo" "origin" 5.439447 -8.998741 -7.437763 6.361437 -168.042844 -88.884325 0 0 0 0 0 0
$definebone "rt_wrst" "rt_elbo" -4.896376 0.000004 -0.000002 32.495185 -22.051314 75.371049 0 0 0 0 0 0
$definebone "srocket_body" "rt_wrst" -6.086087 -4.158775 0.99839 14.369953 -60.762121 80.245837 0 0 0 0 0 0
$definebone "srocket_barrel_slide" "srocket_body" 0.000002 2.985076 6.332197 -0.000001 0 0.000001 0 0 0 0 0 0
$definebone "srocket_flap_1" "srocket_barrel_slide" 1.57012 -0.250287 0.198318 88.698086 -176.821208 102.273381 0 0 0 0 0 0
$definebone "srocket_flap_2" "srocket_barrel_slide" 1.070152 1.016077 0.19829 88.452575 -131.62325 94.880903 0 0 0 0 0 0
$definebone "srocket_flap_3" "srocket_barrel_slide" -1.070152 1.016076 0.198288 88.452883 -48.367728 85.128268 0 0 0 0 0 0
$definebone "srocket_flap_4" "srocket_barrel_slide" -1.570121 -0.250285 0.198318 88.69782 -3.173777 77.731706 0 0 0 0 0 0
$definebone "srocket_muzzle_flash" "srocket_barrel_slide" 0 0.000001 4.739197 -89.999982 0 0 0 0 0 0 0 0
$definebone "lft_shldr" "origin" 9.543895 -1.522287 -7.147288 18.670286 -3.233545 151.195431 0 0 0 0 0 0
$definebone "lft_elbo" "lft_shldr" 6.427488 0.000001 0 8.206991 28.633739 -14.652306 0 0 0 0 0 0
$definebone "rt_ndx_1" "rt_wrst" -1.627723 -1.74052 0.940831 -18.416412 -101.152144 3.835897 0 0 0 0 0 0
$definebone "rt_ndx_2" "rt_ndx_1" 0.620846 0.000002 0.000001 1.857129 11.706562 -7.832047 0 0 0 0 0 0
$definebone "rt_ndx_3" "rt_ndx_2" 0.51661 0.000004 0 0.562303 64.485592 4.492793 0 0 0 0 0 0
$definebone "rt_ring_1" "rt_wrst" -1.922551 -1.807745 -0.220901 1.953499 -52.94096 6.354561 0 0 0 0 0 0
$definebone "rt_ring_2" "rt_ring_1" 0.547688 0.000001 0.000001 8.674409 52.019697 -1.180466 0 0 0 0 0 0
$definebone "rt_ring_3" "rt_ring_2" 0.481604 -0.000001 0 -3.913415 39.713828 3.17579 0 0 0 0 0 0
$definebone "rt_thmb_1" "rt_wrst" -0.059854 -0.808979 0.803645 -13.248446 -94.461202 -140.732469 0 0 0 0 0 0
$definebone "rt_thmb_2" "rt_thmb_1" 0.694773 0 0 -0.000003 23.344364 0.000001 0 0 0 0 0 0
$definebone "rt_thmb_3" "rt_thmb_2" 0.569565 0.000001 0.000001 0.012088 41.613351 -0.013638 0 0 0 0 0 0
$definebone "lft_wrst" "srocket_body" 2.461888 -1.946375 2.92543 -75.197999 153.101286 105.581201 0 0 0 0 0 0
$definebone "lft_mddl_1" "lft_wrst" 1.860989 -1.83174 0.361924 -8.872639 -102.819311 -172.392144 0 0 0 0 0 0
$definebone "lft_mddl_2" "lft_mddl_1" 0.653439 0.000004 0 -5.215298 75.467607 1.349774 0 0 0 0 0 0
$definebone "lft_mddl_3" "lft_mddl_2" 0.541506 -0.000001 0.000003 -0.000009 12.078304 -0.000005 0 0 0 0 0 0
$definebone "lft_ndx_1" "lft_wrst" 1.627672 -1.740485 0.94083 -0.534087 -108.544021 -163.67517 0 0 0 0 0 0
$definebone "lft_ndx_2" "lft_ndx_1" 0.620922 0.000001 0.000002 2.688253 48.858802 -2.346319 0 0 0 0 0 0
$definebone "lft_ndx_3" "lft_ndx_2" 0.516568 0 0.000004 -0.000005 26.762577 -0.000003 0 0 0 0 0 0
$definebone "lft_pnky_1" "lft_wrst" 1.75202 -1.619512 -0.726689 -14.793787 -117.56444 165.640652 0 0 0 0 0 0
$definebone "lft_pnky_2" "lft_pnky_1" 0.419054 0 0.000001 -2.847599 31.515309 4.632075 0 0 0 0 0 0
$definebone "lft_pnky_3" "lft_pnky_2" 0.465908 -0.000001 -0.000001 0 10.734705 -0.000001 0 0 0 0 0 0
$definebone "lft_ring_5" "lft_wrst" 1.825352 -1.833566 -0.227806 -20.508085 -121.159742 -165.781764 0 0 0 0 0 0
$definebone "lft_ring_2" "lft_ring_5" 0.547585 0.000002 0 -5.454504 44.733334 5.480398 0 0 0 0 0 0
$definebone "lft_ring_3" "lft_ring_2" 0.4816 0.000001 0.000001 -0.000003 24.523118 -0.000004 0 0 0 0 0 0
$definebone "lft_thmb_1" "lft_wrst" 0.059855 -0.808952 0.803642 -57.76 -115.151211 -47.596747 0 0 0 0 0 0
$definebone "lft_thmb_2" "lft_thmb_1" 0.694843 0.000002 0.000001 -0.00001 9.611315 -0.000009 0 0 0 0 0 0
$definebone "lft_thmb_3" "lft_thmb_2" 0.569486 0 -0.000002 -0.000009 -0.639528 -0.000007 0 0 0 0 0 0
$definebone "srocket_ammo" "rt_wrst" -12.383101 -7.675029 0.969412 14.369953 -60.76206 80.245775 0 0 0 0 0 0

$include "quake4.qci"

$sequence "idle" {
	"v_q4_railgun_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "raise" {
	"v_q4_railgun_anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "fire" {
	"v_q4_railgun_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "lower" {
	"v_q4_railgun_anims\lower.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload" {
	"v_q4_railgun_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}
