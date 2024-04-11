// Created by Crowbar 0.74

$modelname "weapons\quake4\v_q4_grenadelauncher.mdl"

$bodygroup "gun"
{
	studio "md5mesh.001.smd"
}
$bodygroup "arms"
{
	studio "md5mesh.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -2.785 -7.8 -5.132

$cdmaterials "models\weapons\quake4\grenadelauncher\"
$cdmaterials "models\weapons\quake4\"

// This list shows the VMT file names used in the SMD files.
// "mgl_lo.vmt"
// "inview_arms.vmt"

$attachment "muzzle" "barrel" 0 0 0 rotate 0 0 0

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -2.828 -9.677 -11.054 18.428 4.108 0.789

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "origin" 0 -5.638784 -8.422772 6.761958 0 0
// $hbox 0 "rt_elbo" -5.712616 -3.558517 -1.269011 5.032483 1.41672 2.524528
// $hbox 0 "rt_wrst" -2.570451 -2.631478 -1.414789 1.43868 2.004745 1.403582
// $hbox 0 "body" -0.755854 -1.555587 -4.533083 0.755855 3.079269 8.293672
// $hbox 0 "ammo_can" -3.09764 -3.406273 -1.313588 0.108555 0.121201 1.331959
// $hbox 0 "slide" -3.958062 -0.44359 -0.648993 1.658762 0.632894 0.648989
// $hbox 0 "lft_shldr" 0 -2.227731 -2.634021 8.31948 1.87605 1.315808
// $hbox 0 "lft_elbo" -1.048955 -2.050144 -1.821805 6.346658 1.656218 0.948936
// $hbox 0 "lft_wrst" -1.349936 -2.184797 -2.035817 2.854373 2.470874 1.356903
// $hbox 0 "lft_mddl_1" -0.992649 -0.462519 -0.581559 0.814389 1.542621 0.465319
// $hbox 0 "lft_pnky_1" -0.856596 -0.568394 -0.765454 0.564134 0.697886 0.539306
// $hbox 0 "lft_thmb_1" -0.725057 -0.93914 -1.161216 1.036497 1.372344 0.753669
// $hbox 0 "rt_ring_1" -1.555474 -0.29933 -1.096958 0.917833 2.637168 0.907867
// $hbox 0 "rt_ring_2" -0.483336 -0.353818 -0.569668 1.013272 0.957859 0.831939
// $hbox 0 "rt_thmb_1" -0.807421 -0.580064 -0.804311 0.921977 1.250941 0.52147

$definebone "origin" "" 0 0 0 -6.000014 0 0 0 0 0 0 0 0
$definebone "rt_elbo" "origin" 5.903139 -5.638784 -6.44221 5.729102 -172.206746 -115.475782 0 0 0 0 0 0
$definebone "rt_wrst" "rt_elbo" -4.245865 0.000006 0 43.153695 16.425837 135.678634 0 0 0 0 0 0
$definebone "body" "rt_wrst" -0.803986 -2.258263 0.369246 -7.067319 -50.315203 80.77616 0 0 0 0 0 0
$definebone "ammo_can" "body" -0.596068 2.826436 2.820089 0 0 0.000001 0 0 0 0 0 0
$definebone "barrel" "body" 0.000003 2.433868 8.293672 -89.999982 0 0 0 0 0 0 0 0
$definebone "grenade_reloadable" "body" 0.001692 2.358368 4.725718 0 0 0.000001 0 0 0 0 0 0
$definebone "slide" "body" 0.000002 2.433868 5.545012 -89.999982 0 0 0 0 0 0 0 0
$definebone "lft_shldr" "origin" 6.761958 -1.139288 -8.422772 11.409995 2.95142 131.997736 0 0 0 0 0 0
$definebone "lft_elbo" "lft_shldr" 6.427486 0 -0.000001 13.946708 55.602463 -9.37021 0 0 0 0 0 0
$definebone "lft_wrst" "lft_elbo" 4.896362 0.000004 -0.000003 27.062857 -72.906874 -131.662606 0 0 0 0 0 0
$definebone "lft_mddl_1" "lft_wrst" 1.860991 -1.83174 0.361926 2.955224 -137.141046 -175.602497 0 0 0 0 0 0
$definebone "lft_mddl_2" "lft_mddl_1" 0.653439 0.000002 0 -2.977203 33.443495 4.493827 0 0 0 0 0 0
$definebone "lft_mddl_3" "lft_mddl_2" 0.541502 -0.000003 -0.000023 0.002807 12.077955 -0.000566 0 0 0 0 0 0
$definebone "lft_ndx_1" "lft_wrst" 1.627672 -1.740484 0.940831 10.049086 -105.690525 -163.411784 0 0 0 0 0 0
$definebone "lft_ndx_2" "lft_ndx_1" 0.620922 0 0 2.287765 39.850711 -2.738108 0 0 0 0 0 0
$definebone "lft_ndx_3" "lft_ndx_2" 0.516571 0 -0.000001 0.000059 6.181591 -0.000056 0 0 0 0 0 0
$definebone "lft_pnky_1" "lft_wrst" 1.752022 -1.619514 -0.726688 3.771528 -136.580342 161.02268 0 0 0 0 0 0
$definebone "lft_pnky_2" "lft_pnky_1" 0.419056 0.000002 0 -2.847602 31.515377 4.632025 0 0 0 0 0 0
$definebone "lft_pnky_3" "lft_pnky_2" 0.465913 0 0 -0.000003 10.734713 0.000006 0 0 0 0 0 0
$definebone "lft_ring_5" "lft_wrst" 1.825355 -1.833566 -0.227805 0.816105 -133.72255 -178.321978 0 0 0 0 0 0
$definebone "lft_ring_2" "lft_ring_5" 0.547582 -0.000004 0 -3.864942 29.864456 6.695243 0 0 0 0 0 0
$definebone "lft_ring_3" "lft_ring_2" 0.481604 0 -0.000002 0.000002 24.523113 0.000004 0 0 0 0 0 0
$definebone "lft_thmb_1" "lft_wrst" 0.059855 -0.808952 0.803644 -14.993449 -113.378606 -12.895216 0 0 0 0 0 0
$definebone "lft_thmb_2" "lft_thmb_1" 0.694839 0 0 -0.000001 15.760692 -0.000001 0 0 0 0 0 0
$definebone "lft_thmb_3" "lft_thmb_2" 0.569483 0 0 -0.000002 49.348168 0 0 0 0 0 0 0
$definebone "rt_ndx_1" "rt_wrst" -1.712708 -1.832355 0.976399 -28.258335 -82.580348 13.414603 0 0 0 0 0 0
$definebone "rt_ndx_2" "rt_ndx_1" 0.44912 0.029195 -0.041301 1.579591 2.914928 -13.434431 0 0 0 0 0 0
$definebone "rt_ndx_3" "rt_ndx_2" 0.47265 0.083351 -0.026952 2.837177 61.137693 3.527474 0 0 0 0 0 0
$definebone "rt_ring_1" "rt_wrst" -2.570451 -2.631478 -0.482558 -3.14783 -55.315353 16.910618 0 0 0 0 0 0
$definebone "rt_ring_2" "rt_ring_1" 0.547687 0.000002 0 3.714428 14.477209 -8.576491 0 0 0 0 0 0
$definebone "rt_ring_3" "rt_ring_2" 0.481604 0 0 -3.912898 59.165223 3.176304 0 0 0 0 0 0
$definebone "rt_thmb_1" "rt_wrst" -0.133749 -0.924482 0.736151 -4.682556 -81.879509 -169.763437 0 0 0 0 0 0
$definebone "rt_thmb_2" "rt_thmb_1" 0.694773 0 -0.000001 -0.007849 8.453075 0.434646 0 0 0 0 0 0
$definebone "rt_thmb_3" "rt_thmb_2" 0.569563 -0.000001 0 -5.683225 48.265907 -0.685028 0 0 0 0 0 0


$sequence "idle" {
	"v_q4_grenadelauncher_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "idle_empty" {
	"v_q4_grenadelauncher_anims\idle_empty.smd"
	activity "ACT_VM_IDLE_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "raise" {
	"v_q4_grenadelauncher_anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "raise_empty" {
	"v_q4_grenadelauncher_anims\raise_empty.smd"
	activity "ACT_VM_DRAW_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload" {
	"v_q4_grenadelauncher_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "fire" {
	"v_q4_grenadelauncher_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "fire_empty" {
	"v_q4_grenadelauncher_anims\fire_empty.smd"
	activity "ACT_VM_PRIMARYATTACK_EMPTY" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "lower" {
	"v_q4_grenadelauncher_anims\lower.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "lower_empty" {
	"v_q4_grenadelauncher_anims\lower_empty.smd"
	activity "ACT_VM_HOLSTER_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}
