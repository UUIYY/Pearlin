--[[
الالعاب ل سورس الزعيم
--]]
local function games(msg,MsgText)
if msg.type ~= "pv" and msg.GroupActive then

if MsgText[1] == "تفعيل" and MsgText[2] == "الالعاب" or MsgText[2] == "اللعبه" or MsgText[2] == "اللعبة" then
if not msg.Admin then return "*️🖥║((تفعيل الالعاب))\nء➖➖➖➖➖➖™\n🖲¦  •⊱{هذا الامر يخص}⊰•\n🖲¦  •⊱{المطور}⊰•\n🖲¦  •⊱{المنشئ}⊰•\n🖲¦  •⊱{المدير}⊰•\n🖲¦  •⊱{الادمن}⊰•\n*" end
if not redis:get(Pearlin..'lock_geams'..msg.chat_id_) then 
return "*🖥║((تفعيل الالعاب))\nء➖➖➖➖➖➖™\n🖲¦  •⊱{مرحباً عزيزي "..msg.TheRankCmd.."}⊰•\n🖲¦  •⊱{الالعاب بالتأكيد مفعله}⊰•\n*" 
else 
redis:del(Pearlin..'lock_geams'..msg.chat_id_) 
return "*🖥║((تفعيل الالعاب))\nء➖➖➖➖➖➖™\n🖲¦  •⊱{مرحباً عزيزي "..msg.TheRankCmd.."}⊰•\n🖲¦  •⊱{تم تفعيل الالعاب}⊰•\n*" 
end 
end

if MsgText[1] == "تعطيل" and MsgText[2] == "الالعاب" or MsgText[2] == "اللعبه" or MsgText[2] == "اللعبة" then
if not msg.Admin then return "*️🖥║((تعطيل الالعاب))\nء➖➖➖➖➖➖™\n🖲¦  •⊱{هذا الامر يخص}⊰•\n🖲¦  •⊱{المطور}⊰•\n🖲¦  •⊱{المنشئ}⊰•\n🖲¦  •⊱{المدير}⊰•\n🖲¦  •⊱{الادمن}⊰•\n*" end
if redis:get(Pearlin..'lock_geams'..msg.chat_id_) then 
return "*🖥║((تعطيل الالعاب))\nء➖➖➖➖➖➖™\n🖲¦  •⊱{مرحباً عزيزي "..msg.TheRankCmd.."}⊰•\n🖲¦  •⊱{الالعاب بالتأكيد معطله}⊰•\n*" 
else
redis:set(Pearlin..'lock_geams'..msg.chat_id_,true)  
return "*🖥║((تعطيل الالعاب))\nء➖➖➖➖➖➖™\n🖲¦  •⊱{مرحباً عزيزي "..msg.TheRankCmd.."}⊰•\n🖲¦  •⊱{تم تعطيل الالعاب}⊰•\n*" 
end   
end

if MsgText[1] == "اضف رسائل" and msg.reply_to_message_id_ == 0 then       
if not msg.Creator then return 
"📛*¦* هذا الامر يخص {المطور، المنشئ} فقط  \n🚶" 
end 
local ID_USER = MsgText[2]
redis:set(Pearlin..'SET:ID:USER'..msg.chat_id_,ID_USER)  
redis:setex(Pearlin.."SETEX:MSG"..msg.chat_id_..""..msg.sender_user_id_,500,true)  
sendMsg(msg.chat_id_,msg.id_,'*📊¦ ارسل لي عدد الرسائل الذي تريده*')
end
if MsgText[1] == "اضف نقاط" and msg.reply_to_message_id_ == 0 then       
if not msg.Creator then return 
"📛*¦* هذا الامر يخص {المطور، المنشئ} فقط  \n🚶" 
end 
local ID_USER = MsgText[2]
redis:set(Pearlin..'SET:ID:USER:NUM'..msg.chat_id_,ID_USER)  
redis:setex(Pearlin.."SETEX:NUM"..msg.chat_id_..""..msg.sender_user_id_,500,true)  
sendMsg(msg.chat_id_,msg.id_,'*📊¦ ارسل لي عدد النقاط الذي تريده*')
end
if not redis:get(Pearlin..'lock_geams'..msg.chat_id_) and msg.GroupActive then


if MsgText[1] == 'اسئله' or MsgText[1] == 'ختيارات' or MsgText[1] == 'بدء الاسئله' then   
redis:set(Pearlin.."GAME:S"..msg.chat_id_,true) 
t1 = [[
ماهو اطول نهر في العالم 
1- النيل  
2- الفرات 
3- نهر الكونغو


 📮¦ ارسل  الجواب الصحيح فقط
]]
t2 = [[
ماعدد عظام الوجه?
1- 15
2- 13
3- 14 

 📮¦ ارسل  الجواب الصحيح فقط
]]
t3 =[[
كراسي بيضاء وجدران ورديه اذا اغلقته اصبح ظلام  فمن اكون?

1- الفم 
2- الاذن
3- الثلاجه


 📮¦ ارسل  الجواب الصحيح فقط
]]
t4 =[[
كم جزء تحتوي مسلسل وادي الذئاب?

1- 7
2- 15
3- 11


 📮¦ ارسل  الجواب الصحيح فقط
]]
t5 =[[
كم جزء يحتوي القران الكريم?

1- 60
2- 70
3- 30 


 📮¦ ارسل  الجواب الصحيح فقط
]]
t6 =[[
من هوه اغنى رئيس في العالم??

1- ترامب
2- اوباما
3- بوتين  


 📮¦ ارسل الجواب الصحيح فقط
]]

t7 =[[
من هوه مؤسس شركه ابل العالميه 

1-لاري بايج 
2- بيا غايتز
3- مارك زوكيربرج


 📮¦ ارسل  الجواب الصحيح فقط
]]
t8 =[[
ماهي عاصمه فرنسا?

1- باريس 
2- لوين 
3- موسكو 


 📮¦ ارسل  الجواب الصحيح فقط
]]
t9 =[[
ماعدد دول العربيه التي توجد في افريقيا 

1- 10 
2- 17
3- 9

 📮¦ ارسل  الجواب الصحيح فقط
]]
t11 =[[
ماهو الحيوان الذي يحمل 50 فوق وزنه ?
1-الفيل
2- النمل  
3- الثور


 📮¦ ارسل  الجواب الصحيح فقط
]]
t12 =[[
ماذا يوجد بيني وبينك؟  
1- الضل
2- الاخلاق
3-حرف الواو  


 📮¦ ارسل  الجواب الصحيح فقطز
]]
t13 =[[
ماهو الشيء النبات ينبت للانسان بلا بذر؟
1-الاضافر 
2- الاسنان
3- الشعر


 📮¦ ارسل الجواب الصحيح فقط
]]
t14 =[[
م̷ـــِْن هو اول الرسول الى الارض؟
1- ادم
2- نوح
3-ابراهيم 


 📮¦ ارسل  الجواب الصحيح فقط
]]
t15 =[[
ما هو الشّيء الذي يستطيع المشي بدون أرجل والبكاء بدون أعين؟
1- سحاب
2- بئر
3- نهر


 📮¦ ارسل  الجواب الصحيح فقط
]]
t16 =[[
ما الشيء الذي نمتلكه , لكنّ غيرنا يستعمله أكثر منّا؟
1- العمر
2- ساعه
3- الحذاء


 📮¦ ارسل  الجواب الصحيح فقط
]]
t17 =[[
اصفر اللون سارق عقول اهل الكون وحارمهم لذيذ النوم
1- نحاس
2- الماس
3- ذهب


 📮¦ ارسل  الجواب الصحيح فقط
]]
t18 =[[
في الليل ثلاثة لكنه في النهار واحده فما هو
 1- حرف الباء
 2- حرف الام 
3- حرف الراء


 📮¦ ارسل  الجواب الصحيح فقط
]]
t19 =[[
على قدر اصل العزم تأتي?
1- العزائم 
2- المكارم
3- المبائب


 📮¦ ارسل  الجواب الصحيح فقط
]]

t20 =[[
ماهي جمع كلمه انسه ?
1- سيدات
2- انسات 
3- قوانص


 📮¦ ارسل  الجواب الصحيح فقط
]]
t21 =[[
اله اتسعلمت قديما في الحروب?
1- الصاروخ
2- المسدس
3- المنجنيق 


 📮¦ ارسل  الجواب الصحيح فقط
]]
t22 =[[
تقع لبنان في قاره?
1- افريقيا 
2- اسيا  
3- امركيا الشماليه


 📮¦ ارسل  الجواب الصحيح فقط
]]

