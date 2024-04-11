// Created by Crowbar 0.74

$modelname "weapons\quake4\v_q4_rocketlauncher.mdl"

$bodygroup "gun"
{
	studio "md5mesh.001.smd"
}
$bodygroup "arms"
{
	studio "md5mesh.smd"
}
$bodygroup "mod"
{
	blank
	studio "md5mesh.002.smd"
}
$bodygroup "gui"
{
	studio "md5mesh.003.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -1.896 -6.126 -4.715

$cdmaterials "models\weapons\quake4\rocketlauncher\"
$cdmaterials "models\weapons\quake4\"

// This list shows the VMT file names used in the SMD files.
// "rl_lo.vmt"
// "inview_arms.vmt"
// "rl_seeker.vmt"
// "rlgui.vmt"

$attachment "muzzle" "muzzle_flash" 0 0 0 rotate 0 0 0

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -6.258 -9.324 -11.53 18.51 5.532 2.1

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "origin" 0 -6.919735 -9.846748 9.067285 1.055378 0
// $hbox 0 "rt_elbo" -5.712617 -3.558516 -1.269011 5.032479 1.416719 2.524529
// $hbox 0 "rt_wrst" -2.24807 -2.512356 -1.619202 1.984597 2.36325 1.935301
// $hbox 0 "body" -1.629777 -1.948347 -8.770885 2.274401 3.757223 9.458795
// $hbox 0 "reload_rack" -0.63837 0 -1.641971 0.638382 1.071316 2.10994
// $hbox 0 "rocket" -0.356073 -0.380589 -0.25987 0.697137 0.781539 3.073168
// $hbox 0 "lft_shldr" 0 -2.22773 -2.634023 8.319479 1.876052 1.315805
// $hbox 0 "lft_elbo" -0.915163 -1.897399 -1.821807 6.346658 1.791911 0.948935
// $hbox 0 "lft_wrst" -1.596581 -2.024408 -1.224832 2.438363 2.279355 1.356905
// $hbox 0 "lft_mddl_1" -1.74462 -0.437487 -0.58156 0.814395 0.566839 0.465318
// $hbox 0 "lft_pnky_1" -0.985277 -0.55055 -0.735598 0.564139 0.623964 0.544101
// $hbox 0 "lft_thmb_1" -0.767887 -0.500202 -1.213193 1.036503 1.356735 1.322375
// $hbox 0 "rt_ring_1" -1.681737 -0.779599 -0.813442 0.917838 1.245657 1.195488
// $hbox 0 "rt_thmb_1" -1.032035 -0.587731 -0.603141 0.921983 1.373147 0.792476

$definebone "origin" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "rt_elbo" "origin" 8.17637 -6.919735 -8.741382 12.269529 -169.421422 -102.660953 0 0 0 0 0 0
$definebone "rt_wrst" "rt_elbo" -4.953506 0.000003 0.000004 41.092648 -9.487835 101.334517 0 0 0 0 0 0
$definebone "body" "rt_wrst" -0.912002 -2.465814 1.935301 4.601081 -59.026693 81.311073 0 0 0 0 0 0
$definebone "iris_bone_1" "body" -0.275599 2.030761 0.073186 0.000001 -0.000001 -173.391811 0 0 0 0 0 0
$definebone "iris_bone_2" "body" 0.310928 2.030761 0.073186 0.000057 60.000036 -162.620725 0 0 0 0 0 0
$definebone "iris_bone_3" "body" 0.604192 2.538708 0.073186 0 119.99999 -7.419919 0 0 0 0 0 0
$definebone "iris_bone_4" "body" 0.310928 3.046655 0.073188 -0.000573 179.985921 -4.360094 0 0 0 0 0 0
$definebone "iris_bone_5" "body" -0.275599 3.046655 0.073188 -0.000057 -120.000058 -7.419976 0 0 0 0 0 0
$definebone "iris_bone_6" "body" -0.568862 2.538708 0.073188 0.000058 -60.000036 -162.620725 0 0 0 0 0 0
$definebone "muzzle_flash" "body" 0 2.491075 8.908563 -89.999927 0.000001 0 0 0 0 0 0 0
$definebone "ram" "body" 0 2.490835 -3.636618 0.000001 -0.000001 0 0 0 0 0 0 0
$definebone "reload_rack" "body" -0.000001 1.415288 -2.122987 0.000001 -0.000001 0 0 0 0 0 0 0
$definebone "clmp_1" "reload_rack" 0.517814 0.921419 0.91322 0.000001 -0.000001 0 0 0 0 0 0 0
$definebone "clmp_2" "reload_rack" 0.517814 0.921418 -1.205501 0.000001 -0.000001 0 0 0 0 0 0 0
$definebone "clmp_3" "reload_rack" -0.517812 0.921419 0.913221 0.000001 -0.000001 0 0 0 0 0 0 0
$definebone "clmp_4" "reload_rack" -0.517813 0.921418 -1.205501 0.000001 -0.000001 0 0 0 0 0 0 0
$definebone "rocket" "reload_rack" 0 1.071316 -1.415233 0.000001 -0.000001 0 0 0 0 0 0 0
$definebone "fin_1" "rocket" 0.697137 -0.380589 0.701067 0 148.999948 90.000037 0 0 0 0 0 0
$definebone "fin_2" "rocket" 0 0.781539 0.464688 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "lft_shldr" "origin" 9.067285 1.055378 -9.846748 7.385884 -22.791003 94.297851 0 0 0 0 0 0
$definebone "lft_elbo" "lft_shldr" 6.427485 0.000002 -0.000001 11.077508 40.580196 -12.643631 0 0 0 0 0 0
$definebone "lft_wrst" "lft_elbo" 4.896362 -0.000002 0.000001 13.550567 -66.187627 -160.038135 0 0 0 0 0 0
$definebone "lft_mddl_1" "lft_wrst" 1.860991 -1.83174 0.361924 -0.487451 -98.037072 -174.725815 0 0 0 0 0 0
$definebone "lft_mddl_2" "lft_mddl_1" 0.653439 0.000004 0 -2.974798 33.44343 4.492788 0 0 0 0 0 0
$definebone "lft_mddl_3" "lft_mddl_2" 0.541506 -0.000002 0 0 12.078237 -0.000001 0 0 0 0 0 0
$definebone "lft_ndx_1" "lft_wrst" 1.62767 -1.740483 0.940829 -5.391247 -91.580597 -164.559215 0 0 0 0 0 0
$definebone "lft_ndx_2" "lft_ndx_1" 0.620921 -0.000002 0 2.287824 39.850701 -2.738164 0 0 0 0 0 0
$definebone "lft_ndx_3" "lft_ndx_2" 0.516573 0.000002 0 0.000003 6.181633 0.000001 0 0 0 0 0 0
$definebone "lft_pnky_1" "lft_wrst" 1.752018 -1.619513 -0.72669 10.063491 -88.270967 162.885313 0 0 0 0 0 0
$definebone "lft_pnky_2" "lft_pnky_1" 0.419055 0.000004 -0.000001 -2.847601 31.515312 4.632013 0 0 0 0 0 0
$definebone "lft_pnky_3" "lft_pnky_2" 0.465913 0.000002 0.000002 0 10.734705 -0.000007 0 0 0 0 0 0
$definebone "lft_ring_5" "lft_wrst" 1.825352 -1.833566 -0.227807 -0.498449 -92.300328 -178.201999 0 0 0 0 0 0
$definebone "lft_ring_2" "lft_ring_5" 0.547581 0 0.000001 -3.864944 29.864456 6.695182 0 0 0 0 0 0
$definebone "lft_ring_3" "lft_ring_2" 0.481605 0.000002 0 0.000002 24.523104 -0.000001 0 0 0 0 0 0
$definebone "lft_thmb_1" "lft_wrst" 0.059853 -0.808951 0.803643 -19.568229 -82.483584 -50.491859 0 0 0 0 0 0
$definebone "lft_thmb_2" "lft_thmb_1" 0.694839 0.000001 -0.000005 0.000055 18.61133 0.000052 0 0 0 0 0 0
$definebone "lft_thmb_3" "lft_thmb_2" 0.569482 0 0 0.000002 38.360449 -0.000006 0 0 0 0 0 0
$definebone "rt_ndx_1" "rt_wrst" -1.840227 -1.661452 1.022719 -22.244283 -133.894452 15.840279 0 0 0 0 0 0
$definebone "rt_ndx_2" "rt_ndx_1" 0.44912 0.029189 -0.0413 7.772858 47.427433 -10.51624 0 0 0 0 0 0
$definebone "rt_ndx_3" "rt_ndx_2" 0.47265 0.083348 -0.026951 2.836884 70.329884 3.526843 0 0 0 0 0 0
$definebone "rt_ring_1" "rt_wrst" -1.653875 -1.922118 -0.420926 -1.235583 -65.40027 17.354951 0 0 0 0 0 0
$definebone "rt_ring_2" "rt_ring_1" 0.547686 0 -0.000001 10.28465 74.877848 -2.041905 0 0 0 0 0 0
$definebone "rt_ring_3" "rt_ring_2" 0.481604 -0.000001 0.000002 -3.914049 30.130133 3.175505 0 0 0 0 0 0
$definebone "rt_thmb_1" "rt_wrst" -0.133749 -0.92448 0.73615 -0.154698 -86.077514 172.706155 0 0 0 0 0 0
$definebone "rt_thmb_2" "rt_thmb_1" 0.694773 0.000001 0 -0.007333 39.37687 0.436936 0 0 0 0 0 0
$definebone "rt_thmb_3" "rt_thmb_2" 0.569561 0 0.000006 -5.692792 15.979219 -0.693337 0 0 0 0 0 0


$sequence "idle" {
	"v_q4_rocketlauncher_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "raise" {
	"v_q4_rocketlauncher_anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "fire" {
	"v_q4_rocketlauncher_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "fire_multiplayer" {
	"v_q4_rocketlauncher_anims\fire_multiplayer.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "lower" {
	"v_q4_rocketlauncher_anims\lower.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload" {
	"v_q4_rocketlauncher_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload_empty" {
	"v_q4_rocketlauncher_anims\reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}
