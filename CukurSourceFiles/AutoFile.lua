local function AutoFile(msg)
local text = msg.content_.text_
if Sudo(msg) then
if text == 'تفعيل النسخه التلقائيه' or text == 'تفعيل جلب نسخه الكروبات' or text == 'تفعيل عمل نسخه للمجموعات' then   
Dev_Basha(msg.chat_id_,msg.id_, 1, "✟︙تم تفعيل جلب نسخة الكروبات التلقائيه\n✟︙سيتم ارسال نسخه تلقائيه للكروبات كل يوم الى خاص المطور الاساسي", 1, 'md')
DevBasha:del(CukurSource.."Basha:Lock:AutoFile")
end
if text == 'تعطيل النسخه التلقائيه' or text == 'تعطيل جلب نسخه الكروبات' or text == 'تعطيل عمل نسخه للمجموعات' then  
Dev_Basha(msg.chat_id_,msg.id_, 1, "✟︙تم تعطيل جلب نسخة الكروبات التلقائيه", 1, 'md')
DevBasha:set(CukurSource.."Basha:Lock:AutoFile",true) 
end 
end

if (text and not DevBasha:get(CukurSource.."Basha:Lock:AutoFile")) then
Time = DevBasha:get(CukurSource.."Basha:AutoFile:Time")
if Time then 
if Time ~= os.date("%x") then 
local list = DevBasha:smembers(CukurSource..'Basha:Groups') 
local BotName = (DevBasha:get(CukurSource.."Basha:NameBot") or 'الحفرة')
local GetJson = '{"BotId": '..CukurSource..',"BotName": "'..BotName..'","GroupsList":{'  
for k,v in pairs(list) do 
LinkGroups = DevBasha:get(CukurSource.."Basha:Groups:Links"..v)
Welcomes = DevBasha:get(CukurSource..'Basha:Groups:Welcomes'..v) or ''
BashaConstructors = DevBasha:smembers(CukurSource..'Basha:BashaConstructor:'..v)
BasicConstructors = DevBasha:smembers(CukurSource..'Basha:BasicConstructor:'..v)
Constructors = DevBasha:smembers(CukurSource..'Basha:Constructor:'..v)
Managers = DevBasha:smembers(CukurSource..'Basha:Managers:'..v)
Admis = DevBasha:smembers(CukurSource..'Basha:Admins:'..v)
Vips = DevBasha:smembers(CukurSource..'Basha:VipMem:'..v)
if k == 1 then
GetJson = GetJson..'"'..v..'":{'
else
GetJson = GetJson..',"'..v..'":{'
end
if #Vips ~= 0 then 
GetJson = GetJson..'"Vips":['
for k,v in pairs(Vips) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Admis ~= 0 then
GetJson = GetJson..'"Admis":['
for k,v in pairs(Admis) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Managers ~= 0 then
GetJson = GetJson..'"Managers":['
for k,v in pairs(Managers) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Constructors ~= 0 then
GetJson = GetJson..'"Constructors":['
for k,v in pairs(Constructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #BasicConstructors ~= 0 then
GetJson = GetJson..'"BasicConstructors":['
for k,v in pairs(BasicConstructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #BashaConstructors ~= 0 then
GetJson = GetJson..'"BashaConstructors":['
for k,v in pairs(BashaConstructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if LinkGroups then
GetJson = GetJson..'"LinkGroups":"'..LinkGroups..'",'
end
GetJson = GetJson..'"Welcomes":"'..Welcomes..'"}'
end
GetJson = GetJson..'}}'
local File = io.open('./'..CukurSource..'.json', "w")
File:write(GetJson)
File:close()
local belal = 'https://api.telegram.org/bot' .. TokenBot .. '/sendDocument'
local curl = 'curl "' .. belal .. '" -F "chat_id='..Bilal..'" -F "document=@'..CukurSource..'.json' .. '" -F "caption=✟︙يحتوي الملف على ↫ '..#list..' مجموعه"'
io.popen(curl)
io.popen('fm -fr '..CukurSource..'.json')
DevBasha:set(CukurSource.."Basha:AutoFile:Time",os.date("%x"))
end
else 
DevBasha:set(CukurSource.."Basha:AutoFile:Time",os.date("%x"))
end
end

end
return {
CukurSource = AutoFile
}