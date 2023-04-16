ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "XRK Tacops Barrel"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_papa220_barlight.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/icon_attachment_pi_papa320_slide.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.10
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.10
	weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.08
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.08
end