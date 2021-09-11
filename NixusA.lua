local plrs = game:GetService("Players")
local skins = loadstring(game:HttpGet("https://pastebin.com/raw/bjkeLmVr"))()
local lplr = plrs.LocalPlayer
local mouse = lplr:GetMouse()
local cam = workspace.CurrentCamera
local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
local oldIndex = mt.__index
local oldNewIndex = mt.__newindex
local anim = Instance.new("Animation", workspace)
local client = getsenv(lplr.PlayerGui.Client)
anim.AnimationId = "rbxassetid://0"
getgenv().tocolor = function(color_table) return Color3.fromRGB(color_table.R*255,color_table.G*255,color_table.B*255) end
getgenv().fromcolor = function(color_table) return {R = color_table.R, G = color_table.G, B = color_table.B} end
setreadonly(mt, false)
local materials = {"Plastic","Wood","Slate","Concrete","CorrodedMetal","DiamondPlate","Foil","Grass","Ice","Marble","Granite","Brick","Pebble","Sand","Fabric","SmoothPlastic","Metal","WoodPlanks","Cobblestone","Air","Water","Rock","Glacier","Snow","Sandstone","Mud","Basalt","Ground","CrackedLava","Neon","Glass","Asphalt","LeafyGrass","Salt","Limestone","Pavement","ForceField"}
local fonts = {"AmaticSC","Arcade","Arial","ArialBold","Bangers","Bodoni","Cartoon","Code","Creepster","DenkOne","Fantasy","Fondamento","FredokaOne","Garamond","Gotham","GothamBlack","GothamBold","GothamSemibold","GrenzeGotisch","Highway","IndieFlower","JosefinSans","Jura","Kalam","Legacy","LuckiestGuy","Merriweather","Michroma","Nunito","Oswald","PatrickHand","PermanentMarker","Roboto","RobotoCondensed","RobotoMono","Sarpanch","SciFi","SourceSans","SourceSansBold","SourceSansItalic","SourceSansLight","SourceSansSemibold","SpecialElite","TitilliumWeb","Ubuntu",}
local library = loadstring(game:HttpGet("https://pastebin.com/raw/7PrbRYZX"))()
local values = {version = "0.0.1"}
local nilf = function() end
local ct = function() game:GetService("ReplicatedStorage").Events.ControlTurn:FireServer() end
local oldSpeedUpdate = client.speedupdate

