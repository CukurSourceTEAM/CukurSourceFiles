local function ChangeName(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local bashaa = Devbasha:get("CukurSourceTEAM:Name"..result.id_)
if not result.first_name_ then 
if bashaa then 
Devbasha:del("CukurSourceTEAM:Name"..result.id_) 
end
end
if result.first_name_ then 
if bashaa and bashaa ~= result.first_name_ then 
local basha_text = {
"اسمك "..result.first_name_.." ليش غيرته 🌚😹",
"وفف اسمكك الجديد يشكك، 🤤♥️ ",
"ليش غيرت اسمك "..result.first_name_.."\n قطيت احد حبي ؟ 🌚😹",
"اسمك "..result.first_name_.." فد شي وين زخرفته ؟، 🤤♥️", 
}
bashaas = math.random(#basha_text)
Dev_basha(msg.chat_id_, msg.id_, 1, basha_text[bashaas], 1, 'html')
end  
Devbasha:set("CukurSourceTEAM:Name"..result.id_, result.first_name_)  
end
end
end,nil) 
end
end

end
return {
CukurSource = ChangeName
}