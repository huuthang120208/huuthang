function scriptautov4()
    _G.Team = "Marine" -- Marine / Pirate
    _G.Settings_V4 = {
        ["LockTiers"] = 6, 
        ["Lever"] = true, 
        ["InVIPServ"] = true, 
        ["HelperNameList"] = { 
            "quangdkr13",
            "shopeeroblox_9IEXXN"
        },
        ["V4FarmList"] = { 
            "frank9gz",
            "clerk_84d",
            "MaxwellAlyssa3",
            "MorganPhyllis528",
            "BruceJonathan361",
            "WardPriscilla5",
            "PruittDanielle967",
            "AcevedoMercedes250",
            "HudsonPurr084",
            "GonzalesCarlos33"
        }
    }
    getgenv().Key = "MARU_V4-KRVC0Z7XJB7VYNW"
    getgenv().id = "1084122060307050586"
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MasterPClient/main/Loader.lua"))()  
end
local HttpService = game:GetService("HttpService")
local previous_v227, previous_v228, previous_v229 = nil, nil, nil
function SendToWebhook(webhookUrl, message)
    local http = syn and syn.request or http_request or request or nil
    local payload = {
        content = message, 
        username = "Hữu Thắng hiện lên và nói"
    }
    local success, response = pcall(function()
        return http({
            Url = webhookUrl,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = HttpService:JSONEncode(payload)
        })
    end)
end

function CheckRace()
    local v227 = nil
    local v228 = nil
    local v229 = nil
    v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")

    if v227 ~= previous_v227 or v228 ~= previous_v228 or v229 ~= previous_v229 then
        previous_v227, previous_v228, previous_v229 = v227, v228, v229

        local statusMessage = ""
        if v229 == 1 then
            statusMessage = "Required Train More , ( gear 1 )"
        elseif v229 == 0 then 
            statusMessage = "Ready for Trial"
        elseif v229 == 2 then
            statusMessage = "Can Buy Gear With " .. v227 .. " Fragments ( gear 1 )"
        elseif v229 == 4 then
            statusMessage = "Can Buy Gear With " .. v227 .. " Fragments ( gear 2 )"
        elseif v229 == 7 then
            statusMessage = "Can Buy Gear With " .. v227 .. " Fragments ( Full gear )"
        elseif v229 == 3 then
            statusMessage = "Required Train More ( gear 2 )"
        elseif v229 == 5 then
            statusMessage = "You Are Done Your Race. ( full gear t10 )"
        elseif v229 == 6 then
            statusMessage = "Upgrades completed: " .. v228 - 2 .. "/3, Need Trains More ( gear 3 )"
        elseif v229 == 8 then
            statusMessage = "Remaining " .. 10 - v228 .. " training sessions. ( full gear )" 
        else
            statusMessage = "Không đủ Yêu cầu" 
        end

        local v113 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
        local v111 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")
        local playerName = game.Players.LocalPlayer.Name
        local race = game.Players.LocalPlayer.Data.Race.Value
        local fragment = game.Players.LocalPlayer.Data.Fragments.Value
        local thongbao = ""

        if fragment < 13000 then
            thongbao = "số fragment : " .. tostring(fragment) .. "  ( chưa đủ 13k fragment ) @everyone"
        else
            thongbao = "số fragment : " .. tostring(fragment) .. "  ( Đủ 13k fragment )"
        end

        if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
            local v4Status = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
            local raceInfo = race .. " V4 (Trạng thái: " .. tostring(v4Status) .. ")"
            SendToWebhook(
                "https://discord.com/api/webhooks/1312650928821768212/5nx2ScEE--inMxNOrk2RpAKsPKGR8YCLdrkN8C7JZT6xQkGfHmUQTY7hz1ftLeeepwqW",
                "Tên người chơi: " .. playerName .. "\nThông tin: " .. raceInfo .. "\nTrạng thái V4: " .. tostring(v4Status) .. "\nTrạng thái ancient quests : " ..  statusMessage .. "\n".. thongbao
            )
        elseif v113 == -2 then
            local raceInfo = race .. " V3"
            SendToWebhook(
                "https://discord.com/api/webhooks/1313208538041946233/JZ8xcremwnzrrefPC7xTi9H0f45dM6qQ74ScolrBt6dJFHyai2pRYi27YclHIQHgFprl",
                "Tên người chơi: " .. playerName .. "\nThông tin: " .. raceInfo .. "\n" .. thongbao
            )
        elseif v111 == -2 then
            local raceInfo = race .. " V2"
            SendToWebhook(
                "https://discord.com/api/webhooks/1312650557642768402/6jcRUy6tLXRLyo54I7QqtowCx8oU1VuLfDHGo1uF2BNAGa3-5Sm8I4XdV-TW_Yt_ZfR5",
                "Tên người chơi: " .. playerName .. "\nThông tin: " .. raceInfo .. "\n" .. thongbao .. "\n@everyone"
            )
        else
            local raceInfo = race .. " V1"
            SendToWebhook(
                "https://discord.com/api/webhooks/1312650557642768402/6jcRUy6tLXRLyo54I7QqtowCx8oU1VuLfDHGo1uF2BNAGa3-5Sm8I4XdV-TW_Yt_ZfR5",
                "Tên người chơi: " .. playerName .. "\nThông tin: " .. raceInfo .. "\n" .. thongbao .. "\n@everyone"
            )
        end
    end
end
function jointeam()
 do -- Team Script
    repeat 
        ChooseTeam = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ChooseTeam",true)
        UIController = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("UIController",true)
        if UIController and ChooseTeam then
            if ChooseTeam.Visible then
                for i,v in pairs(getgc()) do
                    if type(v) == "function" and getfenv(v).script == UIController then
                        local constant = getconstants(v)
                        pcall(function()
                            if constant[1] == "Marines" and #constant == 1 then
                                v(shared.Team or "Marines")
                            end
                        end)
                    end
                end
            end
        end
        wait(1)
    until game.Players.LocalPlayer.Team
    repeat wait() until game.Players.LocalPlayer.Character
 end
end
jointeam()
wait(5)
while true do
    if game.PlaceId == 7449423635 then
        print("Đã tới PlaceId 7449423635, dừng lại.")
        break
    elseif game.PlaceId == 2753915549 or game.PlaceId == 4442272183 then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
    wait(5)
end
if game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("CheckTempleDoor") == false then
    function HyperCahaya(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 
        Speed = Distance < 10 and 20 or Distance < 25 and 5050 or Distance < 50 and 2040 or Distance < 150 and 830 or Distance < 250 and 620 or Distance < 500 and 410 or Distance < 750 and 370 or 320 
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 
            TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear), 
            {CFrame = Pos} 
        ):Play() 
    end 
    HyperCahaya(CFrame.new(-15852.91796875, 485.5301818847656, 452.25537109375))
    wait(50)
    scriptautov4()
else
    scriptautov4()
end
while true do     
    CheckRace()
    wait(20)
    print("Đã check race")
end
