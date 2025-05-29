$modelname "arccw_r_mwii_vel46.mdl"

$maxverts 655553

$bodygroup "receiver"
{
    studio "receiver_def.dmx"
}
	
	
$bodygroup "irons"
{
   studio "irons.dmx"
   blank
}

$bodygroup "barrel"
{
    studio "bardef.dmx"
	blank
}


$bodygroup "mag"
{
    studio "magdef.dmx"
	studio "xmag.dmx"
}


$bodygroup "muzzle"
{
    studio "muzzle_bardef.dmx"
	blank
}

$bodygroup "stock"
{
    studio "stock_def.dmx"
	studio "stockbuffer.dmx"
}

$bodygroup "pgrip"
{
    studio "pgripdef.dmx"
	blank
}




$cdmaterials "models\r_mwii\vel46"
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

$sequence "fire_empty" {
	"anims\fire_empty.dmx"
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

$sequence "reload" {
	"anims\reload.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 13 "r_mwii_vel46.MagRel" }
	{ event 5004 21 "r_mwii_vel46.MagOut" }
	{ event 5004 30 "r_mwii_vel46.MagHit" }
	{ event 5004 32 "r_mwii_vel46.MagIn" }
	snap
	fps 30
}

$sequence "reload_xmag" {
	"anims\reload_xmag.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 9 "r_mwii_vel46.50MagRel" }
	{ event 5004 10 "r_mwii_vel46.50MagOut" }
	{ event 5004 49 "r_mwii_vel46.50MagHit" }
	{ event 5004 51 "r_mwii_vel46.50MagIn" }
	{ event 5004 65 "r_mwii_vel46.50MagTap" }
	snap
	fps 30
}


$sequence "reload_empty" {
	"anims\reload_empty.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 11 "r_mwii_vel46.MagOutEmpty" }
	{ event 5004 28 "r_mwii_vel46.MagHitEmpty" }
	{ event 5004 30 "r_mwii_vel46.MagInEmpty" }
	{ event 5004 45 "r_mwii_vel46.BoltCatch" }
	snap
	fps 30
}


$sequence "reload_xmag_empty" {
	"anims\reload_xmag_empty.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 9 "r_mwii_vel46.50MagRel" }
	{ event 5004 10 "r_mwii_vel46.50MagOut" }
	{ event 5004 49 "r_mwii_vel46.50MagHit" }
	{ event 5004 51 "r_mwii_vel46.50MagIn" }
	{ event 5004 65 "r_mwii_vel46.50MagTap" }
	{ event 5004 75 "r_mwii_vel46.BoltCatch" }
	snap
	fps 30
}

$sequence "draw_empty" {
	"anims\draw_empty.dmx"
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

$sequence "holster_empty" {
	"anims\holster_empty.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}
