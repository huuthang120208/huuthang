repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game:IsLoaded()
if not game:IsLoaded() then game:IsLoaded():Wait() end
UserSettings():GetService('UserGameSettings').MasterVolume = 0;
settings().Rendering.QualityLevel = 1;
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false)
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList,false)
game:GetService("Lighting").GlobalShadows = false
for key, object in pairs(workspace:GetDescendants()) do
    if object:IsA("Part") or object:IsA("UnionOperation") or object:IsA("MeshPart") then
        object.Material = Enum.Material.SmoothPlastic
    elseif  (object:IsA("Texture") or object:IsA("Explosion") or object:IsA("ColorCorrectionEffect") or 
                object:IsA("Atmosphere") or object:IsA("SunRaysEffect") or object:IsA("BlurEffect") or 
                object:IsA("RainyStone") or object:IsA("Weather")  or object:IsA("BloomEffect")
                or object:IsA("Lighting") or object:IsA("FogEnd") or object:IsA("DepthOfFieldEffect")) then
        object:Destroy()
    end
end

spawn(function()
    local startTime = tick() -- thời điểm bắt đầu
    while task.wait(10) do -- check mỗi 10 giây
        if tick() - startTime >= 4000 then -- đủ 1800 giây = 30 phút
            game:GetService("TeleportService"):TeleportToPlaceInstance(
                game.PlaceId,
                game.JobId,
                game.Players.LocalPlayer
            )
            break -- rejoin xong thì thoát vòng lặp
        else
            print("⏳ Chưa đủ 30 phút, tiếp tục đếm...")
        end
    end
end)
getgenv().Config = {
	["Auto Fire Shoot Heart Leviathan"] = false,
	["Auto Shipwright"] = false,
	["Teleport To Fruit"] = false,
	["Tween Until Have Sea Event"] = false,
	["No Frog"] = false,
	["Auto Dodge Skill Mobs"] = false,
	["Ignore Craft Volcanic Magnet"] = false,
	["Auto Trade Azure Ember"] = false,
	["Auto Turn On V3"] = false,
	["Tween Boat To Frozen Dimension"] = false,
	["Auto Trial Draco"] = false,
	["Auto Aimbot Gun"] = false,
	["Distance Teleport Y"] = 500,
	["Auto New World"] = false,
	["Inf Geppo"] = false,
	["Auto Fix Volcano"] = false,
	["Select Method Farm"] = "Level Farm",
	["Drive Boat To Hydra"] = false,
	["Auto Summon Soul Ember"] = false,
	["Summon Dough King"] = false,
	["Auto Store Fruit"] = false,
	["Auto Start Leviathan"] = false,
	["ESP Berry"] = false,
	["Account Pick Slot Raid"] = false,
	["Use Click M1 Skull Guitar Leviathan"] = false,
	["Change WalkSpeed"] = false,
	["ESP Island"] = false,
	["Multi Find Leviathan"] = false,
	["Auto Buy Spy"] = false,
	["Auto Buy Boat Beast Hunter"] = false,
	["Ignore Craft Volcanic Magnet Draco"] = false,
	["Auto Destroy IDK"] = false,
	["Select Skills Sword"] = {
		["Z"] = true,
		["X"] = true
	},
	["Auto Get Rainbow Haki"] = false,
	["Boost Fps"] = false,
	["Auto Get Melee"] = false,
	["Auto Craft Scroll"] = false,
	["Auto Spawn Kitsune Island"] = false,
	["Fully Trial Draco"] = false,
	["Change JumpPower"] = false,
	["Account Buy Chip"] = false,
	["Auto Get Cyborg Hop Collect Chest"] = false,
	["Kill players When complete Trial"] = false,
	["Hop Server Elite Hunter"] = false,
	["Auto Upgrade Sword Inventory"] = false,
	["Dont reset if Have Items"] = false,
	["Use skill fast dont hold"] = false,
	["Super Fast Attack"] = false,
	["Auto Collect Bone"] = false,
	["Auto Aimbot"] = false,
	["Hop Server Find Boss"] = false,
	["Webhook Find Mirage"] = false,
	["Fly Boat"] = false,
	["Use Click M1 Fruit For Sea Event"] = false,
	["Webhook Find Prehistoric Island"] = false,
	["Auto Reset Character"] = false,
	["Teleport Y"] = true,
	["Auto Turn On Observation"] = false,
	["Noti Profile"] = false,
	["Values Azure Ember"] = 10,
	["Auto Turn On V4"] = false,
	["Auto Tween To Prehistoric Island"] = false,
	["Select Skills Melee"] = {
		["X"] = true,
		["C"] = true,
		["Z"] = true
	},
	["Auto Find Prehistoric Island"] = false,
	["Hop Find Katakuri"] = false,
	["Input JumpPower"] = 200,
	["Use Dragonstorm For Sea Event"] = false,
	["Auto Touch Pad Haki"] = false,
	["Hop Server Kitsune Island"] = false,
	["Walk On Water "] = true,
	["Buy Blox Fruit Sniper Shop"] = false,
	["Fully Event Prehistoric Island"] = false,
	["Spam Join"] = false,
	["Ignore Collect Bone"] = false,
	["Auto Farm Mastery 600 Sword In Inventory"] = false,
	["Random Devil Fruit"] = false,
	["Tween Safe if have Items"] = false,
	["Auto Yama"] = false,
	["Auto Buy Haki Color"] = false,
	["Auto Get Ghoul"] = false,
	["Fix Volcano Safe"] = false,
	["Summon Darkbeard"] = false,
	["Auto Finish Train Draco Quest"] = false,
	["Auto Finish Train Quest"] = false,
	["Summon DarkBeard"] = false,
	["Auto Buy Chip and Attack Law"] = false,
	["Auto Summon Rip Indra"] = false,
	["Turn On Fast Attack"] = false,
	["Values Wooden Plank Repair Boat"] = "500",
	["Auto Kill Golem"] = false,
	["Auto Trade Bone"] = false,
	["Auto Chest Hop"] = false,
	["Auto Get Cyborg"] = false,
	["Kill All Boss"] = false,
	["Auto Turn On V3 Near Door"] = false,
	["Auto Upgrade Gun Inventory"] = false,
	["Auto True Triple Katana"] = false,
	["Auto Farm Mastery 600 Melees"] = false,
	["Get Quest Farm [Katakuri Or Bone]"] = false,
	["Farm Mastery"] = false,
	["Auto Factory"] = false,
	["Attack Multi Segments Leviathan"] = false,
	["Auto Pull Lever"] = false,
	["Attack Darkbeard"] = false,
	["White Screen"] = false,
	["Auto Saber"] = false,
	["Auto Farm Mastery 600 Gun In Inventory"] = false,
	["Change Speed Boat"] = false,
	["Auto Start Event"] = false,
	["Auto Dodge Skill Terrorshark"] = false,
	["Auto Yoru Mini"] = false,
	["Auto Dodge Skill Seabeast"] = false,
	["Auto Event Prehistoric Island"] = false,
	["Auto Load Script"] = false,
	["Farm Observation [ Hop Server ]"] = false,
	["Distance Farm Aura"] = 300,
	["Auto UP Observation V2"] = false,
	["Auto Soul Guitar"] = false,
	["Auto Collect Egg"] = false,
	["Hop Find Darkbeard"] = false,
	["Kill Mob"] = false,
	["Auto Translate"] = false,
	["Auto TTK"] = false,
	["Drive Boat To Tiki"] = false,
	["Bring Mob"] = true,
	["Auto Buy Legendary Sword"] = false,
	["Auto Get Fully Cyborg"] = false,
	["Ping Discord"] = false,
	["QuestDojo"] = true,
	["Use Click M1 Fruit Leviathan"] = false,
	["Multi Trial"] = false,
	["Auto Turn On Buso"] = true,
	["Farm Material"] = false,
	["Auto Upgrade Race V2-V3"] = false,
	["% Health Player"] = 40,
	["Teleport Frozen Dimension"] = false,
	["Get Fruit In Inventory Low Beli"] = false,
	["Select Boat"] = "Guardian",
	["Teleport Acient Clock"] = false,
	["Hop Server [Trial Or Pull Lever]"] = false,
	["Auto Change Dragonstorm With Skull Guitar"] = false,
	["Select Skills Blox Fruit"] = {
		["X"] = true,
		["C"] = true,
		["Z"] = true,
		["V"] = true,
		["F"] = true
	},
	["Ignore Attack Katakuri"] = false,
	["Auto Collect Soul Ember"] = false,
	["Teleport To Fruit [ Hop Server ]"] = false,
	["Attack Soul Reaper"] = false,
	["Black Screen"] = false,
	["Auto Find Mirage"] = false,
	["Auto Repair Ur Ship"] = false,
	["Auto Quest [Katakuri/Bone/Tyrant]"] = false,
	["Hop Server Get Ghoul"] = false,
	["Kill Boss"] = false,
	["Dash no Cd"] = false,
	["Stack Train With Trial Race"] = false,
	["Auto rejoin Disconnect"] = true,
	["Auto Click"] = false,
	["Auto Awake Fruit"] = false,
	["Select Weapons Use Skill"] = {
		["Gun"] = true,
		["Blox Fruit"] = true,
		["Melee"] = true,
		["Sword"] = true
	},
	["Auto Collect Berry"] = false,
	["Teleport Boat Other CFrame if Rough Sea"] = false,
	["Hop Find Berry"] = false,
	["Use Portal Teleport"] = false,
	["Input Minutes"] = 35,
	["Auto Yoru Mini (Hop Server)"] = false,
	["Auto Tushita"] = false,
	["Auto Rejoin After X Minutes"] = true,
	["Anti Teleport Back When Tween"] = true,
	["Start Farm"] = false,
	["Webhook Destroy IDK"] = false,
	["Speed Boat Auto Drive"] = 300,
	["Auto Choose Gears"] = false,
	["Auto Pirate Raid"] = false,
	["Select Sea Events"] = {
		["Shark"] = true,
		["Piranha"] = true,
		["Ship"] = true
	},
	["Auto Buy Gear Draco"] = false,
	["Farm Observation"] = false,
	["Hop Server [ Haki color or Legendary Sword]"] = false,
	["Auto Elite Hunter"] = false,
	["Teleport To Kitsune Island"] = false,
	["ESP Fruit"] = false,
	["Time Hop Server"] = 10,
	["Health %"] = 30,
	["Will Back When over 10km"] = false,
	["Auto Attack Leviathan"] = false,
	["Attack Rip Indra"] = false,
	["Select Skills Gun"] = {
		["Z"] = true,
		["X"] = true
	},
	["Auto Find Leviathan"] = false,
	["Value Collect Chest to Hop"] = 20,
	["Teleport Player"] = false,
	["Auto Third World"] = false,
	["Reset Character Buy Boat"] = false,
	["Auto Sea Event"] = false,
	["Auto Stats"] = false,
	["Auto Raid"] = false,
	["Webhook Store Fruit"] = false,
	["Inf Soru"] = false,
	["Auto Sea Event With Friend"] = false,
	["Esp Fruit"] = false,
	["Just Use Skill when Player Active Ken"] = false,
	["Auto Chest"] = false,
	["ESP Player"] = false,
	["Auto Quest Dojo Trainer"] = true,
	["Kill Aura With DragonStorm"] = false,
	["Auto Multi Raid"] = false,
	["Auto Craft Item Shark Anchor"] = false,
	["Use Skill when Kill Player"] = false,
	["Summon Soul Reaper"] = false,
	["Auto Quest Dragon Hunter"] = false,
	["Follow Player Select"] = false,
	["Remove Notifications"] = false,
	["Use Click M1 Skull Guitar For Sea Event"] = false,
	["Auto CDK"] = false,
	["Auto Crafting Volcanic Magnet"] = false,
	["Use Your Boat Beast Hunter"] = false,
	["Use Entrance Teleport"] = false,
	["Webhook Find Leviathan"] = false,
	["Hop Sever Raid"] = false,
	["Auto Buy Gear"] = false,
	["Attack Dough King"] = false,
	["Input WalkSpeed"] = 200,
	["Hop Find Dough King"] = false,
	["Value Damage Multi Segments"] = 30000,
	["Auto Trial"] = false,
	["Auto Upgrade Race V2-V3 Draco"] = false,
	["Value Speed Fly Boat"] = 3,
	["Value Speed Boat"] = 200
}
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer 
getgenv().Key = "809d79ebbf3806842fac0343" 
getgenv().NewUI = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaHub.lua"))()
while true do
    if game.PlaceId == 7449423635 then
        break
    end
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    wait(5)
end
while task.wait(5) do
    local targetCFrame = CFrame.new(5865.6083984375, 1208.3153076171875, 875.4540405273438)
    local args1 = {
        {
            NPC = "Dojo Trainer",
            Command = "RequestQuest"
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/InteractDragonQuest"):InvokeServer(unpack(args1))
    local args2 = {
        {
            NPC = "Dojo Trainer",
            Command = "ClaimQuest"
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/InteractDragonQuest"):InvokeServer(unpack(args2))
	task.wait(1)
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/InteractDragonQuest"):InvokeServer(unpack(args1))
end
