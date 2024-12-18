

if getgenv().ExecutedAynaShiratori then
    return
end
getgenv().ExecutedAynaShiratori = true

repeat task.wait() until game:IsLoaded() 
getgenv().Hermanos_Settings = {
	['key'] = '3df4b268-ef93-4058-aadb-a09b18857f29',
	['PC'] = getgenv().DeviceName or "IDK",
}
task.spawn(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/hermanos-dev/hermanos-script/main/fisch-main.lua'))() end)

_G.Settings = {
    ["AfkCheckTime"] = 300,
    ["EquipRod"] = "Auto",
    ["SellFish"] = {
        ["SellDelay"] = 100,
        ["Enable"] = true,
        ["Method"] = {
            ["Event"] = true,
            ["Enchant"] = true,
            ["Mythical"] = true,
            ["Legendary"] = true,
            ["Exotic"] = true
        }
    },
    ['Rod'] = {
        ['Trident Rod'] = true,
        ['Destiny Rod'] = true
    },
    ['MethodShake'] = "Fix bug",
    ["FpsBoost"] = true,
    ["Black_Screen"] = true
}

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

getgenv().Key = "MARU-WKLXL-90H6-I4TVL-1O9K-BVNFH"
getgenv().id = "1210847136078372946"
getgenv().Script_Mode = "Kaitun_Script"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
