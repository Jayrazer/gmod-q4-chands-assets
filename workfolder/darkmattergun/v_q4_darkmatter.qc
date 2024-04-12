// Created by Crowbar 0.74

$modelname "weapons\quake4\c_q4_darkmatter.mdl"

$scale 1.75

$bodygroup "gun"
{
	studio "md5mesh.001.smd"
}
$bodygroup "arms"
{
	blank
}


$surfaceprop "default"

$contents "solid"

$illumposition -4.329 -9.716 -7.304

$cdmaterials "models\weapons\quake4\darkmatter\"
$cdmaterials "models\weapons\quake4\"

$attachment "muzzle" "muzzle_flash" 0 0 0 rotate 0 0 0
$attachment "bhole" "outer_ring" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -3 -10.949 -15.512 22.432 2.291 0.905

$definebone "origin" "" 0 0 0 0 0 -3.99999 0 0 0 0 0 0
$definebone "rt_elbo" "origin" 8.047591 -6.810749 -15.512466 12.269529 -169.421422 -102.661008 0 0 0 0 0 0
$definebone "rt_wrst" "rt_elbo" -4.863505 0.053774 0.012078 33.697145 -58.169832 66.671888 0 0 0 0 0 0
$definebone "body" "rt_wrst" -0.897638 -2.426977 1.904819 4.601083 -59.026625 81.311073 0 0 0 0 0 0
$definebone "back_cowling" "body" 0.000005 3.482493 -5.571986 -89.999982 0.000001 0 0 0 0 0 0 0
$definebone "front_cowling" "body" -0.000007 3.482494 8.357983 -89.999927 0.000001 0 0 0 0 0 0 0
$definebone "front_slide" "body" -0.000006 2.785994 8.357981 -0.000056 -0.000003 0.000055 0 0 0 0 0 0
$definebone "inner_barrel" "body" -0.019659 3.409587 1.131235 -0.000056 -0.000003 0.000055 0 0 0 0 0 0
$definebone "inner_ring" "body" 0.000001 3.409588 -0.945696 -89.999927 0.000001 0 0 0 0 0 0 0
$definebone "l_magnet" "body" 2.20465 2.42858 -0.933212 -0.000111 88.892228 -0.000114 0 0 0 0 0 0
$definebone "middle_ring" "body" 0.000001 3.409588 -0.945696 -89.999927 0.000001 0 0 0 0 0 0 0
$definebone "muzzle_flash" "body" -0.000009 2.239212 10.449059 -89.999927 0.000001 0 0 0 0 0 0 0
$definebone "outer_ring" "body" 0.000001 3.409588 -0.945696 -89.999927 0.000001 0 0 0 0 0 0 0
$definebone "pipe_1" "body" 2.785993 0.40175 2.089497 -89.999927 0.000001 0 0 0 0 0 0 0
$definebone "pipe_2" "body" 2.291024 1.722934 3.451715 -89.999927 0.000001 0 0 0 0 0 0 0
$definebone "pipe_3" "body" 2.291025 1.722934 2.860405 -89.999927 0.000001 0 0 0 0 0 0 0
$definebone "pipe_4" "body" 2.291025 1.722933 2.299068 -89.999927 0.000001 0 0 0 0 0 0 0
$definebone "pipe_5" "body" 2.375588 1.722934 1.730139 -89.999927 0.000001 0 0 0 0 0 0 0
$definebone "piston_1" "body" 2.460065 0.626272 7.265993 -0.000057 -22.197302 0.000055 0 0 0 0 0 0
$definebone "piston_2" "body" 2.460067 0.626271 5.464088 -0.000114 -22.197302 0.000114 0 0 0 0 0 0
$definebone "r_magnet" "body" -2.204648 2.428579 -0.933218 -0.01178 91.107716 -179.988476 0 0 0 0 0 0
$definebone "lft_shldr" "origin" 12.306862 0.955405 -11.018353 43.64386 -77.215118 4.612482 0 0 0 0 0 0
$definebone "lft_elbo" "lft_shldr" 6.326255 -0.000003 0.000003 15.153244 64.133974 -7.223049 0 0 0 0 0 0
$definebone "lft_wrst" "lft_elbo" 4.819246 -0.000001 -0.000002 6.494074 -53.416915 -125.26582 0 0 0 0 0 0
$definebone "lft_mddl_1" "lft_wrst" 1.831682 -1.802888 0.356228 -0.487447 -98.036963 -174.725747 0 0 0 0 0 0
$definebone "lft_mddl_2" "lft_mddl_1" 0.643148 -0.000004 -0.000004 -2.974796 33.443434 4.492783 0 0 0 0 0 0
$definebone "lft_mddl_3" "lft_mddl_2" 0.532976 0 0 0.00006 12.078353 -0.00001 0 0 0 0 0 0
$definebone "lft_ndx_1" "lft_wrst" 1.602036 -1.713071 0.926015 -5.391301 -91.580604 -164.559092 0 0 0 0 0 0
$definebone "lft_ndx_2" "lft_ndx_1" 0.611138 0.000002 0.000001 2.287882 39.850701 -2.73823 0 0 0 0 0 0
$definebone "lft_ndx_3" "lft_ndx_2" 0.508436 -0.000002 0 0.000007 6.181575 -0.000009 0 0 0 0 0 0
$definebone "lft_pnky_1" "lft_wrst" 1.724432 -1.594005 -0.71524 10.063546 -88.270913 162.885422 0 0 0 0 0 0
$definebone "lft_pnky_2" "lft_pnky_1" 0.412455 0 0.000002 -2.847595 31.515367 4.632018 0 0 0 0 0 0
$definebone "lft_pnky_3" "lft_pnky_2" 0.458575 0 -0.000002 0.000007 10.734762 0 0 0 0 0 0 0
$definebone "lft_ring_5" "lft_wrst" 1.796606 -1.804686 -0.224215 -0.498511 -92.300335 -178.201889 0 0 0 0 0 0
$definebone "lft_ring_2" "lft_ring_5" 0.538959 0.000002 0.000002 -3.864887 29.864459 6.695178 0 0 0 0 0 0
$definebone "lft_ring_3" "lft_ring_2" 0.47402 0 0.000002 0.000001 24.523109 -0.000063 0 0 0 0 0 0
$definebone "lft_thmb_1" "lft_wrst" 0.058912 -0.79621 0.790988 -23.859736 -86.987664 -51.750243 0 0 0 0 0 0
$definebone "lft_thmb_2" "lft_thmb_1" 0.683895 0 0.000008 0.000118 11.707191 -0.00005 0 0 0 0 0 0
$definebone "lft_thmb_3" "lft_thmb_2" 0.560512 0 0 -0.001315 -11.068628 0.000064 0 0 0 0 0 0
$definebone "rt_ndx_1" "rt_wrst" -1.811243 -1.635288 1.006612 -22.244224 -133.894452 15.840332 0 0 0 0 0 0
$definebone "rt_ndx_2" "rt_ndx_1" 0.442048 0.028734 -0.040652 7.772808 47.427386 -10.516237 0 0 0 0 0 0
$definebone "rt_ndx_3" "rt_ndx_2" 0.465206 0.082037 -0.026526 2.836826 70.329877 3.526905 0 0 0 0 0 0
$definebone "rt_ring_1" "rt_wrst" -1.627823 -1.891848 -0.414298 -1.235577 -65.40027 17.355009 0 0 0 0 0 0
$definebone "rt_ring_2" "rt_ring_1" 0.539059 -0.000002 0.000001 10.28442 74.877793 -2.041902 0 0 0 0 0 0
$definebone "rt_ring_3" "rt_ring_2" 0.474016 0 -0.000002 -3.913767 30.130075 3.17562 0 0 0 0 0 0
$definebone "rt_thmb_1" "rt_wrst" -0.131641 -0.909921 0.724555 -0.154695 -86.077514 172.706388 0 0 0 0 0 0
$definebone "rt_thmb_2" "rt_thmb_1" 0.683831 -0.000004 0 -0.007797 39.37687 0.434702 0 0 0 0 0 0
$definebone "rt_thmb_3" "rt_thmb_2" 0.560594 0 0.000001 -5.692859 15.97905 -0.691219 0 0 0 0 0 0

$include "quake4.qci"

$sequence "idle" {
	"v_q4_darkmatter_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "raise" {
	"v_q4_darkmatter_anims\raise.smd"
	activity "ACT_VM_DRAW_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "raise_loaded" {
	"v_q4_darkmatter_anims\raise_loaded.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "fire" {
	"v_q4_darkmatter_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "AR2 MUZZLE" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "lower" {
	"v_q4_darkmatter_anims\lower.smd"
	activity "ACT_VM_HOLSTER_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "lower_loaded" {
	"v_q4_darkmatter_anims\lower_loaded.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload" {
	"v_q4_darkmatter_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}
