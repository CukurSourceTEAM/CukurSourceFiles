local function ChangePhoto(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local bashaa = DevBasha:get("CukurSourceTEAM:Photo"..result.id_)
if not result.profile_photo_ then 
if bashaa then 
Dev_basha(msg.chat_id_, msg.id_, 1, "حذف كل صوره مضروب بوري، 😹💔", 1, 'html')
DevBasha:del("CukurSourceTEAM:Photo"..result.id_) 
end
end
if result.profile_photo_ then 
if bashaa and bashaa ~= result.profile_photo_.big_.persistent_id_ then 
local bashaa_text = {
"وفف مو صوره غنبلةة، 🤤♥️",
"طالع صاكك بالصوره الجديده ممكن نرتبط؟ ، 🤤♥️",
"حطيت صوره جديده عود شوفوني اني صاكك بنات، 😹♥️",
"اححح شنيي هالصوره الجديده، 🤤♥️",
}
bashaa3 = math.random(#bashaa_text)
Dev_basha(msg.chat_id_, msg.id_, 1, bashaa_text[bashaa3], 1, 'html')
end  
DevBasha:set("CukurSourceTEAM:Photo"..result.id_, result.profile_photo_.big_.persistent_id_) 
end
end
end,nil) 
end
end

end
return {
CukurSource = ChangePhoto
}