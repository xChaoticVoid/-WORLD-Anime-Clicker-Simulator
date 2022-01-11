local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Chaos", "BloodTheme")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Auto")

Section:NewToggle("Auto Click", "Auto Click", function(state)
    if state then
getgenv().Click = true
while getgenv().Click == true do
local args = {
    [1] = false,
    [2] = "Clicker!"
}
game:GetService("ReplicatedStorage").Remotes.ClickRemote:FireServer(unpack(args))
wait()
end
    else
        getgenv().Click = false
    end
end)

Section:NewToggle("Auto Rebirth", "Auto Rebirth", function(state)
    if state then
    getgenv().Rebirth = true
    while getgenv().Rebirth == true do
    local args = {
        [1] = SelectRebirth
    }
    game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
    wait()
    end
    else
    getgenv().Rebirth = false
    end
    end)

Section:NewSlider("#'s Of Rebirths", "1 = First Rebirth, 2 = Second; Etc.", 56, 0, function(a)
    SelectRebirth = a
end)

local Section = Tab:NewSection("Eggs & Boss")

Section:NewDropdown("Eggs", "List of Eggs", {"Monster Star", "Walled Star", "Crazy Star", "Colony Star", "All Star", "Quirky Star", "Bizarre Star", "Freezie Star", "Evil Vegete Star", "Serparu Star", "Narmekian Star", "Destructor Star", "Chima King Star", "Hunter Star", "Ancient Star", "Fighting Star", "Flame McFlame Companion", "Demon Star", "Akarstski Star", "Purple Forest Star", "5M Star", "Soul Star", "Ocean Star", "Pirate Star", "Spirit Star", "Shinobi Star", "Dragon Star", "Nine Tailed Star", "Slayer Star"}, function(b)
    Egg = b
end)

Section:NewToggle("Auto Open", "Auto Opens the selected Egg(Be Close to the Selected Egg)", function(state)
    if state then
        getgenv().Pet = true
        while getgenv().Pet == true do
            local args = {
                [1] = Egg,
                [2] = false,
                [3] = false
            }
            game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        getgenv().Pet = false
    end
end)

Section:NewDropdown("Boss", "List Of Bosses", {"Evil Vegete", "Serparu", "Freezie", "Chima King", "The Destroyer"}, function(c)
    Bosses = c
end)

Section:NewToggle("Auto Boss", "Auto Boss", function(state)
    if state then
    getgenv().boss = true
    while getgenv().boss == true do
local args = {
    [1] = true,
    [2] = "Clicker!",
    [3] = Bosses
}
game:GetService("ReplicatedStorage").Remotes.ClickRemote:FireServer(unpack(args))
wait()
end
else
    getgenv().boss = false
end
end)

local Section = Tab:NewSection("More")

Section:NewDropdown("Auto Upgrade", "List Of Upgrades", {"Run Speed", "More Rebirths", "Star Open Speed", "More Storage", "Crit Chance", "More Yen"}, function(h)
    Upgrade = h
end)

Section:NewToggle("Auto Upgrade", "Auto Upgrade", function(state)
    if state then
        getgenv().U = true
        while getgenv().U == true do
        local args = {
            [1] = Upgrade
        }
        
        game:GetService("ReplicatedStorage").Remotes.RequestUpgrade:FireServer(unpack(args))
        wait(3)
    end
    else
        getgenv().U = false
    end
    end)

Section:NewButton("Daily Reward", "Collects Daily Reward", function()
local args = {
    [1] = "DailyRewards"
}
game:GetService("ReplicatedStorage").Remotes.CollectChest:InvokeServer(unpack(args))
end)

local Tab = Window:NewTab("Teleports")
local Section = Tab:NewSection("Teleports")

Section:NewButton("Anime Village", "World", function()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(444.636322, -1.3999939, 509.497467, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

Section:NewButton("Pirate Docks", "World", function()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(281.743652, -2.39999056, -984.416321, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Section:NewButton("Purple Forest", "World", function()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(275.343567, -1.39999032, -1594.67139, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Section:NewButton("Shinobi Village", "World", function()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(366.277985, -2.39999008, -2269.63257, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Section:NewButton("Spirit Society", "World", function()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(288.508392, -2.24829674, -3056.64648, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Section:NewButton("Walled City", "World", function()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(313.802979, -19.2612514, -3814.23218, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

Section:NewButton("Narmek", "World", function()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-713.767578, 14.5744715, 1585.8783, -0.996191859, 0, -0.0871884301, 0, 1, 0, 0.0871884301, 0, -0.996191859)
end)

Section:NewButton("Hero Academy", "World", function()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1012.13495, -2.09999418, -501.796082, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Section:NewButton("Stand City", "World", function()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(247.095703, -1.18963623, -4721.24951, 4.39286232e-05, -0.145494327, 0.989359081, 3.20374966e-06, 0.989359081, 0.145494327, -0.99999994, -3.20374966e-06, 4.39286232e-05)
end)

Section:NewButton("Hunter Kingdom", "World", function()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1345.69751, -17.5497932, 1965.87073, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

Section:NewButton("Jiu Jitsu Sewers", "World", function()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1007.59814, -36.7777901, -855.524353, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

Section:NewButton("The Sin Zone", "World", function()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1007.59814, -36.7777901, -855.524353, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

Section:NewButton("Walled Arena", "World", function()
    game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(334.231201, -75.4094543, 2211.42651, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

local Tab = Window:NewTab("Misc.")
local Section = Tab:NewSection("Misc.")

Section:NewSlider("Walkspeed", "walkspeed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewTextBox("Tp to Player", "Type in players name", function(txt)
    local plr1 = game.Players.LocalPlayer.Character
    local plr2 = game.Workspace:FindFirstChild(txt)
    plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
end)

local Section = Tab:NewSection("Ui Toggle")

Section:NewKeybind("Toggle Ui", "Toggle Ui", Enum.KeyCode.RightAlt, function()
	Library:ToggleUI()
end)

Section:NewLabel("Credit: Chaotic_Void")