t23 =[[
1- ماهو الحيوان الذي يلقب بملك الغابه?
1-الفيل
2- الاسد 
3- النمر


 📮¦ ارسل  الجواب الصحيح فقط
]]
t24 =[[
كم صفرا للمليون ?
1- 4 
2- 3
3-6

 📮¦ ارسل  الجواب الصحيح فقط
]]
t25 =[[
ما اسم صغير الحصان?
1- مهر  
2- جرو
3- عجل


 📮¦ ارسل  الجواب الصحيح فقط
]]
t26 =[[
ما الحيوان الذي ينام واحدى عينه مفتوحه?

1- القرش
2- الدلفين 
3- الثعلب


 📮¦ ارسل  الجواب الصحيح فقط
]]
t27 =[[
ماهي القاره التي تلقب بالقاره العجوز?

1- امريكا الشماليه 
2- امريكا الجنوبيه
3- افريقيا 


 📮¦ ارسل  الجواب الصحيح فقط
]]
t28 =[[
ما اسم المعدن الموجود فيي الحاله السائله 

1- النحاس 
2- الحديد
3- الزئبق  


 📮¦ ارسل  الجواب الصحيح فقط
]]
t29 =[[
ماهي عاصمه انجلترا?
1- لندن  
2- لفرسول
3- تركيا


 📮¦ ارسل  الجواب الصحيح فقط
]]
t30 =[[
ماهو الشئ الذي برأسه سبع فتحات

1- الهاتف
2- التلفاز
3- الانسان 


 📮¦ ارسل  الجواب الصحيح فقط
]]
t31 =[[
ماهي عاصمه اليابان ?
1- بانكول
2- نيو دلهي
3- طوكيو 


 📮¦ ارسل  الجواب الصحيح فقط
]]
t32 =[[
من هي زوجه الرسول الاكبر منه سنآ?

1- حفضه
2- زينب 
3- خديجه 


 📮¦ ارسل  الجواب الصحيح فقط
]]
TAHA = {t16,t17,t18,t19,t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t30,t31,t32,t1,t2,t3,t4,t5,t6,t7,t8,t9,t11,t12,t13,t14,t15}
local SENDTEXT = TAHA[math.random(#TAHA)]
if SENDTEXT:find('النيل') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'النيل') 
elseif SENDTEXT:find('14') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'14') 
elseif SENDTEXT:find('الفم') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'الفم') 
elseif SENDTEXT:find('11') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'11') 
elseif SENDTEXT:find('30') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'30') 
elseif SENDTEXT:find('بوتين') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'بوتين') 
elseif SENDTEXT:find('ستيف جوبر') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'ستيف جوبر') 
elseif SENDTEXT:find('باريس') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'باريس') 
elseif SENDTEXT:find('10') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'10') 
elseif SENDTEXT:find('النمل') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'النمل') 
elseif SENDTEXT:find('حرف الواو') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'حرف الواو') 
elseif SENDTEXT:find('الشعر') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'الشعر') 
elseif SENDTEXT:find('ابراهيم') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'ابراهيم') 
elseif SENDTEXT:find('سحاب') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'سحاب') 
elseif SENDTEXT:find('الاسم') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'الاسم') 
elseif SENDTEXT:find('ذهب') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'ذهب') 
elseif SENDTEXT:find('حرف الام') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'حرف الام') 
elseif SENDTEXT:find('العزائم') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'العزائم') 
elseif SENDTEXT:find('انسات') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'انسات') 
elseif SENDTEXT:find('المنجنيق') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'المنجنيق') 
elseif SENDTEXT:find('اسيا') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'اسيا') 
elseif SENDTEXT:find('الاسد') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'الاسد') 
elseif SENDTEXT:find('6') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'6') 
elseif SENDTEXT:find('مهر') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'مهر') 
elseif SENDTEXT:find('الدلفين') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'الدلفين') 
elseif SENDTEXT:find('اوروبا') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'اوروبا') 
elseif SENDTEXT:find('الزئبق') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'الزئبق') 
elseif SENDTEXT:find('لندن') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'لندن') 
elseif SENDTEXT:find('الانسان') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'الانسان') 
elseif SENDTEXT:find('طوكيو') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'طوكيو') 
elseif SENDTEXT:find('خديجه') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'خديجه') 
end
sendMsg(msg.chat_id_,msg.id_,SENDTEXT)     
return false  
end