local funcs = {}
local cheat = {}
local cheats = {
    name = "femboys.cute | beste [beta]",
    darkmode = true,
    togglekey = Enum.KeyCode.Insert,
    [1] = {
        name = "Rage",
        [1] = {
            name = "Main",
            [1] = {"Checkbox", "Enable Ragebot", nilf, {}, "Enabled"},
            [2] = {"Dropdown", "Target Selection", nilf, {options = {"Closest To Crosshair", "Lowest Health", "Physical Distance"}}, "Target_Selection"},
            [3] = {"Dropdown", "Origin", nilf, {options = {"Camera", "Head", "Real Head"}}, "Origin"},
            [4] = {"Checkbox", "Autoshoot", nilf, {}, "Autoshoot"},
            [5] = {"Checkbox", "Autowall", nilf, {}, "Autowall"},
            [6] = {"Slider", "Autoshoot Min Damage", nilf, {min = 1, max = 100, precise = true, default = 25}, "Min_Damage"},
            [7] = {"Slider", "Autowall Min Damage", nilf, {min = 1, max = 100, precise = true, default = 13}, "Min_Damage_Behind_Wall"},
        },
        [2] = {
            name = "Hitboxes",
            [1] = {"Checkbox", "Head", nilf, {}, "Head"},
            [2] = {"Checkbox", "Torso", nilf, {}, "Torso"},
            [3] = {"Checkbox", "Arms", nilf, {}, "Arms"},
            [4] = {"Checkbox", "Pelvis", nilf, {}, "Pelvis"},
            [5] = {"Checkbox", "Legs", nilf, {}, "Legs"},
        },
        [3] = {
            name = "Other",
            [1] = {"Checkbox", "Friendly Fire", nilf, {}, "Friendly_Fire"},
            [2] = {"Checkbox", "Skip Head On Broken Head", nilf, {}, "Baim_On_Broken_Head"},
            [3] = {"Checkbox", "Skip Head On HP", nilf, {}, "Baim_On_HP"},
            [4] = {"Slider", "HP Amount", nilf, {min = 1, max = 100, precise = true, default = 25}, "Baim_HP_Amount"},
            [5] = {"Keybind", "Force Skip head", nilf, {}, "Force_Baim_Key"},
        },
        [4] = {
            name = "Multi-Points",
            [1] = {"Checkbox", "Head", nilf, {}, "Multipoint_Head"},
            [2] = {"Checkbox", "Torso", nilf, {}, "Multipoint_Torso"},
            [3] = {"Checkbox", "Pelvis", nilf, {}, "Multipoint_Pelvis"},
        },
        [5] = {
            name = "Exploits",
            [1] = {"Checkbox", "Double Tap", nilf, {}, "Double_Tap"},
            [2] = {"Keybind", "DT Key", nilf, {}, "DT_Key"},
            [3] = {"Checkbox", "Remove Recoil", nilf, {}, "Remove_Recoil"},
            --[2] = {"Checkbox", "Teleport", nilf, {}, "Teleport"},
            --[3] = {"Slider", "Teleport Distance", nilf, {min = 4, max = 12, precise = true, default = 7}, "Teleport_Distance"},
        },
        [6] = {
            name = "Force-Angles",
            [1] = {"Checkbox", "Force Pitch", nilf, {}, "Force_Pitch"},
            [2] = {"Dropdown", "Pitch", nilf, {options = {"Off", "Up", "Down", "Zero"}}, "Force_Pitch_Pitch"},
            [3] = {"Checkbox", "Force Yaw", nilf, {}, "Force_Yaw"},
            [4] = {"Slider", "Yaw", nilf, {min = 0, max = 360, precise = true, default = 90}, "Force_Yaw_Yaw"},
        },
        [7] = {
            name = "FPS Mitigations",
            [1] = {"Slider", "Max Penetrations", nilf, {min = 1, max = 4, precise = true, default = 4}, "Max_Penetrations"},
            [2] = {"Checkbox", "Limit Hitboxes", nilf, {}, "Limit_Hitboxes"},
        },
        [8] = {
            name = "Damage Boost",
            [1] = {"Checkbox", "Boost Damage", nilf, {}, "Enabled"},
            [2] = {"Slider", "Multiplier", nilf, {min = 1, max = 5, precise = true, default = 1}, "Multiplier"},
        },
    },
    [2] = {
        name = "Anti-Aim",
        [1] = {
            name = "Angles",
            [1] = {"Checkbox", "Enable Anti-Aim", ct, {}, "Enabled"},
            [2] = {"Dropdown", "Pitch", ct, {options = {"Off", "Down", "Zero", "Up", "Random"}}, "Pitch"},
            [3] = {"Dropdown", "Yaw", nilf, {options = {"Off", "Left", "Right", "Back", "Custom", "Random", "Manual"}}, "Yaw"},
            [4] = {"Slider", "Custom Yaw", nilf, {min = 0, max = 360, precise = true, default = 180}, "Custom_Yaw"},
        },
        [2] = {
            name = "Extra",
            [1] = {"Checkbox", "Disable On E", ct, {}, "Disable_On_E"},
            [2] = {"Checkbox", "Slide Walk", nilf, {}, "Slide_Walk"},
            [3] = {"Checkbox", "No Animations", nilf, {}, "No_Animations"},
            [4] = {"Checkbox", "No Head", nilf, {}, "No_Head"},
        },
        [3] = {
            name = "Yaw",
            [1] = {"Checkbox", "Enable Jitter", nilf, {}, "Jitter"},
            [2] = {"Slider", "Jitter Range", nilf, {min = 0, max = 360, precise = true, default = 90}, "Jitter_Range"},
            [3] = {"Checkbox", "Randomize Jitter", nilf, {}, "Randomize_Jitter"},
            [4] = {"Slider", "Randomize Jitter Min", nilf, {min = 0, max = 360, precise = true, default = 0}, "Randomize_Jitter_Min"},
            [5] = {"Checkbox", "Enable Spin", nilf, {}, "Spin"},
            [6] = {"Slider", "Spin Range", nilf, {min = 1, max = 360, precise = true, default = 360}, "Spin_Range"},
            [7] = {"Slider", "Spin Increment", nilf, {min = 1, max = 270, precise = true, default = 1}, "Spin_Increment"},
        },
        [4] = {
            name = "Exploits",
            [1] = {"Checkbox", "Slow Walk", nilf, {}, "Slow_Walk"},
            [2] = {"Slider", "Slow Walk Speed", nilf, {min = 1, max = 12, precise = true, default = 10}, "Slow_Walk_Speed"},
            [3] = {"Keybind", "Slow Walk Bind", nilf, {}, "Slow_Walk_Bind"},
            [4] = {"Checkbox", "Fake Duck", nilf, {}, "Fake_Duck"},
            [5] = {"Keybind", "Fake Duck Bind", nilf, {}, "Fake_Duck_Bind"},
        },
    },
    [3] = {
        name = "Visuals",
        [1] = {
            name = "Enemies",
            [1] = {"Checkbox", "Box", nilf, {}, "Box"},
            [2] = {"Checkbox", "Name", nilf, {}, "Name"},
            [3] = {"Dropdown", "Name Font", nilf, {options = fonts, default = "GothamBold"}, "Name_Font"},
            [4] = {"Slider", "Name Font Size", nilf, {min = 10, max = 25, precise = true, default = 15}, "Name_Font_Size"},
            [5] = {"Checkbox", "Health", nilf, {}, "Health"},
            [6] = {"Slider", "Health Thickness", nilf, {min = 1, max = 5, precise = true, default = 1}, "Health_Thickness"},
        },
        [2] = {
            name = "Self",
            [1] = {"Checkbox", "Third Person", nilf, {}, "Third_Person"},
            [2] = {"Keybind", "Third Person Key", nilf, {}, "Third_Person_Key"},
            [3] = {"Slider", "Third Person Distance", nilf, {min = 7, max = 20, precise = true, default = 13}, "Third_Person_Distance"},
        },
        [3] = {
            name = "Viewmodel",
            [1] = {"Slider", "X Offset", nilf, {min = 0, max = 200, precise = true, default = 0}, "X_Offset"},
            [2] = {"Slider", "Y Offset", nilf, {min = 0, max = 200, precise = true, default = 0}, "Y_Offset"},
            [3] = {"Slider", "Z Offset", nilf, {min = 0, max = 200, precise = true, default = 0}, "Z_Offset"},
        },
        [4] = {
            name = "Bullet Tracers",
            [1] = {"Checkbox", "Enabled", nilf, {}, "Enabled"},
            [2] = {"Dropdown", "Material", nilf, {options = materials}, "Material"},
            [3] = {"Slider", "Life Time", nilf, {min = 0, max = 5, precise = false, default = 5}, "Life_Time"},
            [4] = {"Colorpicker", "Tracer Color", nilf, {color = Color3.fromRGB(0, 120, 255)}, "Tracer_Color"},
        },
        [5] = {
            name = "Chams",
            [1] = {"Checkbox", "Enabled", nilf, {}, "Enabled"},
            [2] = {"Dropdown", "Team", nilf, {options = {"Enemies", "Teammates", "Everyone"}}, "Team"},
            [3] = {"Slider", "Transparency", nilf, {min = 0, max = 100, precise = true, default = 100}, "Transparency"},
            [4] = {"Colorpicker", "Color", nilf, {color = Color3.fromRGB(255,255,255)}, "Color"},
        },
    },
    [4] = {
        name = "Misc",
    },
    [5] = {
        name = "Configs",
        [1] = {
            name = "Configs",
            [1] = {"Textbox", "Config Name", nilf, {placeholder = "CONFIG NAME"}, "Configs_Name"},
            [2] = {"Button", "Save Config", function() game:GetService("femboys.cute | beste [beta]").ConfigEvent:Fire("SaveConfig", values["Configs"]["Configs"]["Configs_Name"]) end, {text = "Save"}, "Save_Config"},
            [3] = {"Button", "Load Config", function() game:GetService("femboys.cute | beste [beta]").ConfigEvent:Fire("LoadConfig", values["Configs"]["Configs"]["Configs_Name"]) end, {text = "Load"}, "Load_Config"},
        },
    },
}
local cheat_is_loaded
local ui_is_loaded = false
if cheats then
    local ui = library.new(cheats.darkmode, cheats.name)
    ui.ChangeToggleKey(cheats.togglekey)
    if not game:FindFirstChild(cheats.name) then
        local Service, ConfigEvent, ApiEvent = Instance.new("Model"), Instance.new("BindableEvent"), Instance.new("BindableEvent")
        Service.Name, ConfigEvent.Name, ApiEvent.Name = cheats.name, "ConfigEvent", "ApiEvent"
        Service.Parent, ConfigEvent.Parent, ApiEvent.Parent = game, Service, Service
    end
    game[cheats.name].ConfigEvent.Event:Connect(function(...)
        local args = {...}--
        if args[2] and ui_is_loaded then
            if args[1] == "SaveConfig" then
                writefile(args[2], game:GetService("HttpService"):JSONEncode(values))
            end
            if args[1] == "LoadConfig" and isfile(args[2]) then
                local contents = game:GetService("HttpService"):JSONDecode(readfile(args[2]))
                if contents.version == values.version then
                    values = contents
                end
            end
        end
    end)
    for tabs = 1, #cheats do
        local tab = ui:Category(cheats[tabs].name)
        values[cheats[tabs].name] = {}
        for sections = 1, #cheats[tabs] do
            local section = tab:Sector(cheats[tabs][sections].name)
            values[cheats[tabs].name][cheats[tabs][sections].name] = {}
            for obj = 1, #cheats[tabs][sections] do
                local cheat = cheats[tabs][sections][obj]
                local gui = section:Cheat(cheat[1], cheat[2], function(value)
                    values[cheats[tabs].name][cheats[tabs][sections].name][cheat[5]] = cheat[1] == "Colorpicker" and fromcolor(value) or value
                    cheat[3]()
                end, cheat[4])
                values[cheats[tabs].name][cheats[tabs][sections].name][cheat[5]] = cheat[1] == "Colorpicker" and fromcolor(gui.value) or gui.value
                game[cheats.name].ConfigEvent.Event:Connect(function(...)
                    local args = {...}
                    if ui_is_loaded and args[1] == "LoadConfig" then
                        if args[2] and isfile(args[2]) then
                            local contents = game:GetService("HttpService"):JSONDecode(readfile(args[2]))
                            if contents.version == values.version and cheat[1] ~= "Button" and cheat[1] ~= "Textbox" and cheat[1] ~= "Colorpicker" then
                                gui:SetValue(contents[cheats[tabs].name][cheats[tabs][sections].name][cheat[5]])
                            elseif contents.version == values.version and cheat[1] == "Colorpicker" then
                                gui.value = tocolor(contents[cheats[tabs].name][cheats[tabs][sections].name][cheat[5]])
                            end
                        end
                    end
                end)
            end
            ui_is_loaded = true
        end
    end
end
repeat wait() until ui_is_loaded
cheat.api = function()
    local ApiEvent = game[cheats.name].ApiEvent
    ApiEvent.Event:Connect(function(...)
    end)
