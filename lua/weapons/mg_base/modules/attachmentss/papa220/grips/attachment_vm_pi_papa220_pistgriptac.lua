ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "Bruen RSH-80 Grip"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_papa220_pstlgrip_tac.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike9/icon_attachment_pi_mike9_pstlgrplght.vmt")
ATTACHMENT.AttachmentBodygroups = {
    ["grip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.9
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.93
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.93
end