if MsgText[1] == 'محيبس' or MsgText[1] == 'بات' then   
Num = math.random(1,6)
redis:set(Pearlin.."GAMES"..msg.chat_id_,Num) 
TEST = [[
* 🎮║((المحيبس))
ء➖➖➖➖➖➖™
🖲¦  •⊱{مرحباً عزيزي}⊰•
🖲¦  •⊱{اليك ارقام الايدي}⊰•
🖲¦  •⊱{ارسل رقم اليد}⊰•
🖲¦  •⊱{التي يوجد فيها المحبس}⊰•
ء➖➖➖➖➖➖➖➖➖➖™
➀       ➁     ➂      ➃      ➄     ➅
↓      ↓     ↓      ↓     ↓     ↓
👊 ‹› 👊 ‹› 👊 ‹› 👊 ‹› 👊 ‹› 👊
*
]]
sendMsg(msg.chat_id_,msg.id_,TEST)   
redis:setex(Pearlin.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end


if MsgText[1] == 'تخمين' then   
Num = math.random(1,10)
redis:set(Pearlin.."GAMES"..msg.chat_id_,Num) 
TEST = [[
* 🎮║((تخمين))
ء➖➖➖➖➖➖™
🖲¦  •⊱{مرحباً عزيزي}⊰•
🖲¦  •⊱{اليك ارقام التخمين}⊰•
🖲¦  •⊱{ارسل الرقم الذي خمنته}⊰•
ء➖➖➖➖➖➖➖➖➖➖™
•⊱{1-2-3-4-5-6-7-8-9-10}⊰•
ء➖➖➖➖➖➖➖➖➖➖➖➖➖™
*
]]
sendMsg(msg.chat_id_,msg.id_,TEST)   
redis:setex(Pearlin.."SET:t" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end


if MsgText[1] == 'المختلف' then
katu = {'😸','☠','🐼','🐇','🌑','🌚','⭐️','✨','⛈','🌥','⛄️','👨‍🔬','👨‍💻','👨‍🔧','👩‍🍳','🧚‍♀','🧜‍♂','🧝‍♂','🙍‍♂','🧖‍♂','👬','👨‍👨‍👧','🕒','🕤','⌛️','📅',
};
name = katu[math.random(#katu)]
redis:set(Pearlin..':Set_alii:'..msg.chat_id_,name)
name = string.gsub(name,'😸','😹😹😹😹😹😹😹😹😸😹😹😹😹')
name = string.gsub(name,'☠','💀💀💀💀💀💀💀☠💀💀💀💀💀')
name = string.gsub(name,'🐼','👻👻👻👻👻👻👻🐼👻👻👻👻👻')
name = string.gsub(name,'🐇','🕊🕊🕊🕊🕊🐇🕊🕊🕊🕊')
name = string.gsub(name,'🌑','🌚🌚🌚🌚🌚🌑🌚🌚🌚')
name = string.gsub(name,'🌚','🌑🌑🌑🌑🌑🌚🌑🌑🌑')
name = string.gsub(name,'⭐️','🌟🌟🌟🌟🌟🌟🌟🌟⭐️🌟🌟🌟')
name = string.gsub(name,'✨','💫💫💫💫💫✨💫💫💫💫')
name = string.gsub(name,'⛈','🌨🌨🌨🌨🌨⛈🌨🌨🌨🌨')
name = string.gsub(name,'🌥','⛅️⛅️⛅️⛅️⛅️⛅️🌥⛅️⛅️⛅️⛅️')
name = string.gsub(name,'⛄️','☃☃☃☃☃☃⛄️☃☃☃☃')
name = string.gsub(name,'👨‍🔬','👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👨‍🔬👩‍🔬👩‍🔬👩‍🔬')
name = string.gsub(name,'👨‍💻','👩‍💻👩‍💻👩‍💻👩‍💻👩‍💻👩‍💻👨‍💻👩‍💻👩‍💻👩‍💻')
name = string.gsub(name,'👨‍🔧','👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👨‍🔧👩‍🔧')
name = string.gsub(name,'👩‍🍳','👨‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳👩‍🍳👨‍🍳👨‍🍳👨‍🍳')
name = string.gsub(name,'🧚‍♀','🧚‍♂🧚‍♂🧚‍♂🧚‍♂🧚‍♀🧚‍♂🧚‍♂')
name = string.gsub(name,'🧜‍♂','🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧜‍♂🧜‍♀🧜‍♀🧜‍♀')
name = string.gsub(name,'🧝‍♂','🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♂🧝‍♀🧝‍♀🧝‍♀')
name = string.gsub(name,'🙍‍♂','🙎‍♂🙎‍♂🙎‍♂🙎‍♂🙎‍♂🙍‍♂🙎‍♂🙎‍♂🙎‍♂')
name = string.gsub(name,'🧖‍♂','🧖‍♀🧖‍♀🧖‍♀🧖‍♀🧖‍♀🧖‍♂🧖‍♀🧖‍♀🧖‍♀🧖‍♀')
name = string.gsub(name,'👬','👭👭👭👭👭👬👭👭👭')
name = string.gsub(name,'👨‍👨‍👧','👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👧👨‍👨‍👦👨‍👨‍👦')
name = string.gsub(name,'🕒','🕒🕒🕒🕒🕒🕒🕓🕒🕒🕒')
name = string.gsub(name,'🕤','🕥🕥🕥🕥🕥🕤🕥🕥🕥')
name = string.gsub(name,'⌛️','⏳⏳⏳⏳⏳⏳⌛️⏳⏳')
name = string.gsub(name,'📅','📆📆📆📆📆📆📅📆📆')
return '  اول واحد يطلع المختلف » {* '..name..' * } ' 
end

if MsgText[1] == 'امثله' then
katu = {
'جوز','ضراطه','الحبل','الحافي','شقره','بيدك','سلايه','النخله','الخيل','حداد','المبلل','يركص','قرد','العنب','العمه','الخبز','بالحصاد','شهر','شكه','يكحله',
};
name = katu[math.random(#katu)]
redis:set(Pearlin..':Set_Amthlh:'..msg.chat_id_,name)
name = string.gsub(name,'جوز','ينطي____للماعده سنون')
name = string.gsub(name,'ضراطه','الي يسوق المطي يتحمل___')
name = string.gsub(name,'بيدك','اكل___محد يفيدك')
name = string.gsub(name,'الحافي','تجدي من___نعال')
name = string.gsub(name,'شقره','مع الخيل يا___')
name = string.gsub(name,'النخله','الطول طول___والعقل عقل الصخلة')
name = string.gsub(name,'سلايه','بالوجه امراية وبالظهر___')
name = string.gsub(name,'الخيل','من قلة___شدو على الچلاب سروج')
name = string.gsub(name,'حداد','موكل من صخم وجهه كال آني___')
name = string.gsub(name,'المبلل','___ما يخاف من المطر')
name = string.gsub(name,'الحبل','اللي تلدغة الحية يخاف من جرة___')
name = string.gsub(name,'يركص','المايعرف___يكول الكاع عوجه')
name = string.gsub(name,'العنب','المايلوح___يكول حامض')
name = string.gsub(name,'العمه','___إذا حبت الچنة ابليس يدخل الجنة')
name = string.gsub(name,'الخبز','انطي___للخباز حتى لو ياكل نصه')
name = string.gsub(name,'باحصاد','اسمة___ومنجله مكسور')
name = string.gsub(name,'شهر','امشي__ولا تعبر نهر')
name = string.gsub(name,'شكه','يامن تعب يامن__يا من على الحاضر لكة')
name = string.gsub(name,'القرد','__بعين امه غزال')
name = string.gsub(name,'يكحله','اجه___عماها')
return 'اكمل المثل التالي {* '..name..' *}'
end

if MsgText[1] == 'حزوره' then
katu = {'امي','انا','المخده','الهواء','الهواء','القمر','الباب المفتوح','النهر','الكف','الغيم','اسمك','حرف الام','الابجديه','الدائره','الساعه','تموز','الصمت','السلحفات','كم الساعه','شجره العائله','ضفدع','خليه النحل','الصوت','الجوع','الكتاب','البيض','الاسفنجه','البرتقال','الكفن','الساعه','ارجل المنضده','البصل','الوقت','النار','الثلج','العمر','المسمار','الحفره','المشط','التلفون','الجرص','المراه','الغداء','الفيل','الصدئ','الهواء','عقرب الساعه'};
name = katu[math.random(#katu)]
redis:set(Pearlin..':Set_Hzorh:'..msg.chat_id_,name)
name = string.gsub(name,'امي','اخت خالك ومو خالتك منو')
name = string.gsub(name,'انا','بنت امك وابنت ابوك ومش اختك ولاخوك منو')
name = string.gsub(name,'المخده','اني خفيفه واني لطيفه اكوم من حضن الوزير اكعد بحضن الخليفه أزيح الهموم  واخلي لحبيب نايم منو انني')
name = string.gsub(name,'الهواء','ماهو الشيء الذي يسير امامك ولا تراه')
name = string.gsub(name,'القمر','ماهو الشيء الذي يحيا اول الشهر ويموت في اخره')
name = string.gsub(name,'الباب المفتوح','ماهو الباب الذي لا يمكن فتحه')
name = string.gsub(name,'النهر','ماهو الشي الذي يجري ولا يمشي')
name = string.gsub(name,'الكف','ماهو الشي الذي لو خمس اصابع دون لحم او عضم')
name = string.gsub(name,'الغيم','ماهو الشي الذي يمشي بلا رجلين ويبكي بلا عينين')
name = string.gsub(name,'اسمك','ماهو الشيء الذي لك ويستخدمه الناس من دون اذنك')
name = string.gsub(name,'حرف الام','ماهو الشيء الذي تراه في الليل ثلاث مرات والنهار مره واحده')
name = string.gsub(name,'الابجديه','كلمه تتكون من 8 احرف لكنها تجمع كل الحروف')
name = string.gsub(name,'الدائره','ماهو الشيء الذي ليس له بدايه وليس له نهايه')
name = string.gsub(name,'الساعه','ماهو الشيء الذي لا يتكلم واذا اكل صدق واذا جاع كذب')
name = string.gsub(name,'تموز','ماهو اسم الشهر الميلادي الذي اذا حذفت اوله تحول الى فاكهه')
name = string.gsub(name,'الصمت','ماهي الكلمه الذي يبطل معناها اذا نطقت بها ')
name = string.gsub(name,'السلحفات','ماهو الذي لحمهه من الداخل وعضمهه من الخارج ')
name = string.gsub(name,'كم الساعه','ماهوه السوال الذي تختلف اجابته دائماً')
name = string.gsub(name,'شجره العائله','ما اسم الشجره التي ليس لها ضل ولا لها ثمار ')
name = string.gsub(name,'الضفدع','ماهو الحيوان الذي لسانه طويل وجسمه صغير')
name = string.gsub(name,'خليه النحل','ماهو الشيء الذي يتسع مئاات الالوف ولا يتسع طير منتوف')
name = string.gsub(name,'الصوت','اسير بلا رجلين ولا ادخل الا ب الاذنين؟؟')
name = string.gsub(name,'الجوع','ماهو الشيء الذي يقرصك ولا تراه')
name = string.gsub(name,'الكتاب','له اوراق وماهو بنبات . له جلد وماهو بحيوان . وعلم وماهو ب انسان من هو')
name = string.gsub(name,'البيض','ماهو الشي الذي اسمه علئ لونه')
name = string.gsub(name,'الاسفنجه','كلي ثقوب ومع ذالك احفظ الماء فمن انا ')
name = string.gsub(name,'البرتقال','ماهو الشيء نرميه بعد العصر')
name = string.gsub(name,'الكفن','ماهو الشيء لاتحب ان تلبسة وان لبستة لاترة')
name = string.gsub(name,'الساعه','ماهو الشيء الذي يمشي ويقف وليس له ارجل')
name = string.gsub(name,'ارجل المنضده','اننا اربعة اخوه ولنا راس واحد فمن نحن')
name = string.gsub(name,'البصل','شيء تذبحه وتبكي عليه؟')
name = string.gsub(name,'الوقت','يذهب ولا يرجع')
name = string.gsub(name,'النار','شيء ياكل ولايشبع وان شرب الماء مات')
name = string.gsub(name,'الثلج','شيء مصنوع من الماء. وان عاش في الماء يموت')
name = string.gsub(name,'العمر','ماهو الشيء الذي كلما زاد نقص')
name = string.gsub(name,'المسمار','ماهو الشيء الذي لا يمشي الا ب الضرب')
name = string.gsub(name,'الحفره','ماهو الشيء الذي كلما اخذنا منهه زاد وكبر')
name = string.gsub(name,'المشط','له اسنان ولا يعض ماهو ')
name = string.gsub(name,'التلفون','يسمع بلا اذن ويحكي بلا لسان فما هو')
name = string.gsub(name,'الجرص','ماهو الشيء الذي اذا لمستهه صاح')
name = string.gsub(name,'المراه','ارى كل شيء من دون عيون فمن اكون')
name = string.gsub(name,'الغداء','ماهو الشيء الذي لايؤكل في الليل ')
name = string.gsub(name,'الفيل','من هوه الحيوان الذي يحك اذنه في انفه')
name = string.gsub(name,'الصدئ','ماهو الشيء الذي يتكلم جميع اللغات ')
name = string.gsub(name,'الهواء','شيء بيني وبينك لا تراه عينك ولا عيني فما هوه')
name = string.gsub(name,'عقرب الساعه','هناك عقرب لا يلدغ ولا يخاف منه الاطفال فما هوه')
return '  اول واحد يحلها » {* '..name..' *} ' 
end


if (MsgText[1] == 'اسرع' or MsgText[1] == 'الاسرع') then
local NUM = math.random(10,1000)
redis:set(Pearlin..':NUM_SET:'..msg.chat_id_,(NUM * 3))
local Smiles = {'🍏','🍎','🍐',NUM,NUM,NUM,NUM,NUM,'🍊','🍋','🍌','🍉',NUM,NUM,NUM,NUM,NUM,'🍇','🍓','🍈','🍒',NUM,NUM,NUM,NUM,NUM,'🍑','🍍','🥥','🥝','🍅',NUM,NUM,NUM,NUM,NUM,'🍆','🥑','🥦','🥒',NUM,NUM,NUM,NUM,NUM,'🌶','🌽','🥕','🥔','🍠','🥐','🍞',NUM,NUM,NUM,NUM,NUM,'🥖','🥨','🧀','🥚','🍳','🥞','🥓',NUM,NUM,NUM,NUM,NUM,'🥩','🍗','🍖','🌭','🍔','🍟',NUM,NUM,NUM,NUM,NUM,'🍕','🥪','🥙','🍼','☕️','🍵',NUM,NUM,NUM,NUM,NUM,'🥤','🍶','🍺','🍻',NUM,NUM,NUM,NUM,NUM,'🏀','⚽️','🏈','⚾️','🎾','🏐',NUM,NUM,NUM,NUM,NUM,'🏉','🎱','🏓','🏸','🥅','🎰','🎮',NUM,NUM,NUM,NUM,NUM,'🎳','🎯','🎲','🎻','🎸','🎺','🥁','🎹',NUM,NUM,NUM,NUM,NUM,'🎼','🎧','🎤','🎬','🎨','🎭',NUM,NUM,NUM,NUM,NUM,'🎪','🎟','🎫','🎗','🏵','🎖','🏆','🥌','🛷','🚕','🚗','🚙','🚌',NUM,NUM,NUM,NUM,NUM,'🚎','🏎','🚓','🚑','🚚','🚛','🚜','🇮🇶','⚔','🛡','🔮','🌡','💣','📌',NUM,NUM,NUM,NUM,NUM,'📍','📓','📗','📂','📅','📪','📫','📬',NUM,NUM,NUM,NUM,NUM,'📭','⏰','📺','🎚','☎️',NUM,NUM,NUM,NUM,NUM,'📡'}
Emoji = Smiles[math.random(#Smiles)]
redis:set(Pearlin..':Set_Smile:'..msg.chat_id_,Emoji)
if tonumber(redis:get(Pearlin..':Set_Smile:'..msg.chat_id_)) == tonumber(redis:get(Pearlin..':NUM_SET:'..msg.chat_id_)) then
return '◀️┇اول من يكتب هذه العدد يفوز ؛  ››`'..(redis:get(Pearlin..':Set_Smile:'..msg.chat_id_))..'`'
else
return '️┇اول من يكتب هذه السمايل يفوز ››    `'..(redis:get(Pearlin..':Set_Smile:'..msg.chat_id_))..'`'
end
end
if MsgText[1] == 'ترتيب' then
katu = {'سحور','سياره','استقبال','قنفه','ايفون','بزونه','مطبخ','كرستيانو','دجاجه','مدرسه','الوان','غرفه','ثلاجه','كهوه','سفينه','العراق','محطه','طياره','رادار','منزل','مستشفى','كهرباء','تفاحه','اخطبوط','سلمون','فرنسا','برتقاله','تفاح','مطرقه','بتيته','لهانه','شباك','باص','سمكه','ذباب','تلفاز','حاسوب','انترنيت','ساحه','جسر'};
name = katu[math.random(#katu)]
redis:set(Pearlin..':Set_Arg:'..msg.chat_id_,name)
name = string.gsub(name,'سحور','س ر و ح')
name = string.gsub(name,'سياره','ه ر س ي ا')
name = string.gsub(name,'استقبال','ل ب ا ت ق س ا')
name = string.gsub(name,'قنفه','ه ق ن ف')
name = string.gsub(name,'ايفون','و ن ي ف ا')
name = string.gsub(name,'بزونه','ز و ب ه ن')
name = string.gsub(name,'مطبخ','خ ب ط م')
name = string.gsub(name,'كرستيانو','س ت ا ن و ك ر ي')
name = string.gsub(name,'دجاجه','ج ج ا د ه')
name = string.gsub(name,'مدرسه','ه م د ر س')
name = string.gsub(name,'الوان','ن ا و ا ل')
name = string.gsub(name,'غرفه','غ ه ر ف')
name = string.gsub(name,'ثلاجه','ج ه ث ل ا')
name = string.gsub(name,'كهوه','ه ك ه و')
name = string.gsub(name,'سفينه','ه ن ف ي س')
name = string.gsub(name,'العراق','ق ع ا ل ر ا')
name = string.gsub(name,'محطه','ه ط م ح')
name = string.gsub(name,'طياره','ر ا ط ي ه')
name = string.gsub(name,'رادار','ر ا ر ا د')
name = string.gsub(name,'منزل','ن ز م ل')
name = string.gsub(name,'مستشفى','ى ش س ف ت م')
name = string.gsub(name,'كهرباء','ر ب ك ه ا ء')
name = string.gsub(name,'تفاحه','ح ه ا ت ف')
name = string.gsub(name,'اخطبوط','ط ب و ا خ ط')
name = string.gsub(name,'سلمون','ن م و ل س')
name = string.gsub(name,'فرنسا','ن ف ر س ا')
name = string.gsub(name,'برتقاله','ر ت ق ب ا ه ل')
name = string.gsub(name,'تفاح','ح ف ا ت')
name = string.gsub(name,'مطرقه','ه ط م ر ق')
name = string.gsub(name,'بتيته','ب ت ت ي ه')
name = string.gsub(name,'لهانه','ه ن ا ه ل')
name = string.gsub(name,'شباك','ب ش ا ك')
name = string.gsub(name,'باص','ص ا ب')
name = string.gsub(name,'سمكه','ك س م ه')
name = string.gsub(name,'ذباب','ب ا ب ذ')
name = string.gsub(name,'تلفاز','ت ف ل ز ا')
name = string.gsub(name,'حاسوب','س ا ح و ب')
name = string.gsub(name,'انترنيت','ا ت ن ر ن ي ت')
name = string.gsub(name,'ساحه','ح ا ه س')
name = string.gsub(name,'جسر','ر ج س')
return '  اسرع واحد يرتبها {* '..name..' *} ' 
end
if MsgText[1] == 'معاني' then
katu = {'قرد','دجاجه','بطريق','ضفدع','بومه','نحله','ديج','جمل','بقره','دولفين','تمساح','قرش','نمر','اخطبوط','سمكه','خفاش','اسد','فأر','ذئب','فراشه','عقرب','زرافه','قنفذ','تفاحه','باذنجان'}
name = katu[math.random(#katu)]
redis:set(Pearlin..':Set_Name_Meant:'..msg.chat_id_,name)
name = string.gsub(name,'قرد','🐒')
name = string.gsub(name,'دجاجه','🐔')
name = string.gsub(name,'بطريق','🐧')
name = string.gsub(name,'ضفدع','🐸')
name = string.gsub(name,'بومه','🦉')
name = string.gsub(name,'نحله','🐝')
name = string.gsub(name,'ديك','🐓')
name = string.gsub(name,'جمل','🐫')
name = string.gsub(name,'بقره','🐄')
name = string.gsub(name,'دولفين','🐬')
name = string.gsub(name,'تمساح','🐊')
name = string.gsub(name,'قرش','🦈')
name = string.gsub(name,'نمر','🐅')
name = string.gsub(name,'اخطبوط','🐙')
name = string.gsub(name,'سمكه','🐟')
name = string.gsub(name,'خفاش','🦇')
name = string.gsub(name,'اسد','🦁')
name = string.gsub(name,'فأر','🐭')
name = string.gsub(name,'ذئب','🐺')
name = string.gsub(name,'فراشه','🦋')
name = string.gsub(name,'عقرب','🦂')
name = string.gsub(name,'زرافه','🦒')
name = string.gsub(name,'قنفذ','🦔')
name = string.gsub(name,'تفاحه','🍎')
name = string.gsub(name,'باذنجان','🍆')
return '◀️¦ اول من يكتب معنى السمايل يفوز { '..name..' }'
end

if MsgText[1] == 'نقاطي' then 
local points = redis:get(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_)
if points and points ~= "0" then
return '*📮¦ عدد النقاط التي ربحتها هي » { '..points..' }\n📬¦ تسطيع بيع نقاطك ولحصول على (100) رساله مقابل كل نقاط من النقاط *\n'
else
return ' *💬¦ ليس لديك نقاط ،\n📬¦ للحصول ؏ نقاط ،\n📮¦ ارسل الالعاب وابدأ اللعب ! *'
end
end

if MsgText[1] == 'عكس' or MsgText[1] == 'العكس' or MsgText[1] == 'العكسس' then   
redis:set(Pearlin.."GAME:S"..msg.chat_id_,true) 
H1 = [[
✖️¦عكس كلمه » {مافهمت} ⚜️
]]
H2 = [[
✖️¦عكس كلمه » {جبان} ⚜️
]]
H3 =[[
✖️¦عكس كلمه » {ميت} ⚜️
]]
H4 =[[
✖️¦عكس كلمه » {كسول} ⚜️
]]
H5 =[[
✖️¦عكس كلمه » {زين} ⚜️
]]
H6 =[[
✖️¦عكس كلمه » {عطشان} ⚜️
]]

H7 =[[
✖️¦عكس كلمه » {بارده} ⚜️
]]
H8 =[[
✖️¦عكس كلمه » {خايف} ⚜️
]]
H9 =[[
✖️¦عكس كلمه » {امام} ⚜️
]]
H11 =[[
✖️¦عكس كلمه » {خاين} ⚜️
]]
H12 =[[
✖️¦عكس كلمه » {طويل} ⚜️
]]
H13 =[[
✖️¦عكس كلمه » {صلب} ⚜️
]]
H14 =[[
✖️¦عكس كلمه » {ناعم} ⚜️
]]
H15 =[[
✖️¦عكس كلمه » {مجنون} ⚜️
]]
H16 =[[
✖️¦عكس كلمه » {غبي} ⚜️
]]
H17 =[[
✖️¦عكس كلمه » {ظلمه} ⚜️
]]
H18 =[[
✖️¦عكس كلمه » {مسموح} ⚜️
]]

H20 =[[
✖️¦عكس كلمه » {تعال} ⚜️
]]
HUSSEIN = {H17,H18,H19,H20,H1,H2,H3,H4,H5,H6,H7,H8,H9,H11,H12,H13,H14,H15}
local SENDTEXT = HUSSEIN[math.random(#HUSSEIN)]
if SENDTEXT:find('فهمت') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'فهمت') 
elseif SENDTEXT:find('مو جبان') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'مو جبان') 
elseif SENDTEXT:find('عدل') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'عدل') 
elseif SENDTEXT:find('نشط') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'نشط') 
elseif SENDTEXT:find('مو زين') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'مو زين') 
elseif SENDTEXT:find('مو عطشان') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'مو عطشان') 
elseif SENDTEXT:find('حاره') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'حاره') 
elseif SENDTEXT:find('مو خايف') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'مو خايف') 
elseif SENDTEXT:find('خلف') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'خلف') 
elseif SENDTEXT:find('وفي') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'وفي') 
elseif SENDTEXT:find('قزم') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'قزم') 
elseif SENDTEXT:find('لين') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'لين') 
elseif SENDTEXT:find('خشن') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'خشن') 
elseif SENDTEXT:find('عاقل') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'عاقل') 
elseif SENDTEXT:find('ذكي') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'ذكي') 
elseif SENDTEXT:find('مو ظلمه') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'مو ظلمه') 
elseif SENDTEXT:find('مو مسموح') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'مو مسموح') 
elseif SENDTEXT:find('روح') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'روح') 
end
sendMsg(msg.chat_id_,msg.id_,SENDTEXT)     
return false  
end

