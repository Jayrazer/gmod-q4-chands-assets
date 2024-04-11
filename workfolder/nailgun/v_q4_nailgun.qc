// Created by Crowbar 0.74

$modelname "weapons\quake4\c_q4_nailgun.mdl"

$scale 1.75

$bodygroup "gun"
{
	studio "md5mesh.smd"
}
$bodygroup "scope"
{
	blank
	studio "md5mesh.007.smd"
}
$bodygroup "arms"
{
	blank
}
$bodygroup "clip"
{
	studio "md5mesh.002.smd"
	studio "md5mesh.001.smd"
}
$bodygroup "gui"
{
	studio "md5mesh.005.smd"
}
$bodygroup "gui2"
{
	blank
	studio "md5mesh.009.smd"
}
$bodygroup "drum"
{
	studio "md5mesh.006.smd"
}
$bodygroup "rof"
{
	blank
	studio "md5mesh.004.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -1.905 -6.665 -4.452

$cdmaterials "models\weapons\quake4\nailgun\"
$cdmaterials "models\weapons\quake4\"

// This list shows the VMT file names used in the SMD files.
// "nailgun_body.vmt"
// "nailgun_mod_accuracy.vmt"
// "inview_arms.vmt"
// "nailgun_clip.vmt"
// "nailgun_mod_ammo.vmt"
// "mask.vmt"
// "scope.vmt"
// "nailgun_drum.vmt"
// "nailgun_mod_rof.vmt"

$attachment "muzzle" "nailgun_rotating_firing_pins" 0 0 0 rotate 0 0 0

// Clipping box or view bounding box.
$cbox 0 0 0 0 0 0

// Bounding box or hull. Used for collision with a world object.
$bbox -5.317 -10.642 -10.305 18.647 6.831 1.4

// Hitbox info. Used for damage-based collision.
// The hitbox info below was automatically generated when compiled because no hitbox info was provided.
// $hboxset "default"
// $hbox 0 "origin" 0 -7.859434 -6.83768 6.300862 0 0
// $hbox 0 "rt_elbo" -5.712616 -3.558514 -1.269008 5.032477 1.416719 2.524532
// $hbox 0 "rt_wrst" -6.505949 -6.038044 -1.50602 1.984983 2.475744 1.356905
// $hbox 0 "nailgun_body" -1.355702 -1.730192 -3.956629 3.943781 4.569312 6.762264
// $hbox 0 "lft_shldr" 0 -2.227728 -2.634021 8.319481 1.876052 1.315809
// $hbox 0 "lft_elbo" -1.115547 -2.023282 -1.821808 6.346659 1.32395 0.948935
// $hbox 0 "lft_wrst" -1.33675 -2.056259 -1.980155 2.759433 2.447242 1.356907
// $hbox 0 "lft_mddl_1" -1.751919 -0.453577 -0.626603 0.814395 0.69385 0.469989
// $hbox 0 "lft_pnky_1" -0.895458 -0.704386 -0.737652 0.564141 0.682841 0.447268
// $hbox 0 "lft_thmb_1" -0.897413 -0.781295 -1.080933 1.036502 1.138158 1.147884
// $hbox 0 "rt_ring_1" -1.213406 -0.595565 -0.957333 0.942985 1.532886 1.006798
// $hbox 0 "rt_thmb_1" -0.491721 -0.488952 -1.007945 0.994502 1.075066 0.966678
// $hbox 0 "nailgun_magazine" -0.712809 -3.195411 -1.728657 0.712836 1.862598 1.726665
// $hbox 0 "nailgun_lft_magazine" -1.182716 -3.716094 -1.73953 1.778299 2.266747 2.73364
// $hbox 0 "nailgun_rt_magazine" -1.777694 -3.716096 -1.739528 1.184976 2.266747 2.733639
// $hbox 0 "nailgun_rotating_drum" -0.886161 -2.062502 -2.023162 0.725524 2.062388 2.023205

$definebone "origin" "" 0 0 0 3.000007 0 0 0 0 0 0 0 0
$definebone "rt_elbo" "origin" 5.439448 -7.859434 -6.83768 6.96881 -170.136242 -98.560579 0 0 0 0 0 0
$definebone "rt_wrst" "rt_elbo" -4.896897 0 -0.000001 37.568158 -14.806489 83.688109 0 0 0 0 0 0
$definebone "nailgun_body" "rt_wrst" -3.165766 -3.419044 -0.243001 14.616323 -51.634669 75.278001 0 0 0 0 0 0
$definebone "nailgun_lft_clasp" "nailgun_body" 1.230056 -0.271472 2.743843 0.000114 69.999972 0.000004 0 0 0 0 0 0
$definebone "nailgun_lft_hand_handle" "nailgun_body" 1.856016 1.598666 3.073645 0.008024 -36.000035 -179.975635 0 0 0 0 0 0
$definebone "nailgun_rotating_firing_pins" "nailgun_body" 0.000003 0.877036 6.762264 -89.999982 -1.561428 0 0 0 0 0 0 0
$definebone "nailgun_firingpin_1" "nailgun_rotating_firing_pins" 0.36426 -0.042802 1.570304 34.98497 1.099737 -88.082359 0 0 0 0 0 0
$definebone "nailgun_firingpin_nuckle_1" "nailgun_firingpin_1" 1.175881 -0.243742 0.000043 -0.000002 -0.000002 0.000003 0 0 0 0 0 0
$definebone "nailgun_firingpin_3" "nailgun_rotating_firing_pins" 0.364262 -1.338519 -0.822224 -17.4755 30.819115 26.719599 0 0 0 0 0 0
$definebone "nailgun_firingpin_nuckle_3" "nailgun_firingpin_3" 1.175881 -0.243741 0.000042 0.000002 0.000002 -0.000003 0 0 0 0 0 0
$definebone "nailgun_firingpin_5" "nailgun_rotating_firing_pins" 0.364262 1.381328 -0.748082 -15.846529 -31.623376 156.085163 0 0 0 0 0 0
$definebone "nailgun_firingpin_nuckle_5" "nailgun_firingpin_5" 1.175884 -0.243741 0.000044 0.000003 0.000003 0.000001 0 0 0 0 0 0
$definebone "lft_shldr" "origin" 6.300862 -1.491714 -4.755366 31.72364 28.911511 161.838464 0 0 0 0 0 0
$definebone "lft_elbo" "lft_shldr" 6.427488 0 0.000007 16.410658 78.116266 -3.402448 0 0 0 0 0 0
$definebone "lft_wrst" "nailgun_body" 3.943781 0.12499 1.325032 -49.692225 37.544211 -97.535463 0 0 0 0 0 0
$definebone "lft_mddl_1" "lft_wrst" 1.860993 -1.83174 0.361925 -8.872572 -102.819318 -172.392144 0 0 0 0 0 0
$definebone "lft_mddl_2" "lft_mddl_1" 0.653441 -0.000001 0.000002 -5.215299 75.467587 1.349832 0 0 0 0 0 0
$definebone "lft_mddl_3" "lft_mddl_2" 0.541503 -0.000002 -0.000001 -0.000004 12.078296 -0.000003 0 0 0 0 0 0
$definebone "lft_ndx_1" "lft_wrst" 1.627674 -1.740483 0.940831 -0.534087 -108.544028 -163.67517 0 0 0 0 0 0
$definebone "lft_ndx_2" "lft_ndx_1" 0.620921 0 -0.000001 2.688258 48.85886 -2.34632 0 0 0 0 0 0
$definebone "lft_ndx_3" "lft_ndx_2" 0.516572 0 0.000001 0.000003 26.76257 -0.000002 0 0 0 0 0 0
$definebone "lft_pnky_1" "lft_wrst" 1.752024 -1.619512 -0.726688 -14.793872 -117.56444 165.640721 0 0 0 0 0 0
$definebone "lft_pnky_2" "lft_pnky_1" 0.419056 -0.000002 0.000001 -2.847546 31.515309 4.632021 0 0 0 0 0 0
$definebone "lft_pnky_3" "lft_pnky_2" 0.465913 0 0 -0.000058 10.734701 0.000001 0 0 0 0 0 0
$definebone "lft_ring_5" "lft_wrst" 1.825357 -1.833564 -0.227805 -20.508089 -121.159756 -165.781764 0 0 0 0 0 0
$definebone "lft_ring_2" "lft_ring_5" 0.547581 0.000004 -0.000001 -5.454445 44.733381 5.480402 0 0 0 0 0 0
$definebone "lft_ring_3" "lft_ring_2" 0.481604 0.000001 0 -0.000005 24.523104 -0.000056 0 0 0 0 0 0
$definebone "lft_thmb_1" "lft_wrst" 0.059856 -0.808949 0.803644 -21.943712 -91.207088 -36.299566 0 0 0 0 0 0
$definebone "lft_thmb_2" "lft_thmb_1" 0.69484 -0.000001 0.000001 0.000002 16.84902 -0.000003 0 0 0 0 0 0
$definebone "lft_thmb_3" "lft_thmb_2" 0.569483 0.000001 0.000001 0.000003 60.367288 0 0 0 0 0 0 0
$definebone "rt_ndx_1" "rt_wrst" -1.627723 -1.740522 0.940831 -18.416471 -101.152144 3.835896 0 0 0 0 0 0
$definebone "rt_ndx_2" "rt_ndx_1" 0.620845 0.000001 0 1.857126 11.706565 -7.832048 0 0 0 0 0 0
$definebone "rt_ndx_3" "rt_ndx_2" 0.51661 0 -0.000001 0.5623 64.485646 4.492792 0 0 0 0 0 0
$definebone "rt_ring_1" "rt_wrst" -1.92255 -1.807748 -0.220901 1.9535 -52.940899 6.354504 0 0 0 0 0 0
$definebone "rt_ring_2" "rt_ring_1" 0.547685 -0.000002 0.000001 8.67435 52.019694 -1.180465 0 0 0 0 0 0
$definebone "rt_ring_3" "rt_ring_2" 0.481605 0 0 -3.913534 39.713766 3.175788 0 0 0 0 0 0
$definebone "rt_thmb_1" "rt_wrst" -0.059853 -0.808978 0.803644 -13.248447 -94.461202 -140.732469 0 0 0 0 0 0
$definebone "rt_thmb_2" "rt_thmb_1" 0.694775 -0.000002 -0.000001 0 23.344369 0.000001 0 0 0 0 0 0
$definebone "rt_thmb_3" "rt_thmb_2" 0.569563 0.000001 -0.000001 0.012206 41.6133 -0.013634 0 0 0 0 0 0
$definebone "nailgun_magazine" "rt_wrst" -5.670527 -5.21361 -0.808892 14.616381 -51.634608 75.277946 0 0 0 0 0 0
$definebone "nailgun_lft_magazine" "rt_wrst" -5.455563 -6.038044 -1.283186 14.616381 -51.634608 75.277946 0 0 0 0 0 0
$definebone "nailgun_rt_magazine" "rt_wrst" -6.505949 -4.711139 -0.841851 14.616381 -51.634608 75.277946 0 0 0 0 0 0
$definebone "nailgun_rotating_drum" "nailgun_body" 0.000003 0.877037 5.952187 -89.999982 -1.561428 0 0 0 0 0 0 0
$definebone "nailgun_firingpin_2" "nailgun_rotating_firing_pins" 0.364264 -1.381325 0.74808 15.846637 31.623434 -23.914804 0 0 0 0 0 0
$definebone "nailgun_firingpin_nuckle_2" "nailgun_firingpin_2" 1.175883 -0.24374 0.000043 0.000001 0 -0.000009 0 0 0 0 0 0
$definebone "nailgun_firingpin_4" "nailgun_rotating_firing_pins" 0.36426 0.042809 -1.570305 -34.984919 -1.09968 91.917722 0 0 0 0 0 0
$definebone "nailgun_firingpin_nuckle_4" "nailgun_firingpin_4" 1.175882 -0.243742 0.00004 -0.000003 0 0.000002 0 0 0 0 0 0
$definebone "nailgun_firingpin_6" "nailgun_rotating_firing_pins" 0.364262 1.338525 0.822221 17.475609 -30.819057 -153.280414 0 0 0 0 0 0
$definebone "nailgun_firingpin_nuckle_6" "nailgun_firingpin_6" 1.175879 -0.243741 0.000041 0.000009 0 -0.000004 0 0 0 0 0 0

$include "quake4.qci"

$sequence "idle" {
	"v_q4_nailgun_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "Ready"
	fps 24
	loop
}

$sequence "raise" {
	"v_q4_nailgun_anims\raise.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload" {
	"v_q4_nailgun_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "windup" {
	"v_q4_nailgun_anims\windup.smd"
	activity "ACT_VM_PULLPIN" 1
	{ event 5004 0 "Weapon_Doom3.Windup" }
	fadein 0.2
	fadeout 0.2
	node "Ready"
	fps 25
}

$sequence "winddown" {
	"v_q4_nailgun_anims\winddown.smd"
	activity "ACT_VM_RELEASE" 1
	{ event 5004 0 "Weapon_Doom3.Winddown" }
	fadein 0.2
	fadeout 0.2
	node "Ready"
	snap
	fps 25
}

$sequence "fire_fast" {
	"v_q4_nailgun_anims\fire_fast.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	fadein 0.2
	fadeout 0.2
	node "Fire"
	fps 24
}

$sequence "fire_slow" {
	"v_q4_nailgun_anims\fire_slow.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	fadein 0.2
	fadeout 0.2
	node "Fire"
	fps 24
}

$sequence "lower" {
	"v_q4_nailgun_anims\lower.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload_mag1" {
	"v_q4_nailgun_anims\reload_mag1.smd"
	activity "ACT_VM_RELOAD_SILENCED" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload_mag2" {
	"v_q4_nailgun_anims\reload_mag2.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}

$sequence "reload_mag1_finish" {
	"v_q4_nailgun_anims\reload_mag1_finish.smd"
	activity "ACT_VM_RELOAD_DEPLOYED" 1
	fadein 0.2
	fadeout 0.2
	fps 24
}
