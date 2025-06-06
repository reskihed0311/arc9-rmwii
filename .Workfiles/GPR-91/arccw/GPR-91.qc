$modelname "arccw_r_bo6_gpr91.mdl"

$maxverts 655553

$bodygroup "receiver"
{
    studio "receiver_def.dmx"
}

$bodygroup "carryhandle"
{
    studio "carryhandle.dmx"
	blank
}

$bodygroup "fs"
{
    studio "fs_def.dmx"
	blank
}

$bodygroup "muzzle"
{
    studio "muzzle_def.dmx"
	blank
}


$bodygroup "barrel"
{
    studio "hg_def.dmx"
	blank
}




$bodygroup "mag"
{
    studio "magdef.dmx"
	studio "xmag.dmx"
}


$bodygroup "pgrip"
{
    studio "pgripdef.dmx"
}


$bodygroup "ammo"
{
   studio "ammo.dmx"
   blank
}

$bodygroup "stock"
{
   studio "stock.dmx"
   blank
}


$cdmaterials "models\r_bo6\gpr91"
$cdmaterials "models\r_mwii\ammo_shared"



$attachment "1" "muzzle" 0.00 0.00 0.00 rotate -90 0 0
$attachment "2" "eject" 0.00 0.00 0.00 rotate -0 150 -180
$attachment "3" "camera_root" 0.00 0.00 0.00 rotate -0 -90 0

$bonemerge "camera_root"
$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Wrist"
$bonemerge "ValveBiped.Bip01_L_Wrist"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"




$sequence "idle" {
	"anims\idle.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


$sequence "fire" {
	"anims\fire.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


$sequence "fire_iron" {
	"anims\fire_iron.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}




$sequence "ready" {
	"anims\equip.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 14 "r_bo6_gpr91.BoltBack" }
	{ event 5004 21 "r_bo6_gpr91.BoltFwd" }
	snap
	fps 30
}




$sequence "draw" {
	"anims\draw.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}



$sequence "holster" {
	"anims\holster.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


$sequence "reload_30" {
	"anims\reload_30.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 8 "r_bo6_gpr91.Clipout" }
	{ event 5004 42 "r_bo6_gpr91.Cliphit" }
	{ event 5004 48 "r_bo6_gpr91.Clipin" }
	snap
	fps 30
}


$sequence "reload_30_soh" {
	"anims\reload_30_soh.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 5 "r_bo6_gpr91.Clipout" }
	{ event 5004 33 "r_bo6_gpr91.Cliphit" }
	{ event 5004 39 "r_bo6_gpr91.Clipin" }
	snap
	fps 30
}



$sequence "reload_empty_30" {
	"anims\reload_empty_30.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 8 "r_bo6_gpr91.Clipout" }
	{ event 5004 42 "r_bo6_gpr91.Cliphit" }
	{ event 5004 48 "r_bo6_gpr91.Clipin" }
	{ event 5004 68 "r_bo6_gpr91.BoltBack" }
	{ event 5004 72 "r_bo6_gpr91.BoltFwd" }
	snap
	fps 30
}


$sequence "reload_empty_30_soh" {
	"anims\reload_empty_30_soh.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 5 "r_bo6_gpr91.Clipout" }
	{ event 5004 33 "r_bo6_gpr91.Cliphit" }
	{ event 5004 39 "r_bo6_gpr91.Clipin" }
    { event 5004 57 "r_bo6_gpr91.BoltBack" }
    { event 5004 60 "r_bo6_gpr91.BoltFwd" }
	snap
	fps 30
}



$sequence "reload_45" {
	"anims\reload_45.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 10 "r_bo6_gpr91.Clipout" }
	{ event 5004 48 "r_bo6_gpr91.Cliphit" }
	{ event 5004 53 "r_bo6_gpr91.Clipin" }
	snap
	fps 30
}

$sequence "reload_45_soh" {
	"anims\reload_45_soh.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 4 "r_bo6_gpr91.Clipout" }
	{ event 5004 35 "r_bo6_gpr91.Cliphit" }
	{ event 5004 38 "r_bo6_gpr91.Clipin" }
	snap
	fps 30
}


$sequence "reload_empty_45" {
	"anims\reload_empty_45.dmx"
	activity "ACT_VM_IDLE" 1
		{ event 5004 10 "r_bo6_gpr91.Clipout" }
	{ event 5004 48 "r_bo6_gpr91.Cliphit" }
	{ event 5004 53 "r_bo6_gpr91.Clipin" }
    { event 5004 75 "r_bo6_gpr91.BoltBack" }
	{ event 5004 78 "r_bo6_gpr91.BoltFwd" }
	snap
	fps 30
}



$sequence "reload_empty_soh_45" {
	"anims\reload_empty_45_soh.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 4 "r_bo6_gpr91.Clipout" }
	{ event 5004 35 "r_bo6_gpr91.Cliphit" }
	{ event 5004 38 "r_bo6_gpr91.Clipin" }
    { event 5004 59 "r_bo6_gpr91.BoltBack" }
    { event 5004 62 "r_bo6_gpr91.BoltFwd" }
	snap
	fps 30
}