if MsgText[1] == 'رياضيات' or MsgText[1] == 'الرياضيات' then   
redis:set(Pearlin.."GAME:SE"..msg.chat_id_,true) 
K1 = [[
✖️¦12+12+4 ⚜️
]]
K2 = [[
✖️¦51+2+9 ⚜️
]]
K3 =[[
✖️¦14+90+5 ⚜️
]]
K4 =[[
✖️¦46+23+19 ⚜️
]]
K5 =[[
✖️¦19+83+90 ⚜️
]]
K6 =[[
✖️¦10+98+7 ⚜️
]]

K7 =[[
✖️¦76+41+7 ⚜️
]]
K8 =[[
✖️¦15+25+62 ⚜️
]]
K9 =[[
✖️¦2+36+69 ⚜️
]]
K11 =[[
✖️¦25+8+57 ⚜️
]]
K12 =[[
✖️¦36+59+87 ⚜️
]]
K13 =[[
✖️¦3+65+54 ⚜️
]]
K14 =[[
✖️¦15+99+81 ⚜️
]]
K15 =[[
✖️¦34+64+25 ⚜️
]]
K16 =[[
✖️¦34+65+2 ⚜️
]]
K17 =[[
✖️¦15+45+8 ⚜️
]]
K18 =[[
✖️¦14+39+61 ⚜️
]]
K19 =[[
✖️¦14+89+61 ⚜️
]]
K20 =[[
✖️¦35+68+91 ⚜️
]]
KENAN = {K17,K18,K19,K20,K1,K2,K3,K4,K5,K6,K7,K8,K9,K11,K12,K13,K14,K15}
local SENDTEXT = KENAN[math.random(#KENAN)]
if SENDTEXT:find('68') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'68') 
elseif SENDTEXT:find('114') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'114') 
elseif SENDTEXT:find('164') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'164') 
elseif SENDTEXT:find('194') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'194') 
elseif SENDTEXT:find('28') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'28') 
elseif SENDTEXT:find('62') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'62') 
elseif SENDTEXT:find('109') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'109') 
elseif SENDTEXT:find('88') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'88') 
elseif SENDTEXT:find('192') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'192') 
elseif SENDTEXT:find('115') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'115') 
elseif SENDTEXT:find('124') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'124') 
elseif SENDTEXT:find('102') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'102') 
elseif SENDTEXT:find('107') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'107') 
elseif SENDTEXT:find('90') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'90') 
elseif SENDTEXT:find('182') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'182') 
elseif SENDTEXT:find('122') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'122') 
elseif SENDTEXT:find('195') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'195') 
elseif SENDTEXT:find('123') then
redis:set(Pearlin.."GAME:CHERE"..msg.chat_id_,'123') 
end
sendMsg(msg.chat_id_,msg.id_,SENDTEXT)     
return false  
end

