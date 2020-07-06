--[[
#    ▀█████████▄   ▄██████▄     ▄████████    ▄████████
#      ███    ███ ███    ███   ███    ███   ███    ███
#      ███    ███ ███    ███   ███    █▀    ███    █▀
#     ▄███▄▄▄██▀  ███    ███   ███          ███
#    ▀▀███▀▀▀██▄  ███    ███ ▀███████████ ▀███████████ ¦ Dev : @TH3Pearlin
#      ███    ██▄ ███    ███          ███          ███ ¦ Dev : @OMMMM
#      ███    ███ ███    ███    ▄█    ███    ▄█    ███
#    ▄█████████▀   ▀██████▀   ▄████████▀   ▄████████▀  ¦ Source TH3Pearlin BY @TH3BS
#---------------------------------------------------------------------
]]



---------------Lock ------------------- 
function unlock_KickBan(msg)
if not msg.Creator then return "✧ هذا الامر يخص {المطـور,المنشـئ الاساسي,المنشئ} فقـط ➻" end
if not redis:get(Pearlin.."lock_KickBan"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ امر الحظر والطرد بالتأكيد معطل➻" ,16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin.."lock_KickBan"..msg.chat_id_) 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تعطيل امر الحظر والطرد ➻" ,16,utf8.len(msg.TheRankCmd)) 
end 
end
 
