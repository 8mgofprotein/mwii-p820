ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "10 Round Mags"
ATTACHMENT.Icon = Material("models\kyo\icon\p220\icon_p220xmag.vmt")
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_papa220_xmag.mdl")
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
    weapon.Primary.ClipSize = 10
    weapon.Animations.Reload = weapon.Animations.Reload_Xmag
	weapon.Animations.Inspect = weapon.Animations.Inspect_xmag
	weapon.Animations.Inspect_empty = weapon.Animations.Inspect_empty_xmag
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag
    weapon.Animations.Reload_Fast = weapon.Animations.Reload_Xmag_Fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_Xmag_Fast
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.93
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.93
end