if MsgText[1] == 'انججليزيي' or MsgText[1] == 'الانججليزيي' then   
redis:set(Pearlin.."eng:lsh"..msg.chat_id_,true) 
Ke1 = [[
✖️¦ 

معنى كلمه " book "

 ⚜️
]]
Ke2 = [[
✖️¦ 

معنى كلمه " cat "

 ⚜️
]]
Ke3 =[[
✖️¦ 

معنى كلمه " door "

 ⚜️
]]
Ke4 =[[
✖️¦ 

معنى كلمه " computer "

 ⚜️
]]
Ke5 =[[
✖️¦ 

معنى كلمه " mouse "

 ⚜️
]]
Ke6 =[[
✖️¦ 

معنى كلمه " closet "

 ⚜️
]]

Ke7 =[[
✖️¦ 

معنى كلمه " internet "

 ⚜️
]]
Ke8 =[[
✖️¦ 

معنى كلمه " table "

 ⚜️
]]
Ke9 =[[
✖️¦ 

معنى كلمه " demon "

 ⚜️
]]
Ke11 =[[
✖️¦ 

معنى كلمه " noise "

 ⚜️
]]
Ke12 =[[
✖️¦ 

معنى كلمه " year "

 ⚜️
]]
Ke13 =[[
✖️¦ 

معنى كلمه " home "

 ⚜️
]]
Ke14 =[[
✖️¦ 

معنى كلمه " stomaech "

 ⚜️
]]
Ke15 =[[
✖️¦ 

معنى كلمه " ankle "

 ⚜️
]]
Ke17 =[[
✖️¦ 

معنى كلمه " gift "

 ⚜️
]]
Ke18 =[[
✖️¦ 

معنى كلمه " butcher "

 ⚜️
]]
Ke19 =[[
✖️¦ 

معنى كلمه " design "

 ⚜️
]]
KENANm = {Ke17,Ke18,Ke19,Ke20,Ke1,Ke2,Ke3,Ke4,Ke5,Ke6,Ke7,Ke8,Ke9,Ke11,Ke12,Ke13,Ke14,Ke15}
local SENDTEXT = KENANm[math.random(#KENANm)]
if SENDTEXT:find('كتاب') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'كتاب') 
elseif SENDTEXT:find('قطه') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'قطه') 
elseif SENDTEXT:find('باب') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'باب') 
elseif SENDTEXT:find('حاسبه') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'حاسبه') 
elseif SENDTEXT:find('فاره') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'فاره') 
elseif SENDTEXT:find('كنتور') then
redis:set(Pearlin.."GAME:CHER"..msg.chat_id_,'كنتور') 
elseif SENDTEXT:find('انترنت') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'انترنت') 
elseif SENDTEXT:find('منضده') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'منضده') 
elseif SENDTEXT:find('شيطان') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'شيطان') 
elseif SENDTEXT:find('ضوضاء') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'ضوضاء') 
elseif SENDTEXT:find('سنه') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'سنه') 
elseif SENDTEXT:find('بيت') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'بيت') 
elseif SENDTEXT:find('معده') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'معده') 
elseif SENDTEXT:find('كاحل') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'كاحل') 
elseif SENDTEXT:find('خجول') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'خجول') 
elseif SENDTEXT:find('هديه') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'هديه') 
elseif SENDTEXT:find('جزار') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'جزار') 
elseif SENDTEXT:find('تصميم') then
redis:set(Pearlin.."eng:ken"..msg.chat_id_,'تصميم') 
end
sendMsg(msg.chat_id_,msg.id_,SENDTEXT)     
return false  
end

