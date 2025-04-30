$modelname "arc9_r_mwii_bp_m4_unionguard.mdl"

$maxverts 655553

$model "receiver" "bp_unionguard_receiver.dmx"

$bodygroup "rs"
{
   studio "rs.dmx"
   blank
}

$bodygroup "fs"
{
   studio "fs_def.dmx"
   blank
   studio "fs_barmidhvy.dmx"
   studio "fs_barlight.dmx"
     studio "fs_barhvy.dmx"
	    studio "fs_barlong.dmx"
		studio "fs_short.dmx"
}


$bodygroup "barrel"
{
    studio "bardef.dmx"
	blank
}


$bodygroup "mag"
{
    studio "bp_unionguard_mag.dmx"
		studio "xmag.dmx"
		studio "xmaglarge.dmx"
	studio "xmag_skullbreaker.dmx"
}


$bodygroup "muzzle"
{
    studio "muzzle_def.dmx"
	blank
	studio "muzzle_barmidhvy.dmx"
	studio "muzzle_barlight.dmx"
		studio "muzzle_barhvy.dmx"
		studio "muzzle_barlong.dmx"
		studio "muzzle_short.dmx"
}

$bodygroup "stock"
{
    studio "bp_unionguard_stock.dmx"
	blank
}

$bodygroup "pgrip"
{
    studio "gripdef.dmx"
	blank
}

$bodygroup "ammo"
{
   studio "ammo.dmx"
   blank
}



$cdmaterials "models\r_mwii\m4"
$cdmaterials "models\r_mwii\m4_bp_unionguard\"
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


$sequence "ready" {
	"anims\equip.dmx"
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


$sequence "draw" {
	"anims\draw.dmx"
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


$sequence "holster" {
	"anims\holster.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


$sequence "reload_30" {
	"anims\reload_30.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


$sequence "reload_empty_30" {
	"anims\reload_empty_30.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}

$sequence "reload_45" {
	"anims\reload_45.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


$sequence "reload_empty_45" {
	"anims\reload_empty_45.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}

$sequence "reload_60" {
	"anims\reload_60.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


$sequence "reload_empty_60" {
	"anims\reload_empty_60.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}



$sequence "inspect_30" {
	"anims\inspect_30.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


$sequence "inspect_60" {
	"anims\inspect_60.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}