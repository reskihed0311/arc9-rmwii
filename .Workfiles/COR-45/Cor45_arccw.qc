$modelname "arccw_r_mwiii_cor45.mdl"

$maxverts 655553

$bodygroup "receiver"
{
    studio "receiver_def.dmx"
}


$bodygroup "bar"
{
    studio "bardef.dmx"
}


$bodygroup "railplate"
{
    studio "railplate_bardef.dmx"
}


$bodygroup "mag"
{
    studio "magdef.dmx"
}


$bodygroup "trigger"
{
     studio "trigger.dmx"
}


$cdmaterials "models\r_mwii\cor45"
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
	{ event 5004 15 "r_mwiii_cor45.MagOut" }
	{ event 5004 33 "r_mwiii_cor45.MagHit" }
	{ event 5004 35 "r_mwiii_cor45.MagIn" }
	snap
	node "reload"
	fps 30
}


$sequence "reload_empty" {
	"anims\reload_empty.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 12 "r_mwiii_cor45.MagOutEmpty" }
	{ event 5004 30 "r_mwiii_cor45.MagHitEmpty" }
	{ event 5004 32 "r_mwiii_cor45.MagInEmpty" }
	{ event 5004 48 "r_mwiii_cor45.Charge" }
	snap
	node "reload"
	fps 30
}

$sequence "reload_soh_empty" {
	"anims\reload_empty_soh"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 7 "r_mwiii_cor45.MagOutEmpty" }
	{ event 5004 20 "r_mwiii_cor45.MagHitEmpty" }
	{ event 5004 22 "r_mwiii_cor45.MagInEmpty" }
	{ event 5004 33 "r_mwiii_cor45.ChargeFast" }
	snap
	node "reload"
	fps 30
}


$sequence "reload_soh" {
	"anims\reload_soh"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 7 "r_mwiii_cor45.MagOutEmpty" }
	{ event 5004 20 "r_mwiii_cor45.MagHitEmpty" }
	{ event 5004 22 "r_mwiii_cor45.MagInEmpty" }
	snap
	node "reload"
	fps 30
}

