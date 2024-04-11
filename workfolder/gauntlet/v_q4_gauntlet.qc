// Created by Crowbar 0.74

$modelname "weapons\quake4\c_q4_gauntlet.mdl"

$scale 1.75

$bodygroup "gun"
{
	studio "md5mesh.001.smd"
}
$bodygroup "arms"
{
	blank
	studio "md5mesh.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 1.186 -8.286 -10.648

$cdmaterials "models\weapons\quake4\gauntlet\"
$cdmaterials "models\weapons\quake4\"

$cbox 0 0 0 0 0 0

$bbox 0 -10.144 -21.297 16.573 12.516 0

$definebone "origin" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "rt_elbo" "origin" 7.867604 -5.592831 -6.670373 23.319014 -164.810033 -100.578367 0 0 0 0 0 0
$definebone "rt_wrst" "rt_elbo" -4.953509 0.000008 0 29.134281 36.513051 -177.029979 0 0 0 0 0 0
$definebone "body" "rt_wrst" -0.621048 1.221903 0.162941 -52.092647 -16.088138 62.088858 0 0 0 0 0 0
$definebone "center" "body" 0 0.160142 2.534226 -0.000003 0.00001 0 0 0 0 0 0 0
$definebone "blade_1" "center" -0.004755 -0.000002 1.554896 -0.000003 0.00001 0 0 0 0 0 0 0
$definebone "blade_2" "center" 1.096116 0 1.10284 -0.000003 0.00001 0 0 0 0 0 0 0
$definebone "blade_3" "center" 1.554897 0.000001 0.004756 -0.000003 0.00001 0 0 0 0 0 0 0
$definebone "blade_4" "center" 1.102841 0.000001 -1.096116 -0.000003 0.00001 0 0 0 0 0 0 0
$definebone "blade_5" "center" 0.004756 0 -1.554898 -0.000003 0.00001 0 0 0 0 0 0 0
$definebone "blade_6" "center" -1.096115 -0.000002 -1.102841 -0.000003 0.00001 0 0 0 0 0 0 0
$definebone "blade_7" "center" -1.554896 -0.000003 -0.004757 -0.000003 0.00001 0 0 0 0 0 0 0
$definebone "blade_8" "center" -1.102841 -0.000003 1.096114 -0.000003 0.00001 0 0 0 0 0 0 0
$definebone "lft_shldr" "origin" 7.665889 0.970694 -11.19467 44.334676 83.332529 97.516899 0 0 0 0 0 0
$definebone "lft_elbo" "lft_shldr" 6.427487 0 0 5.311032 17.991393 -15.908803 0 0 0 0 0 0
$definebone "lft_wrst" "lft_elbo" 4.896365 -0.000003 -0.000002 0.184894 25.995606 6.590275 0 0 0 0 0 0
$definebone "lft_mddl_1" "lft_wrst" 1.860992 -1.831741 0.361924 -0.487396 -98.037011 -174.725747 0 0 0 0 0 0
$definebone "lft_mddl_2" "lft_mddl_1" 0.653435 0.000001 0 -2.974744 33.443311 4.492849 0 0 0 0 0 0
$definebone "lft_mddl_3" "lft_mddl_2" 0.541505 0.000002 0 0.000052 12.078288 0.000002 0 0 0 0 0 0
$definebone "lft_ndx_1" "lft_wrst" 1.627672 -1.740486 0.940831 -5.391476 -91.580659 -164.559092 0 0 0 0 0 0
$definebone "lft_ndx_2" "lft_ndx_1" 0.62092 -0.000002 0.000003 2.287759 39.850701 -2.738331 0 0 0 0 0 0
$definebone "lft_ndx_3" "lft_ndx_2" 0.51657 0 0 -0.000004 6.181523 0.000003 0 0 0 0 0 0
$definebone "lft_pnky_1" "lft_wrst" 1.752023 -1.619514 -0.726688 10.063376 -88.270906 162.885395 0 0 0 0 0 0
$definebone "lft_pnky_2" "lft_pnky_1" 0.419054 -0.000002 0.000004 -2.84777 31.515248 4.631953 0 0 0 0 0 0
$definebone "lft_pnky_3" "lft_pnky_2" 0.465914 -0.000004 0 0.000001 10.734694 -0.000005 0 0 0 0 0 0
$definebone "lft_ring_5" "lft_wrst" 1.825356 -1.833569 -0.227806 -0.498448 -92.299242 -178.200851 0 0 0 0 0 0
$definebone "lft_ring_2" "lft_ring_5" 0.547585 0.000011 0 -3.864373 29.865593 6.694209 0 0 0 0 0 0
$definebone "lft_ring_3" "lft_ring_2" 0.481605 0 0.000001 0.000053 24.523108 0.000058 0 0 0 0 0 0
$definebone "lft_thmb_1" "lft_wrst" 0.059855 -0.808952 0.803643 -23.859973 -86.987418 -51.75041 0 0 0 0 0 0
$definebone "lft_thmb_2" "lft_thmb_1" 0.694841 0 0.000001 -0.000003 11.707191 -0.000068 0 0 0 0 0 0
$definebone "lft_thmb_3" "lft_thmb_2" 0.569483 0.000001 0.000001 -0.000003 -11.068684 0.000046 0 0 0 0 0 0
$definebone "rt_ndx_1" "rt_wrst" -1.627718 -1.740522 0.940831 -9.380296 -81.854189 -4.753427 0 0 0 0 0 0
$definebone "rt_ndx_2" "rt_ndx_1" 0.620847 -0.000001 -0.000001 8.28537 66.637907 -3.561798 0 0 0 0 0 0
$definebone "rt_ndx_3" "rt_ndx_2" 0.516608 -0.000001 -0.000001 -0.003886 66.871452 0.001658 0 0 0 0 0 0
$definebone "rt_ring_1" "rt_wrst" -1.922544 -1.807745 -0.220902 -0.961828 -78.922071 -0.548032 0 0 0 0 0 0
$definebone "rt_ring_2" "rt_ring_1" 0.547687 0 -0.000001 8.849336 73.456458 -2.616298 0 0 0 0 0 0
$definebone "rt_ring_3" "rt_ring_2" 0.481604 0.000003 0 0.001778 64.130818 -0.00086 0 0 0 0 0 0
$definebone "rt_thmb_1" "rt_wrst" -0.059851 -0.808977 0.803646 -21.323031 -93.875069 -112.7095 0 0 0 0 0 0
$definebone "rt_thmb_2" "rt_thmb_1" 0.694774 0 0.000001 0.000116 54.728585 -0.000055 0 0 0 0 0 0
$definebone "rt_thmb_3" "rt_thmb_2" 0.569563 0.000001 0.000001 0.002922 9.357312 -0.018103 0 0 0 0 0 0

$include "quake4.qci"

$sequence "idle" {
	"v_q4_gauntlet_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "raise" {
	"v_q4_gauntlet_anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "attack_loop" {
	"v_q4_gauntlet_anims\attack_loop.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "attack_start" {
	"v_q4_gauntlet_anims\attack_start.smd"
	activity "ACT_VM_PULLPIN" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "attack_end" {
	"v_q4_gauntlet_anims\attack_end.smd"
	activity "ACT_VM_PULLBACK" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "lower" {
	"v_q4_gauntlet_anims\lower.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}