end
cheat.keylist = function()
    local Keybinds = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local Frame_2 = Instance.new("Frame")
    local Frame_3 = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local Frame_4 = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    Keybinds.Name = "Keybinds"
    Keybinds.ResetOnSpawn = false
    Keybinds.ZIndexBehavior = Enum.ZIndexBehavior.Global
    Frame.Parent = Keybinds
    Frame.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.178349599, 0, 0.29397589, 0)
    Frame.Size = UDim2.new(0, 153, 0, 31)
    Frame_2.Parent = Frame
    Frame_2.BackgroundColor3 = Color3.fromRGB(110, 38, 255)
    Frame_2.BorderSizePixel = 0
    Frame_2.Size = UDim2.new(0, 153, 0, 7)
    Frame_3.Parent = Frame
    Frame_3.BackgroundColor3 = Color3.fromRGB(110, 38, 255)
    Frame_3.BorderSizePixel = 0
    Frame_3.Position = UDim2.new(0, 0, 0, 5)
    Frame_3.Size = UDim2.new(0, 153, 0, 2)
    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0, 0, 0.225806445, 0)
    TextLabel.Size = UDim2.new(0, 153, 0, 24)
    TextLabel.Font = Enum.Font.Roboto
    TextLabel.Text = "keybinds"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 13.000
    Frame_4.Parent = Frame
    Frame_4.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
    Frame_4.BackgroundTransparency = 1.000
    Frame_4.Position = UDim2.new(0, 0, 1, 2)
    Frame_4.Size = UDim2.new(0, 153, 0, 178)
    UIListLayout.Parent = Frame_4
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    local UserInputService = game:GetService("UserInputService")
    local guig = Frame
    local dragging
    local dragInput
    local dragStart
    local startPos
    local function update(input)
        local delta = input.Position - dragStart
        guig.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    guig.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = guig.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    guig.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
    Keybinds.Parent = game.CoreGui
    return Frame_4
