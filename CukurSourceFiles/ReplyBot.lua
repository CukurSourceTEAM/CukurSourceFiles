local function Reply(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if not DevBasha:get(CukurSource..'Basha:Lock:Reply'..msg.chat_id_) then
if text == "انجب" or text == "نجب" or text == "انجبي" or text == "نجبي" or text == "انجبو" or text == "نجبو" then
if SudoId(msg.sender_user_id_) then
rd = 'ﭑ‌‏لمبرمج مـﭑ‌‏ل اني هيني شڪد متࢪيد حب 🥲♥️'
elseif SudoBot(msg.sender_user_id_) then
rd = 'ﭑ‌‏حتࢪم نفسڪ مو ࢪافعيڪ مطوࢪ وتشمࢪ 🙂♥️'
elseif ManagerAll(msg.sender_user_id_) then
rd = 'ﭑ‌‏حتࢪم نفسڪ مو ࢪافعيڪ مديࢪ وتشمࢪ 🙂♥️'
elseif AdminAll(msg.sender_user_id_) then
rd = 'ﭑ‌‏حتࢪم نفسڪ مو ࢪافعيڪ ادمن وتشمࢪ 🙂♥️'
elseif VipAll(msg.sender_user_id_) then
rd = 'ﭑ‌‏حتࢪم نفسڪ مو ࢪافعيڪ مميز وتشمࢪ 🙂♥️'
elseif BashaConstructor(msg.sender_user_id_, msg.chat_id_) then
rd = 'منشئ المجموعة تاجراسي حب 🥲♥️'
elseif Constructor(msg.sender_user_id_, msg.chat_id_) then
rd = 'ﭑ‌‏حتࢪم نفسڪ مو ࢪافعيڪ منشئ اساسي وتشمࢪ 🙂♥️'
elseif BasicConstructor(msg.sender_user_id_, msg.chat_id_) then
rd = 'ﭑ‌‏حتࢪم نفسڪ مو ࢪافعيڪ منشئ وتشمࢪ 🙂♥️'
elseif Manager(msg.sender_user_id_, msg.chat_id_) then
rd = 'ﭑ‌‏حتࢪم نفسڪ مو ࢪافعيڪ مدير وتشمࢪ 🙂♥️'
elseif Admin(msg.sender_user_id_, msg.chat_id_) then
rd = 'ﭑ‌‏حتࢪم نفسڪ مو ࢪافعيڪ ادمن وتشمࢪ 🙂♥️'
elseif VipMem(msg.sender_user_id_, msg.chat_id_) then
rd = 'ﭑ‌‏حتࢪم نفسڪ مو ࢪافعيڪ مميز وتشمࢪ 🙂♥️'
else
rd = 'هو انت ڪلك عضو وتشمر ؟ 🥲😂'
end
Dev_Basha(msg.chat_id_, msg.id_, 1,rd, 1, 'html')
end
if text == 'دي' or text == 'ديي' or text == 'دي بابه' then 
CukurSourceTEAM =  "اخلاقك بيب 🌝♥️"
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
if text == 'شخباركمم' or text == 'شونجن' or text == 'شلونكمم' or text == 'شلونجن' or text == 'شونكم' or text == 'شلونكم' or text == 'شلخبار' or text == 'شلون الاخبار' or text == 'شخباركم' then 
local CukurSourceTEAM = {"- ﭑلحمدللةهِ ، وَنتةه يروَحي🥺♥️♥️  ."} 
DevBasha2 = math.random(#CukurSourceTEAM) 
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM[DevBasha2] , 1, 'md') 
return false
end
if text == 'وينجن' or text == 'وينكم' then
CukurSourceTEAM =  "-موَ بعَينڪۃ ، شنيَ ، 🌝🌝."
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM, 1, 'md') 
return false
end
if text == 'بوت عواي' or text == 'بوت زربه' or text == 'البوت عاوي' or text == 'البوت زربه' then
CukurSourceTEAM =  "اطردكك تجرب ؟ ، 😕🔪"
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM, 1, 'md') 
return false
end
if text == 'نايمين' or text == 'ميتين' then
CukurSourceTEAM =  "-موَ بعَينڪۃ ، شنيَ ، 🌝🌝."
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM, 1, 'md') 
return false
end
if text == 'هلوباي' or text == 'هلو باي' then  
CukurSourceTEAM =  "شحسيت مِہטּ هيـج ڪتبت ؟ 🥲😂"
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM, 1, 'md') 
return false
end
if text == 'اكللكم' or text == 'اكلجن' or text == 'اكلكم' then 
CukurSourceTEAM =  "ڪول ؏ـمري 🥺💘"
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM, 1, 'md')
return false
end
if text == 'سورس خرا' or text == 'سورس زك' or text == 'انكس سورس' or text == 'سورس زربه' or text == 'السورس زربه' or text == 'سورس عاوي' or text == 'السورس عاوي' then 
CukurSourceTEAM =  "ماكو شخص افضل من شخص حب ♥️" 
Dev_Basha(msg.chat_id_, msg.id_, 1, CukurSourceTEAM, 1, 'md')
return false
end
end

if Manager(msg) then
if text == 'تفعيل ردود البوت' or text == 'تفعيل الردود' then
if not DevBasha:get(CukurSource..'Basha:Lock:Reply'..msg.chat_id_) then
Dev_Basha(msg.chat_id_, msg.id_, 1, '⌁︙ردود البوت بالتاكيد مفعله ', 1, 'md')
else
Dev_Basha(msg.chat_id_, msg.id_, 1, '⌁︙تم تفعيل ردود البوت', 1, 'md')
DevBasha:del(CukurSource..'Basha:Lock:Reply'..msg.chat_id_)
end end
if text == 'تعطيل ردود البوت' or text == 'تعطيل الردود' then
if DevBasha:get(CukurSource..'Basha:Lock:Reply'..msg.chat_id_) then
Dev_Basha(msg.chat_id_, msg.id_, 1, '⌁︙ردود البوت بالتاكيد معطله ', 1, 'md')
else
DevBasha:set(CukurSource..'Basha:Lock:Reply'..msg.chat_id_,true)
Dev_Basha(msg.chat_id_, msg.id_, 1, '⌁︙تم تعطيل ردود البوت', 1, 'md')
end end
end
end

end
return {
CukurSource = Reply
}