ATT = {}

ATT.PrintName = "Modern Warfare 2019 Scopes"
ATT.Description = "Enables the ability to equip scopes from the CoD packs."

ATT.SortOrder = 10000
ATT.Category = "wz2_sh_optics"
ATT.MenuCategory = "ARC9 - CSGO Attachments"
ATT.Folder = ARC9:GetPhrase("csgo_folder_special")
ATT.Free = true
ATT.Attachments = {
    {
        PrintName = "Optics",
        Category = {"cod2019_optic", "cod2019_optic_raised", "cod2019_optic_big"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 1.5),
		RejectAttachments = {
			["cod2019_attach_support_gsr_optics"] = true,
			["cod2019_eft_scopes"] = true,
		},
    },
}

ARC9.LoadAttachment(ATT, "go_mw19_scopes")