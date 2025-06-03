att.PrintName = "LACHMANN Shroud SD Conversion"
att.Slot = "wz_lachmannsub_amp"
att.ActivateElements = {"shroud"}
att.Description = "Converts your gun into a sub-sonic , hard hitting SMG."

att.Desc_Cons = {"3 Burst Fire"}

att.ExcludeFlags = {"muzzle_on"}

att.Silencer = true

att.Override_MuzzleEffect = "muzzleflash_suppressed"

att.AutoStats = true

att.Mult_Damage = 1.15
att.Mult_DamageMin = 0.95

att.Mult_RPM = 1.1

att.Override_Firemodes = {

    {
        Mode = -3,
    },
    {
        Mode = 1
    },
    {
        Mode = 0
    },


}