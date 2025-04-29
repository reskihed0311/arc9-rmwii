$modelname "att_r_mwii_bp_muz_carminecarbine_silentfirexg6.mdl"

$maxverts 655553

$model "receiver" "SilentFire XG6.dmx"





$cdmaterials "models\r_mwii\m4_bp_carminecarbine\"



$attachment "1" "muzzle" 0.00 0.00 0.00 rotate -90 0 0






$sequence "idle" {
	"anims\SilentFire XG6_ArmAction.dmx"
	activity "ACT_VM_IDLE" 1
	snap
	fps 30
}


