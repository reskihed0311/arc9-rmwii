$modelname "arccw_r_mwii_lachmannsub.mdl"

$maxverts 655553

$bodygroup "receiver"
{
    studio "receiver.dmx"
	studio "shroud_receiver.dmx"
}

$bodygroup "rail"
{
    blank
    studio "rail.dmx"
}


$bodygroup "hg"
{
    studio "hg_bardef.dmx"
	studio "hg_shroud.dmx"
    blank
}


$bodygroup "chandle"
{
    studio "chandle_bardef.dmx"
	studio "chandle_shroud.dmx"
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
	studio "xmag.dmx"
}


$bodygroup "muzzle"
{
    studio "muzzle_bardef.dmx"
	blank
}

$bodygroup "pgrip"
{
    studio "pgrip_def.dmx"
	blank
}


$bodygroup "ammo"
{
    studio "ammo.dmx"
}


$cdmaterials "models\r_mwii\lachmannplatform"
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
	{ event 5004 6 "r_mwii_lmsub.BoltFwdFirst" }
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



$sequence "reload_30" {
	"anims\reload_30.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 7 "r_mwii_lmsub.BoltBack" }
	{ event 5004 30 "r_mwii_lmsub.30MagGrab" }
	{ event 5004 40 "r_mwii_lmsub.30MagOut" }
	{ event 5004 55 "r_mwii_lmsub.30MagHit" }
	{ event 5004 60 "r_mwii_lmsub.30MagClick" }
	{ event 5004 78 "r_mwii_lmsub.BoltRel" }
	snap
	node "reload"
	fps 30
}

$sequence "reload_xmag" {
	"anims\reload_xmag.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 7 "r_mwii_lmsub.BoltBack" }
	{ event 5004 38 "r_mwii_lmsub.45MagOut" }
	{ event 5004 55 "r_mwii_lmsub.45MagHit" }
	{ event 5004 61 "r_mwii_lmsub.45MagIn" }
	{ event 5004 80 "r_mwii_lmsub.BoltRel" }
	snap
	node "reload"
	fps 30
}



$sequence "reload_empty_30" {
	"anims\reload_empty_30.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 7 "r_mwii_lmsub.BoltBack" }
	{ event 5004 28 "r_mwii_lmsub.30MagOutEmpty" }
	{ event 5004 72 "r_mwii_lmsub.30MagHitEmpty" }
	{ event 5004 80 "r_mwii_lmsub.30MagInEmpty" }
	{ event 5004 90 "r_mwii_lmsub.BoltRel" }
	snap
	node "reload"
	fps 30
}

$sequence "reload_empty_xmag" {
	"anims\reload_empty_xmag.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 7 "r_mwii_lmsub.BoltBack" }
	{ event 5004 28 "r_mwii_lmsub.45MagOutEmpty" }
	{ event 5004 78 "r_mwii_lmsub.45MagHitEmpty" }
	{ event 5004 82 "r_mwii_lmsub.45MagInEmpty" }
	{ event 5004 93 "r_mwii_lmsub.BoltRel" }
	snap
	node "reload"
	fps 30
}

$sequence "reload_soh_30" {
	"anims\reload_soh_30.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 8 "r_mwii_lmsub.30MagOutFast" }
	{ event 5004 41 "r_mwii_lmsub.30MagHitFast" }
	{ event 5004 43 "r_mwii_lmsub.30MagInFast" }
	snap
	node "reload"
	fps 30
}

$sequence "reload_soh_xmag" {
	"anims\reload_soh_xmag.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 9 "r_mwii_lmsub.45MagOutFast" }
	{ event 5004 43 "r_mwii_lmsub.45MagHitFast" }
	{ event 5004 48 "r_mwii_lmsub.45MagInFast" }
	snap
	node "reload"
	fps 30
}



$sequence "reload_empty_soh_xmag" {
	"anims\reload_soh_xmag_empty.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 9 "r_mwii_lmsub.45MagOutFast" }
	{ event 5004 43 "r_mwii_lmsub.45MagHitFast" }
	{ event 5004 48 "r_mwii_lmsub.45MagInFast" }
	{ event 5004 60 "r_mwii_lmsub.ChargeBackFast" }
	{ event 5004 65 "r_mwii_lmsub.ChargeFwdFast" }
	snap
	node "reload"
	fps 30
}

$sequence "reload_soh_empty_30" {
	"anims\reload_soh_empty_30.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 8 "r_mwii_lmsub.30MagOutFast" }
	{ event 5004 41 "r_mwii_lmsub.30MagHitFast" }
	{ event 5004 43 "r_mwii_lmsub.30MagInFast" }
	{ event 5004 55 "r_mwii_lmsub.ChargeBackFast" }
	{ event 5004 60 "r_mwii_lmsub.ChargeFwdFast" }
	snap
	node "reload"
	fps 30
}