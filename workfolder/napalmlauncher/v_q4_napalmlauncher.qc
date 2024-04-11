// Created by Crowbar 0.74

$modelname "weapons\quake4\c_q4_napalmlauncher.mdl"

$scale 1.75

$bodygroup "gun"
{
	studio "mesh_noarms.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -2.085 -7.375 -5.156

$cdmaterials "models\weapons\quake4\napalmlauncher\"
$cdmaterials "models\weapons\quake4\"

// This list shows the VMT file names used in the SMD files.
// "inview_arms.vmt"
// "flamegun_tube.vmt"
// "flamegun_main.vmt"
// "flamegun_glass.vmt"
// "flame_juice.vmt"
// "flamegun_cannister.vmt"
// "screen.vmt"

$attachment "muzzle" "muzzle_flash" 0 0 0 rotate 0 0 0

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -6.335 -9.524 -13.061 21.086 5.353 2.75

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "origin" 0 -6.919735 -9.846748 9.067285 1.055378 0
// $hbox 0 "lft_shldr" 0 -2.227729 -2.634024 8.204393 1.876052 1.315803
// $hbox 0 "lft_elbo" -0.93204 -1.466585 -1.821757 6.498279 1.405852 0.948936
// $hbox 0 "lft_wrst" -1.162221 -2.020804 -1.59588 2.270271 2.404222 1.48273
// $hbox 0 "lft_thmb_1" -0.77349 -0.649684 -0.726246 0.991946 1.106439 1.367651
// $hbox 0 "rt_elbo" -5.76434 -3.558516 -1.269011 5.032478 1.416704 2.524529
// $hbox 0 "rt_wrst" -2.249905 -2.476812 -1.616521 1.985987 2.3547 1.935301
// $hbox 0 "offset" -9.540451 -3.806726 -2.1949 5.28603 2.163083 2.176189
// $hbox 0 "canister" -4.789185 -4.830729 -1.503676 2.084129 2.033258 1.325589
// $hbox 0 "light_pivot" -0.380722 -2.433672 -1.10391 3.901834 0.465243 0.656286
// $hbox 0 "plunger" -3.970323 -0.922464 -2.356434 0.128821 1.261128 0.796225
// $hbox 0 "rt_ndx_1" -0.615595 -0.714303 -0.888197 0.722156 0.516514 0.371806
// $hbox 0 "rt_ring_1" -1.691898 -0.347292 -0.816815 0.891145 1.106606 1.158372
// $hbox 0 "rt_thmb_1" -0.893106 -0.523239 -0.59485 0.902911 1.31286 0.858156

$definebone "origin" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "lft_shldr" "origin" 9.067285 1.055378 -9.846748 22.503144 -35.857824 93.204761 0 0 0 0 0 0
$definebone "lft_elbo" "lft_shldr" 6.427489 0.000002 -0.000003 16.138557 74.03755 -4.545791 0 0 0 0 0 0
$definebone "lft_wrst" "lft_elbo" 4.896366 0.000002 0.000003 21.467068 -82.99591 -150.451842 0 0 0 0 0 0
$definebone "lft_mddl_1" "lft_wrst" 1.860994 -1.831737 0.361928 -0.487568 -98.037011 -174.725856 0 0 0 0 0 0
$definebone "lft_mddl_2" "lft_mddl_1" 0.65344 0.000002 0.000002 -2.974795 33.443427 4.492801 0 0 0 0 0 0
$definebone "lft_mddl_3" "lft_mddl_2" 0.5415 0.000002 0.000001 0.000001 12.078238 0.000013 0 0 0 0 0 0
$definebone "lft_ndx_1" "lft_wrst" 1.627674 -1.740481 0.940831 -5.391249 -91.580542 -164.559147 0 0 0 0 0 0
$definebone "lft_ndx_2" "lft_ndx_1" 0.620924 0 0 2.287877 39.850701 -2.738158 0 0 0 0 0 0
$definebone "lft_ndx_3" "lft_ndx_2" 0.516572 -0.000004 0.000002 0 6.181579 0.000009 0 0 0 0 0 0
$definebone "lft_pnky_1" "lft_wrst" 1.752026 -1.619509 -0.726685 10.063541 -88.270906 162.885422 0 0 0 0 0 0
$definebone "lft_pnky_2" "lft_pnky_1" 0.419057 -0.000002 0 -2.8476 31.515312 4.632081 0 0 0 0 0 0
$definebone "lft_pnky_3" "lft_pnky_2" 0.465912 -0.000004 0 0.000002 10.734702 -0.000051 0 0 0 0 0 0
$definebone "lft_ring_5" "lft_wrst" 1.825357 -1.833562 -0.227803 -0.498456 -92.300274 -178.20193 0 0 0 0 0 0
$definebone "lft_ring_2" "lft_ring_5" 0.547582 0 -0.000001 -3.864935 29.864452 6.695194 0 0 0 0 0 0
$definebone "lft_ring_3" "lft_ring_2" 0.481603 -0.000002 -0.000001 0.000002 24.523109 0.000011 0 0 0 0 0 0
$definebone "lft_thmb_1" "lft_wrst" 0.059856 -0.808949 0.803643 -45.219322 -116.041595 -31.678544 0 0 0 0 0 0
$definebone "lft_thmb_2" "lft_thmb_1" 0.694841 0.000001 0.000001 -0.000004 -1.280215 0.000007 0 0 0 0 0 0
$definebone "lft_thmb_3" "lft_thmb_2" 0.569483 0.000001 0.000001 -0.000003 0.320517 0.000065 0 0 0 0 0 0
$definebone "rt_elbo" "origin" 8.17637 -6.919735 -8.741382 12.269529 -169.421422 -102.660953 0 0 0 0 0 0
$definebone "rt_wrst" "rt_elbo" -4.953506 0.000003 0.000004 41.092648 -9.487835 101.334517 0 0 0 0 0 0
$definebone "body" "rt_wrst" -0.912002 -2.465814 1.935301 4.601081 -59.026693 73.963927 0 0 0 0 0 0
$definebone "offset" "body" -0.684735 -0.069104 0.49172 82.617169 -112.971998 -112.801114 0 0 0 0 0 0
$definebone "canister" "offset" -5.074855 -2.949073 0.006212 -0.000002 -0.000002 -0.000001 0 0 0 0 0 0
$definebone "light_pivot" "offset" -6.326648 -2.564707 1.571455 -38.477587 172.451335 89.594822 0 0 0 0 0 0
$definebone "muzzle_flash" "offset" -9.395331 -1.046511 0.009379 0.008288 -171.978139 -179.999418 0 0 0 0 0 0
$definebone "reticle" "offset" -2.918285 1.20552 0.000689 -89.999921 -3.49997 0 0 0 0 0 0 0
$definebone "tube" "offset" -1.254601 0.13109 0.779292 0.459511 6.434372 -7.144498 0 0 0 0 0 0
$definebone "plunger" "tube" 0.000002 0 -0.000001 -0.000002 -0.000002 -0.000001 0 0 0 0 0 0
$definebone "tube1" "offset" -1.254601 0.13109 0.779292 0.459511 6.434372 -7.144498 0 0 0 0 0 0
$definebone "peice2" "tube1" 0.000002 0 -0.000001 -0.000002 -0.000002 -0.000001 0 0 0 0 0 0
$definebone "tube2" "offset" -1.254601 0.13109 0.779292 0.459511 6.434372 -7.144498 0 0 0 0 0 0
$definebone "peice3" "tube2" 0.000002 0 -0.000001 -0.000002 -0.000002 -0.000001 0 0 0 0 0 0
$definebone "tube3" "offset" -1.254601 0.13109 0.779292 0.459511 6.434372 -7.144498 0 0 0 0 0 0
$definebone "peice1" "tube3" 0.000002 0 -0.000001 -0.000002 -0.000002 -0.000001 0 0 0 0 0 0
$definebone "rt_ndx_1" "rt_wrst" -1.840227 -1.661452 1.022719 -22.244283 -133.894452 15.840279 0 0 0 0 0 0
$definebone "rt_ndx_2" "rt_ndx_1" 0.44912 0.029189 -0.0413 7.772858 47.427433 -10.51624 0 0 0 0 0 0
$definebone "rt_ndx_3" "rt_ndx_2" 0.47265 0.083348 -0.026951 2.836884 70.329884 3.526843 0 0 0 0 0 0
$definebone "rt_ring_1" "rt_wrst" -1.653875 -1.922118 -0.420926 -1.235583 -65.40027 17.354951 0 0 0 0 0 0
$definebone "rt_ring_2" "rt_ring_1" 0.547686 0 -0.000001 10.28465 74.877848 -2.041905 0 0 0 0 0 0
$definebone "rt_ring_3" "rt_ring_2" 0.481604 -0.000001 0.000002 -3.914049 30.130133 3.175505 0 0 0 0 0 0
$definebone "rt_thmb_1" "rt_wrst" -0.133749 -0.92448 0.73615 -0.154698 -86.077514 172.706155 0 0 0 0 0 0
$definebone "rt_thmb_2" "rt_thmb_1" 0.694773 0.000001 0 -0.007333 39.37687 0.436936 0 0 0 0 0 0
$definebone "rt_thmb_3" "rt_thmb_2" 0.569561 0 0.000006 -5.692792 15.979219 -0.693337 0 0 0 0 0 0

$include "quake4.qci"

$sequence "idle" {
	"v_q4_napalmlauncher_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "idle_empty" {
	"v_q4_napalmlauncher_anims\idle_empty.smd"
	activity "ACT_VM_IDLE_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 24
	loop
}

$sequence "raise" {
	"v_q4_napalmlauncher_anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload" {
	"v_q4_napalmlauncher_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 23 "Weapon_NapalmGun.Reload1" }
	{ event 5004 73 "Weapon_NapalmGun.Reload2" }
	{ event 5004 95 "Weapon_NapalmGun.Reload" }
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload_empty" {
	"v_q4_napalmlauncher_anims\reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "fire" {
	"v_q4_napalmlauncher_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 5004 15 "Weapon_NapalmGun.Reload" }
	{ event 5004 0 "Weapon_NapalmGun.Fire" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "fire_empty" {
	"v_q4_napalmlauncher_anims\fire_empty.smd"
	activity "ACT_VM_PRIMARYATTACK_EMPTY" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 5004 0 "Weapon_NapalmGun.Fire" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 24
}

$sequence "lower" {
	"v_q4_napalmlauncher_anims\lower.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}
