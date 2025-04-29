$modelname "att_r_mwii_bp_muz_shortfuse_echolinegsx.mdl"

$maxverts 655553

$model "receiver" "echoline_gsx_shortfuse.dmx"





$cdmaterials "models/r_mwii/m4_bp_shortfuse/"



$attachment "1" "muzzle" 0.00 0.00 0.00 rotate -90 0 0






$sequence "idle" {
	"anims\arm_echoline gsxAction.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