if MsgText[1] == 'بيع نقاطي' then
if MsgText[2] == "0" then
return '📛¦ هناك خطأ عزيزي  \n🔖¦ يجب ان يكون البيع ع الاقل 1 من النقاط . 'end
local points = redis:get(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_)
if tonumber(MsgText[2]) > tonumber(points) then
return '📛| عذرا ليس لديك نقاط بهذا العدد لبيعهن' 
end
if points == "0" then
return '📛 ¦ للاسف ليس لديك نقاط \n🔖 ¦ للحصول على نقاط العب احد الالعاب الموجوده في `قائمه الالعاب`'
else
local Total_Point = MsgText[2] * 100
redis:decrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,MsgText[2])  
redis:incrby(Pearlin..'msgs:'..msg.sender_user_id_..':'..msg.chat_id_,Total_Point)  
return "💰¦ تم خصم {* "..MsgText[2].." *} من نقاطك\n📮| تم زياده {* "..Total_Point.."* } من الرسائل \n📑| اصبحت رسائلك { *"..redis:get(Pearlin..'msgs:'..msg.sender_user_id_..':'..msg.chat_id_).."* } رساله\n🔖"
end
end
if MsgText[1] == "الالعاب" or MsgText[1] == "اللعبه" or MsgText[1] == "اللعبة" then
return [[ 
🗽║اوامـر الالعـاب .
➖➖➖➖➖➖
🗽¦  • {تفعيل الالعاب}
🗽¦  • {تعطيل الالعاب} 
➖➖➖➖➖➖
🗽║الالعـاب .
➖➖➖➖➖➖
📮¦  • {الاسرع} 
📮¦  • {معاني} 
📮¦  • {ترتيب} 
📮¦  • {روليت} 
📮¦  • {اسئله} 
📮¦  • {امثله} 
📮¦  • {حزوره} 
📮¦  • {المختلف} 
📮¦  • {محيبس} 
📮¦  • {تخمين} 
📮¦  • {العكس} 
📮¦  • {رياضيات} 
➖➖➖➖➖➖
🗽¦للمـزيد من المعلومات .
🗽¦ مطور البـوت ↓
🗽¦ • ]]..SUDO_USER..[[ 

➖]]
end
if MsgText[1] == 'روليت' then
redis:del(Pearlin..":Number_Add:"..msg.chat_id_..msg.sender_user_id_) 
redis:del(Pearlin..':List_Rolet:'..msg.chat_id_)  
redis:setex(Pearlin..":Start_Rolet:"..msg.chat_id_..msg.sender_user_id_,3600,true)  
return '*🛡║((روليت))\nء➖➖➖➖➖➖™\n⚔¦  •⊱{حسننا لنلعب}⊰•\n⚔¦  •⊱{ارسل عدد الاعبين للروليت}⊰•\n*'
end
if MsgText[1] == 'نعم' and redis:get(Pearlin..":Witting_StartGame:"..msg.chat_id_..msg.sender_user_id_) then
local list = redis:smembers(Pearlin..':List_Rolet:'..msg.chat_id_) 
if #list == 1 then 
return "📛| لم يكتمل العدد الكلي للاعبين .!؟" 
elseif #list == 0 then 
return "📛| عذرا لم تقوم باضافه اي لاعب .؟!" 
end 
local UserName = list[math.random(#list)]
GetUserName(UserName,function(arg,data)
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..data.id_,2)
end,nil)
redis:del(Pearlin..':List_Rolet:'..msg.chat_id_) 
redis:del(Pearlin..":Witting_StartGame:"..msg.chat_id_..msg.sender_user_id_)
return '👁‍🗨║((روليت))\nء➖➖➖➖➖➖™\n♣️¦  •⊱ {تم اختيار الشخص الاتي} ⊰•\n♣️¦  •⊱ {صاحب الحظ ( ['..UserName..'] ) } ⊰•\n♣️¦  •⊱ {ربحت معنا²نقاط} ⊰•\n' 
end
if MsgText[1] == 'الاعبين' then
local list = redis:smembers(Pearlin..':List_Rolet:'..msg.chat_id_) 
local Text = '\n*ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــ*\n' 
if #list == 0 then 
return '*📮¦* لا يوجد لاعبين هنا ' 
end 
for k, v in pairs(list) do 
Text = Text..k.."•  » [" ..v.."] »\n"  
end 
return Text
end
if MsgText[1] == 'قائمه الالعاب' then
sendMsg(msg.chat_id_,msg.id_,[[
🗽║اوامـر الالعـاب .
➖➖➖➖➖➖
🗽¦  • {تفعيل الالعاب}
🗽¦  • {تعطيل الالعاب} 
➖➖➖➖➖➖
🗽║الالعـاب .
➖➖➖➖➖➖
📮¦  • {الاسرع} 
📮¦  • {معاني} 
📮¦  • {ترتيب} 
📮¦  • {روليت} 
📮¦  • {اسئله} 
📮¦  • {امثله} 
📮¦  • {حزوره} 
📮¦  • {المختلف} 
📮¦  • {محيبس} 
📮¦  • {تخمين} 
📮¦  • {العكس} 
📮¦  • {رياضيات} 
➖➖➖➖➖➖
🗽¦للمـزيد من المعلومات .
🗽¦ مطور البـوت ↓
🗽¦  • ]]..SUDO_USER..[[ 

➖]])
end
end
end
end
local function procces(msg)
if msg.text and not redis:get(Pearlin..'lock_geams'..msg.chat_id_) then
if msg.text == redis:get(Pearlin..':Set_Smile:'..msg.chat_id_) then --//  الاسرع
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,1)  
redis:del(Pearlin..':Set_Smile:'..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,'*\n🎮║((الاسرع))\nء➖➖➖➖➖➖™\n🖲¦  •⊱ {اجابه صحيحه} ⊰•\n🖲¦  •⊱ { حصلت على¹نقاط } ⊰•*')end
if msg.text == redis:get(Pearlin..':Set_alii:'..msg.chat_id_) then -- // المختلف
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,1)  
redis:del(Pearlin..':Set_alii:'..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,'*\n🎮║((المختلف))\nء➖➖➖➖➖➖™\n🖲¦  •⊱ {اجابه صحيحه} ⊰•\n🖲¦  •⊱ { حصلت على¹نقاط } ⊰•*')end

if msg.text == redis:get(Pearlin..':Set_Amthlh:'..msg.chat_id_) then -- // امثله
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,1)  
redis:del(Pearlin..':Set_Amthlh:'..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,'*\n🎮║((امثله))\nء➖➖➖➖➖➖™\n🖲¦  •⊱ {اجابه صحيحه} ⊰•\n🖲¦  •⊱ { حصلت على¹نقاط } ⊰•*')end

if msg.text == redis:get(Pearlin..':Set_Hzorh:'..msg.chat_id_) then -- // حزوره
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,1)  
redis:del(Pearlin..':Set_Hzorh:'..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,'*\n🎮║((حزوره))\nء➖➖➖➖➖➖™\n🖲¦  •⊱ {اجابه صحيحه} ⊰•\n🖲¦  •⊱ { حصلت على¹نقاط } ⊰•*')end

if msg.text == redis:get(Pearlin..':Set_Arg:'..msg.chat_id_) then -- // الترتيب
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,1)  
redis:del(Pearlin..':Set_Arg:'..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,'*\n🎮║((ترتيب))\nء➖➖➖➖➖➖™\n🖲¦  •⊱ {اجابه صحيحه} ⊰•\n🖲¦  •⊱ { حصلت على¹نقاط } ⊰•*')end
if msg.text == redis:get(Pearlin..':Set_Name_Meant:'..msg.chat_id_) then --// المعاني
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,1)  
redis:del(Pearlin..':Set_Name_Meant:'..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,'*\n🎮║((معاني))\nء➖➖➖➖➖➖™\n🖲¦  •⊱ {اجابه صحيحه} ⊰•\n🖲¦  •⊱ { حصلت على¹نقاط } ⊰•*')end
if (msg.text == redis:get(Pearlin.."GAME:CHER"..msg.chat_id_)) and redis:get(Pearlin.."GAME:S"..msg.chat_id_) then  
sendMsg(msg.chat_id_,msg.id_,'\n🎮║((اسئله))\nء➖➖➖➖➖➖™\n🖲¦  •⊱ {اجابه صحيحه} ⊰•\n🖲¦  •⊱ { حصلت على¹مجوهىات } ⊰•')     
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,1)  
redis:del(Pearlin.."GAME:S"..msg.chat_id_)
redis:del(Pearlin.."GAME:CHER"..msg.chat_id_)
elseif msg.text == 'الفيل' or msg.text == 'الثور' or msg.text == 'الحصان' or msg.text == '7' or msg.text == '9' or msg.text == '8' or msg.text == 'لوين' or msg.text == 'موسكو' or msg.text == 'مانكو' or msg.text == '20' or msg.text == '30' or msg.text == '28' or msg.text == 'ترامب' or msg.text == 'اوباما' or msg.text == 'كيم جونغ' or msg.text == '50' or msg.text == '70' or msg.text == '40' or msg.text == '7' or msg.text == '3' or msg.text == '10' or msg.text == '4' or msg.text == 'الاذن' or msg.text == 'الثلاجه' or msg.text == 'الغرفه' or msg.text == '15' or msg.text == '17' or msg.text == '25' or msg.text == 'الفرات' or msg.text == 'نهر الكونغو' or msg.text == 'المسيبي' or msg.text == 'بيا بايج' or msg.text == 'لاري بيج' or msg.text == 'بيا مارك زوكيربرج' or msg.text == 'الفيل' or msg.text == 'النمر' or msg.text == 'الفهد' or msg.text == 'بانكول' or msg.text == 'نيو دلهي' or msg.text == 'بيكن' or msg.text == 'الهاتف' or msg.text == 'التلفاز' or msg.text == 'المذياع' or msg.text == 'لفرسول' or msg.text == 'تركيا' or msg.text == 'بغداد' or msg.text == 'النحاس' or msg.text == 'الحديد' or msg.text == 'الفضه' or msg.text == 'امريكا الشماليه' or msg.text == 'امريكا الجنوبيه' or msg.text == 'افريقيا' or msg.text == 'القرش' or msg.text == 'الثعلب' or msg.text == 'الكلب' or msg.text == 'للجرو' or msg.text == 'العجل' or msg.text == 'الحمار' or msg.text == '3' or msg.text == '5' or msg.text == '6' or msg.text == 'اوربا' or msg.text == 'افريقيا' or msg.text == 'امريكا الجنوبيه' or msg.text == 'افريقيا' or msg.text == 'امريكا الشماليه' or msg.text == 'اوربا' or msg.text == 'الصاروخ' or msg.text == 'المسدس' or msg.text == 'الطائرات' or msg.text == 'سيدات' or msg.text == 'قوانص' or msg.text == 'عوانس' or msg.text == 'المكارم' or msg.text == 'المبائم' or msg.text == 'المعازم' or msg.text == 'حرف الغاء' or msg.text == 'حرف الواو' or msg.text == 'حرف النون' or msg.text == 'نحاس' or msg.text == 'الماس' or msg.text == 'حديد' or msg.text == 'العمر' or msg.text == 'ساعه' or msg.text == 'الحذاء' or msg.text == 'بئر' or msg.text == 'نهر' or msg.text == 'شلال' or msg.text == 'ادم' or msg.text == 'نوح' or msg.text == 'عيسئ' or msg.text == 'الاضافر' or msg.text == 'الاسنان' or msg.text == 'الدموع' or msg.text == 'الاخلاق' or msg.text == 'الضل' or msg.text == 'حرف النون'  then
if redis:get(Pearlin.."GAME:S"..msg.chat_id_) then  
local list = {'10' , 'براسي' , 'النمل' , '32' , 'بوتين' , '30' , '11' , 'الفم' , '14' , 'النيل' , 'ستيف جوبر' , 'خديجه' , 'الاسد' , 'طوكيو' , 'الانسان' , 'لندن' , 'الزئبق' , 'اورباالدولفين' , 'المهر' , '4' , 'اسيا' , 'اسيا' , 'المنجنيق' , 'انسات' , 'العزائم' , 'حرف الام' , 'ذهب' , 'الاسم' , 'سحاب' , 'ابراهيم' , 'الشعر' , 'حرف الواو'}
for k, v in pairs(list) do 
if msg.text ~= v then
return false  
end
end
end
end

