loadstring(game:HttpGet("https://raw.githubusercontent.com/Efield44444235364/KawnewLogo/refs/heads/main/DeletePhoto.lua"))()



local folderPath = "Kawnew"
local imageName = "Halloween.jpg"
local fullPath = folderPath .. "/" .. imageName
local imageUrl = "https://raw.githubusercontent.com/Efield44444235364/KawnewLogo/refs/heads/main/Halloween.jpg" -- 🔁 เปลี่ยนเป็นลิงก์จริงของรูป

-- รองรับทั้ง getsynasset และ getcustomasset
local getAsset = getsynasset or getcustomasset or function() return "" end

-- ตรวจสอบไฟล์
local function fileExists(path)
    local ok, result = pcall(function()
        return readfile(path)
    end)
    return ok and result ~= nil
end

-- ถ้าไม่มีโฟลเดอร์ Kawnew ให้สร้างก่อน
if not isfolder(folderPath) then
    makefolder(folderPath)
end

-- ถ้าไฟล์ยังไม่มี ให้โหลดก่อน
if not fileExists(fullPath) then
    local success, result = pcall(function()
        writefile(fullPath, game:HttpGet(imageUrl))
    end)

    if not success then
        warn("Photo Cant load: " .. tostring(result))
        return
    end
end

-- แสดง Notification พร้อมรูป
game.StarterGui:SetCore("SendNotification", {
    Title = "Kawnew Halloween 🎃",
    Text = "Optimize loading..",
    Icon = getAsset(fullPath),
    Duration = 3
})
