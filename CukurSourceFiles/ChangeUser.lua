local function ChangeUser(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local bashaa = Devbasha:get("CukurSourceTEAM:User"..result.id_)
if not result.username_ then 
if bashaa then 
Dev_basha(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بسرعه، 😹💔 \nهذا معرفه @"..bashaa.."", 1, 'html')
Devbasha:del("CukurSourceTEAM:User"..result.id_) 
end
end
if result.username_ then 
if bashaa and bashaa ~= result.username_ then 
local basha_text = {
'معرفك الجديد عشره بربع محد ياخذه😹💔',
"هاها غيرت معرفك نشروك بقناة فضايح😹💔💭",
"معرفك الجديد حلو منين خامطه؟!🤤♥️",
"معرفك القديم @"..result.username_.." ضمه بقناة لاينبعص، 😹♥️",
}
bashaas = math.random(#basha_text)
Dev_basha(msg.chat_id_, msg.id_, 1, basha_text[bashaas], 1, 'html')
end  
Devbasha:set("CukurSourceTEAM:User"..result.id_, result.username_) 
end
end
end,nil) 
end
end

end
return {
CukurSource = ChangeUser
}