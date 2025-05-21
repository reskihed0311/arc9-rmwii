$modelname "arccw_r_mwii_mtz762.mdl"

$maxverts 655553

$bodygroup "receiver"
{
    studio "receiver_def.dmx"
	studio "receiver_amp.dmx"
}


$bodygroup "fs" 
{
   studio "fs_def.dmx"
   blank
}


$bodygroup "rs"
{
   studio "rs.dmx"
   blank
}


$bodygroup "hg"
{
    studio "hg_def.dmx"
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
	studio "xmag_762ru.dmx"
	studio "xmag.dmx"
}


$bodygroup "muzzle"
{
    studio "muzzle_def.dmx"
	blank
}

$bodygroup "pgrip"
{
    studio "pgripdef.dmx"
	blank
}


$bodygroup "ammo"
{
    studio "ammo.dmx"
	studio "ammo_762soviet.dmx"
}


$cdmaterials "models\r_mwii\mtz"
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
	{ event 5004 10 "r_mwiii_mtz762.first.BoltBack" }
	{ event 5004 18 "r_mwiii_mtz762.first.BoltFwd" }
	snap
	fps 30
}



$sequence "fire" {
	"anims\fire.dmx"
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	fps 30
}

$sequence "fire_empty" {
	"anims\fire_empty.dmx"
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	fps 30
}


$sequence "fire_iron" {
	"anims\fire_iron.dmx"
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	fps 30
}

$sequence "holster" {
	"anims\holster.dmx"
	activity "ACT_VM_DRAW" 1
	snap
	node "draw"
	fps 30
}

$sequence "holster_empty" {
	"anims\holster_empty.dmx"
	activity "ACT_VM_DRAW" 1
	snap
	node "draw"
	fps 30
}

$sequence "draw" {
	"anims\draw.dmx"
	activity "ACT_VM_DRAW" 1
	snap
	node "draw"
	fps 30
}

$sequence "draw_empty" {
	"anims\draw_empty.dmx"
	activity "ACT_VM_DRAW" 1
	snap
	node "draw"
	fps 30
}


$sequence "reload_20" {
	"anims\reload_20.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 22 "r_mwiii_mtz762.20MagGrab" }
	{ event 5004 23 "r_mwiii_mtz762.20MagOut" }
	{ event 5004 40 "r_mwiii_mtz762.20MagHit" }
	{ event 5004 45 "r_mwiii_mtz762.20MagIn" }
	snap
	node "reload"
	fps 30
}

$sequence "reload_40" {
	"anims\reload_40.dmx"
	activity "ACT_VM_RELOAD" 1
	activity "ACT_VM_RELOAD" 1
	{ event 5004 25 "r_mwiii_mtz762.40MagGrab" }
	{ event 5004 26 "r_mwiii_mtz762.40MagOut" }
	{ event 5004 45 "r_mwiii_mtz762.40MagHit" }
	{ event 5004 49 "r_mwiii_mtz762.40MagIn" }
	snap
	node "reload"
	fps 30
}

$sequence "reload_empty_amp_40" {
	"anims\reload_empty_amp_40.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 13 "r_mwiii_mtz762.40MagOutEmpty" }
	{ event 5004 61 "r_mwiii_mtz762.40MagHitEmpty" }
	{ event 5004 64 "r_mwiii_mtz762.40MagInEmpty" }
	{ event 5004 83 "r_mwiii_mtz762.ChargeBack" }
	{ event 5004 86 "r_mwiii_mtz762.ChargeFwd" }
	snap
	node "reload"
	fps 30
}

$sequence "reload_amp_40" {
	"anims\reload_amp_40.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 25 "r_mwiii_mtz762.40MagGrab" }
	{ event 5004 27 "r_mwiii_mtz762.40MagOut" }
	{ event 5004 43 "r_mwiii_mtz762.40MagHit" }
	{ event 5004 48 "r_mwiii_mtz762.40MagIn" }
	snap
	node "reload"
	fps 30
}

$sequence "reload_empty_40" {
	"anims\reload_empty_40.dmx"
	{ event 5004 13 "r_mwiii_mtz762.40MagOutEmpty" }
	{ event 5004 61 "r_mwiii_mtz762.40MagHitEmpty" }
	{ event 5004 63 "r_mwiii_mtz762.40MagInEmpty" }
	{ event 5004 82 "r_mwiii_mtz762.ChargeBack" }
	{ event 5004 85 "r_mwiii_mtz762.ChargeFwd" }
	snap
	node "reload"
	fps 30
}


$sequence "reload_empty_20" {
	"anims\reload_empty_20.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 11 "r_mwiii_mtz762.20MagOutEmpty" }
	{ event 5004 59 "r_mwiii_mtz762.20MagHitEmpty" }
	{ event 5004 61 "r_mwiii_mtz762.20MagInEmpty" }
	{ event 5004 77 "r_mwiii_mtz762.ChargeBack" }
	{ event 5004 80 "r_mwiii_mtz762.ChargeFwd" }
	snap
	node "reload"
	fps 30
}

$sequence "reload_soh_20" {
	"anims\reload_20_sof_v2.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 5 "r_mwiii_mtz762.20MagOutFast" }
	{ event 5004 36 "r_mwiii_mtz762.20MagHitFast" }
	{ event 5004 38 "r_mwiii_mtz762.20MagInFast" }
	snap
	node "reload"
	fps 30
}

$sequence "reload_empty_soh_20" {
	"anims\reload_20_empty_sof_v2.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 5 "r_mwiii_mtz762.20MagOutFast" }
	{ event 5004 36 "r_mwiii_mtz762.20MagHitFast" }
	{ event 5004 38 "r_mwiii_mtz762.20MagInFast" }
	{ event 5004 48 "r_mwiii_mtz762.FastCharge" }
	snap
	node "reload"
	fps 30
}

$sequence "reload_soh_40" {
	"anims\reload_40_sof_v2.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 6 "r_mwiii_mtz762.40MagOutFast" }
	{ event 5004 39 "r_mwiii_mtz762.40MagHitFast" }
	{ event 5004 41 "r_mwiii_mtz762.40MagInFast" }
	snap
	node "reload"
	fps 30
}

$sequence "reload_empty_soh_40" {
	"anims\reload_40_empty_sof_v2.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 6 "r_mwiii_mtz762.40MagOutFast" }
	{ event 5004 39 "r_mwiii_mtz762.40MagHitFast" }
	{ event 5004 41 "r_mwiii_mtz762.40MagInFast" }
	{ event 5004 52 "r_mwiii_mtz762.FastCharge" }
	snap
	node "reload"
	fps 30
}

$sequence "reload_amp_soh_40" {
	"anims\reload_40amp_sof_v2.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 6 "r_mwiii_mtz762.40MagOutFast" }
	{ event 5004 39 "r_mwiii_mtz762.40MagHitFast" }
	{ event 5004 41 "r_mwiii_mtz762.40MagInFast" }
	snap
	node "reload"
	fps 30
}


$sequence "reload_empty_amp_soh_40" {
	"anims\reload_40amp_empty_sof_v2.dmx"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 6 "r_mwiii_mtz762.40MagOutFast" }
	{ event 5004 39 "r_mwiii_mtz762.40MagHitFast" }
	{ event 5004 41 "r_mwiii_mtz762.40MagInFast" }
	{ event 5004 49 "r_mwiii_mtz762.FastCharge" }
	snap
	node "reload"
	fps 30
}




