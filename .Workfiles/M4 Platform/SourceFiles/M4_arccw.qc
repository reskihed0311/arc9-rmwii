$modelname "arccw_r_mwii_m4.mdl"

$maxverts 655553

$bodygroup "receiver"
{
    studio "receiver_default.dmx"
}
	
	
$bodygroup "rs"
{
   studio "rs.dmx"
   blank
   studio "carryhandle.dmx"
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
   studio "fs_m16.dmx"
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
	studio "xmaglarge.dmx"
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
		studio "muzzle_m16.dmx"
}

$bodygroup "stock"
{
    studio "stock_assault60.dmx"
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
	{ event 5004 10 "r_mwii_m4.BoltBack" }
	{ event 5004 25 "r_mwii_m4.BoltFwd" }
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
	{ event 5004 24 "r_mwii_m4.30MagOut" }
	{ event 5004 40 "r_mwii_m4.30MagHit" }
	{ event 5004 44 "r_mwii_m4.30MagIn" }
	snap
	fps 30
}


$sequence "reload_empty_30" {
	"anims\reload_empty_30.dmx"
	{ event 5004 7 "r_mwii_m4.30MagOutEmpty" }
	{ event 5004 48 "r_mwii_m4.30MagHitEmpty" }
	{ event 5004 52 "r_mwii_m4.30MagInEmpty" }
	{ event 5004 66 "r_mwii_m4.BoltRel" }
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}

$sequence "reload_45" {
	"anims\reload_45.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 24 "r_mwii_m4.45MagOut" }
	{ event 5004 37 "r_mwii_m4.45MagHit" }
	{ event 5004 45 "r_mwii_m4.45MagIn" }
	snap
	fps 30
}


$sequence "reload_empty_45" {
	"anims\reload_empty_45.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 10 "r_mwii_m4.45MagOutEmpty" }
	{ event 5004 48 "r_mwii_m4.45MagHitEmpty" }
	{ event 5004 55 "r_mwii_m4.45MagInEmpty" }
	{ event 5004 72 "r_mwii_m4.BoltRel" }
	snap
	fps 30
}

$sequence "reload_60" {
	"anims\reload_60.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 24 "r_mwii_m4.60MagOut" }
	{ event 5004 41 "r_mwii_m4.60MagHit" }
	{ event 5004 47 "r_mwii_m4.60MagIn" }
	snap
	fps 30
}


$sequence "reload_empty_60" {
	"anims\reload_empty_60.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 20 "r_mwii_m4.60MagOutEmpty" }
	{ event 5004 62 "r_mwii_m4.60MagHitEmpty" }
	{ event 5004 67 "r_mwii_m4.60MagInEmpty" }
    { event 5004 82 "r_mwii_m4.BoltRel" }
	snap
	fps 30
}


$sequence "reload_30_soh" {
	"anims\reload_30_sof.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 3 "r_mwii_m4.30FastMagOut" }
	{ event 5004 25 "r_mwii_m4.30FastMagHit" }
	{ event 5004 21 "r_mwii_m4.30FastMagIn" }
	snap
	fps 30
}


$sequence "reload_empty_soh_30" {
	"anims\reload_30_empty_sof.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 3 "r_mwii_m4.30FastMagOut" }
	{ event 5004 25 "r_mwii_m4.30FastMagHit" }
	{ event 5004 21 "r_mwii_m4.30FastMagIn" }
	{ event 5004 38 "r_mwii_m4.30BoltFast" }
	snap
	fps 30
}

$sequence "reload_soh_45" {
	"anims\reload_45_sof.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 4 "r_mwii_m4.45FastMagOut" } 
	{ event 5004 19 "r_mwii_m4.45FastMagHit" } 
	{ event 5004 29 "r_mwii_m4.45FastMagIn" }
	snap
	fps 30
}


$sequence "reload_empty_soh_45" {
	"anims\reload_45_empty_sof.dmx"
	activity "ACT_VM_IDLE" 1
		{ event 5004 4 "r_mwii_m4.45FastMagOut" } 
	{ event 5004 19 "r_mwii_m4.45FastMagHit" } 
	{ event 5004 29 "r_mwii_m4.45FastMagIn" }
	{ event 5004 42 "r_mwii_m4.30BoltFast" }
	snap
	fps 30
}

$sequence "reload_soh_60" {
	"anims\reload_60_sof.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 11 "r_mwii_m4.60FastMagOut" } 
	{ event 5004 35 "r_mwii_m4.60FastMagHit" } 
	{ event 5004 38 "r_mwii_m4.60FastMagIn" } 
	snap
	fps 30
}


$sequence "reload_empty_soh_60" {
	"anims\reload_60_empty_sof.dmx"
	activity "ACT_VM_IDLE" 1
	{ event 5004 11 "r_mwii_m4.60FastMagOut" } 
	{ event 5004 35 "r_mwii_m4.60FastMagHit" } 
	{ event 5004 38 "r_mwii_m4.60FastMagIn" } 
	{ event 5004 50 "r_mwii_m4.30BoltFast" }
	snap
	fps 30
}


