ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "XTEN Harbinger"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_papa220_barcomp.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/icon_attachment_pi_papa320_slide.vmt")
ATTACHMENT.ExcludedCategories = {"Lasers"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.02
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.02
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.97
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.97
end