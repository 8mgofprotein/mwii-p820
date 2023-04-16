ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "BP-Grain Grip"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_papa220_pstlgrip_snp.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_pstlgrplght.vmt")
ATTACHMENT.Bodygroups = {
    ["grip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.2
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.17
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.17
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.06
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.06
end