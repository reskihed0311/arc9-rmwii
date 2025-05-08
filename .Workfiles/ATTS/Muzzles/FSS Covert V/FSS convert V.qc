$modelname "att_r_mwii_muz_fsscovertv.mdl"

$maxverts 655553

$model "receiver" "FSS Covert V.dmx"





$cdmaterials "models/r_mwii/att_shared/"



$attachment "1" "muzzle" 0.00 0.00 0.00 rotate -90 0 0






$sequence "idle" {
	"anims\FSS Covert V Union Guard_ArmAction.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


