function scriptautov4()
    _G.Team = "Marine" -- Marine / Pirate
    _G.Settings_V4 = {
        ["LockTiers"] = 6, 
        ["Lever"] = true, 
        ["InVIPServ"] = true, 
        ["HelperNameList"] = { 
            "thanghuynh111",
            "yzuygnxzxv83024"
        },
        ["V4FarmList"] = { 
            "LucasIvan638",
            "SparksDarin6",
            "DukeChad6",
            "BryantMaria658",
            "nvavsvs211655",
            "TranBelinda29",
            "nvavsvs987835",
            "CameronRose424",
            "accrrffroblox9850",
            "nvavss329578"
        }
    }
    getgenv().Key = "MARU_V4-KRVC0Z7XJB7VYNW"
    getgenv().id = "1084122060307050586"
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MasterPClient/main/Loader.lua"))()  
end
local HttpService = game:GetService("HttpService")
function SendToWebhook(webhookUrl, playerName, race, statusMessage, thongbao, gatcan, color)
    local http = syn and syn.request or http_request or request or nil
    local currentTime = os.date("%Y-%m-%d %H:%M:%S")
    local embed = {
        title = "Thông tin người chơi",
        description = "Tên người chơi: **" .. playerName .. "**\n" ..
                      "Tộc: **" .. race .. "**\n" ..
                      "Trạng thái ancient quests: **" .. statusMessage .. "**\n" ..
                      "Thông báo: **" .. thongbao .. "**\n" ..
                      "Gạt cần : **" .. gatcan .. "**\n",  
        color = color,  
        footer = {
            text = "Check Race Status" .. currentTime,
        }
    }

    local payload = {
        username = "Hữu Thắng hiện lên và nói",
        embeds = {embed}
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
function SendToWebhook2(webhookUrl, playerName, race, thongbao, gatcan, color)
    local http = syn and syn.request or http_request or request or nil
    local currentTime = os.date("%Y-%m-%d %H:%M:%S")
    local embed = {
        title = "Thông tin người chơi",
        description = "Tên người chơi: **" .. playerName .. "**\n" ..
                      "Tộc: **" .. race .. "**\n" ..
                      "Thông báo: **" .. thongbao .. "**\n" ..
                      "Gạt cần : **" .. gatcan .. "**\n",  
        color = color,  
        footer = {
            text = "Check Race Status" .. currentTime,
        }
    }

    local payload = {
        username = "Hữu Thắng hiện lên và nói",
        embeds = {embed}
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

local previousStatusMessage = ""
function CheckRace()
    local v111 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")
    local v113 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
    local playerName = game.Players.LocalPlayer.Name
    local race = game.Players.LocalPlayer.Data.Race.Value
    local fragment = game.Players.LocalPlayer.Data.Fragments.Value
    local thongbao = ""
    local gatcan = ""
    if fragment < 13000 then
        thongbao = "số fragment : " .. tostring(fragment) .. "  ( chưa đủ 13k fragment ) @everyone"
    else
        thongbao = "số fragment : " .. tostring(fragment) 
    end
    if game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("CheckTempleDoor") == true then
      gatcan = "Đã Gạt cần "
    else
      gatcan "Chưa Gạt cần "
    end
    if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        local v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
            local statusMessage = ""
            if v229 == 1 then
                statusMessage = "Required Train More ( gear 1 )"
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
            if statusMessage ~= previousStatusMessage then
              previousStatusMessage = statusMessage
              SendToWebhook(
                "https://discord.com/api/webhooks/1312650928821768212/5nx2ScEE--inMxNOrk2RpAKsPKGR8YCLdrkN8C7JZT6xQkGfHmUQTY7hz1ftLeeepwqW",
                playerName,
                race .. " V4",
                statusMessage,
                thongbao,
                gatcan ,
                6029056
            )
            else
            print("Không có thay đổi trong statusMessage")
            end
    elseif v113 == -2 then
        SendToWebhook2(
            "https://discord.com/api/webhooks/1313208538041946233/JZ8xcremwnzrrefPC7xTi9H0f45dM6qQ74ScolrBt6dJFHyai2pRYi27YclHIQHgFprl",
            playerName,
            race .. " V3",
            thongbao,
            gatcan ,
            6029056 
        )
    elseif v111 == -2 then
        SendToWebhook2(
            "https://discord.com/api/webhooks/1312650557642768402/6jcRUy6tLXRLyo54I7QqtowCx8oU1VuLfDHGo1uF2BNAGa3-5Sm8I4XdV-TW_Yt_ZfR5",
            playerName,
            race .. " V2",
            "",
            thongbao,
            gatcan .. "\n@everyone",
            11995680 
        )
    else
        SendToWebhook2(
            "https://discord.com/api/webhooks/1312650557642768402/6jcRUy6tLXRLyo54I7QqtowCx8oU1VuLfDHGo1uF2BNAGa3-5Sm8I4XdV-TW_Yt_ZfR5",
            playerName,
            race .. " V1",
            thongbao,
            gatcan  .. "\n@everyone",
            11995680  
        )
    end
end
do
    repeat
        local player = game:GetService("Players").LocalPlayer
        local mainGui = player.PlayerGui:FindFirstChild("Main (minimal)")
        if mainGui then
            local ChooseTeam = mainGui:FindFirstChild("ChooseTeam", true)
            if ChooseTeam and ChooseTeam.Visible then
                for i, v in pairs(getgc()) do
                    if type(v) == "function" then
                        local success, constants = pcall(getconstants, v)
                        if success and constants and table.find(constants, "Marines") then
                            pcall(function()
                                v(shared.Team or "Marines")
                            end)
                        end
                    end
                end
            end
        end
        wait(1)
    until game.Players.LocalPlayer.Team
    repeat wait() until game.Players.LocalPlayer.Character
end
repeat wait() until game.Players.LocalPlayer.Character
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
while true do
    if game.PlaceId == 7449423635 then
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
    wait(20)     
    CheckRace()
    print("Đã check race")
end
