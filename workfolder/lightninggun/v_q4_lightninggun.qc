// Created by Crowbar 0.74

$modelname "weapons\quake4\c_q4_lightninggun.mdl"

$scale 1.75

$bodygroup "gun"
{
	studio "mesh_noarms.smd"
}
$bodygroup "beams"
{
	studio "mesh.001.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -2.479 -7.048 -6.318

$cdmaterials "models\weapons\quake4\lightninggun\"
$cdmaterials "models\weapons\quake4\"

// This list shows the VMT file names used in the SMD files.
// "inview_arms.vmt"
// "lg_lo.vmt"
// "tubes_lo.vmt"
// "lgun_small.vmt"

$attachment "muzzle" "barrel" 0 0 0 rotate 0 0 0

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -3.977 -10.488 -14.82 18.073 5.53 2.184

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "origin" 0 -7.392433 -13.567257 12.492172 2.453114 0
// $hbox 0 "lft_shldr" 0 -2.22773 -2.63402 8.123856 1.876054 1.315809
// $hbox 0 "lft_elbo" -0.932276 -1.464679 -1.821801 6.387783 1.324914 0.948941
// $hbox 0 "lft_wrst" -1.381161 -2.039475 -2.048144 2.290588 2.468737 1.431097
// $hbox 0 "lft_mddl_1" -1.076583 -0.395945 -0.59089 0.814394 1.379077 0.465321
// $hbox 0 "lft_thmb_1" -1.126839 -0.594078 -0.951992 1.029462 1.330895 0.870923
// $hbox 0 "rt_elbo" -4.431231 -3.558523 -1.269012 5.032481 1.588145 2.524526
// $hbox 0 "rt_wrst" -2.820991 -3.60897 -1.121085 1.008676 1.568649 1.404057
// $hbox 0 "body" -1.573199 -1.09928 -7.61806 2.151275 3.72777 6.644512
// $hbox 0 "center_rod" -4.290437 -0.552187 -0.552184 1.282022 0.552182 0.552185
// $hbox 0 "rt_ring_1" -1.578442 -0.300464 -1.071015 0.906143 2.349931 0.927904
// $hbox 0 "rt_thmb_1" -0.816577 -0.540301 -0.763957 0.921605 1.223603 0.75816

$definebone "origin" "" 0 0 0 0 0 9.00002 0 0 0 0 0 0
$definebone "lft_shldr" "origin" 12.492172 2.453114 -13.567257 0.55978 -71.330322 92.964865 0 0 0 0 0 0
$definebone "lft_elbo" "lft_shldr" 6.427488 0.000001 -0.000004 16.435354 78.557038 -3.27772 0 0 0 0 0 0
$definebone "lft_wrst" "lft_elbo" 4.896365 0 0.000001 17.875935 -75.507352 -126.753558 0 0 0 0 0 0
$definebone "lft_mddl_1" "lft_wrst" 1.860994 -1.83174 0.361924 2.955135 -137.141101 -175.602552 0 0 0 0 0 0
$definebone "lft_mddl_2" "lft_mddl_1" 0.653437 -0.000001 0.000001 -2.974798 33.443379 4.492845 0 0 0 0 0 0
$definebone "lft_mddl_3" "lft_mddl_2" 0.541504 0.000001 0 0.000056 12.078297 -0.000003 0 0 0 0 0 0
$definebone "lft_ndx_1" "lft_wrst" 1.627674 -1.740483 0.94083 10.049034 -105.690518 -163.411852 0 0 0 0 0 0
$definebone "lft_ndx_2" "lft_ndx_1" 0.620922 0.000001 0.000001 2.28782 39.850701 -2.738168 0 0 0 0 0 0
$definebone "lft_ndx_3" "lft_ndx_2" 0.516573 0 0.000001 0.000058 6.181638 -0.000003 0 0 0 0 0 0
$definebone "lft_pnky_1" "lft_wrst" 1.752025 -1.619513 -0.726689 3.771764 -136.580342 161.022775 0 0 0 0 0 0
$definebone "lft_pnky_2" "lft_pnky_1" 0.419052 0 0 -2.847596 31.515316 4.63202 0 0 0 0 0 0
$definebone "lft_pnky_3" "lft_pnky_2" 0.465914 -0.000002 -0.000001 0.000003 10.734707 -0.000005 0 0 0 0 0 0
$definebone "lft_ring_5" "lft_wrst" 1.825356 -1.833566 -0.227807 0.815585 -133.722536 -178.322224 0 0 0 0 0 0
$definebone "lft_ring_2" "lft_ring_5" 0.547581 0 0.000001 -3.864938 29.864456 6.695179 0 0 0 0 0 0
$definebone "lft_ring_3" "lft_ring_2" 0.481606 0 -0.000001 0.000007 24.523111 -0.000002 0 0 0 0 0 0
$definebone "lft_thmb_1" "lft_wrst" 0.059856 -0.808952 0.803643 -14.993206 -113.378668 -12.895278 0 0 0 0 0 0
$definebone "lft_thmb_2" "lft_thmb_1" 0.694839 0 0.000003 -0.000051 15.760701 -0.000002 0 0 0 0 0 0
$definebone "lft_thmb_3" "lft_thmb_2" 0.569483 0 0.000001 -0.000167 49.348168 -0.000167 0 0 0 0 0 0
$definebone "rt_elbo" "origin" 3.660841 -7.392433 -7.340998 8.75455 -173.122155 -109.268704 0 0 0 0 0 0
$definebone "rt_wrst" "rt_elbo" -3.358419 0.374141 0.049828 41.496702 -11.749016 102.193208 0 0 0 0 0 0
$definebone "body" "rt_wrst" -2.820991 -3.60897 1.333668 17.986009 -58.453039 76.81101 0 0 0 0 0 0
$definebone "center_rod" "body" 0 1.523917 6.644512 -89.999982 0.000002 0 0 0 0 0 0 0
$definebone "barrel" "center_rod" 1.282013 0.000002 0 -0.000001 -0.000003 0.000002 0 0 0 0 0 0
$definebone "lo_flap" "body" 1.042351 0.33061 6.504528 -89.999927 40.587409 0 0 0 0 0 0 0
$definebone "spire_1_base" "body" -0.005747 3.108533 4.908355 -26.000027 90.000037 -90.000037 0 0 0 0 0 0
$definebone "spire_2_base" "body" -0.005747 3.108533 3.451157 -26.000027 90.000037 -90.000037 0 0 0 0 0 0
$definebone "spire_3_base" "body" -0.005747 3.108532 1.917295 -26.000027 90.000037 -90.000037 0 0 0 0 0 0
$definebone "spire_4_base" "body" -0.005748 3.108532 0.292739 -37.000012 89.999982 -89.999982 0 0 0 0 0 0
$definebone "tube_1" "body" 0.455379 1.944587 3.757116 0.000001 -0.000002 -0.000003 0 0 0 0 0 0
$definebone "tube_2" "body" 0.455378 1.944587 2.169102 0.000001 -0.000002 -0.000003 0 0 0 0 0 0
$definebone "tube_3" "body" 0.455378 1.944587 0.595904 0.000001 -0.000002 -0.000003 0 0 0 0 0 0
$definebone "up_flap" "body" 0 3.16463 6.634052 -89.999982 0.000002 0 0 0 0 0 0 0
$definebone "rt_ndx_1" "rt_wrst" -1.712708 -1.832355 0.976399 -28.258398 -82.580354 13.414661 0 0 0 0 0 0
$definebone "rt_ndx_2" "rt_ndx_1" 0.449123 0.029196 -0.041301 1.579581 2.914919 -13.434425 0 0 0 0 0 0
$definebone "rt_ndx_3" "rt_ndx_2" 0.47265 0.083347 -0.026952 2.837175 61.137699 3.527469 0 0 0 0 0 0
$definebone "rt_ring_1" "rt_wrst" -2.570447 -2.631478 -0.482559 -3.147888 -55.315353 16.910678 0 0 0 0 0 0
$definebone "rt_ring_2" "rt_ring_1" 0.547686 0.000002 -0.000001 3.714425 14.477213 -8.576493 0 0 0 0 0 0
$definebone "rt_ring_3" "rt_ring_2" 0.481605 0.000001 0 -3.912556 59.16523 3.17636 0 0 0 0 0 0
$definebone "rt_thmb_1" "rt_wrst" -0.133747 -0.924481 0.736153 -4.6825 -81.87957 -169.763341 0 0 0 0 0 0
$definebone "rt_thmb_2" "rt_thmb_1" 0.694773 0.000001 0 -0.007844 8.453019 0.434705 0 0 0 0 0 0
$definebone "rt_thmb_3" "rt_thmb_2" 0.569564 -0.000001 0 -5.684199 48.266075 -0.685826 0 0 0 0 0 0

$include "quake4.qci"

$sequence "idle" {
	"v_q4_lightninggun_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "raise" {
	"v_q4_lightninggun_anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "fire" {
	"v_q4_lightninggun_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "lower" {
	"v_q4_lightninggun_anims\lower.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}