end
cheat.initiate = function()
    local keylist = cheat.keylist()
    cheat.api()
    local vars = {thirdperson = false, edown = false, jitter = false, spin = 0, rtarget, rhitbox, hopping = false, hit = tick(), dt = false, candt = false, forcebaim = false}
    local points = {
        ["Head"] = {
            [1] = Vector3.new(0, 0.6, 0),
            [2] = Vector3.new(0.6, 0, 0),
            [3] = Vector3.new(-0.6, 0, 0),
            [4] = Vector3.new(0, 0, 0.6),
            [5] = Vector3.new(0, 0, -0.6),
        },
        ["Torso"] = {
            [1] = Vector3.new(-1, 0.8, -0.5),
            [2] = Vector3.new(-1, 0.8, 0.5),
            [3] = Vector3.new(1, 0.8, -0.5),
            [4] = Vector3.new(1, 0.8, 0.5),
            [5] = Vector3.new(-1, -0.8, -0.5),
            [6] = Vector3.new(-1, -0.8, 0.5),
            [7] = Vector3.new(1, -0.8, -0.5),
            [8] = Vector3.new(1, -0.8, 0.5),
        },
        ["Pelvis"] = {
            [1] = Vector3.new(-1, -0.2, -0.5),
            [2] = Vector3.new(-1, -0.2, 0.5),
            [3] = Vector3.new(1, -0.2, -0.5),
            [4] = Vector3.new(1, -0.2, 0.5),
        },
    }
    hammerunit2stud = 0.0694
    SimulateShot = function(cf, c)
        local range
        local penetrationpower
        local gun = client.gun
        if gun == nil then return end
        if gun:FindFirstChild("Range") then
            range = gun.Range.Value
        end
        if gun:FindFirstChild("Penetration") then
            penetrationpower = gun.Penetration.Value * 0.01
        end
        local firerate
        if gun:FindFirstChild("FireRate") then
            firerate = gun.FireRate.Value
        end
        local tinsert = table.insert
        local hitlist = {
            workspace.Debris,
            lplr.Character,
            workspace.Ray_Ignore,
            cam,
            workspace.Map:WaitForChild("Clips"),
            workspace.Map:WaitForChild("SpawnPoints")
        }
        local direction = Vector3.new()
        local Mouse = cf.p + cf.lookVector * 500
        direction = (CFrame.new(cf.p, Mouse)).lookVector.unit * range * hammerunit2stud
        local RayCasted = Ray.new(cf.p, direction)
        local partpenetrated = 0
        local limit = 0
        local PartHit, PositionHit, NormalHit
        local partmodifier = 1
        local damagemodifier = 1
        repeat
            PartHit, PositionHit, NormalHit = workspace:FindPartOnRayWithIgnoreList(RayCasted, hitlist, false, true)
            if PartHit and PartHit.Parent then
                partmodifier = 1
                if PartHit.Material == Enum.Material.DiamondPlate then
                    partmodifier = 3
                end
                if PartHit.Material == Enum.Material.CorrodedMetal or PartHit.Material == Enum.Material.Metal or PartHit.Material == Enum.Material.Concrete or PartHit.Material == Enum.Material.Brick then
                    partmodifier = 2
                end
                if PartHit.Name == "Grate" or PartHit.Material == Enum.Material.Wood or PartHit.Material == Enum.Material.WoodPlanks or PartHit and PartHit.Parent and PartHit.Parent:FindFirstChild("Humanoid") then
                    partmodifier = 0.1
                end
                if PartHit.Transparency == 1 or PartHit.CanCollide == false or PartHit.Name == "Glass" or PartHit.Name == "Cardboard" or PartHit:IsDescendantOf(workspace.Ray_Ignore) or PartHit:IsDescendantOf(workspace.Debris) or PartHit and PartHit.Parent and PartHit.Parent.Name == "Hitboxes" then
                    partmodifier = 0
                end
                if PartHit.Name == "nowallbang" then
                    partmodifier = 100
                end
                if PartHit:FindFirstChild("PartModifier") then
                    partmodifier = PartHit.PartModifier.Value
                end
                local fakehit, Endposition = workspace:FindPartOnRayWithWhitelist(Ray.new(PositionHit + direction * 1, direction * -2), {PartHit}, true)
                local PenetrationDistance = (Endposition - PositionHit).magnitude
                PenetrationDistance = PenetrationDistance * partmodifier
                limit = math.min(penetrationpower, limit + PenetrationDistance)
                local wallbang = false
                if partpenetrated >= 1 then
                    wallbang = true
                end
                if PartHit and PartHit.Parent and PartHit.Parent.Name == "Hitboxes" or PartHit and PartHit.Parent.className == "Accessory" or PartHit and PartHit.Parent.className == "Hat" or PartHit.Name == "HumanoidRootPart" and PartHit.Parent.Name ~= "Door" or PartHit.Name == "Head" and PartHit.Parent:FindFirstChild("Hostage") == nil then
                else
                    if PartHit and PartHit:IsDescendantOf(c) and PartHit.Transparency < 1 or PartHit.Name == "HeadHB" then
                        return PartHit, PositionHit, damagemodifier, wallbang
                    end
                end
                if partmodifier > 0 then
                    partpenetrated = partpenetrated + 1
                end
                damagemodifier = 1 - limit / penetrationpower
                if PartHit and PartHit.Parent and PartHit.Parent.Name == "Hitboxes" or PartHit and PartHit.Parent and PartHit.Parent.Parent and PartHit.Parent.Parent:FindFirstChild("Humanoid2") or PartHit and PartHit.Parent and PartHit.Parent:FindFirstChild("Humanoid2") or PartHit and PartHit.Parent and PartHit.Parent:FindFirstChild("Humanoid") and (1 > PartHit.Transparency or PartHit.Name == "HeadHB") and PartHit.Parent:IsA("Model") then
                    table.insert(hitlist, PartHit.Parent)
                else
                    table.insert(hitlist, PartHit)
                end
                local dmg = {head = client.gun.DMG.Value * 3 , body = client.gun.DMG.Value}
                if client.gun.Bullets ~= nil then
                    dmg.head = dmg.head * client.gun.Bullets.Value
                    dmg.body = dmg.body * client.gun.Bullets.Value
                end
                if wallbang then
                    dmg.head, dmg.body = dmg.head * damagemodifier, dmg.body * damagemodifier
                end
                local realhit
                if PartHit.Parent.Name == "Multipoints" then
                    realhit = PartHit.Parent.Parent
                else
                    realhit = PartHit
                end
                if realhit ~= nil then
                    if wallbang then
                        if realhit.Name == "Head" and dmg.head >=values["Rage"]["Main"]["Min_Damage_Behind_Wall"] or realhit.Name ~= "Head" and dmg.body >= values["Rage"]["Main"]["Min_Damage_Behind_Wall"] then
                        else
                            return
                        end
                    else
                        if realhit.Name == "Head" and dmg.head >=values["Rage"]["Main"]["Min_Damage"] or realhit.Name ~= "Head" and dmg.body >= values["Rage"]["Main"]["Min_Damage"] then
                        else
                            return
                        end
                    end
                end
            end
        until PartHit == nil or limit >= penetrationpower or partpenetrated >= values["Rage"]["FPS Mitigations"]["Max_Penetrations"] or 0 >= damagemodifier or PartHit and PartHit:IsDescendantOf(c)
    end
    mt.__namecall = newcclosure(function(self, ...)
        local method = tostring(getnamecallmethod())
        local args = {...}
        if method == "GetService" then
            if args[1] == cheats.name then
                return game[cheats.name]
            end
        end
        if method == "SetPrimaryPartCFrame" then
            args[1] = args[1] * CFrame.new(values["Visuals"]["Viewmodel"]["X_Offset"]/100, -values["Visuals"]["Viewmodel"]["Y_Offset"]/100, -values["Visuals"]["Viewmodel"]["Z_Offset"]/100)
        end
        if method == "FireServer" and self.Name == "HitPart" and tick() - vars.hit > 0.005 then
            vars.hit = tick()
            spawn(function()
                if values["Visuals"]["Bullet Tracers"]["Enabled"] then
                    local beam = Instance.new("Part", workspace.Debris)
                    beam.Anchored = true
                    beam.CanCollide = false
                    beam.Material = values["Visuals"]["Bullet Tracers"]["Material"]
                    beam.Color = tocolor(values["Visuals"]["Bullet Tracers"]["Tracer_Color"])
                    beam.Size = Vector3.new(0.1, 0.1, (values["Rage"]["Main"]["Origin"] == "Camera" and cam.CFrame.p or values["Rage"]["Main"]["Origin"] == "Head" and lplr.Character.Head.Position or values["Rage"]["Main"]["Origin"] == "Real Head" and lplr.Character.HumanoidRootPart.CFrame.p + lplr.Character.Humanoid.CameraOffset + Vector3.new(0, 1.5, 0) - args[2]).magnitude)
                    beam.CFrame = CFrame.new(values["Rage"]["Main"]["Origin"] == "Camera" and cam.CFrame.p or values["Rage"]["Main"]["Origin"] == "Head" and lplr.Character.Head.Position or values["Rage"]["Main"]["Origin"] == "Real Head" and lplr.Character.HumanoidRootPart.CFrame.p + lplr.Character.Humanoid.CameraOffset + Vector3.new(0, 1.5, 0), args[2]) * CFrame.new(0, 0, -beam.Size.Z / 2)
                    wait(values["Visuals"]["Bullet Tracers"]["Life_Time"])
                    beam:Destroy()
                end
            end)
            if values["Rage"]["Damage Boost"]["Enabled"] then
                args[8] = args[8] * values["Rage"]["Damage Boost"]["Multiplier"]
            end
        end
        if method == "FireServer" and self.Name == "ControlTurn" then
            if values["Anti-Aim"]["Angles"]["Enabled"] then
                if values["Anti-Aim"]["Angles"]["Pitch"] ~= nil then
                    if values["Anti-Aim"]["Extra"]["Disable_On_E"] and not vars.edown or not values["Anti-Aim"]["Extra"]["Disable_On_E"] then
                        if values["Anti-Aim"]["Angles"]["Pitch"] == "Down" then
                            args[1] = -1
                        end
                        if values["Anti-Aim"]["Angles"]["Pitch"] == "Up" then
                            args[1] = 1
                        end
                        if values["Anti-Aim"]["Angles"]["Pitch"] == "Zero" then
                            args[1] = 0
                        end
                        if values["Anti-Aim"]["Angles"]["Pitch"] == "Random" then
                            args[1] = math.random(-1,1)
                        end
                    else
                        args[1] = math.clamp(math.asin(cam.CFrame.LookVector.y),-1,1)
                    end
                end
            end
        end
        if method == "FindPartOnRayWithIgnoreList" and vars.rtarget ~= nil and vars.rhitbox ~= nil and lplr.Status.Alive.Value and not checkcaller() and args[2][7] ~= nil and client.gun ~= nil then
            local origin = values["Rage"]["Main"]["Origin"] == "Camera" and cam.CFrame.p or values["Rage"]["Main"]["Origin"] == "Head" and lplr.Character.Head.Position or values["Rage"]["Main"]["Origin"] == "Real Head" and lplr.Character.HumanoidRootPart.CFrame.p + lplr.Character.Humanoid.CameraOffset + Vector3.new(0, 1.5, 0)
            args[1] = Ray.new(origin, (vars.rhitbox.CFrame.p - origin).unit * math.clamp(client.gun.Range.Value, 5, 400))
        end
        if method == "LoadAnimation" and self.Name == "Humanoid" then
            if values["Anti-Aim"]["Extra"]["Slide_Walk"] then
                if string.find(args[1].Name, "Walk") or string.find(args[1].Name, "Run") then
                    args[1] = anim
                end
            end
            if values["Anti-Aim"]["Extra"]["No_Animations"] then
                args[1] = anim
            end
        end
        if method == "GetState" then
            return Enum.HumanoidStateType.Physics
        end
        if method == "InvokeServer" and self.Name == "Hugh" then
            return
        end
        return oldNamecall(self, unpack(args))
    end)
    mt.__index = newcclosure(function(self, key)
        if not checkcaller() and key == "WalkSpeed" and self == lplr.Character.Humanoid then
            if values["Anti-Aim"]["Exploits"]["Slow_Walk"] then
                if values["Anti-Aim"]["Exploits"]["Slow_Walk_Bind"] ~= nil and game:GetService("UserInputService"):IsKeyDown(values["Anti-Aim"]["Exploits"]["Slow_Walk_Bind"]) then
                    return values["Anti-Aim"]["Exploits"]["Slow_Walk_Speed"]
                end
            end
            if vars.hopping then
                return 3
            end
        end
        return oldIndex(self, key)
    end)
    mt.__newindex = newcclosure(function(self, i, v)
        if values["Anti-Aim"]["Exploits"]["Fake_Duck"] and self:IsA("Humanoid") and i == "CameraOffset" then
            if values["Anti-Aim"]["Exploits"]["Fake_Duck_Bind"] ~= nil and game:GetService("UserInputService"):IsKeyDown(values["Anti-Aim"]["Exploits"]["Fake_Duck_Bind"]) then
                v = Vector3.new(0, 0.05, 0)
            end
        end
        return oldNewIndex(self, i, v)
    end)
    local ApiEvent = game[cheats.name].ApiEvent
    cheat.keydown = game:GetService("UserInputService").InputBegan:Connect(function(input, gameprocessed)
        if values["Visuals"]["Self"]["Third_Person"] and values["Visuals"]["Self"]["Third_Person_Key"] ~= nil then
            if input.KeyCode == Enum.KeyCode[values["Visuals"]["Self"]["Third_Person_Key"]] then
                vars.thirdperson = not vars.thirdperson
                if vars.thirdperson then
                    local TextLabel_2 = Instance.new("TextLabel")
                    local TextLabel_3 = Instance.new("TextLabel")
                    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel_2.BackgroundTransparency = 1.000
                    TextLabel_2.Position = UDim2.new(0.0784313753, 0, 0, 0)
                    TextLabel_2.Size = UDim2.new(0, 141, 0, 16)
                    TextLabel_2.Font = Enum.Font.Ubuntu
                    TextLabel_2.Name = "thirdperson"
                    TextLabel_2.Text = "thirdperson"
                    TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel_2.TextSize = 12.000
                    TextLabel_2.TextStrokeTransparency = 0.400
                    TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
                    TextLabel_3.Parent = TextLabel_2
                    TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel_3.BackgroundTransparency = 1.000
                    TextLabel_3.Position = UDim2.new(0.836601317, 0, 0, 0)
                    TextLabel_3.Size = UDim2.new(0, 25, 0, 16)
                    TextLabel_3.Font = Enum.Font.Ubuntu
                    TextLabel_3.Text = "(on)"
                    TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel_3.TextSize = 12.000
                    TextLabel_3.TextStrokeTransparency = 0.400
                    TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
                    TextLabel_2.Parent = keylist
                else
                    if keylist:FindFirstChild("thirdperson") then
                        keylist:FindFirstChild("thirdperson"):Destroy()
                    end
                end
            end
        end
        if values["Rage"]["Exploits"]["Double_Tap"] and values["Rage"]["Exploits"]["DT_Key"] ~= nil then
            if input.KeyCode == Enum.KeyCode[values["Rage"]["Exploits"]["DT_Key"]] then
                vars.candt = not vars.candt
                if vars.candt then
                    local TextLabel_2 = Instance.new("TextLabel")
                    local TextLabel_3 = Instance.new("TextLabel")
                    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel_2.BackgroundTransparency = 1.000
                    TextLabel_2.Position = UDim2.new(0.0784313753, 0, 0, 0)
                    TextLabel_2.Size = UDim2.new(0, 141, 0, 16)
                    TextLabel_2.Font = Enum.Font.Ubuntu
                    TextLabel_2.Name = "doubletap"
                    TextLabel_2.Text = "doubletap"
                    TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel_2.TextSize = 12.000
                    TextLabel_2.TextStrokeTransparency = 0.400
                    TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
                    TextLabel_3.Parent = TextLabel_2
                    TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel_3.BackgroundTransparency = 1.000
                    TextLabel_3.Position = UDim2.new(0.836601317, 0, 0, 0)
                    TextLabel_3.Size = UDim2.new(0, 25, 0, 16)
                    TextLabel_3.Font = Enum.Font.Ubuntu
                    TextLabel_3.Text = "(on)"
                    TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel_3.TextSize = 12.000
                    TextLabel_3.TextStrokeTransparency = 0.400
                    TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
                    TextLabel_2.Parent = keylist
                else
                    if keylist:FindFirstChild("doubletap") then
                        keylist:FindFirstChild("doubletap"):Destroy()
                    end
                end
            end
        end
        if values["Rage"]["Other"]["Force_Baim_Key"] ~= nil and input.KeyCode == Enum.KeyCode[values["Rage"]["Other"]["Force_Baim_Key"]] then
            vars.forcebaim = not vars.forcebaim
            if vars.forcebaim then
                local TextLabel_2 = Instance.new("TextLabel")
                local TextLabel_3 = Instance.new("TextLabel")
                TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_2.BackgroundTransparency = 1.000
                TextLabel_2.Position = UDim2.new(0.0784313753, 0, 0, 0)
                TextLabel_2.Size = UDim2.new(0, 141, 0, 16)
                TextLabel_2.Font = Enum.Font.Ubuntu
                TextLabel_2.Name = "forcebaim"
                TextLabel_2.Text = "forcebaim"
                TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_2.TextSize = 12.000
                TextLabel_2.TextStrokeTransparency = 0.400
                TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
                TextLabel_3.Parent = TextLabel_2
                TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_3.BackgroundTransparency = 1.000
                TextLabel_3.Position = UDim2.new(0.836601317, 0, 0, 0)
                TextLabel_3.Size = UDim2.new(0, 25, 0, 16)
                TextLabel_3.Font = Enum.Font.Ubuntu
                TextLabel_3.Text = "(on)"
                TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_3.TextSize = 12.000
                TextLabel_3.TextStrokeTransparency = 0.400
                TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
                TextLabel_2.Parent = keylist
            else
                if keylist:FindFirstChild("forcebaim") then
                    keylist:FindFirstChild("forcebaim"):Destroy()
                end
            end
        end
    end)
    cheat.keyup = game:GetService("UserInputService").InputEnded:Connect(function(input, gameprocessed)
    end)
    local firebullet = client.firebullet

    client.firebullet = function(self,...)
        local args = {...}
        if args[1] ~= "doubletap" then
            vars.dt = true
        elseif args[1] == "doubletap" and vars.dt then
            dt = false
            wait(0.2)
        end
        if vars.dt and vars.candt then
            delay(game:GetService("RunService").RenderStepped:wait(),function()
                firebullet("doubletap")
            end)
        end
        return firebullet(self,unpack(args))
    end
    cheat.mainloop = game:GetService("RunService").RenderStepped:Connect(function()
        vars.spin = vars.spin + values["Anti-Aim"]["Yaw"]["Spin_Increment"]
        vars.spin = math.clamp(vars.spin, 0, values["Anti-Aim"]["Yaw"]["Spin_Range"])
        vars.jitter = not vars.jitter
        vars.edown = game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.E)
        if vars.spin == values["Anti-Aim"]["Yaw"]["Spin_Range"] then
            vars.spin = 0
        end
        if vars.edown or values["Anti-Aim"]["Angles"]["Enabled"] and values["Anti-Aim"]["Angles"]["Pitch"] ~= "Off" then
            ct()
        end
        if values["Rage"]["Exploits"]["Remove_Recoil"] then
            client.resetaccuracy()
            client.RecoilX = 0
            client.RecoilY = 0
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
            vars.hopping = true
            if lplr.Character and lplr.Character:FindFirstChild("Humanoid") and lplr.Character:FindFirstChild("Humanoid").Health > 0 then
                lplr.Character.Humanoid.Jump = true
                client.speedupdate = function()
                    lplr.Character.Humanoid.WalkSpeed = 20
                end
            end
        elseif vars.hopping == true then
            vars.hopping = false
            client.speedupdate = oldSpeedUpdate
        end
        if values["Rage"]["Force-Angles"]["Force_Pitch"] then
            for _,plr in pairs(plrs:GetPlayers()) do
                if plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("UpperTorso") and plr ~= lplr then
                    if values["Rage"]["Force-Angles"]["Force_Pitch_Pitch"] ~= "Off" then
                        if values["Rage"]["Force-Angles"]["Force_Pitch_Pitch"] == "Down" then
                            plr.Character.UpperTorso.Waist.C0 = CFrame.new(Vector3.new(0,0.6,0)) * CFrame.Angles(-0.7,0,0)
                        end
                        if values["Rage"]["Force-Angles"]["Force_Pitch_Pitch"] == "Up" then
                            plr.Character.UpperTorso.Waist.C0 = CFrame.new(Vector3.new(0,0.6,0)) * CFrame.Angles(0.7,0,0)
                        end
                        if values["Rage"]["Force-Angles"]["Force_Pitch_Pitch"] == "Zero" then
                            plr.Character.UpperTorso.Waist.C0 = CFrame.new(Vector3.new(0,0.6,0)) * CFrame.Angles(0,0,0)
                        end
                    end
                end
            end
        end
            if values["Rage"]["Main"]["Enabled"] and client.gun ~= nil then
                for _,plr in pairs(plrs:GetPlayers()) do
                    if plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Humanoid").Health > 0 and plr.Character:FindFirstChild("UpperTorso") and lplr.Character and lplr.Character:FindFirstChild("Humanoid") and lplr.Character:FindFirstChild("Humanoid").Health > 0 and not plr.Character:FindFirstChildOfClass("ForceField") then
                        local ignore = {
                            lplr.Character,
                            cam,
                            workspace.Map.Clips,
                            workspace.Ray_Ignore,
                            workspace.Debris,
                        }
                        if workspace.Map:FindFirstChild("Clips") then
                            table.insert(ignore, workspace.Map.Clips)
                        end
                        if values["Rage"]["Other"]["Friendly_Fire"] or not values["Rage"]["Other"]["Friendly_Fire"] and plr.Team ~= lplr.Team then
                            local origin = values["Rage"]["Main"]["Origin"] == "Camera" and cam.CFrame.p or values["Rage"]["Main"]["Origin"] == "Head" and lplr.Character.Head.Position or values["Rage"]["Main"]["Origin"] == "Real Head" and lplr.Character.HumanoidRootPart.CFrame.p + lplr.Character.Humanoid.CameraOffset + Vector3.new(0, 1.5, 0)
                            local hitboxes = {}
                            local function createMP()
                                local MP = Instance.new("Part")
                                MP.Size = Vector3.new(0.1, 0.1, 0.1)
                                MP.Anchored = true
                                MP.Transparency = 1
                                return MP
                            end
                            if values["Rage"]["Hitboxes"]["Head"] and not vars.forcebaim then
                                if not values["Rage"]["Other"]["Baim_On_Broken_Head"] or values["Rage"]["Other"]["Baim_On_Broken_Head"] and plr.Character:FindFirstChild("FakeHead") then 
                                    if not values["Rage"]["Other"]["Baim_On_HP"] or values["Rage"]["Other"]["Baim_On_HP"] and plr.Character.Humanoid.Health >= values["Rage"]["Other"]["Baim_HP_Amount"] then
                                        table.insert(hitboxes, plr.Character.Head)
                                        if values["Rage"]["Multi-Points"]["Multipoint_Head"] then
                                            if not plr.Character.Head:FindFirstChild("Multipoints") then
                                                local multipoint = Instance.new("Folder")
                                                multipoint.Name = "Multipoints"
                                                for i = 1, #points["Head"] do
                                                    local point = createMP()
                                                    point.Name = "m"..i
                                                    point.Position = plr.Character.Head.Position + points["Head"][i]
                                                    point.Parent = multipoint
                                                end
                                                multipoint.Parent = plr.Character.Head
                                            else
                                                plr.Character.Head.Multipoints.m1.Position = plr.Character.Head.Position + Vector3.new(0, 0.6, 0)
                                                plr.Character.Head.Multipoints.m2.Position = plr.Character.Head.Position + Vector3.new(0.6, 0, 0)
                                                plr.Character.Head.Multipoints.m3.Position = plr.Character.Head.Position + Vector3.new(-0.6, 0, 0)
                                                plr.Character.Head.Multipoints.m4.Position = plr.Character.Head.Position + Vector3.new(0, 0, 0.6)
                                                plr.Character.Head.Multipoints.m5.Position = plr.Character.Head.Position + Vector3.new(0, 0, -0.6)
                                            end
                                            for _,multipoint in pairs(plr.Character.Head.Multipoints:GetChildren()) do
                                                table.insert(hitboxes, multipoint)
                                            end
                                        elseif plr.Character.Head:FindFirstChild("Multipoints") then
                                            plr.Character.Head:FindFirstChild("Multipoints"):Destroy()
                                        end
                                    end
                                end
                            end
                            if values["Rage"]["Hitboxes"]["Torso"] then
                                table.insert(hitboxes, plr.Character.UpperTorso)
                                if values["Rage"]["Multi-Points"]["Multipoint_Torso"] then
                                    if not plr.Character.UpperTorso:FindFirstChild("Multipoints") then
                                        local multipoint = Instance.new("Folder")
                                        multipoint.Name = "Multipoints"
                                        for i = 1, #points["Torso"] do
                                            local point = createMP()
                                            point.Name = "m"..i
                                            point.Position = plr.Character.UpperTorso.Position + points["Torso"][i]
                                            point.Parent = multipoint
                                        end
                                        multipoint.Parent = plr.Character.UpperTorso
                                    else
                                        for i,mp in pairs(plr.Character.UpperTorso.Multipoints:GetChildren()) do
                                            mp.Position = plr.Character.UpperTorso.Position + points["Torso"][i]
                                        end
                                    end
                                    for _,multipoint in pairs(plr.Character.UpperTorso.Multipoints:GetChildren()) do
                                        table.insert(hitboxes, multipoint)
                                    end
                                elseif plr.Character.UpperTorso:FindFirstChild("Multipoints") then
                                    plr.Character.UpperTorso:FindFirstChild("Multipoints"):Destroy()
                                end
                            end
                            if values["Rage"]["Hitboxes"]["Arms"] then
                                table.insert(hitboxes, plr.Character.LeftLowerArm)
                                table.insert(hitboxes, plr.Character.RightLowerArm)
                                if not values["Rage"]["FPS Mitigations"]["Limit_Hitboxes"] then
                                    table.insert(hitboxes, plr.Character.LeftUpperArm)
                                    table.insert(hitboxes, plr.Character.RightUpperArm)
                                end
                            end
                            if values["Rage"]["Hitboxes"]["Pelvis"] then
                                table.insert(hitboxes, plr.Character.LowerTorso)
                                if values["Rage"]["Multi-Points"]["Multipoint_Pelvis"] then
                                    if not plr.Character.LowerTorso:FindFirstChild("Multipoints") then
                                        local multipoint = Instance.new("Folder")
                                        multipoint.Name = "Multipoints"
                                        for i = 1, #points["Pelvis"] do
                                            local point = createMP()
                                            point.Name = "m"..i
                                            point.Position = plr.Character.LowerTorso.Position + points["Pelvis"][i]
                                            point.Parent = multipoint
                                        end
                                        multipoint.Parent = plr.Character.LowerTorso
                                    else
                                        for i,mp in pairs(plr.Character.LowerTorso.Multipoints:GetChildren()) do
                                            mp.Position = plr.Character.LowerTorso.Position + points["Pelvis"][i]
                                        end
                                    end
                                end
                            end
                            if values["Rage"]["Hitboxes"]["Legs"] then
                                table.insert(hitboxes, plr.Character.LeftLowerLeg)
                                table.insert(hitboxes, plr.Character.RightLowerLeg)
                                if not values["Rage"]["FPS Mitigations"]["Limit_Hitboxes"] then
                                    table.insert(hitboxes, plr.Character.RightUpperLeg)
                                    table.insert(hitboxes, plr.Character.LeftUpperLeg)
                                end
                            end
                            for _,hitbox in pairs(hitboxes) do
                                if not values["Rage"]["Main"]["Autowall"] and client.gun ~= nil then
                                    local ray = Ray.new(origin, (hitbox.CFrame.p - origin).unit * math.clamp(client.gun.Range ~= nil and client.gun.Range.Value or 100, 5, 400))
                                    local hit, pos = workspace:FindPartOnRayWithIgnoreList(ray, ignore, false, true)
                                    if hit and hit:FindFirstAncestor(plr.Name) then
                                        local dmg = {head = client.gun.DMG.Value * 3 , body = client.gun.DMG.Value}
                                        if client.gun.Bullets ~= nil then
                                            dmg.head = dmg.head * client.gun.Bullets.Value
                                            dmg.body = dmg.body * client.gun.Bullets.Value
                                        end
                                        local realhit
                                        if hit.Parent.Name == "Multipoints" then
                                            realhit = hit.Parent.Parent
                                        else
                                            realhit = hitbox
                                        end
                                        if realhit ~= nil then
                                            if realhit.Name == "Head" and dmg.head >= values["Rage"]["Main"]["Min_Damage"] or realhit.Name ~= "Head" and dmg.body >= values["Rage"]["Main"]["Min_Damage"] then
                                                vars.rtarget = plr
                                                vars.rhitbox = hitbox
                                                if values["Rage"]["Main"]["Autoshoot"] and client.DISABLED == false then
                                                    mouse1press()
                                                    wait(0.04)
                                                    mouse1release()
                                                end
                                                break
                                            end
                                        end
                                    else
                                        vars.rtarget = nil
                                        vars.rhitbox = nil
                                    end
                                elseif client.gun ~= nil and values["Rage"]["Main"]["Autowall"] then
                                    local hit, pos, multiplier, wb = SimulateShot(CFrame.new(origin, hitbox.Position), hitbox.Parent)
                                    if hit then
                                        local dmg = {head = client.gun.DMG.Value * 3 , body = client.gun.DMG.Value}
                                        local realhit
                                        if client.gun.Bullets ~= nil then
                                            dmg.head = dmg.head * client.gun.Bullets.Value
                                            dmg.body = dmg.body * client.gun.Bullets.Value
                                        end
                                        if wb then
                                            dmg.head, dmg.body = dmg.head * multiplier, dmg.body * multiplier
                                        end
                                        if hit.Parent.Name == "Multipoints" then
                                            realhit = hit.Parent.Parent
                                        else
                                            realhit = hit
                                        end
                                        if realhit ~= nil then
                                            if wb then
                                                if realhit.Name == "Head" and dmg.head >=values["Rage"]["Main"]["Min_Damage_Behind_Wall"] or realhit.Name ~= "Head" and dmg.body >= values["Rage"]["Main"]["Min_Damage_Behind_Wall"] then
                                                    vars.rtarget = hit.Parent
                                                    vars.rhitbox = hit
                                                    if values["Rage"]["Main"]["Autoshoot"] and client.DISABLED == false then
                                                        mouse1press()
                                                        wait(0.04)
                                                        mouse1release()
                                                    end
                                                    break
                                                end
                                            else
                                                if realhit.Name == "Head" and dmg.head >=values["Rage"]["Main"]["Min_Damage"] or realhit.Name ~= "Head" and dmg.body >= values["Rage"]["Main"]["Min_Damage"] then
                                                    vars.rtarget = hit.Parent
                                                    vars.rhitbox = hit
                                                    if values["Rage"]["Main"]["Autoshoot"] and client.DISABLED == false then
                                                        mouse1press()
                                                        wait(0.04)
                                                        mouse1release()
                                                    end
                                                    break
                                                end
                                            end
                                        else
                                            vars.rtarget = nil
                                            vars.rhitbox = nil
                                        end
                                    end
                                end
                            end
                        elseif plr.Character then
                            table.insert(ignore, plr.Character)
                        end
                    end
                end
            else
                vars.rtarget = nil
                vars.rhitbox = nil
            end

        if values["Anti-Aim"]["Extra"]["No_Head"] then
            pcall(function()
                if lplr.Character:FindFirstChild("FakeHead") then
                    lplr.Character.FakeHead:Destroy()
                end
                if lplr.Character:FindFirstChild("HeadHB") then
                    lplr.Character.HeadHB:Destroy()
                end
            end)
        end
        if values["Anti-Aim"]["Angles"]["Yaw"] ~= "Off" and values["Anti-Aim"]["Angles"]["Enabled"] then
            local yaw = values["Anti-Aim"]["Angles"]["Yaw"] == "Left" and 0 or values["Anti-Aim"]["Angles"]["Yaw"] == "Right" and 180 or values["Anti-Aim"]["Angles"]["Yaw"] == "Back" and 90 or values["Anti-Aim"]["Angles"]["Yaw"] == "Custom" and values["Anti-Aim"]["Angles"]["Custom_Yaw"] or values["Anti-Aim"]["Angles"]["Yaw"] == "Random" and math.random(0,360) or 0
            if values["Anti-Aim"]["Yaw"]["Spin"] then
                yaw = yaw + vars.spin
            end
            pcall(function()
                lplr.Character.Humanoid.AutoRotate = false
                local root = lplr.Character.HumanoidRootPart
                local lookVec = cam.CFrame.LookVector
                local angle = -math.atan2(lookVec.Z, lookVec.X) + math.rad(yaw)
                if values["Anti-Aim"]["Extra"]["Disable_On_E"] and not vars.edown or not values["Anti-Aim"]["Extra"]["Disable_On_E"] then
                    if values["Anti-Aim"]["Yaw"]["Jitter"] and vars.jitter then
                        if values["Anti-Aim"]["Yaw"]["Randomize_Jitter"] then
                            angle = -math.atan2(lookVec.Z, lookVec.X) + math.rad(math.random(math.clamp(values["Anti-Aim"]["Yaw"]["Randomize_Jitter_Min"],0, values["Anti-Aim"]["Yaw"]["Jitter_Range"]),values["Anti-Aim"]["Yaw"]["Jitter_Range"]))
                        else
                            angle = -math.atan2(lookVec.Z, lookVec.X) + math.rad(values["Anti-Aim"]["Yaw"]["Jitter_Range"])
                        end
                        root.CFrame = CFrame.new(root.Position) * CFrame.Angles(0, angle, 0)
                    else
                        root.CFrame = CFrame.new(root.Position) * CFrame.Angles(0, angle, 0)
                    end
                else
                    root.CFrame = CFrame.new(root.Position) * CFrame.Angles(0, -math.atan2(lookVec.Z, lookVec.X) + math.rad(270), 0)
                end
            end)
        end
        lplr.CameraMaxZoomDistance = values["Visuals"]["Self"]["Third_Person"] and lplr.Status.Alive.Value == true and vars.thirdperson and values["Visuals"]["Self"]["Third_Person_Distance"] or lplr.Status.Alive.Value == true and 0 or lplr.CameraMaxZoomDistance
        lplr.CameraMinZoomDistance = values["Visuals"]["Self"]["Third_Person"] and lplr.Status.Alive.Value == true and vars.thirdperson and values["Visuals"]["Self"]["Third_Person_Distance"] or lplr.Status.Alive.Value == true and 0 or lplr.CameraMinZoomDistance
        for _,plr in pairs(plrs:GetPlayers()) do
            pcall(function()
                if plr:FindFirstChild("Status") and plr:FindFirstChild("Status").Alive.Value == true then
                    if plr:FindFirstChild("Status").Team.Value ~= lplr:FindFirstChild("Status").Team.Value and plr.Character:FindFirstChild("HumanoidRootPart") then
                        if plr.Character.HumanoidRootPart:FindFirstChild("Box") then
                            plr.Character.HumanoidRootPart:FindFirstChild("Box"):Destroy()
                        end
                        if plr.Character.HumanoidRootPart:FindFirstChild("Name") then
                            plr.Character.HumanoidRootPart:FindFirstChild("Name"):Destroy()
                        end
                        if plr.Character.HumanoidRootPart:FindFirstChild("Health") then
                            plr.Character.HumanoidRootPart:FindFirstChild("Health"):Destroy()
                        end
                        if values["Visuals"]["Enemies"]["Box"] then
                            local BoxESP = Instance.new("BillboardGui")
                            local Frame = Instance.new("Frame")
                            local Frame_2 = Instance.new("Frame")
                            local Frame_3 = Instance.new("Frame")
                            local Frame_4 = Instance.new("Frame")
                            local Frame_5 = Instance.new("Frame")
                            local Frame_6 = Instance.new("Frame")
                            local Frame_7 = Instance.new("Frame")
                            local Frame_8 = Instance.new("Frame")
                            local Frame_9 = Instance.new("Frame")
                            local Frame_10 = Instance.new("Frame")
                            local Frame_11 = Instance.new("Frame")
                            local Frame_12 = Instance.new("Frame")
                            BoxESP.Name = "Box"
                            BoxESP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BoxESP.Active = true
                            BoxESP.AlwaysOnTop = true
                            BoxESP.ExtentsOffset = Vector3.new(0, -0.5, 0)
                            BoxESP.LightInfluence = 1.000
                            BoxESP.Size = UDim2.new(4.5, 0, 5.5, 0)
                            Frame.BackgroundColor3 = Color3.fromRGB(255,255,255)
                            Frame.BorderSizePixel = 0
                            Frame.Position = UDim2.new(0, 0, 0, 1)
                            Frame.Size = UDim2.new(1, 0, 0, 1)
                            Frame.BackgroundTransparency = 0
                            Frame.Parent = BoxESP
                            Frame_2.BackgroundColor3 = Color3.fromRGB(255,255,255)
                            Frame_2.BorderSizePixel = 0
                            Frame_2.Position = UDim2.new(0, 1, 0, 0)
                            Frame_2.Size = UDim2.new(0, 1, 1, 0)
                            Frame_2.BackgroundTransparency = 0
                            Frame_2.Parent = BoxESP
                            Frame_3.BackgroundColor3 = Color3.fromRGB(255,255,255)
                            Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Frame_3.BorderSizePixel = 0
                            Frame_3.Position = UDim2.new(1, -2, 0, 0)
                            Frame_3.Size = UDim2.new(0, 1, 1, 0)
                            Frame_3.BackgroundTransparency = 0
                            Frame_3.Parent = BoxESP
                            Frame_4.BackgroundColor3 = Color3.fromRGB(255,255,255)
                            Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Frame_4.BorderSizePixel = 0
                            Frame_4.Position = UDim2.new(0, 0, 1, -2)
                            Frame_4.Size = UDim2.new(1, 0, 0, 1)
                            Frame_4.BackgroundTransparency = 0
                            Frame_4.Parent = BoxESP
                            Frame_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                            Frame_5.BorderSizePixel = 0
                            Frame_5.Position = UDim2.new(0, 2, 0, 2)
                            Frame_5.Size = UDim2.new(0, 1, 1, -4)
                            Frame_5.Parent = BoxESP
                            Frame_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                            Frame_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Frame_6.BorderSizePixel = 0
                            Frame_6.Position = UDim2.new(1, -3, 0, 2)
                            Frame_6.Size = UDim2.new(0, 1, 1, -4)
                            Frame_6.Parent = BoxESP
                            Frame_7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                            Frame_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Frame_7.BorderSizePixel = 0
                            Frame_7.Position = UDim2.new(0, 0, 1, -1)
                            Frame_7.Size = UDim2.new(1, 0, 0, 1)
                            Frame_7.Parent = BoxESP
                            Frame_8.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                            Frame_8.BorderSizePixel = 0
                            Frame_8.Position = UDim2.new(0, 2, 0, 2)
                            Frame_8.Size = UDim2.new(1, -4, 0, 1)
                            Frame_8.Parent = BoxESP
                            Frame_9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                            Frame_9.BorderSizePixel = 0
                            Frame_9.Size = UDim2.new(1, 0, 0, 1)
                            Frame_9.Parent = BoxESP
                            Frame_10.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                            Frame_10.BorderSizePixel = 0
                            Frame_10.Size = UDim2.new(0, 1, 1, 0)
                            Frame_10.Parent = BoxESP
                            Frame_11.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                            Frame_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Frame_11.BorderSizePixel = 0
                            Frame_11.Position = UDim2.new(1, -1, 0, 0)
                            Frame_11.Size = UDim2.new(0, 1, 1, 0)
                            Frame_11.Parent = BoxESP
                            Frame_12.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                            Frame_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            Frame_12.BorderSizePixel = 0
                            Frame_12.Position = UDim2.new(0, 2, 1, -3)
                            Frame_12.Size = UDim2.new(1, -4, 0, 1)
                            Frame_12.Parent = BoxESP
                            BoxESP.Adornee = plr.Character.HumanoidRootPart
                            BoxESP.Parent = plr.Character.HumanoidRootPart
                        end
                        if values["Visuals"]["Enemies"]["Name"] then
                            local NameESP = Instance.new("BillboardGui")
                            local name = Instance.new("TextLabel")
                            NameESP.Name = "Name"
                            NameESP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            NameESP.Active = true
                            NameESP.AlwaysOnTop = true
                            NameESP.ExtentsOffset = Vector3.new(0, -0.5, 0)
                            NameESP.LightInfluence = 1.000
                            NameESP.Size = UDim2.new(4.5, 0, 2, 0)
                            NameESP.StudsOffset = Vector3.new(0, 3.79999995, 0)
                            name.Name = "name"
                            name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            name.BackgroundTransparency = 1.000
                            name.Size = UDim2.new(1, 0, 1, 0)
                            name.Font = values["Visuals"]["Enemies"]["Name_Font"]
                            name.Text = plr.Name
                            name.TextColor3 = Color3.fromRGB(255,255,255)
                            name.TextSize = values["Visuals"]["Enemies"]["Name_Font_Size"]
                            name.TextStrokeTransparency = 0.100
                            name.TextYAlignment = Enum.TextYAlignment.Bottom
                            name.TextTransparency = 0
                            NameESP.Adornee = plr.Character.HumanoidRootPart
                            name.Parent = NameESP
                            NameESP.Parent = plr.Character.HumanoidRootPart
                        end
                        if values["Visuals"]["Enemies"]["Health"] then
                            local HealthESP = Instance.new("BillboardGui")
                            local green = Instance.new("Frame")
                            local white = Instance.new("Frame")
                            HealthESP.Name = "Health"
                            HealthESP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            HealthESP.Active = true
                            HealthESP.AlwaysOnTop = true
                            HealthESP.ExtentsOffset = Vector3.new(0, -0.5, 0)
                            HealthESP.LightInfluence = 1.000
                            HealthESP.Size = UDim2.new(1, 0, 5.5, 0)
                            HealthESP.StudsOffset = Vector3.new(-2.79999995, 0, 0)
                            green.Name = "green"
                            green.AnchorPoint = Vector2.new(0, 1)
                            green.BackgroundColor3 = Color3.fromRGB(0,255,0)
                            green.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            green.BorderSizePixel = 0
                            green.Position = UDim2.new(1, -values["Visuals"]["Enemies"]["Health_Thickness"]-1, 1, -1)
                            green.Size = UDim2.new(0, values["Visuals"]["Enemies"]["Health_Thickness"], plr.Character.Humanoid.Health/100, -2)
                            green.ZIndex = 3
                            green.Parent = HealthESP
                            white.Name = "white"
                            white.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            white.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            white.Position = UDim2.new(1, -values["Visuals"]["Enemies"]["Health_Thickness"]-1, 0, 1)
                            white.Size = UDim2.new(0, values["Visuals"]["Enemies"]["Health_Thickness"], 1, -2)
                            white.ZIndex = 2
                            white.Parent = HealthESP
                            HealthESP.Adornee = plr.Character.HumanoidRootPart
                            HealthESP.Parent = plr.Character.HumanoidRootPart
                        end
                    else
                        pcall(function()
                            if plr.Character.HumanoidRootPart:FindFirstChild("Box") then
                                plr.Character.HumanoidRootPart:FindFirstChild("Box"):Destroy()
                            end
                            if plr.Character.HumanoidRootPart:FindFirstChild("Name") then
                                plr.Character.HumanoidRootPart:FindFirstChild("Name"):Destroy()
                            end
                            if plr.Character.HumanoidRootPart:FindFirstChild("Health") then
                                plr.Character.HumanoidRootPart:FindFirstChild("Health"):Destroy()
                            end
                        end)
                    end
                end
            end)
        end
    end)
end
cheat.initiate()
cheat_is_loaded = true