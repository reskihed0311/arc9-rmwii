$modelname "arc9_r_mwii_p890.mdl"

$maxverts 655553

$bodygroup "receiver"
{
    studio "receiverdef.dmx"
	studio "receiver_jack.dmx"
}


$bodygroup "barrel"
{
    studio "bardef.dmx"
	blank
	studio "barlight.dmx"
	studio "barlong_jack.dmx"
	studio "barlong.dmx"
}

$bodygroup "railplate"
{
    studio "bardef_railplate.dmx"
	blank
	studio "barlight_railplate.dmx"
	studio "barlong_railplate_jack.dmx"
	studio "barlong_railplate.dmx"
}


$bodygroup "mag"
{
    studio "mag3.dmx"
	studio "xmag.dmx"
	studio "xmag_jack.dmx"
}


$bodygroup "hammer"
{
    studio "hammerdef.dmx"
	studio "hammer_barlight.dmx"
	studio "hammer_barlong_jack.dmx"
	studio "hammer_barlong.dmx"
}

$bodygroup "pgrip"
{
    studio "pgripdef.dmx"
	studio "grip_tac_jack.dmx"
	studio "grip_tac.dmx"
}

$bodygroup "trigger"
{
    studio "trigdef.dmx"
	studio "trigger_jack.dmx"
}

$bodygroup "ammo"
{
   studio "ammo2.dmx"
   blank
}



$cdmaterials "models\r_mwii\p890"
$cdmaterials "models\r_mwii\p890_jack"
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


$sequence "reload_8" {
	"anims\reload_8.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


$sequence "reload_empty_8" {
	"anims\reload_empty_8.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}

$sequence "reload_10" {
	"anims\reload_10.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


$sequence "reload_empty_10" {
	"anims\reload_empty_10.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}



$sequence "inspect_8" {
	"anims\inspect_8_v2.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


