SWEP.PrintName = "EXPLODE"
SWEP.Author = "Kaisar"
SWEP.Instructions = "You will die!"
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

SWEP.ViewModel = ""
SWEP.WorldModel = ""

function SWEP:PrimaryAttack()
    self:SetNextPrimaryFire(CurTime() + 10)

    if SERVER then
        -- Get the player who used the weapon
        local owner = self:GetOwner()
        if not IsValid(owner) then return end

        -- Create an explosion effect
        local explosion = ents.Create("env_explosion")
        explosion:SetPos(owner:GetPos()) -- Set the explosion at the player's position
        explosion:SetOwner(owner)
        explosion:Spawn()
        explosion:SetKeyValue("iMagnitude", "100") -- Explosion damage
        explosion:Fire("Explode", 0, 0)

        -- Apply blast damage
        util.BlastDamage(self, owner, owner:GetPos(), 200, 100)

        -- Kill the player
        owner:Kill()

        -- Remove the weapon
        self:Remove()
    end
end