if msg.text:match("^(%d+)$") and redis:get(Pearlin..":Start_Rolet:"..msg.chat_id_..msg.sender_user_id_) then  --// استقبال اللعبه الدمبله
if msg.text == "1" then
Text = "*📮¦* لا استطيع بدء اللعبه بلاعب واحد فقط\n"
else
redis:set(Pearlin..":Number_Add:"..msg.chat_id_..msg.sender_user_id_,msg.text)  
Text = '👁‍🗨║((روليت))\nء➖➖➖➖➖➖™\n♣️¦  •⊱{تم بدء تسجيل السته}⊰•\n♣️¦  •⊱{يرجى ارسال المعرفات}⊰•\n♣️¦  •⊱{الفائز يحصل على²نقاط}⊰•\n♣️¦  •⊱{عدد الاعبين المطلوب ~*'..msg.text..'*~}⊰•\n'
end
redis:del(Pearlin..":Start_Rolet:"..msg.chat_id_..msg.sender_user_id_)  
return sendMsg(msg.chat_id_,msg.id_,Text)    
end
if msg.text:match('^(@[%a%d_]+)$') and redis:get(Pearlin..":Number_Add:"..msg.chat_id_..msg.sender_user_id_) then    --// استقبال الاسماء
if redis:sismember(Pearlin..':List_Rolet:'..msg.chat_id_,msg.text) then
return sendMsg(msg.chat_id_,msg.id_,'*📮¦* المعرف {['..msg.text..']} موجود اساسا' )
end
redis:sadd(Pearlin..':List_Rolet:'..msg.chat_id_,msg.text)
local CountAdd = redis:get(Pearlin..":Number_Add:"..msg.chat_id_..msg.sender_user_id_)
local CountAll = redis:scard(Pearlin..':List_Rolet:'..msg.chat_id_)
local CountUser = CountAdd - CountAll
if tonumber(CountAll) == tonumber(CountAdd) then 
redis:del(Pearlin..":Number_Add:"..msg.chat_id_..msg.sender_user_id_) 
redis:setex(Pearlin..":Witting_StartGame:"..msg.chat_id_..msg.sender_user_id_,1400,true)  
return sendMsg(msg.chat_id_,msg.id_,"👁‍🗨║((روليت))\nء➖➖➖➖➖➖™\n♣️¦  •⊱{تم ادخال المعرف}⊰•\n♣️¦  •⊱{م ["..msg.text.."]}⊰•\n♣️¦  •⊱{تم اكمال العدد الكلي}⊰•\n♣️¦  •⊱{هل انت مستعد}⊰•\n♣️¦  •⊱{ارسل (نعم) للبدء}⊰•\n")
end 
return sendMsg(msg.chat_id_,msg.id_,"👁‍🗨║((روليت))\nء➖➖➖➖➖➖™\n♣️¦  •⊱{تم ادخال المعرف}⊰•\n♣️¦  •⊱{م ["..msg.text.."] }⊰•\n♣️¦  •⊱{تبقى *"..CountUser.."* لاعبين ليكتمل العدد}⊰•\n♣️¦  •⊱{ارسل المعرف التالي}⊰•\n")
end
end 
if redis:get(Pearlin.."SETEX:MSG"..msg.chat_id_..""..msg.sender_user_id_) then 
if msg.text:match("^(%d+)$") then
if tonumber(msg.text:match("^(%d+)$")) > 99999999 then
sendMsg(msg.chat_id_,msg.id_,"*📬¦ لا تستطيع اضافة اكثر من 99999999 رساله\n*")   
redis:del(Pearlin.."SETEX:MSG"..msg.chat_id_..""..msg.sender_user_id_)  
return false  end 
local GET_IDUSER = redis:get(Pearlin..'SET:ID:USER'..msg.chat_id_)  
sendMsg(msg.chat_id_,msg.id_,"\n📬*¦ روح خالي 😉 تم اضافة له { "..msg.text.." }* رساله")
redis:incrby(Pearlin..'msgs:'..GET_IDUSER..':'..msg.chat_id_,msg.text)  
end
redis:del(Pearlin.."SETEX:MSG"..msg.chat_id_..""..msg.sender_user_id_)  
end

if redis:get(Pearlin.."SETEX:NUM"..msg.chat_id_..""..msg.sender_user_id_) then 
if msg.text:match("^(%d+)$") then
if tonumber(msg.text:match("^(%d+)$")) > 99999999 then
sendMsg(msg.chat_id_,msg.id_,"*📬¦ لا تستطيع اضافة اكثر من 99999999 نقاط\n*")   
redis:del(Pearlin.."SETEX:MSG"..msg.chat_id_..""..msg.sender_user_id_)  
return false  end 
local GET_IDUSER = redis:get(Pearlin..'SET:ID:USER:NUM'..msg.chat_id_)  
sendMsg(msg.chat_id_,msg.id_,"\n📬*¦ طكو طكو عمي 😻 تم اضافة له { "..msg.text.." }* نقاط")
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..GET_IDUSER,msg.text)  
end
redis:del(Pearlin.."SETEX:MSG"..msg.chat_id_..""..msg.sender_user_id_)  
end

