$modelname "arccw_r_mwiii_xrkstalker.mdl"

$maxverts 655553

$bodygroup "receiver"
{
    studio "receiver.dmx"
}

$bodygroup "irons"
{
    studio "irons.dmx"
	blank
}


$bodygroup "guard"
{
    studio "guarddef.dmx"
}


$bodygroup "bar"
{
    studio "bardef.dmx"
    blank
}


$bodygroup "bolt"
{
    studio "bolt.dmx"
    blank
}

$bodygroup "stock"
{
    studio "stockdef.dmx"
	blank
}


$bodygroup "mag"
{
    studio "magdef.dmx"
}


$bodygroup "muzzle"
{
    studio "muzzle_bardef.dmx"
	blank
}

$bodygroup "pgrip"
{
    studio "pgrip.dmx"
	blank
}

$bodygroup "ammo"
{
    studio "ammo.dmx"
	blank
}





$cdmaterials "models\r_mwii\xrkstalker"
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

$sequence "ready" {
	"anims\equip.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 12 "r_mwiii_XRKStalker.BoltFwd" }
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

$sequence "cycle_iron" {
	"anims\cycle_iron.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 9 "r_mwiii_XRKStalker.BoltBack" }
	{ event 5004 21 "r_mwiii_XRKStalker.BoltFwd" }
	snap
	fps 30
}

$sequence "cycle" {
	"anims\cycle.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 9 "r_mwiii_XRKStalker.BoltBack" }
	{ event 5004 21 "r_mwiii_XRKStalker.BoltFwd" }
	snap
	fps 30
}


$sequence "reload" {
	"anims\reload.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 12 "r_mwiii_XRKStalker.MagOut" }
	{ event 5004 61 "r_mwiii_XRKStalker.MagHit" }
	{ event 5004 67 "r_mwiii_XRKStalker.MagIn" }
	snap
	node "reload"
	fps 30
}



$sequence "reload_empty" {
	"anims\reload_empty.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 9 "r_mwiii_XRKStalker.BoltBack" }
	{ event 5004 40 "r_mwiii_XRKStalker.MagOut" }
	{ event 5004 91 "r_mwiii_XRKStalker.MagHit" }
	{ event 5004 99 "r_mwiii_XRKStalker.MagIn" }
	{ event 5004 120 "r_mwiii_XRKStalker.BoltFwd" }
	snap
	node "reload"
	fps 30
}

