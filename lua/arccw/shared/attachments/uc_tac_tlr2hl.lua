att.PrintName = "TLR-2 HL Pistol Flashlight"
att.AbbrevName = "TLR-2 HL"
att.Icon = Material("entities/att/acwatt_uc_tac_tlr2hl.png", "mips smooth")
att.Description = "A combined flashlight and laser module for pistols.\nThe laser and flashlight can be toggled individually."
att.Desc_Pros = {
    "uc.light"
}
att.Desc_Cons = {
    "con.light"
}
att.Desc_Neutrals = {}
att.AutoStats = true

att.Slot = {"tac","tac_pistol"}
att.SortOrder = 20+4

att.Model = "models/weapons/arccw/atts/uc_tlr2hl.mdl"
att.ModelOffset = Vector(0.75, 0, -0.1)
att.OffsetAng = Angle(0,0,0)
att.ModelScale = Vector(0.75, 0.75, 0.75)

att.Laser = false
att.LaserStrength = 2 / 5
att.LaserBone = "laser"

att.ColorOptionsTable = {Color(255, 0, 0, 150)}

att.Mult_SightTime = 1.05
att.Mult_SightedSpeedMult = 0.95
att.Mult_MoveSpeed = 1

att.Flashlight = false
att.FlashlightFOV = 50
att.FlashlightFarZ = 1024 -- how far it goes
att.FlashlightNearZ = 1 -- how far away it starts
att.FlashlightAttenuationType = ArcCW.FLASH_ATT_LINEAR -- LINEAR, CONSTANT, QUADRATIC are available
att.FlashlightColor = Color(255, 235, 229)
att.FlashlightTexture = "effects/flashlight001"
att.FlashlightBrightness = 0.5
att.FlashlightBone = "laser"

att.ToggleStats = {
    {
        PrintName = "Laser",
        Laser = true,
        Mult_HipDispersion = 0.8,
        Mult_MoveDispersion = 0.8
    },
    {
        PrintName = "Both",
        Laser = true,
        Flashlight = true,
        Mult_HipDispersion = 0.8,
        Mult_MoveDispersion = 0.8
    },
    {
        PrintName = "Light",
        Flashlight = true,
    },
    {
        PrintName = "Off",
    }
}