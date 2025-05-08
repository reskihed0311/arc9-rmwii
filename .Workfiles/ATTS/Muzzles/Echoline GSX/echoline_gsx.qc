$modelname "att_r_mwii_muz_echolinegsx.mdl"

$maxverts 655553

$model "receiver" "echoline_gsx.dmx"





$cdmaterials "models/r_mwii/att_shared/"



$attachment "1" "muzzle" 0.00 0.00 0.00 rotate -90 0 0






$sequence "idle" {
	"anims\arm_echoline gsxAction.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


