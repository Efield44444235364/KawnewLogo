--[[
  ลบไฟล์ Kawnew_Halloween.jpg จากโฟลเดอร์ Kawnew
  ใช้กับ Krnl หรือ executor ที่รองรับ isfile/delfile
--]]

local folderName = "Kawnew"
local imageName = "Kawnew_Halloween.jpg" --Name
local imagePath = folderName .. "/" .. imageName

if isfile(imagePath) then
    delfile(imagePath)
    
else

end
