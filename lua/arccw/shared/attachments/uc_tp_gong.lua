att.PrintName = "Hombboy"
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "one hand the gun"
att.Desc_Pros = {
    "one hand this gun"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_tp"

att.AutoStats = true
att.SortOrder = 13.9

att.Mult_HipDispersion = 0.5
att.Mult_RecoilSide = 1.25
att.Mult_SightTime = 1.75
att.Mult_Sway = 1.5

att.LHIK = true
att.LHIKHide = true

att.Hook_Compatible = function(wep, data)
    if wep:GetIsManualAction() and wep:GetBuff("HoldtypeActive") ~= "pistol" and wep:GetBuff("HoldtypeActive") ~= "revolver" then return false end
end