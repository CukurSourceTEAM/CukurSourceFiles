local function Reply(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if not DevBasha:get(CukurSource..'Basha:Lock:Reply'..msg.chat_id_) then
if text == 'انجب' or text == 'انجبو' or text == 'نجب' then 
CukurSourceTEAM =  "يجَࢪالكَ ♥️"
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM, 1, 'md') 
return false
end
if text == 'دي' or text == 'ديي' or text == 'دي بابه' then 
CukurSourceTEAM =  "الفاضك عمࢪي 🏌🏼♥️"
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM, 1, 'md') 
return false
end
if text == 'السلام عليكم' or text == 'سلام عليكم' then 
CukurSourceTEAM =  "- ۅعليَڪمَ ، ڪلَ لههلةه ، ♥️."
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM, 1, 'md') 
return false
end
if text == 'باي' or text == 'بااي' or text == 'اروح' or text == 'اروح احسن' or text == 'اولي احسن' or text == 'راح اروح' or text == 'باي انام' then 
CukurSourceTEAM =  "- ۅَتعۅفنيَ ؟."
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM, 1, 'md') 
return false
end
if text == 'هلو' or text == 'هلاو' or text == 'هلا' or text == 'هلاوو' or text == 'هيلاو' or text == 'هيلاوو' or text == 'هلاا' then 
local CukurSourceTEAM = {"-ۿلةهِ يبعدِيّ ، 💞💞." } 
DevBasha2 = math.random(#CukurSourceTEAM) 
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM[DevBasha2] , 1, 'md') 
return false
end
if text ==  'شونكم' or text == 'شلونكم' or text == 'شخباركم' or text == 'شلون الاخبار' or text == 'شلخبار' then 
local CukurSourceTEAM = {"- ﭑلحمدللةهِ ، وَنتةه يروَحي🥺♥️♥️  ."} 
DevBasha2 = math.random(#CukurSourceTEAM) 
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM[DevBasha2] , 1, 'md') 
return false
end
if text == 'بوت عواي' or text == 'بوت زربه' or text == 'البوت عاوي' or text == 'البوت زربه' then
CukurSourceTEAM =  "شو تحجي كدامي عالاقل بظهري سويها 🤌🏻🥲"
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM, 1, 'md') 
return false
end
if text == 'نايمين' or text == 'ميتين' then
CukurSourceTEAM =  "دكطمس 🌝♥️"
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM, 1, 'md') 
return false
end
if text == 'هلوباي' or text == 'هلو باي' then  
CukurSourceTEAM =  "شدتحس عمࢪي 🤔"
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM, 1, 'md') 
return false
end
if text == 'سورس باشا' or text == 'سورس الحفرة' or text == 'سورس  الحفرة' or text == 'سورس زربه' or text == 'السورس زربه' or text == 'سورس عاوي' or text == 'السورس عاوي' then 
CukurSourceTEAM =  "امر خدمة 🤔♥️" 
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM, 1, 'md')
return false
end
end

if Manager(msg) then
if text == 'تفعيل ردود البوت' or text == 'تفعيل الردود' then
if not DevBasha:get(CukurSource..'Basha:Lock:Reply'..msg.chat_id_) then
Dev_Basha(msg.chat_id_, msg.id_, 1, '✟︙ردود البوت بالتاكيد مفعله ', 1, 'md')
else
Dev_Basha(msg.chat_id_, msg.id_, 1, '✟︙تم تفعيل ردود البوت', 1, 'md')
DevBasha:del(CukurSource..'Basha:Lock:Reply'..msg.chat_id_)
end end
if text == 'تعطيل ردود البوت' or text == 'تعطيل الردود' then
if DevBasha:get(CukurSource..'Basha:Lock:Reply'..msg.chat_id_) then
Dev_Basha(msg.chat_id_, msg.id_, 1, '✟︙ردود البوت بالتاكيد معطله ', 1, 'md')
else
DevBasha:set(CukurSource..'Basha:Lock:Reply'..msg.chat_id_,true)
Dev_Basha(msg.chat_id_, msg.id_, 1, '✟︙تم تعطيل ردود البوت', 1, 'md')
end end
end
end

end
return {
CukurSource = Reply
}