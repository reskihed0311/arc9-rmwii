$modelname "arccw_r_mwii_m13.mdl"

$maxverts 655553

$bodygroup "receiver"
{
    studio "receiver.dmx"
}

$bodygroup "rs"
{
    studio "rs.dmx"
	blank
}

$bodygroup "fs"
{
    studio "fs_def.dmx"
	blank
}


$bodygroup "bar"
{
    studio "bardef.dmx"
	blank
}


$bodygroup "muzzle"
{
    studio "muzzle_def.dmx"
	blank
}


$bodygroup "mag"
{
    studio "mag3.dmx"
	studio "xmag.dmx"
}


$bodygroup "stock"
{
     studio "stock_def.dmx"
}

$bodygroup "pgrip"
{
     studio "pgrip_def.dmx"
}


$bodygroup "bar_att_extra"
{
     blank
	 studio "bar_att.dmx"
}



$cdmaterials "models\r_mwii\m13"
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



$sequence "fire_iron" {
	"anims\fire_iron.dmx"
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


$sequence "reload" {
	"anims\reload.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 22 "r_mwii_m13.MagOut" }
	{ event 5004 35 "r_mwii_m13.MagIn" }
	snap
	node "reload"
	fps 30
}


$sequence "reload_empty" {
	"anims\reload_empty.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 23 "r_mwii_m13.MagOutEmpty" }
	{ event 5004 49 "r_mwii_m13.MagHitEmpty" }
	{ event 5004 50 "r_mwii_m13.MagInEmpty" }
	{ event 5004 60 "r_mwii_m13.BoltCatch" }
	snap
	node "reload"
	fps 30
}


$sequence "reload_xmag" {
	"anims\reload_xmag.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 22 "r_mwii_m13.XMagOut" }
	{ event 5004 45 "r_mwii_m13.XMagHit" }
	{ event 5004 49 "r_mwii_m13.XMagIn" }
	snap
	node "reload"
	fps 30
}


$sequence "reload_empty_xmag" {
	"anims\reload_empty_xmag.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 28 "r_mwii_m13.XMagOutEmpty" }
	{ event 5004 55 "r_mwii_m13.XMagHitEmpty" }
	{ event 5004 58 "r_mwii_m13.XMagInEmpty" }
	{ event 5004 73 "r_mwii_m13.BoltCatch" }
	snap
	node "reload"
	fps 30
}