if redis:get(Pearlin.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if msg.text:match("^(%d+)$") then
local NUM = msg.text:match("^(%d+)$")
if tonumber(NUM) > 6 then
sendMsg(msg.chat_id_,msg.id_,"*📬¦ عذرا لا يوجد سواء { 6 } اختيارات فقط ارسل اختيارك مره اخره*\n")   
return false  end 
local GETNUM = redis:get(Pearlin.."GAMES"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
redis:del(Pearlin.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
sendMsg(msg.chat_id_,msg.id_,'*🎮║((المحيبس))\nء➖➖➖➖➖➖™\n🖲¦  •⊱{العب وخوش تلعب}⊰•\n🖲¦  •⊱{حصلت على 3 نقاط }⊰•\n*')   
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,3)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
redis:del(Pearlin.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
sendMsg(msg.chat_id_,msg.id_,'*🎮║((المحيبس))\nء➖➖➖➖➖➖™\n🖲¦  •⊱{ترجع بيد '..Bot_Name..' 😹🥀}⊰•\n🖲¦  •⊱{المحبس بيد رقم ~'..GETNUM..'~}⊰•\n*')   
end
end
end
if msg.text then  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_}, function(arg,data) 
if redis:get(Pearlin.."chencher"..msg.sender_user_id_) then 
if redis:get(Pearlin.."chencher"..msg.sender_user_id_) ~= data.first_name_ then 
tahan = '['..(redis:get(Pearlin.."chencher"..msg.sender_user_id_) or '')..']'
taham = '['..data.first_name_..']'
sendMsg(msg.chat_id_,msg.id_,taha[math.random(#taha)])
end  
end
redis:set(Pearlin.."chencher"..msg.sender_user_id_, data.first_name_) 
end,nil) 
end


if redis:get(Pearlin.."SET:t" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if msg.text:match("^(%d+)$") then
local NUM = msg.text:match("^(%d+)$")
if tonumber(NUM) > 6 then
sendMsg(msg.chat_id_,msg.id_,"*📬¦ عذرا لا يوجد سواء { 10 } اختيارات فقط ارسل اختيارك مره اخره*\n")   
return false  end 
local GETNUM = redis:get(Pearlin.."GAMES"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
redis:del(Pearlin.."SET:t" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
sendMsg(msg.chat_id_,msg.id_,'*🎮║((تخمين))\nء➖➖➖➖➖➖™\n🖲¦  •⊱{العب وخوش تلعب}⊰•\n🖲¦  •⊱{حصلت على 3 نقاط }⊰•\n*')   
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,3)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
redis:del(Pearlin.."SET:t" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
sendMsg(msg.chat_id_,msg.id_,'*🎮║((تخمين))\nء➖➖➖➖➖➖™\n🖲¦  •⊱{اجابه خاطئه}⊰•\n🖲¦  •⊱{الاجابه هيه ~'..GETNUM..'~}⊰•\n*')   
end
end
end

if (msg.text == redis:get(Pearlin.."GAME:CHER"..msg.chat_id_)) and redis:get(Pearlin.."GAME:S"..msg.chat_id_) then  
sendMsg(msg.chat_id_,msg.id_,'')     
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,0)  
redis:del(Pearlin.."GAME:S"..msg.chat_id_)
redis:del(Pearlin.."GAME:CHER"..msg.chat_id_)

elseif msg.text == 'فهمت' or msg.text == 'مو جبان' or msg.text == 'عدل' or msg.text == 'نشط' or msg.text == 'مو زين' or msg.text == 'مو عطشان' or msg.text == 'حاره' or msg.text == 'مو خايف' or msg.text == 'خلف' or msg.text == 'وفي' or msg.text == 'القزم' or msg.text == 'لين' or msg.text == 'خشن' or msg.text == 'عاقل' or msg.text == 'ذكي' or msg.text == 'مو ظلمه' or msg.text == 'مو مسموح' or msg.text == 'روح' then
if redis:get(Pearlin.."GAME:S"..msg.chat_id_) then  
local list = {'فهمت' , 'مو جبان' , ' مو عطشان' , 'عدل' , 'نشط' , 'مو زين' , ' خاره ' , 'خلف' , 'مو خايف' , 'لين' , 'القزم' , 'وفي' , 'عاقل' , 'خشن' , 'ذكي' , 'اسمعك' , 'مو مسموح' , 'مو ظلمه'}
for k, v in pairs(list) do 
if msg.text ~= v then
sendMsg(msg.chat_id_,msg.id_,'📮¦*\n🎮║((العكس))\nء➖➖➖➖➖➖™\n🖲¦  •⊱ {اجابه صحيحه} ⊰•\n🖲¦  •⊱ { حصلت على¹نقاط } ⊰•*')     
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,1)  
redis:del(Pearlin.."GAME:S"..msg.chat_id_)
redis:del(Pearlin.."GAME:CHER"..msg.chat_id_)
return true   
end
end
end
end

if (msg.text == redis:get(Pearlin.."GAME:CHERE"..msg.chat_id_)) and redis:get(Pearlin.."GAME:SE"..msg.chat_id_) then  
sendMsg(msg.chat_id_,msg.id_,'')     
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,0)  
redis:del(Pearlin.."GAME:SE"..msg.chat_id_)
redis:del(Pearlin.."GAME:CHERE"..msg.chat_id_)

elseif msg.text == '68' or msg.text == '114' or msg.text == '164' or msg.text == '194' or msg.text == '28' or msg.text == '62' or msg.text == '109' or msg.text == '88' or msg.text == '192' or msg.text == '115' or msg.text == '124' or msg.text == '102' or msg.text == '107' or msg.text == '90' or msg.text == '182' or msg.text == '122' or msg.text == '195' then
if redis:get(Pearlin.."GAME:SE"..msg.chat_id_) then  
local list = {'68' , '114' , ' 62' , '164' , '194' , '28' , '109' , '192' , '88' , '102' , '124' , '115' , '90' , '107' , '182' , '123' , '195' , '122'}
for k, v in pairs(list) do 
if msg.text ~= v then
sendMsg(msg.chat_id_,msg.id_,'📮¦*\n🎮║((رياضيات))\nء➖➖➖➖➖➖™\n🖲¦  •⊱ {اجابه صحيحه} ⊰•\n🖲¦  •⊱ { حصلت على¹نقاط } ⊰•*')     
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,1)  
redis:del(Pearlin.."GAME:SE"..msg.chat_id_)
redis:del(Pearlin.."GAME:CHERE"..msg.chat_id_)
return true   
end
end
end
end

if (msg.text == redis:get(Pearlin.."eng:ken"..msg.chat_id_)) and redis:get(Pearlin.."eng:lsh"..msg.chat_id_) then  
sendMsg(msg.chat_id_,msg.id_,'')     
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,0)  
redis:del(Pearlin.."eng:lsh"..msg.chat_id_)
redis:del(Pearlin.."eng:ken"..msg.chat_id_)

elseif msg.text == 'كتاب' or msg.text == 'قطه' or msg.text == 'باب' or msg.text == 'حاسبه' or msg.text == 'فاره' or msg.text == 'كنتور' or msg.text == 'انترنت' or msg.text == 'منضده' or msg.text == 'شيطان' or msg.text == 'ضوضاء' or msg.text == 'سنه' or msg.text == 'بيت' or msg.text == 'معده' or msg.text == 'كاحل' or msg.text == 'خجول' or msg.text == 'هديه' or msg.text == 'جزار' or msg.text == 'تصميم' then
if redis:get(Pearlin.."eng:lsh"..msg.chat_id_) then  
local list = {'كتاب' , 'قطه' , 'كنتور' , 'باب' , 'حاسبه' , 'فاره' , 'انترنت' , 'شيطان' , 'منضده' , 'بيت' , 'سنه' , 'ضوضاء' , 'كاحل' , 'معده' , 'خجول' , 'تصميم' , 'جزار' , 'هديه'}
for k, v in pairs(list) do 
if msg.text ~= v then
sendMsg(msg.chat_id_,msg.id_,'📮¦*\n🎮║((انججليزيي))\nء➖➖➖➖➖➖™\n🖲¦  •⊱ {اجابه صحيحه} ⊰•\n🖲¦  •⊱ { حصلت على¹نقاط } ⊰•*')     
redis:incrby(Pearlin..':User_Points:'..msg.chat_id_..msg.sender_user_id_,1)  
redis:del(Pearlin.."eng:lsh"..msg.chat_id_)
redis:del(Pearlin.."eng:ken"..msg.chat_id_)
return true   
end
end
end
end

if msg.text then  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_}, function(arg,data) 
if redis:get(Pearlin.."chencher"..msg.sender_user_id_) then 
if redis:get(Pearlin.."chencher"..msg.sender_user_id_) ~= data.first_name_ then 
tahan = '['..(redis:get(Pearlin.."chencher"..msg.sender_user_id_) or '')..']'
taham = '['..data.first_name_..']'
sendMsg(msg.chat_id_,msg.id_,taha[math.random(#taha)])
end  
end
redis:set(Pearlin.."chencher"..msg.sender_user_id_, data.first_name_) 
end,nil) 
end
if msg.text then  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_}, function(arg,data) 
if redis:get(Pearlin.."chencher"..msg.sender_user_id_) then 
if redis:get(Pearlin.."chencher"..msg.sender_user_id_) ~= data.first_name_ then 
tahan = '['..(redis:get(Pearlin.."chencher"..msg.sender_user_id_) or '')..']'
taham = '['..data.first_name_..']'
local taha ={ 
'\n هـاي.',
}
sendMsg(msg.chat_id_,msg.id_,taha[math.random(#taha)])
end  
end
redis:set(Pearlin.."chencher"..msg.sender_user_id_, data.first_name_) 
end,nil) 
end
end
return {
Pearlin = {
"^(نعم)$", 
"^(الاعبين)$", 
"^(بدء الاسئله)$", 
"^(ختيارات)$", 
"^(اسئله)$", 
"^(الالعاب)$", 
"^(محيبس)$", 
"^(تخمين)$", 
"^(حزوره)$", 
"^(المختلف)$",
 "^(امثله)$",
"^(بات)$", 
'^(تعطيل) (.+)$',
'^(تفعيل) (.+)$',
"^(اسرع)$",
"^(الاسرع)$",
"^(نقاطي)$", 
"^(ترتيب)$", 
"^(معاني)$", 
"^(بيع نقاطي) (%d+)$",
"^(اضف رسائل) (%d+)$",
"^(اضف نقاط) (%d+)$",
"^(روليت)$", 
"^(قائمه الالعاب)$", 
"^(عكس)$",
"^(العكس)$", 
"^(العكسس)$", 
"^(رياضيات)$",
"^(الرياضيات)$",
"^(انججليزيي)$",
"^(الانججليزيي)$",
 },
 iPearlin = games,
 dPearlin = procces,
 }
