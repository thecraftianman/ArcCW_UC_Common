att.PrintName = "US G.I. 45 Suppressor"
att.AbbrevName = "G.I. Suppressor"
att.Icon = Material("entities/att/acwatt_uc_muzzle_supp_ssq.png", "mips smooth")
att.Description = "Traps propellant gas from the muzzle, reducing visual and audible report.\nEnhances ballistics performance significantly, but its low maximum pressure makes it incompatible with supersonic ammunition."
att.Desc_Neutrals = {"uc.exclusive.subsonic", "uc.subsonic"}

att.AutoStats = true
att.Slot = {"muzzle"}

att.SortOrder = 150

att.Model = "models/weapons/arccw/atts/ud_silencer_ssq.mdl"
att.ModelOffset = Vector(0.5, 0, 0.0)
att.ModelScale = Vector(0.8, 0.8, 0.8)
att.OffsetAng = Angle(0, 0, 0)

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"
att.IsMuzzleDevice = true

att.Mult_ShootPitch = 1.1
att.Mult_ShootVol = 0.75
att.Mult_Range = 1.25

att.Add_BarrelLength = 5
att.Mult_SightTime = 1.1
att.Mult_Sway = 1.15

att.AttachSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"

-- att.Hook_Compatible = function(wep,data)
--     local flags = wep:GetWeaponFlags()
--     if !(table.HasValue(flags,"cal_subsonic") or table.HasValue(flags,"powder_subsonic")) then
--         return false
--     end
-- end

att.Hook_Compatible = function(wep,data)
    if !ArcCW.UC.PistolAmmoTypes[wep:GetBuff_Override("Override_Ammo", wep.Primary.Ammo)] or wep:GetBuff("PhysBulletMuzzleVelocity") > ArcCW.UC.SubsonicThreshold then
        return false
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    return false
end

att.HideIfBlocked = true