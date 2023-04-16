ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "12 Round Mags"
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/icon_p220xmaglrg.vmt")
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_papa220_xmaglrg.mdl")
ATTACHMENT.BulletList = {
    [1] = {"j_ammo_01"},
    [2] = {"j_ammo_02"},
    [3] = {"j_ammo_03"},
    [4] = {"j_ammo_04"},
    [5] = {"j_ammo_05"},
    [6] = {"j_ammo_06"},
    [7] = {"j_ammo_07"},
    [8] = {"j_ammo_08"},
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 12
    weapon.Animations.Reload = weapon.Animations.Reload_XmagLrg
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_XmagLrg
    weapon.Animations.Reload_Fast = weapon.Animations.Reload_XmagLrg_Fast
	weapon.Animations.Inspect = weapon.Animations.Inspect_xmaglrg
	weapon.Animations.Inspect_empty = weapon.Animations.Inspect_empty_xmaglrg
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_XmagLrg_Fast
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.88
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.88
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.95
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.95
end