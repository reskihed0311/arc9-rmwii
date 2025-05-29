$modelname "arccw_r_mwii_expedite12.mdl"

$maxverts 655553

$bodygroup "receiver"
{
    studio "receiver_def.dmx"
}

$bodygroup "irons"
{
    studio "rs_def.dmx"
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
    studio "boltdef.dmx"
    blank
}

$bodygroup "stock"
{
    studio "stockdef.dmx"
	blank
}



$bodygroup "ammo"
{
    studio "ammo.dmx"
	blank
}





$cdmaterials "models\r_mwii\expedite12"
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

$sequence "idle_empty" {
	"anims\idle_empty.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


$sequence "ready" {
	"anims\equip.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 7 "r_mwii_EXPD12.BoltEquipBack" }
	{ event 5004 10 "r_mwii_EXPD12.BoltEquipFwd" }
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

$sequence "draw_empty" {
	"anims\draw_empty.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}

$sequence "holster_empty" {
	"anims\holster_empty.dmx"
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

$sequence "fire_empty" {
	"anims\fire_empty.dmx"
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




$sequence "reload_start" {
	"anims\reload_start.dmx"
	activity "ACT_VM_RELOAD" 1
	snap
	node "reload"
	fps 30
}

$sequence "reload_start_empty" {
	"anims\reload_start_empty.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 23 "r_mwii_EXPD12.ShellinEmpty" }
	{ event 5004 35 "r_mwii_EXPD12.BoltCatch" }
	snap
	node "reload"
	fps 30
}


$sequence "reload_loop" {
	"anims\reload_loop.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 9 "r_mwii_EXPD12.Shellin" }
	snap
	node "reload"
	fps 30
}


$sequence "reload_end" {
	"anims\reload_end.dmx"
	activity "ACT_VM_RELOAD" 1
	snap
	node "reload"
	fps 30
}
