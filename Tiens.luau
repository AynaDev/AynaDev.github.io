spawn(function()
    while wait(1) do
        setfpscap(15)
    end
end)

-- Destroy all existing ParticleEmitters
for _, instance in ipairs(game:GetDescendants()) do
    if instance:IsA("ParticleEmitter") then
        instance:Remove()
    end
end

-- Destroy any newly added ParticleEmitters
game.DescendantAdded:Connect(function(instance)
    if instance:IsA("ParticleEmitter") then
        instance:Remove()
    end
end)

getgenv().Key = "c842acac84a60503c8a52fe3"
getgenv().SettingFarm = {
    ["Hide UI"] = false,
    ["White Screen"] = false,
    ["Auto Sell"] = {
        ["Enabled"] = true,
        ["Rarity"] = {
            Legendary = true,
            Mythical = true, 
            Exotic = true,
            Limited = false,
            Divine = true,
            Relic = true,
        }
    },
    ["Webhook"] = {
        ["Fish Catched"] = {
            ["Enable"] = false,
            ["Minimum Weight"] = 1000,
            ["Rarity"] = {
                ["Mythical"] = true,
                ["Exotic"] = true,
                ["Divine"] = true,
                ["Relic"] = true,
                ["Limited"] = true
            }
        },
        ["URL"] = ""
    },
    ["Auto Buy Luck"] = true, -- have trident rod
    ["Get Rod"] = { --- Trident Rod and Rod of the depth it will auto get dont need config
        ["Aurora Rod"] = {
            ["Enabled"] = true,
            ["Auto Buy Aurora Totem"] = true --- if have  rod of the depth it will buy
        },
        ["Sunken Rod"] = true,

    },
        ["Set CFrame"] = { -- if have Rod Of the depths then will work
        ["Enabled"] = false,
        ["CFrame"] = CFrame.new(5802.84424, 135.301468, 403.946533, 0.991938531, -1.18916499e-09, -0.126719773, -8.93702778e-10, 1, -1.63799463e-08, 0.126719773, 1.63611507e-08, 0.991938531)
    },
    ["Auto Equip Rod"] = {
        ["Rapid Rod"] = 1,
        ["Aurora Rod"] = 2,
        ["Trident Rod"] = 3,
        ["Sunken Rod"] = 4,
        ["Rod Of The Depths"] = 6,
        ["No-Life Rod"] = 7,
        ["Rod Of The Forgotten Fang"] = 5,
    },
    ["Get Rod"] = { --- Trident Rod and Rod of the depth it will auto get dont need config
        ["Rod of The Forgotten Fang"] = true,
        ["Aurora Rod"] = {
            ["Enabled"] = true,
            ["Auto Buy Aurora Totem"] = false --- if have  rod of the depth it will buy
        },
        ["Sunken Rod"] = true,
    },
    ["Auto Buy Luck"] = true, -- have trident rod
    ["Event"] = {
        ["Megalodon"] = {  --- have rod of the depth
            ["Enabled"] = false,
            ["Prioritize Rod"] = {
                ["Enabled"] = false,
                ["Name Rod"] = "No-Life Rod"
            },
        }
    },
    ["Auto Enchant"] = { -- have rod of the depths
        ["Enabled"] = true,
        ["Name Rod"] = "No-Life Rod",
        ["Enchant"] = {"Clever"}, 
        ["Auto Buy Relic"] = {
            ["Enabled"] = true, 
            ["Amount"] = 10
        }
    }, 
    ["Auto Bait"] = {
        ["Buy Bait"] = true,
        ["Amount Buy Bait"] = 10,
        ["Use Bait Random"] = true,
        ["Select Bait"] = {
            ["Enabled"] = false,
            ["Bait"]  = "Rapid Catcher",
        }
    },
    ["Rejoin"] = {
        ["Enabled"] = false,
        ["Time"] = 20 ---minute
    },
    ["Hop Server"] = {
        ["Hop Find WhirlPool Get Isonade"] = true,
        ["Hop Server When Hight Ping"] = {
            ["Enabled"] = false,
            ["Ping"] = 100,
        }
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/BananaCat-KaitunFisch.lua"))()