function lock_KickBan(msg)
if not msg.Creator then return "✧ هذا الامر يخص {المطـور,المنشـئ الاساسي,المنشئ} فقـط ➻" end
if redis:get(Pearlin.."lock_KickBan"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ امر الحظر والطرد مفعل مسبقاً ➻" ,16,utf8.len(msg.TheRankCmd)) 
else redis:set(Pearlin.."lock_KickBan"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تفعيل امر الحظر والطرد ➻" ,16,utf8.len(msg.TheRankCmd)) 
end
end 

---------------Lock Link-------------------
function lock_check(msg)
    if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
    if not redis:get(Pearlin.."lock_check"..msg.chat_id_) then
    return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التحقق بالتأكيد تـمَ تعطيلها ➻",16,utf8.len(msg.TheRankCmd)) 
    else 
    redis:del(Pearlin.."lock_check"..msg.chat_id_)
    return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تعطيل التحقق ➻",16,utf8.len(msg.TheRankCmd)) 
    end
    end
    
    function unlock_check(msg)
    if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
    if redis:get(Pearlin.."lock_check"..msg.chat_id_) then
    return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التحقق بالتأكيد تفعيلها ➻",16,utf8.len(msg.TheRankCmd)) 
    else
    redis:set(Pearlin.."lock_check"..msg.chat_id_,true)
    return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تفعيل التحقق ➻",16,utf8.len(msg.TheRankCmd)) 
    end
    end
    

---------------Lock ------------------- 
function unlock_takkl(msg)
if not msg.Creator then return "✧ هذا الامر يخص {المطـور,المنشـئ الاساسي,المنشئ} فقـط ➻" end
if redis:get(Pearlin.."lock_takkl"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ امر تاك للكل مفعل مسبقاً ➻" ,16,utf8.len(msg.TheRankCmd)) 
else redis:set(Pearlin.."lock_takkl"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تفعيل امر تاك للكل ➻" ,16,utf8.len(msg.TheRankCmd)) 
end
end
 
function lock_takkl(msg)
    if not msg.Creator then return "✧ هذا الامر يخص {المطـور,المنشـئ الاساسي,المنشئ} فقـط ➻" end
    if not redis:get(Pearlin.."lock_takkl"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ امر تاك للكل بالتأكيد معطل➻" ,16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin.."lock_takkl"..msg.chat_id_) 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تعطيل امر تاك للكل ➻" ,16,utf8.len(msg.TheRankCmd)) 
end 
end 

---------------Lock ------------------- 
function unlock_leftgroup(msg)
    if not msg.Creator then return "✧ هذا الامر يخص {المطـور,المنشـئ الاساسي,المنشئ} فقـط ➻" end
    if redis:get(Pearlin.."lock_leftgroup"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ امر المغادره مفعل مسبقاً ➻" ,16,utf8.len(msg.TheRankCmd)) 
else redis:set(Pearlin.."lock_leftgroup"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تفعيل امر المغادرها ➻" ,16,utf8.len(msg.TheRankCmd)) 
end
end
 
function lock_leftgroup(msg)
    if not msg.Creator then return "✧ هذا الامر يخص {المطـور,المنشـئ الاساسي,المنشئ} فقـط ➻" end
    if not redis:get(Pearlin.."lock_leftgroup"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ امر المغادرها بالتأكيد معطل➻" ,16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin.."lock_leftgroup"..msg.chat_id_) 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تعطيل امر المغادرها ➻" ,16,utf8.len(msg.TheRankCmd)) 
end 
end 


---------------Lock ------------------- 
function unlock_AntiEdit(msg)
if not msg.SuperCreator then return "✧ هذا الامر يخص {المطـور,المنشـئ الاساسي} فقـط ➻" end
if redis:get(Pearlin.."antiedit"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الحماية مفعل مسبقاً ➻" ,16,utf8.len(msg.TheRankCmd)) 
else redis:set(Pearlin.."antiedit"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تفعيل الحماية ➻" ,16,utf8.len(msg.TheRankCmd)) 
end
end
 
function lock_AntiEdit(msg)
if not msg.SuperCreator then return "✧ هذا الامر يخص {المطـور,المنشـئ الاساسي} فقـط ➻" end
if not redis:get(Pearlin.."antiedit"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الحماية بالتأكيد معطل➻" ,16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin.."antiedit"..msg.chat_id_) 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تعطيل الحماية ➻" ,16,utf8.len(msg.TheRankCmd)) 
end 
end 

------Lock ------------------- 
function unlock_idphoto(msg)
if not msg.Admin then return "✧ هذا الامر يخص ❲الادمن,المدير,المنشئ,المطور❳ فقـط ➻" end
if redis:get(Pearlin.."idphoto"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الايدي بالصوره مفعل مسبقاً ➻" ,16,utf8.len(msg.TheRankCmd)) 
else redis:set(Pearlin.."idphoto"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تفعيل الايدي بالصوره ➻" ,16,utf8.len(msg.TheRankCmd)) 
end
end
 
function lock_idphoto(msg)
if not msg.Admin then return "✧ هذا الامر يخص ❲الادمن,المدير,المنشئ,المطور❳ فقـط ➻" end
if not redis:get(Pearlin.."idphoto"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الايدي بالصوره بالتأكيد معطل➻" ,16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin.."idphoto"..msg.chat_id_) 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تعطيل الايدي بالصوره ➻" ,16,utf8.len(msg.TheRankCmd)) 
end 
end

function unlock_linkk(msg)
    if not msg.Creator then return "✧ هذا الامر يخص {المطـور,المنشـئ الاساسي,المنشئ} فقـط ➻" end
if redis:get(Pearlin.."lock_linkk"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الرابط مفعل مسبقاً ➻" ,16,utf8.len(msg.TheRankCmd)) 
else redis:set(Pearlin.."lock_linkk"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تفعيل الرابط ➻" ,16,utf8.len(msg.TheRankCmd)) 
end
end
 
function lock_linkk(msg)
    if not msg.Creator then return "✧ هذا الامر يخص {المطـور,المنشـئ الاساسي,المنشئ} فقـط ➻" end
if not redis:get(Pearlin.."lock_linkk"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الرابط بالتأكيد معطل➻" ,16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin.."lock_linkk"..msg.chat_id_) 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تعطيل الرابط ➻" ,16,utf8.len(msg.TheRankCmd)) 
end 
end

function unlock_waring(msg)
if not msg.Admin then return "✧ هذا الامر يخص ❲الادمن,المدير,المنشئ,المطور❳ فقـط ➻" end
if redis:get(Pearlin.."lock_woring"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التحذير مفعل مسبقاً ➻" ,16,utf8.len(msg.TheRankCmd)) 
else redis:set(Pearlin.."lock_woring"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تفعيل التحذير ➻" ,16,utf8.len(msg.TheRankCmd)) 
end
end
 
function lock_waring(msg)
if not msg.Admin then return "✧ هذا الامر يخص ❲الادمن,المدير,المنشئ,المطور❳ فقـط ➻" end
if not redis:get(Pearlin.."lock_woring"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التحذير بالتأكيد معطل➻" ,16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin.."lock_woring"..msg.chat_id_) 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تعطيل التحذير ➻" ,16,utf8.len(msg.TheRankCmd)) 
end 
end

function lock_ID(msg)
if not msg.Admin then return "✧ هذا الامر يخص ❲الادمن,المدير,المنشئ,المطور❳ فقـط ➻" end
if not redis:get(Pearlin.."lock_id"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الايدي بالتأكيد معطل➻" ,16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin.."lock_id"..msg.chat_id_) 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تعطيل امر الايدي➻" ,16,utf8.len(msg.TheRankCmd)) 
end 
end

function unlock_ID(msg)
if not msg.Admin then return "✧ هذا الامر يخص ❲الادمن,المدير,المنشئ,المطور❳ فقـط ➻" end
if redis:get(Pearlin.."lock_id"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ امر الايدي شغال بالفعل➻" ,16,utf8.len(msg.TheRankCmd)) 
else 
redis:set(Pearlin.."lock_id"..msg.chat_id_,true)  
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تفعيل امر الايدي ➻" ,16,utf8.len(msg.TheRankCmd)) 
end 
end

function unlock_Welcome(msg)
if not msg.Admin then return "✧ هذا الامر يخص ❲الادمن,المدير,المنشئ,المطور❳ فقـط ➻" end
if redis:get(Pearlin.."welcome:get"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تفعيل الترحيب مفعل مسبقاً➻" ,16,utf8.len(msg.TheRankCmd)) 
else redis:set(Pearlin.."welcome:get"..msg.chat_id_,true)  
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تفعيل الترحيب ➻" ,16,utf8.len(msg.TheRankCmd)) 
end 
end

function lock_Welcome(msg)
if not msg.Admin then return "✧ هذا الامر يخص ❲الادمن,المدير,المنشئ,المطور❳ فقـط ➻" end
if not redis:get(Pearlin.."welcome:get"..msg.chat_id_) then 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الترحيب بالتأكيد معطل➻" ,16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin.."welcome:get"..msg.chat_id_) 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تعطيل الترحيب ➻" ,16,utf8.len(msg.TheRankCmd)) 
end 
end

function lock_All(msg)
if not msg.Admin then return "✧ هذا الامر يخص ❲الادمن,المدير,المنشئ,المطور❳ فقـط ➻" end
redis:mset(
Pearlin.."lock_username"..msg.chat_id_,true,
Pearlin.."mute_gif"..msg.chat_id_,true,
Pearlin.."mute_photo"..msg.chat_id_,true,
Pearlin.."mute_audio"..msg.chat_id_,true,
Pearlin.."mute_voice"..msg.chat_id_,true,
Pearlin.."mute_sticker"..msg.chat_id_,true,
Pearlin.."mute_forward"..msg.chat_id_,true,
Pearlin.."mute_contact"..msg.chat_id_,true,
Pearlin.."mute_location"..msg.chat_id_,true,
Pearlin.."mute_document"..msg.chat_id_,true,
Pearlin.."lock_link"..msg.chat_id_,true,
Pearlin.."lock_tag"..msg.chat_id_,true,
Pearlin.."lock_edit"..msg.chat_id_,true,
Pearlin.."lock_spam"..msg.chat_id_,true,
Pearlin.."lock_bots"..msg.chat_id_,true,
Pearlin.."lock_webpage"..msg.chat_id_,true,
Pearlin.."mute_video"..msg.chat_id_,true,
Pearlin.."mute_inline"..msg.chat_id_,true
)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الكل  ➻",16,utf8.len(msg.TheRankCmd)) 
end

function Unlock_All(msg)
if not msg.Admin then return "✧ هذا الامر يخص ❲الادمن,المدير,المنشئ,المطور❳ فقـط ➻" end
redis:del(
Pearlin.."lock_username"..msg.chat_id_,
Pearlin.."mute_gif"..msg.chat_id_,
Pearlin.."mute_photo"..msg.chat_id_,
Pearlin.."mute_audio"..msg.chat_id_,
Pearlin.."mute_voice"..msg.chat_id_,
Pearlin.."mute_sticker"..msg.chat_id_,
Pearlin.."mute_forward"..msg.chat_id_,
Pearlin.."mute_contact"..msg.chat_id_,
Pearlin.."mute_location"..msg.chat_id_,
Pearlin.."mute_document"..msg.chat_id_,
Pearlin.."lock_link"..msg.chat_id_,
Pearlin.."lock_tag"..msg.chat_id_,
Pearlin.."lock_edit"..msg.chat_id_,
Pearlin.."lock_spam"..msg.chat_id_,
Pearlin.."lock_bots"..msg.chat_id_,
Pearlin.."lock_webpage"..msg.chat_id_,
Pearlin.."mute_video"..msg.chat_id_,
Pearlin..":tqeed_video:"..msg.chat_id_,
Pearlin..":tqeed_photo:"..msg.chat_id_,
Pearlin..":tqeed_gif:"..msg.chat_id_,
Pearlin..":tqeed_fwd:"..msg.chat_id_,
Pearlin..":tqeed_link:"..msg.chat_id_,
Pearlin.."mute_inline"..msg.chat_id_
)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الكل  ➻",16,utf8.len(msg.TheRankCmd)) 
end

function lock_Media(msg)
if not msg.Admin then return "✧ هذا الامر يخص ❲الادمن,المدير,المنشئ,المطور❳ فقـط ➻" end
redis:mset(
Pearlin.."mute_gif"..msg.chat_id_,true,
Pearlin.."mute_photo"..msg.chat_id_,true,
Pearlin.."mute_audio"..msg.chat_id_,true,
Pearlin.."mute_voice"..msg.chat_id_,true,
Pearlin.."mute_sticker"..msg.chat_id_,true,
Pearlin.."mute_video"..msg.chat_id_,true
)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.."\n🔛¦ تـمَ قـفل الوسائط  ➻",16,utf8.len(msg.TheRankCmd)) 
end

function Unlock_Media(msg)
if not msg.Admin then return "✧ هذا الامر يخص ❲الادمن,المدير,المنشئ,المطور❳ فقـط ➻" end
redis:del(
Pearlin.."mute_gif"..msg.chat_id_,
Pearlin.."mute_photo"..msg.chat_id_,
Pearlin.."mute_audio"..msg.chat_id_,
Pearlin.."mute_voice"..msg.chat_id_,
Pearlin.."mute_sticker"..msg.chat_id_,
Pearlin.."mute_video"..msg.chat_id_
)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.."\n🔛¦ تـمَ فـتح الوسائط  ➻",16,utf8.len(msg.TheRankCmd)) 
end

function tqeed_photo(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin..":tqeed_photo:"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التقييد بالصور بالتأكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin.."mute_photo"..msg.chat_id_)
redis:set(Pearlin..":tqeed_photo:"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الصور بالتقييد  ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function fktqeed_photo(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin..":tqeed_photo:"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التقييد بالصور بالتأكيد تـمَ فـتحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin..":tqeed_photo:"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الصور بالتقييد ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock -------------------
function tqeed_video(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin..":tqeed_video:"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التقييد بالفيديو بالتأكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin..":tqeed_video:"..msg.chat_id_)
redis:set(Pearlin..":tqeed_video:"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الفيديو بالتقييد  ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function fktqeed_video(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin..":tqeed_video:"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التقييد بالفيديو بالتأكيد تـمَ فـتحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin..":tqeed_video:"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الفيديو بالتقييد ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock -------------------
function tqeed_gif(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin..":tqeed_gif:"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التقييد الممتحركه بالتأكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin.."mute_gif"..msg.chat_id_)
redis:set(Pearlin..":tqeed_gif:"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل المتحركه بالتقييد  ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function fktqeed_gif(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin..":tqeed_gif:"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التقييد المتحركه بالتأكيد تـمَ فـتحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin..":tqeed_gif:"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح المتحركه بالتقييد ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock -------------------
function tqeed_fwd(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin..":tqeed_fwd:"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التقييد بالتوجيه بالتأكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin.."mute_forward"..msg.chat_id_)
redis:set(Pearlin..":tqeed_fwd:"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل التوجيه بالتقييد  ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function fktqeed_fwd(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin..":tqeed_fwd:"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التقييد التوجيه بالتأكيد تـمَ فـتحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin..":tqeed_fwd:"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح التوجيه بالتقييد ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
 
---------------Lock -------------------
function tqeed_link(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin..":tqeed_link:"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التقييد بالروابط بالتأكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin..":tqeed_link:"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الروابط بالتقييد  ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function fktqeed_link(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin..":tqeed_link:"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التقييد بالروابط بالتأكيد تـمَ فـتحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin..":tqeed_link:"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الروابط بالتقييد ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock -------------------
function tqeed_photo(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin..":tqeed_photo:"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التقييد بالصور بالتأكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin..":tqeed_photo:"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الصور بالتقييد  ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function fktqeed_photo(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin..":tqeed_photo:"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التقييد بالصور بالتأكيد تـمَ فـتحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin..":tqeed_photo:"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الصور بالتقييد ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Lock twasel-------------------
function lock_twasel(msg)
if not msg.SudoBase then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
if redis:get(Pearlin.."lock_twasel") then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التواصل بالتاكيد تـمَ تعطيله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_twasel",true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تعطيل التواصل  ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_twasel(msg)
if not msg.SudoBase then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
if not redis:get(Pearlin.."lock_twasel") then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التواصل بالتاكيد تـمَ تفعيله ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_twasel")
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تفعيل التواصل ➻",16,utf8.len(msg.TheRankCmd)) 
end
end


---------------Lock ------------------- 
function unlock_idediit(msg)
    if not msg.SudoBase then return "📡*¦* هذا الامر يخص المطور الاساسي فقط  🚶" end
    if redis:get(Pearlin.."lockidedit") then 
    return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تعيين الايدي للمطور مفعل مسبقاً ➻" ,16,utf8.len(msg.TheRankCmd)) 
    else redis:set(Pearlin.."lockidedit",true)
    return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تفعيل تعيين الايدي للمطور➻" ,16,utf8.len(msg.TheRankCmd)) 
    end
end
     
function lock_idediit(msg)
    if not msg.SudoBase then return "📡*¦* هذا الامر يخص المطور الاساسي فقط  🚶" end
    if not redis:get(Pearlin.."lockidedit") then 
    return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تعيين الايدي للمطور بالتأكيد معطل➻" ,16,utf8.len(msg.TheRankCmd)) 
    else
    redis:del(Pearlin.."lockidedit") 
    return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تعطيل تعيين الايدي للمطور➻" ,16,utf8.len(msg.TheRankCmd)) 
    end 
end 

    
---------------Lock bro-------------------
function lock_brod(msg)
if not msg.SudoBase then return "📡*¦* هذا الامر يخص المطور فقط  🚶" end
if not redis:get(Pearlin.."lock_brod") then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ اذاعه المطورين بالتاكيد تـمَ تعطيله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin.."lock_brod")
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تعطيل اذاعه المطورين  ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
function unlock_brod(msg)
if not msg.SudoBase then return "📡*¦* هذا الامر يخص المطور فقط  🚶" end
if redis:get(Pearlin.."lock_brod") then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ اذاعه المطورين بالتاكيد تـمَ تفعيله ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:set(Pearlin.."lock_brod",true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تفعيل اذاعه المطورين  ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock replay-------------------
function lock_replay(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."replay"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الردود بالتاكيد تـمَ تعطيله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin.."replay"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تعطيل الردود  ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_replay(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."replay"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الردود بالتاكيد تـمَ تفعيله ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:set(Pearlin.."replay"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تفعيل الردود  ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock bot service-------------------
function lock_service(msg)
if not msg.SudoBase then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
if not redis:get(Pearlin.."lock_service") then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ بالتاكيد تعطيل نظام البوت خدمي ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:del(Pearlin.."lock_service")
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ  تعطيل نظام البوت خدمي ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_service(msg)
if not msg.SudoBase then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
if redis:get(Pearlin.."lock_service") then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ بالتأكيد تفعيل نظام البوت خدمي ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:set(Pearlin.."lock_service",true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ تفعيل نظام البوت خدمي ➻\n🚸¦ اصبح البوت الان بامكان اي شخص\n🔚¦ ان يستخدم البوت للتفعيل",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock Link-------------------
function lock_mmno3(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."lock_mmno3"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الفشار بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_mmno3"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الفشار ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_mmno3(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_mmno3"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الفشار بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_mmno3"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الفشار ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock Link-------------------
function lock_pharsi(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."lock_pharsi"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الفارسيه بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_pharsi"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الفارسيه ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_pharsi(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_pharsi"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الفارسيه بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_pharsi"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الفارسيه ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock Link-------------------
function lock_lang(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."lock_lang"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الانكليزيه بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_lang"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الانكليزيه ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_lang(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_lang"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الانكليزيه بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_lang"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الانكليزيه ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock Link-------------------
function lock_link(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."lock_link"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الروابط بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_link"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الروابط ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_link(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_link"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الروابط بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_link"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الروابط ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock Add-------------------
function lock_Add(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."lock_Add"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الاضافه بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_Add"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الاضافه ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_Add(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_Add"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الاضافه بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_Add"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الاضافه ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock Tag-------------------
function lock_tag(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."lock_tag"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التاك (#) بالتأكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_tag"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل التاك (#) ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_tag(msg)

if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_tag"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التاك(#) بالتأكيد تـمَ فـتحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_tag"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح التاك (#) ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Lock UserName-------------------
function lock_username(msg) 

if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end

if redis:get(Pearlin.."lock_username"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ المعرفات @ بالتأكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_username"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل المعرفات @ ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_username(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_username"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ آلمـعرفآت بآلتآگيد تـمَ فـتحهآ @ ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_username"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح آلمـعرفآت @ ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock Edit-------------------
function lock_edit(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."lock_edit"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التعديل بالتأكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_edit"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل التعديل ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_edit(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_edit"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التعديل بالتأكيد تـمَ فـتحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_edit"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح التعديل ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock spam-------------------
function lock_spam(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if   redis:get(Pearlin.."lock_spam"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الكلايش بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_spam"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الكلايش ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_spam(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_spam"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الكلايش بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_spam"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الكلايش ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock Flood-------------------
function lock_flood(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."lock_flood"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التكرار بالتأكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_flood"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل التكرار ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_flood(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_flood"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التكرار بالتأكيد تـمَ فـتحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_flood"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح التكرار ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock Bots-------------------
function lock_bots(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."lock_bots"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ البوتات بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_bots"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل البوتات ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_bots(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_bots"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ البوتات بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_bots_by_kick"..msg.chat_id_)
redis:del(Pearlin.."lock_bots"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح البوتات ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock Join-------------------
function lock_join(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."lock_join"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الاضافه بالتاكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_join"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الاضافه ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_join(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_join"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الاضافه بالتاكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_join"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الاضافه ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock Markdown-------------------
function lock_markdown(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."lock_markdown"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الماركدوان بالتاكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_markdown"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الماركدوان ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_markdown(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_markdown"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الماركدوان بالتأكيد تـمَ فـتحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_markdown"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الماركدوان ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Lock Webpage-------------------
function lock_webpage(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."lock_webpage"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الويب بالتأكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_webpage"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الويب ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_webpage(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_webpage"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الويب بالتأكيد تـمَ فـتحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_webpage"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الويب ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Mute Gif-------------------
function mute_gif(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."mute_gif"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ المتحركه بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."mute_gif"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل المتحركه ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
Tkml = "/G/?i="
function unmute_gif(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."mute_gif"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ المتحركه بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."mute_gif"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح المتحركه ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Mute Game-------------------
function mute_game(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."mute_game"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الالعاب بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set("mute_game"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الالعاب ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unmute_game(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."mute_game"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الألعاب بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."mute_game"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الألعاب ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Mute Inline-------------------
function mute_inline(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."mute_inline"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الانلاين بالتأكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."mute_inline"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الانلاين ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unmute_inline(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."mute_inline"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الانلاين بالتأكيد تـمَ فـتحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."mute_inline"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الانلاين ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Mute Text-------------------
function mute_text(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."mute_text"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الدرشه بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."mute_text"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الدردشه ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unmute_text(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."mute_text"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الدردشه بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."mute_text"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الدردشه ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Mute photo-------------------
function mute_photo(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."mute_photo"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الصور بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."mute_photo"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الصور ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unmute_photo(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."mute_photo"..msg.chat_id_)then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الصور بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."mute_photo"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الصور ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Mute Video-------------------
function mute_video(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."mute_video"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الفيديو بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."mute_video"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الفيديو ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unmute_video(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."mute_video"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الفيديو يال��أكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."mute_video"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الفيديو ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Mute Audio-------------------
function mute_audio(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."mute_audio"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الصوت بالتأكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."mute_audio"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الصوت ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unmute_audio(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."mute_audio"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الصوت بالتأكيد تـمَ فـتحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."mute_audio"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الصوت ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Mute Voice-------------------
function mute_voice(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."mute_voice"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ البصمات بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."mute_voice"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل البصمات ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unmute_voice(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."mute_voice"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ البصمات بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."mute_voice"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح البصمات ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Mute Sticker-------------------
function mute_sticker(msg) 

if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end

if   redis:get(Pearlin.."mute_sticker"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الملصقات بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."mute_sticker"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الملصقات ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unmute_sticker(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."mute_sticker"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الملصقات بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."mute_sticker"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الملصقات ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Mute Contact-------------------
function mute_contact(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."mute_contact"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ جهات الاتصال بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."mute_contact"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل جهات الاتصال ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unmute_contact(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."mute_contact"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ جهات الاتصال بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."mute_contact"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح جهات الاتصال ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Mute Forward-------------------
function mute_forward(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."mute_forward"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التوجيه بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."mute_forward"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل التوجيه ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unmute_forward(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."mute_forward"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التوجيه بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."mute_forward"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح التوجيه ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Mute Location-------------------
function mute_location(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."mute_location"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الموقع بالتأكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."mute_location"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الموقع ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unmute_location(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."mute_location"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الموقع بالتأكيد تـمَ فـتحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."mute_location"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الموقع ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Mute Document-------------------
function mute_document(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."mute_document"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الملفات بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."mute_document"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الملفات ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unmute_document(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."mute_document"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الملفات بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."mute_document"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الملفات ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------Mute TgService-------------------
function mute_tgservice(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."mute_tgservice"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الاشعارات بالتأكيد تـمَ قـفلها ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."mute_tgservice"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الاشعارات ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unmute_tgservice(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."mute_tgservice"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الاشعارات بالتأكيد تـمَ فـتحها ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."mute_tgservice"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الاشعارات ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------Mute Keyboard-------------------
function mute_keyboard(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."mute_keyboard"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الكيبورد بالتأكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."mute_keyboard"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل الكيبورد ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unmute_keyboard(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."mute_keyboard"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ الكيبورد بالتأكيد تـمَ فـتحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."mute_keyboard"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح الكيبورد ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

---------------lock_bots_by_kick-------------------
function lock_bots_by_kick(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."lock_bots_by_kick"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ البوتات بالطرد بالتاكيد تـمَ قـفله ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_bots"..msg.chat_id_,true)
redis:set(Pearlin.."lock_bots_by_kick"..msg.chat_id_,true)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ قـفل البوتات بالطرد (مع طرد الي ضافه) ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_bots_by_kick(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_bots_by_kick"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ البوتات بالطرد بالتاكيد مفتوحه ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_bots_by_kick"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـمَ فـتح البوتات بالطرد  ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
---------------locks pin-------------------
function lock_pin(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if redis:get(Pearlin.."lock_pin"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التثبيت بالفعل مقـفل ➻",16,utf8.len(msg.TheRankCmd)) 
else
redis:set(Pearlin.."lock_pin"..msg.chat_id_,true) 
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـم قـفل التثبيت ➻",16,utf8.len(msg.TheRankCmd)) 
end
end

function unlock_pin(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الامـنيهه فقـط ➻" end
if not redis:get(Pearlin.."lock_pin"..msg.chat_id_) then
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ التثبيت بالفعل مفتوح ➻",16,utf8.len(msg.TheRankCmd)) 
else 
redis:del(Pearlin.."lock_pin"..msg.chat_id_)
return SendMention(msg.chat_id_,msg.sender_user_id_,msg.id_,"✧ اهـلاًعزيزي "..msg.TheRankCmd.." \n ✧ تـم فـتح التثبيت   ➻",16,utf8.len(msg.TheRankCmd)) 
end
end
function Flterzhrfa(Name)
Name = tostring(Name)
Name = utf8.gsub(Name,"ﭛ","ي")	
Name = utf8.gsub(Name,"ﺥ","خ")	
Name = utf8.gsub(Name,"ڽ","ن")	
Name = utf8.gsub(Name,"ٽ","ث")	
Name = utf8.gsub(Name,"ڜ","ش")	
Name = utf8.gsub(Name,"ﺵ","ش")	
Name = utf8.gsub(Name,"ﭒ","ي")	
Name = utf8.gsub(Name,"ﮛ","ك")	
Name = utf8.gsub(Name,"ﻡ","م")	
Name = utf8.gsub(Name,"ټ","ت")	
Name = utf8.gsub(Name,"ڼ","ن")	
Name = utf8.gsub(Name,"ﺻ","ص")	
Name = utf8.gsub(Name,"ڝ","ص")	
Name = utf8.gsub(Name,"ﻢ","م")	
Name = utf8.gsub(Name,"ﮑ","ك")	
Name = utf8.gsub(Name,"ﺮ","ر")	
Name = utf8.gsub(Name,"ﺳ","س")	
Name = utf8.gsub(Name,"ٿ","ت")	
Name = utf8.gsub(Name,"ﺦ","خ")	
Name = utf8.gsub(Name,"ڞ","ض")	
Name = utf8.gsub(Name,"ﺢ","ح")	
Name = utf8.gsub(Name,"Ξ","")	
Name = utf8.gsub(Name,"ﺶ","ش")	
Name = utf8.gsub(Name,"ﻠ","ا")	
Name = utf8.gsub(Name,"ﻤ","م")	
Name = utf8.gsub(Name,"ﺾ","ض")	
Name = utf8.gsub(Name,"ﺺ","ص")	
Name = utf8.gsub(Name,"ھ","ه")	
Name = utf8.gsub(Name,"۾","م")	
Name = utf8.gsub(Name,"ﺴ","س")	
Name = utf8.gsub(Name,"ﺿ","ض")	
Name = utf8.gsub(Name,"ڟ","ظ")	
Name = utf8.gsub(Name,"ﻧ","ن")	
Name = utf8.gsub(Name,"ﺤ","ح")	
Name = utf8.gsub(Name,"ﺠ","ج")	
Name = utf8.gsub(Name,"ﺷ","ش")	
Name = utf8.gsub(Name,"ﭴ","ج")	
Name = utf8.gsub(Name,"ژ","ز")	
Name = utf8.gsub(Name,"ٹ","ت")	
Name = utf8.gsub(Name,"ع","ع")	
Name = utf8.gsub(Name,"ﺧ","خ")	
Name = utf8.gsub(Name,"ﺯ","ز")	
Name = utf8.gsub(Name,"ڙ","ز")	
Name = utf8.gsub(Name,"ﻦ","ن")	
Name = utf8.gsub(Name,"ٸ","ئ")	
Name = utf8.gsub(Name,"ﮂ","د")	
Name = utf8.gsub(Name,"ﮃ","د")	
Name = utf8.gsub(Name,"ﭵ","ج")	
Name = utf8.gsub(Name,"ڻ","ن")	
Name = utf8.gsub(Name,"ښ","س")	
Name = utf8.gsub(Name,"ٻ","ب")	
Name = utf8.gsub(Name,"ﯙ","و")	
Name = utf8.gsub(Name,"ﮫ","ه")	
Name = utf8.gsub(Name,"ﺸ","ش")	
Name = utf8.gsub(Name,"ﺹ","ص")	
Name = utf8.gsub(Name,"ں","ر")	
Name = utf8.gsub(Name,"ﻥ","ن")	
Name = utf8.gsub(Name,"ڛ","س")	
Name = utf8.gsub(Name,"غ","غ")	
Name = utf8.gsub(Name,"ٺ","ت")	
Name = utf8.gsub(Name,"ﭶ","ج")	
Name = utf8.gsub(Name,"ﭨ","")	
Name = utf8.gsub(Name,"ﻖ","ق")	
Name = utf8.gsub(Name,"ۄ","و")	
Name = utf8.gsub(Name,"ڄ","ج")	
Name = utf8.gsub(Name,"ڥ","ف")	
Name = utf8.gsub(Name,"ﮄ","ذ")	
Name = utf8.gsub(Name,"ﮅ","ذ")	
Name = utf8.gsub(Name,"ﮁ","ج")	
Name = utf8.gsub(Name,"ۅ","و")	
Name = utf8.gsub(Name,"څ","ج")	
Name = utf8.gsub(Name,"ﮋ","ز")	
Name = utf8.gsub(Name,"ﺟ","ج")	
Name = utf8.gsub(Name,"ﻣ","م")	
Name = utf8.gsub(Name,"ﻲ","ي")	
Name = utf8.gsub(Name,"ۆ","و")	
Name = utf8.gsub(Name,"ن","ن")	
Name = utf8.gsub(Name,"چ","خ")	
Name = utf8.gsub(Name,"ا","ا")	
Name = utf8.gsub(Name,"ﻟ","ل")	
Name = utf8.gsub(Name,"ﺣ","ح")	
Name = utf8.gsub(Name,"ﺲ","س")	
Name = utf8.gsub(Name,"ۇ","و")	
Name = utf8.gsub(Name,"ڇ","ج")	
Name = utf8.gsub(Name,"ﺰ","ز")	
Name = utf8.gsub(Name,"ﭪ","ف")	
Name = utf8.gsub(Name,"ڦ","ق")	
Name = utf8.gsub(Name,"ﭩ","")	
Name = utf8.gsub(Name,"ڀ","ب")	
Name = utf8.gsub(Name,"ۀ","ه")	
Name = utf8.gsub(Name,"ـ","")	
Name = utf8.gsub(Name,"ﭓ","ي")	
Name = utf8.gsub(Name,"ﻞ","ل")	
Name = utf8.gsub(Name,"ڡ","ف")	
Name = utf8.gsub(Name,"ء","ء")	
Name = utf8.gsub(Name,"ﻎ","غ")	
Name = utf8.gsub(Name,"ﺙ","ث")	
Name = utf8.gsub(Name,"ﺜ","ث")	
Name = utf8.gsub(Name,"ﻌ","ع")	
Name = utf8.gsub(Name,"ﺚ","ث")	
Name = utf8.gsub(Name,"ﺝ","ج")	
Name = utf8.gsub(Name,"ہ","")	
Name = utf8.gsub(Name,"ځ","ح")	
Name = utf8.gsub(Name,"ﮓ","ك")	
Name = utf8.gsub(Name,"ڠ","غ")	
Name = utf8.gsub(Name,"ﻔ","ف")	
Name = utf8.gsub(Name,"ﻙ","ك")	
Name = utf8.gsub(Name,"ﻜ","ك")	
Name = utf8.gsub(Name,"ﻝ","ل")	
Name = utf8.gsub(Name,"ﻚ","ك")	
Name = utf8.gsub(Name,"ڂ","خ")	
Name = utf8.gsub(Name,"ۂ","")	
Name = utf8.gsub(Name,"ﻕ","ق")	
Name = utf8.gsub(Name,"ڣ","ف")	
Name = utf8.gsub(Name,"ﺘ","ت")	
Name = utf8.gsub(Name,"ﻍ","غ")	
Name = utf8.gsub(Name,"ﻗ","ق")	
Name = utf8.gsub(Name,"ﭻ","ج")	
Name = utf8.gsub(Name,"ﮆ","ذ")	
Name = utf8.gsub(Name,"ﭳ","ج")	
Name = utf8.gsub(Name,"ۃ","ة")	
Name = utf8.gsub(Name,"ڃ","ج")	
Name = utf8.gsub(Name,"ﺞ","ج")	
Name = utf8.gsub(Name,"ڢ","ف")	
Name = utf8.gsub(Name,"ﻘ","ق")	
Name = utf8.gsub(Name,"ی","ى")	
Name = utf8.gsub(Name,"ﮭ","ه")	
Name = utf8.gsub(Name,"ﮧ","")	
Name = utf8.gsub(Name,"ڌ","ذ")	
Name = utf8.gsub(Name,"̭","")	
Name = utf8.gsub(Name,"ﭸ","ج")	
Name = utf8.gsub(Name,"ﭼ","ج")	
Name = utf8.gsub(Name,"ﮯ","")	
Name = utf8.gsub(Name,"ﭬ","ف")	
Name = utf8.gsub(Name,"ڭ","ك")	
Name = utf8.gsub(Name,"ﮉ","ذ")	
Name = utf8.gsub(Name,"ﭭ","ف")	
Name = utf8.gsub(Name,"ۍ","ى")	
Name = utf8.gsub(Name,"ڍ","د")	
Name = utf8.gsub(Name,"ﭧ","")	
Name = utf8.gsub(Name,"ﮊ","ز")	
Name = utf8.gsub(Name,"ﺒ","ب")	
Name = utf8.gsub(Name,"ﭯ","ف")	
Name = utf8.gsub(Name,"ﭽ","ج")	
Name = utf8.gsub(Name,"ﯾ","ي")	
Name = utf8.gsub(Name,"ڬ","ك")	
Name = utf8.gsub(Name,"ﻃ","ط")	
Name = utf8.gsub(Name,"ڎ","ذ")	
Name = utf8.gsub(Name,"ێ","ئ")	
Name = utf8.gsub(Name,"ﻑ","ف")	
Name = utf8.gsub(Name,"ﯼ","ى")	
Name = utf8.gsub(Name,"ﻒ","ف")	
Name = utf8.gsub(Name,"ﮈ","د")	
Name = utf8.gsub(Name,"ﮡ","")	
Name = utf8.gsub(Name,"گ","ك")	
Name = utf8.gsub(Name,"ﻉ","ع")	
Name = utf8.gsub(Name,"ڏ","ذ")	
Name = utf8.gsub(Name,"ﺖ","ت")	
Name = utf8.gsub(Name,"ﭹ","ج")	
Name = utf8.gsub(Name,"ﮬ","ه")	
Name = utf8.gsub(Name,"ڮ","ك")	
Name = utf8.gsub(Name,"ﭺ","ج")	
Name = utf8.gsub(Name,"ﭢ","ت")	
Name = utf8.gsub(Name,"ڈ","د")	
Name = utf8.gsub(Name,"ۈ","و")	
Name = utf8.gsub(Name,"ﭤ","ت")	
Name = utf8.gsub(Name,"ﭠ","ت")	
Name = utf8.gsub(Name,"ﮥ","ه")	
Name = utf8.gsub(Name,"ک","ك")	
Name = utf8.gsub(Name,"ﺑ","ب")	
Name = utf8.gsub(Name,"ۉ","و")	
Name = utf8.gsub(Name,"ډ","د")	
Name = utf8.gsub(Name,"ﺗ","ت")	
Name = utf8.gsub(Name,"ﭥ","ت")	
Name = utf8.gsub(Name,"ﯡ","و")	
Name = utf8.gsub(Name,"ڨ","ق")	
Name = utf8.gsub(Name,"ي","ي")	
Name = utf8.gsub(Name,"ڊ","د")	
Name = utf8.gsub(Name,"ۊ","و")	
Name = utf8.gsub(Name,"ﮮ","")	
Name = utf8.gsub(Name,"ﻋ","ع")	
Name = utf8.gsub(Name,"ﯠ","و")	
Name = utf8.gsub(Name,"ﻊ","ع")	
Name = utf8.gsub(Name,"ﮦ","ه")	
Name = utf8.gsub(Name,"ﮢ","")	
Name = utf8.gsub(Name,"ﻈ","ض")	
Name = utf8.gsub(Name,"ﯿ","ي")	
Name = utf8.gsub(Name,"ۋ","و")	
Name = utf8.gsub(Name,"ڋ","د")	
Name = utf8.gsub(Name,"ﭣ","ت")	
Name = utf8.gsub(Name,"ﮤ","ه")	
Name = utf8.gsub(Name,"ﭮ","ف")	
Name = utf8.gsub(Name,"ﭫ","ف")	
Name = utf8.gsub(Name,"ﯽ","ى")	
Name = utf8.gsub(Name,"ﭡ","ت")	
Name = utf8.gsub(Name,"ﭾ","ج")	
Name = utf8.gsub(Name,"ﭦ","")	
Name = utf8.gsub(Name,"ﻐ","غ")	
Name = utf8.gsub(Name,"ڵ","ل")	
Name = utf8.gsub(Name,"ٵ","ا")	
Name = utf8.gsub(Name,"ﮔ","ك")	
Name = utf8.gsub(Name,"ﭗ","ب")	
Name = utf8.gsub(Name,"ﮜ","ك")	
Name = utf8.gsub(Name,"ﭝ","ي")	
Name = utf8.gsub(Name,"ڔ","ر")	
Name = utf8.gsub(Name,"ﻆ","ظ")	
Name = utf8.gsub(Name,"ﮌ","ر")	
Name = utf8.gsub(Name,"ﻪ","ه")	
Name = utf8.gsub(Name,"ڴ","ك")	
Name = utf8.gsub(Name,"ە","ه")	
Name = utf8.gsub(Name,"ﮗ","ك")	
Name = utf8.gsub(Name,"ﮝ","ك")	
Name = utf8.gsub(Name,"ﮙ","ك")	
Name = utf8.gsub(Name,"ﺓ","ة")	
Name = utf8.gsub(Name,"ڕ","ر")	
Name = utf8.gsub(Name,"ﮚ","ك")	
Name = utf8.gsub(Name,"ﮕ","ك")	
Name = utf8.gsub(Name,"ط","ط")	
Name = utf8.gsub(Name,"ﺪ","د")	
Name = utf8.gsub(Name,"ڷ","ل")	
Name = utf8.gsub(Name,"ٷ","ؤ")	
Name = utf8.gsub(Name,"ﺩ","د")	
Name = utf8.gsub(Name,"ﮘ","ك")	
Name = utf8.gsub(Name,"ﻁ","ط")	
Name = utf8.gsub(Name,"ﯝ","ؤ")	
Name = utf8.gsub(Name,"ﮱ","")	
Name = utf8.gsub(Name,"ﯚ","و")	
Name = utf8.gsub(Name,"ﻂ","ط")	
Name = utf8.gsub(Name,"ﭞ","ت")	
Name = utf8.gsub(Name,"ږ","ر")	
Name = utf8.gsub(Name,"̷","")	
Name = utf8.gsub(Name,"ٶ","ؤ")	
Name = utf8.gsub(Name,"ڶ","ل")	
Name = utf8.gsub(Name,"ﭜ","ي")	
Name = utf8.gsub(Name,"ﮎ","ك")	
Name = utf8.gsub(Name,"ﭲ","ج")	
Name = utf8.gsub(Name,"ڗ","ز")	
Name = utf8.gsub(Name,"ﮞ","")	
Name = utf8.gsub(Name,"̶","")	
Name = utf8.gsub(Name,"ڱ","ك")	
Name = utf8.gsub(Name,"ٱ","ا")	
Name = utf8.gsub(Name,"ر","ر")	
Name = utf8.gsub(Name,"ﺭ","ر")	
Name = utf8.gsub(Name,"ﭙ","ب")	
Name = utf8.gsub(Name,"ﺔ","ة")	
Name = utf8.gsub(Name,"ﺽ","ض")	
Name = utf8.gsub(Name,"ڐ","ذ")	
Name = utf8.gsub(Name,"ې","ي")	
Name = utf8.gsub(Name,"ﺕ","ت")	
Name = utf8.gsub(Name,"ﮟ","")	
Name = utf8.gsub(Name,"ڰ","ك")	
Name = utf8.gsub(Name,"ﻄ","ط")	
Name = utf8.gsub(Name,"ﻩ","ه")	
Name = utf8.gsub(Name,"ﺛ","ث")	
Name = utf8.gsub(Name,"ﮏ","ك")	
Name = utf8.gsub(Name,"ۑ","ى")	
Name = utf8.gsub(Name,"ڑ","ر")	
Name = utf8.gsub(Name,"ﻇ","ظ")	
Name = utf8.gsub(Name,"ٳ","ا")	
Name = utf8.gsub(Name,"ﺡ","ح")	
Name = utf8.gsub(Name,"ڳ","ك")	
Name = utf8.gsub(Name,"ﮪ","ه")	
Name = utf8.gsub(Name,"ﻛ","ك")	
Name = utf8.gsub(Name,"ﺼ","ص")	
Name = utf8.gsub(Name,"ﻅ","ظ")	
Name = utf8.gsub(Name,"ﻬ","ه")	
Name = utf8.gsub(Name,"̐","")	
Name = utf8.gsub(Name,"ﺂ","ا")	
Name = utf8.gsub(Name,"͠","")	
Name = utf8.gsub(Name,"ﮠ","")	
Name = utf8.gsub(Name,"ﻰ","ى")	
Name = utf8.gsub(Name,"ﭿ","ج")	
Name = utf8.gsub(Name,"ﮀ","ج")	
Name = utf8.gsub(Name,"ﮇ","ذ")	
Name = utf8.gsub(Name,"ﮍ","ر")	
Name = utf8.gsub(Name,"ﮐ","ك")	
Name = utf8.gsub(Name,"ﭷ","ج")	
Name = utf8.gsub(Name,"ﮰ","")	
Name = utf8.gsub(Name,"ے","")	
Name = utf8.gsub(Name,"پ","ب")	
Name = utf8.gsub(Name,"ﻨ","ن")	
Name = utf8.gsub(Name,"Ζ","z")	
Name = utf8.gsub(Name,"ﭚ","ب")	
Name = utf8.gsub(Name,"ﭘ","ب")	
Name = utf8.gsub(Name,"ٲ","ا")	
Name = utf8.gsub(Name,"ڲ","ك")	
Name = utf8.gsub(Name,"ﭖ","ب")	
Name = utf8.gsub(Name,"ﭕ","ي")	
Name = utf8.gsub(Name,"ﭔ","ي")	
Name = utf8.gsub(Name,"ﻏ","غ")	
Name = utf8.gsub(Name,"ﻀ","ض")	
Name = utf8.gsub(Name,"ګ","ك")	
Name = utf8.gsub(Name,"ڪ","ك")	
Name = utf8.gsub(Name,"ڧ","ف")	
Name = utf8.gsub(Name,"ڤ","ق")	
Name = utf8.gsub(Name,"ﮖ","ك")	
Name = utf8.gsub(Name,"ﺬ","ذ")	
Name = utf8.gsub(Name,"ڒ","ر")	
Name = utf8.gsub(Name,"ﺨ","خ")	
Name = utf8.gsub(Name,"ﭱ","ف")	
Name = utf8.gsub(Name,"ﻓ","ف")	
Name = utf8.gsub(Name,"ﺱ","س")	
Name = utf8.gsub(Name,"ﺫ","ذ")	
Name = utf8.gsub(Name,"ﺐ","ب")	
Name = utf8.gsub(Name,"ﮩ","")	
Name = utf8.gsub(Name,"ﮨ","")	
Name = utf8.gsub(Name,"ﮣ","")	
Name = utf8.gsub(Name,"ﭰ","ف")	
Name = utf8.gsub(Name,"ۓ","")	
Name = utf8.gsub(Name,"୭","و")	
Name = utf8.gsub(Name,"ﯛ","و")	
Name = utf8.gsub(Name,"ۿ","ه")	
return Name
end

function FlterEmoje(Name)
Name = tostring(Name)
Name = utf8.gsub(Name,"[🤚🔕♠🤗😇💂🌶🤣🚹⛸⚠😅🍕🍛🧝🌿💛#😕🧞*1032547🥌98🎡🎋🏼🎰🤑🚮☠🥜⃣🛌🌙🚙👏🛍💑⛳🏌🍢👲🔡❤🐀😨🥁🦇🏣㊗💰🚒🌟🐾🦅🐃🐷🤲🎩📳🇼🍎👛◻💻➗🔪🎂🌪🔔🍊✊🐚🍽🍫❗🚴🎒♏🧢🍁🌓😸🍦󠁢😶🗓🐡🛠✏😉🎯🍋🎟🔳🌨🎱💟⛏🤳📆🔅🍴📲🥊🖍🌡📬🆑🐇🗺😾🕰📵🏈🇮🍥➰🤠👥🕥😃😤😔🐹🎬⌛💎☃📖🔨👫🙄🥒⚜🏫🥃🍘🥥📍🦕💜🗝🙃🕤🐯👤🧔🏭🚭🚘💒🐓👁🤾🏐🏮🚋🌾📗🥈📚🤧🏃〰👱🔧🥖🇾☘🔘🔙⚗🛡🏖💹🉑🚛💩🛏♋🔸💴⏬✋👷😞☎🦂🎽🐞️🌘🌄⛵🈺🏸🎍📝🐪🍑😙🤓⚓󠁴💠🌔😵🥦📇🐌♓😘😢🐙🕦🏆🚨❇🙎🔶🛂🍲🥟📉🐕🍳🚈🔞😳🔌😊🌅🔊⛓🚻🚁✨💢🌊⚛😆😿🎈🏗🇭❓🙀🐨🚡🤢🔃▫🇶👿🤤📋🖋👕🐔😮🔵👂🌏⏏👦🐧🕎◾🍺🌧🖐📟🧙👶🌤↖🏬🤜⌚🏋🛐™🍜🤯🧣↘🔣🐣🥘🎫🎌😓🗨🚐🧚💲🍡😪🙏🖖⛽🏑⛲🎢🥗🚌🦁🚆☺🕒🎛⛹💏🐼🍶🚑🕞🤮🕕⏫🤰‼🎥🏀😰🌎📻󠁥🍂🇻🎴👸💼➖💆🕹👧🛩🍚❣🍓🤥🐄🍒♎🔽👵🔓🍠💍🏉▶🎠🎊👡📎💖🔺😺🍱📀⛎😽😷☣🦃🌯⛷🖼🚄💬🤐🦎♣🚦🍹‍🌱🛃🦄🦒🐈🕸🏟✖🚍😥↪🤝🏇⬇🌦🔄🚖⏺⬛♂⏲💁🚧🔤🚼👞🏄😩☂🕜🌚🧒⏯🎮🏯🌭🍵🔭💐🐤🕠💗🚎🛋🍧🤔🏽👒🤷🇸👘☝👴🔷⚖✴🉐✂🥂🕊👹⛴👅🚞😂📪🐺🦀󠁣🌃✉♒🤩🥕🎖🚀🕢😟🕵🇪👃🎑🏪🤟💿🥫😚🏩🏔🍏👢🏙📈⚒💝👠🎲🚲🖲⁉🇨🌳🚯🧀🕌🛶⛪🍌🧓🙈🇿⤴😬☪⚽🌈📔㊙💇🇯🗿🙁🍅☯🍞😠👍🕴▪👊💋🖱🎗🙌😎🐦🥡🔦💉🌺🔰🛣🕘🎶👳🍮🌜🐰↙🚔🕖🎿↕🐑🔛⛺🖕🧜🔟🖨🏕🎻🥝🎾🥐🤙🈳⚾🗑👣🚗🥧🏤🚕😒🤬🛷🤱🚏🚅🐂🐋🐜🤘⏪🦗⚱🔻👌〽👼💀👝☦⛱⏹󠁷📼📄🕺🎓😍🚩󠁧🔹🧡🥨➕🦌🤹ℹ🎉♉💨🏴❕🗼🏥🤪👮󠁳🏊🧟👖🙉☢🙇🔒👬📱🍈🏘🍐🕐😫🛄🧠🛥👭🎇🍭🤡🦑♍🐟🚃💧😋🚸🕍🚾✍🗽😹🎹🛒🧥🔎👓🚚🦖📷🤛👗🔜🥔🍖😄🔠💘🐴🤕󠁬🎄🧖🍗😈😧🈷🐽🌂♑💯🛑📁🧑🛰🎨☕🐒☑⛈🤨👐⛑🇳🔢🎞💪🍀⏸🌍💙🍃👺🍍🈸😜🈂⏮↩🌩🌵✈🏁😻👚🎙👋🔈☮🍬⛅🍸🐍🤫🎅🚿🏎🏳😁🚵💞🐢🐩💃😛🎪😴🕋🍆📯🥀💅🚳🙂🤶🌑⭕☁🥋👇🌌🍝😡⏱🔆🗯💶🥠🆓🌲👀🚢🕚💔🍇🦍⚕🇱🇰🦓🎧🥉🏺◼🌰🧦🔍💊🐠🌼🛎✅☸⚡💌👉🤵💕🚣📰👑🌽🚓😑📏👔♥◀🤽🐝🕛😌🧗🈵🗒🔐🈴🌕🌛🦐🎣🥞💣↔👾🅰😐🕟🥙👰🐏🚷🐆📡🥇👻🐲🌸🧘♨🎼🌗🌠✡🎤🅿🚬⛰🤞🍙🏓🔝💳🦋🕉🥚🔖🍪🛫🗜🔬🏡🤭🏚🔥❔💄🌥🕔✌🌫󠁮🐁👟🐛♈😭🌋🇦🔑🌞🐊🏷📒🎦🌴🍟🚉🍉💓🐮💷🔱💽🚇🐫🚥🐘🌐🥑🔲🛤🙍🐬📧⬅🐥⛔󠁿🏹👨🌝🇽🐖📿🔼😖😼📘🙋🥛🚺⏩🍾🗞🌹📠🗾🔗🏵🎃😝🖤🏒🛸🍯🦈🚜🔁🎭🌁💤😦💦👯®🏞👽👩💺💱📢🤖📸©👪🦆👙🦔📴🧐⏭🇴👄💚🎚📹🛢🐐🇷🍄🌖😀🌬🧤🐿❄🕝🍩🛵🔏🖊✒🍔🖌🖇🔇📐🧕📕📊📙📂🗂📓📅🗣🗳🗄📜📨🏅📑📤📦📫🔯📭📮🎐📩🈁🗡📃📥🎁🎏🛴🎀🎎😗🚪🚽🚰🕓♀🆕🐸💈🕳🐭🔋⚰😱🔩⚙🔫💡🕯🚟💸🕗💵⏰⏳📺📽📞🛳💾🕧🙊⌨🖥🕡🕣🕙🀄☀🕑🏢🛁💭♦🇲🃏🔉📣🎳🏜⬜⚪⚫🔴➿🔚✔🤦🏍🔂🎵⤵🔀➡⬆↗6🎺🆙🆒🔮🆖🆗🏧🛅🇺♿🦉👈✳❎⛩Ⓜ🌀♻🥅🈯🚱📛🚫🏠🅱🕶🌆🎸🚂🅾🆘☄❌🈹🈲🈶🈚☹🆚💮⭐🆔🐗♌♐🤴☔♊😯✝🇵📶🇹🇧🇩🇬🇫🎆🌇🌉🏛🏦🏨🏝◽😲🗻⛄🏰🚤🚊🛬🚝🚠🎷🆎🤸🤺🏂🤼🏏🥣🥢🍷🥄🍼🌻🥤🍻🍿🍰🌮🍣🍤🥪🍨🥓🥩💥🌒💫🌷🐉🐎🦏🐳🐅🕷😏🐵🐶🐱⚔🦊🐻👜🚶🙅🙆🧛📌🗃👆👎🤒😣👍🏿👍🏾👍🏽👍🏼👍🏻🤝🏿🤝🏾🤝🏽🤝🏽🤝🏼🤝🏻🙏🏿🙏🏾🙏🏽🙏🏼🙏🏻👏🏿👏🏾👏🏽👏🏼👏🏼👏🏻🙌🏿🙌🏾🙌🏽🙌🏼🙌🏻👐🏿👐🏾👐🏽👐🏼👐🏻🤲🏿🤲🏾🤲🏽🤲🏼🤲🏻✌🏿✌🏾✌🏽✌🏼✌🏻🤞🏿🤞🏾🤞🏽🤞🏼🤞🏻🤜🏿🤜🏾🤜🏽🤜🏼🤜🏻🤛🏿🤛🏾🤛🏽🤛🏼🤛🏻✊🏿✊🏾✊🏽✊🏼✊🏻👊🏿👊🏾👊🏽👊🏼👊🏻👎🏿👎🏾👎🏽👎🏼👎🏻👇🏿👇🏾👇🏽👇🏼👇🏻👆🏿👆🏾👆🏽👆🏼👆🏻👉🏿👉🏾👉🏽👉🏼👉🏻👈🏿👈🏾👈🏽👈🏼👈🏻👌🏿👌🏾👌🏽👌🏼👌🏻🤘🏿🤘🏾🤘🏽🤘🏼🤘🏻🤟🏿🤟🏾🤟🏽🤟🏼🤟🏻🤙🏿🤙🏾🤙🏽🤙🏼🤙🏻👋🏿👋🏾👋🏽👋🏼👋🏻🖖🏿🖖🏾🖖🏽🖖🏼🖖🏻🖐🏿🖐🏾🖐🏽🖐🏼🖐🏻🤚🏿🤚🏾🤚🏽🤚🏼🤚🏻✋🏿✋🏾✋🏽✋🏼✋🏻☝🏿☝🏾☝🏽☝🏼☝🏻💅🏿💅🏾💅🏽💅🏼💅🏻🤳🏿🤳🏾🤳🏽🤳🏼🤳🏼🤳🏻🤳✍🏿✍🏾✍🏽✍🏼✍🏻💪🏿💪🏾💪🏽💪🏼💪🏻👃🏿👃🏾👃🏽👃🏼👃🏻👂🏿👂🏾👂🏽👂🏼👂🏻👦🏿👦🏾👦🏽👦🏼👦🏻🧒🏿🧒🏾🧒🏽🧒🏼🧒🏻👶🏿👶🏾👶🏽👶🏼👶🏻🧔🏿🧔🏾🧔🏽🧔🏼🧔🏻🧓🏿🧓🏾🧓🏽🧓🏼🧓🏻👱🏿‍♂️👱🏾‍♂️👱🏽‍♂️👱🏼‍♂️👱🏻‍♂️👱🏿‍♀️👱🏾‍♀️👱🏽‍♀️👱🏼‍♀️👱🏻‍♀️👩🏿👩🏾👩🏽👩🏼👩🏻👨🏿👨🏾👨🏽👨🏼👨🏻👧🏿👧🏾👧🏽👧🏼👧🏻👳🏿‍♂️👳🏾‍♂️👳🏽‍♂️👳🏼‍♂️👳🏻‍♂️👳🏿‍♀️👳🏾‍♀️👳🏽‍♀️👳🏼‍♀️👳🏻‍♀️👲🏿👲🏾👲🏽👲🏼👲🏻👵🏿👵🏾👵🏽👵🏼👵🏻👴🏿👴🏾👴🏽👴🏼👴🏻🕵🏿️‍♂️🕵🏾️‍♂️🕵🏽️‍♂️🕵🏼️‍♂️🕵🏻️‍♂️🕵🏿️‍♀️🕵🏾️‍♀️🕵🏽️‍♀️🕵🏼️‍♀️🕵🏻️‍♀️💂🏿‍♂️💂🏾‍♂️💂🏽‍♂️💂🏼‍♂️💂🏻‍♂️💂🏿‍♀️💂🏾‍♀️💂🏽‍♀️💂🏼‍♀️💂🏻‍♀️👷🏿‍♂️👷🏾‍♂️👷🏽‍♂️👷🏼‍♂️👷🏻‍♂️👷🏿‍♀️👷🏾‍♀️👷🏽‍♀️👷🏼‍♀️👷🏻‍♀️👮🏿‍♂️👮🏾‍♂️👮🏽‍♂️👮🏼‍♂️👮🏻‍♂️👩🏿‍🎓👩🏾‍🎓👩🏽‍🎓👩🏼‍🎓👩🏻‍🎓👨🏿‍🍳👨🏾‍🍳👨🏽‍🍳👨🏼‍🍳👨🏻‍🍳👩🏿‍🍳👩🏾‍🍳👩🏽‍🍳👩🏼‍🍳👩🏻‍🍳👨🏿‍🌾👨🏾‍🌾👨🏽‍🌾👨🏼‍🌾👨🏻‍🌾👩🏿‍🌾👩🏾‍🌾👩🏽‍🌾👩🏼‍🌾👩🏻‍🌾👨🏿‍⚕️👨🏾‍⚕️👨🏽‍⚕️👨🏼‍⚕️👨🏻‍⚕️👩🏿‍⚕️👩🏾‍⚕️👩🏽‍⚕️👩🏼‍⚕️👩🏻‍⚕️👨🏿‍🏭👨🏾‍🏭👨🏽‍🏭👨🏼‍🏭👨🏻‍🏭👩🏿‍🏭👩🏾‍🏭👩🏽‍🏭👩🏼‍🏭👩🏻‍🏭👨🏿‍🏫👨🏾‍🏫👨🏽‍🏫👨🏼‍🏫👨🏻‍🏫👩🏿‍🏫👩🏾‍🏫👩🏽‍🏫👩🏼‍🏫👩🏻‍🏫👨🏿‍🎤👨🏾‍🎤👨🏽‍🎤👨🏼‍🎤👨🏻‍🎤👩🏿‍🎤👩🏾‍🎤👩🏽‍🎤👩🏼‍🎤👩🏻‍🎤👨🏿‍🎓👨🏾‍🎓👨🏽‍🎓👨🏼‍🎓👨🏻‍🎓👩🏿‍🔬👩🏾‍🔬👩🏽‍🔬👩🏼‍🔬👩🏻‍🔬👨🏿‍🔧👨🏾‍🔧👨🏽‍🔧👨🏼‍🔧👨🏻‍🔧👩🏿‍🔧👩🏾‍🔧👩🏽‍🔧👩🏼‍🔧👩🏻‍🔧👨🏿‍💼👨🏾‍💼👨🏽‍💼👨🏼‍💼👨🏻‍💼👩🏿‍💼👩🏾‍💼👩🏽‍💼👩🏼‍💼👩🏻‍💼👨🏿‍💻👨🏾‍💻👨🏽‍💻👨🏼‍💻👨🏻‍💻👩🏿‍💻👩🏾‍💻👩🏽‍💻👩🏼‍💻👩🏻‍💻👨🏿‍🚀👨🏾‍🚀👨🏽‍🚀👨🏼‍🚀👨🏻‍🚀👩🏿‍🚀👩🏾‍🚀👩🏽‍🚀👩🏼‍🚀👩🏻‍🚀👨🏿‍🚒👨🏾‍🚒👨🏽‍🚒👨🏼‍🚒👨🏻‍🚒👩🏿‍🚒👩🏾‍🚒👩🏽‍🚒👩🏼‍🚒👩🏻‍🚒👨🏿‍🎨👨🏾‍🎨👨🏽‍🎨👨🏼‍🎨👨🏻‍🎨👩🏿‍🎨👩🏾‍🎨👩🏽‍🎨👩🏼‍🎨👩🏻‍🎨👨🏿‍🔬👨🏾‍🔬👨🏽‍🔬👨🏼‍🔬👨🏻‍🔬🧛🏿‍♀️🧛🏾‍♀️🧛🏽‍♀️🧛🏼‍♀️🧛🏻‍♀️🧝🏿‍♂️🧝🏾‍♂️🧝🏽‍♂️🧝🏼‍♂️🧝🏻‍♂️🧝🏿‍♀️🧝🏾‍♀️🧝🏽‍♀️🧝🏼‍♀️🧝🏻‍♀️🧙🏿‍♂️🧙🏾‍♂️🧙🏽‍♂️🧙🏼‍♂️🧙🏻‍♂️🧙🏿‍♀️🧙🏾‍♀️🧙🏽‍♀️🧙🏼‍♀️🧙🏻‍♀️🎅🏿🎅🏾🎅🏽🎅🏼🎅🏻🤶🏿🤶🏾🤶🏽🤶🏼🤶🏻🧜🏿‍♂️🧜🏾‍♂️🧜🏽‍♂️🧜🏼‍♂️🧜🏻‍♂️🧜🏿‍♀️🧜🏾‍♀️🧜🏽‍♀️🧜🏼‍♀️🧜🏻‍♀️🧛🏿‍♂️🧛🏾‍♂️🧛🏽‍♂️🧛🏼‍♂️🧛🏻‍♂️👼🏿👼🏾👼🏽👼🏼👼🏻🤵🏿🤵🏾🤵🏽🤵🏼🤵🏻👰🏿👰🏾👰🏽👰🏼👰🏻🤴🏿🤴🏾🤴🏽🤴🏼🤴🏻👸🏿👸🏾👸🏽👸🏼👸🏻🧚🏿‍♂️🧚🏾‍♂️🧚🏽‍♂️🧚🏼‍♂️🧚🏻‍♂️🧚🏿‍♀️🧚🏾‍♀️🧚🏽‍♀️🧚🏼‍♀️🧚🏻‍♀️🙅🏿‍♂️🙅🏾‍♂️🙅🏽‍♂️🙅🏼‍♂️🙅🏻‍♂️🙅🏿‍♀️🙅🏾‍♀️🙅🏽‍♀️🙅🏼‍♀️🙅🏻‍♀️💁🏿‍♂️💁🏾‍♂️💁🏽‍♂️💁🏼‍♂️💁🏻‍♂️💁🏿‍♀️💁🏾‍♀️💁🏽‍♀️💁🏼‍♀️💁🏻‍♀️🙇🏿‍♂️🙇🏾‍♂️🙇🏽‍♂️🙇🏼‍♂️🙇🏻‍♂️🙇🏿‍♀️🙇🏾‍♀️🙇🏽‍♀️🙇🏼‍♀️🙇🏻‍♀️🤰🏿🤰🏾🤰🏽🤰🏼🤰🏻🤷🏿‍♀️🤷🏾‍♀️🤷🏽‍♀️🤷🏼‍♀️🤷🏻‍♀️🤦🏿‍♂️🤦🏾‍♂️🤦🏽‍♂️🤦🏼‍♂️🤦🏻‍♂️🤦🏿‍♀️🤦🏾‍♀️🤦🏽‍♀️🤦🏼‍♀️🤦🏻‍♀️🙋🏿‍♂️🙋🏾‍♂️🙋🏽‍♂️🙋🏼‍♂️🙋🏻‍♂️🙋🏿‍♀️🙋🏾‍♀️🙋🏽‍♀️🙋🏼‍♀️🙋🏻‍♀️🙆🏿‍♂️🙆🏾‍♂️🙆🏽‍♂️🙆🏼‍♂️🙆🏻‍♂️🙆🏿‍♀️🙆🏾‍♀️🙆🏽‍♀️🙆🏼‍♀️🙆🏻‍♀️💇🏿‍♂️💇🏾‍♂️💇🏽‍♂️💇🏼‍♂️💇🏻‍♂️💇🏿‍♀️💇🏾‍♀️💇🏽‍♀️💇🏼‍♀️💇🏻‍♀️🙍🏿‍♂️🙍🏾‍♂️🙍🏽‍♂️🙍🏼‍♂️🙍🏻‍♂️🙍🏿‍♀️🙍🏾‍♀️🙍🏽‍♀️🙍🏼‍♀️🙍🏻‍♀️🙎🏿‍♂️🙎🏾‍♂️🙎🏽‍♂️🙎🏼‍♂️🙎🏻‍♂️🙎🏿‍♀️🙎🏾‍♀️🙎🏽‍♀️🙎🏼‍♀️🙎🏻‍♀️🤷🏿‍♂️🤷🏾‍♂️🤷🏽‍♂️🤷🏼‍♂️🤷🏻‍♂️🕺🏿🕺🏾🕺🏽🕺🏼🕺🏻💃🏿💃🏾💃🏽💃🏼💃🏻🕴🏿🕴🏾🕴🏽🕴🏼🕴🏻🧖🏿‍♂️🧖🏾‍♂️🧖🏽‍♂️🧖🏼‍♂️🧖🏻‍♂️🧖🏿‍♀️🧖🏾‍♀️🧖🏽‍♀️🧖🏼‍♀️🧖🏻‍♀️💆🏿‍♂️💆🏾‍♂️💆🏽‍♂️💆🏼‍♂️💆🏻‍♂️💆🏿‍♀️💆🏾‍♀️💆🏽‍♀️💆🏼‍♀️💆🏻‍♀️🏃🏿‍♂️🏃🏾‍♂️🏃🏽‍♂️🏃🏼‍♂️🏃🏻‍♂️🏃🏿‍♀️🏃🏾‍♀️🏃🏽‍♀️🏃🏼‍♀️🏃🏻‍♀️🚶🏿‍♂️🚶🏾‍♂️🚶🏽‍♂️🚶🏼‍♂️🚶🏻‍♂️🚶🏿‍♀️🚶🏾‍♀️🚶🏽‍♀️🚶🏼‍♀️🚶🏻‍♀️🏋🏿️‍♂️🏋🏾️‍♂️🏋🏽️‍♂️🏋🏼️‍♂️🏋🏻️‍♂️🏋🏿️‍♀️🏋🏾️‍♀️🏋🏽️‍♀️🏋🏼️‍♀️🏋🏻️‍♀️🤾🏿‍♀️🤾🏾‍♀️🤾🏽‍♀️🤾🏼‍♀️🤾🏻‍♀️🤸🏿‍♂️🤸🏾‍♂️🤸🏽‍♂️🤸🏼‍♂️🤸🏻‍♂️🤸🏿‍♀️🤸🏾‍♀️🤸🏽‍♀️🤸🏼‍♀️🤸🏻‍♀️🏄🏿‍♂️🏄🏾‍♂️🏄🏽‍♂️🏄🏼‍♂️🏄🏻‍♂️🏄🏿‍♀️🏄🏾‍♀️🏄🏽‍♀️🏄🏼‍♀️🏄🏻‍♀️🧘🏿‍♂️🧘🏾‍♂️🧘🏽‍♂️🧘🏼‍♂️🧘🏻‍♂️🧘🏿‍♀️🧘🏾‍♀️🧘🏽‍♀️🧘🏼‍♀️🧘🏻‍♀️🏌🏿️‍♂️🏌🏾️‍♂️🏌🏽️‍♂️🏌🏼️‍♂️🏌🏻️‍♂️🏌🏿️‍♀️🏌🏾️‍♀️🏌🏽️‍♀️🏌🏼️‍♀️🏌🏻️‍♀️🧗🏿‍♀️🧗🏾‍♀️🧗🏽‍♀️🧗🏼‍♀️🧗🏻‍♀️🏇🏿🏇🏾🏇🏽🏇🏼🏇🏻🚣🏿‍♂️🚣🏾‍♂️🚣🏽‍♂️🚣🏼‍♂️🚣🏻‍♂️🚣🏿‍♀️🚣🏾‍♀️🚣🏽‍♀️🚣🏼‍♀️🚣🏻‍♀️🤽🏿‍♂️🤽🏾‍♂️🤽🏽‍♂️🤽🏼‍♂️🤽🏻‍♂️🤽🏿‍♀️🤽🏾‍♀️🤽🏽‍♀️🤽🏼‍♀️🤽🏻‍♀️🏊🏿‍♂️🏊🏾‍♂️🏊🏽‍♂️🏊🏼‍♂️🏊🏻‍♂️🚵🏿‍♂️🚵🏾‍♂️🚵🏽‍♂️🚵🏼‍♂️🚵🏻‍♂️🚵🏿‍♀️🚵🏾‍♀️🚵🏽‍♀️🚵🏼‍♀️🚵🏻‍♀️🚴🏿‍♂️🚴🏾‍♂️🚴🏽‍♂️🚴🏼‍♂️🚴🏻‍♂️🚴🏿‍♀️🚴🏾‍♀️🚴🏽‍♀️🚴🏼‍♀️🚴🏻‍♀️🧗🏿‍♂️🧗🏾‍♂️🧗🏽‍♂️🧗🏼‍♂️🧗🏻‍♂️🤹🏿‍♀️🤹🏾‍♀️🤹🏽‍♀️🤹🏼‍♀️🤹🏻‍♀️🤹🏿‍♂️🤹🏾‍♂️🤹🏽‍♂️🤹🏼‍♂️🤹🏻‍♂️🛀🏿🛀🏾🛀🏽🛀🏼🛀🏻🛌🏿🛌🏾🛌🏽🛌🏼🛌🏻]","")	

return Name
end
