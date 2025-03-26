-- weapon_suicidebomb.lua

SWEP.PrintName = "Suicide Bomb"
SWEP.Author = "Kaisar"
SWEP.Instructions = "Left click to wear the bomb."
SWEP.Category = "Custom Weapons"

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.Weight = 5
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Slot = 1
SWEP.SlotPos = 1
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = true

SWEP.ViewModel = "models/weapons/v_slam.mdl"
SWEP.WorldModel = "models/weapons/w_slam.mdl"

function SWEP:PrimaryAttack()
    self:SetNextPrimaryFire(CurTime() + 1)
    self:EmitSound("/buttons/button1.wav")

    if SERVER then
        local owner = self:GetOwner()
        if not IsValid(owner) then return end
        self:Remove()
        owner:Give("weapon_explode")
        owner:SelectWeapon("weapon_explode")
    end
end