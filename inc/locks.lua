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
if not msg.Creator then return "✧ هذا الامر يخـص {المطور,المنشئ} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_KickBan"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل الحظر والطرد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else redis:set(Pearlin.."lock_KickBan"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل الحظر والطرد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end 
end,{msg=msg})
end

function lock_KickBan(msg)
if not msg.Creator then return "✧ هذا الامر يخـص {المطور,المنشئ} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_KickBan"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل الحظر والطرد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else redis:del(Pearlin.."lock_KickBan"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل الحظر والطرد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end 

---------------Lock ------------------- 
function unlock_rdodSource(msg)
    if not msg.Director then return "✧ هذا الامر يخـص {المطور,المنشئ,المدير} فقط  ➻ " end
    GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_rdodSource"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل ردود السورس    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else redis:set(Pearlin.."lock_rdodSource"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل ردود السورس بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end 
end,{msg=msg})
end

function lock_rdodSource(msg)
    if not msg.Director then return "✧ هذا الامر يخـص {المطور,المنشئ,المدير} فقط  ➻ " end
    GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_rdodSource"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل  ردود السورس    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else redis:del(Pearlin.."lock_rdodSource"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل ردود السورس بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end 

---------------Lock check -------------------
function lock_check(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_check"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل التحقق    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )        else 
redis:del(Pearlin.."lock_check"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل التحقق بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_check(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_check"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل التحقق    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )        else
redis:set(Pearlin.."lock_check"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل التحقق بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end

---------------Lock check -------------------
function lock_cleaner(msg)
if not msg.Director then return "✧ هذا الامر يخـص {المطور,المنشئ,المدير} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_cleaner"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل التنظيف التلقائي    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else 
                
redis:del(Pearlin.."lock_cleaner"..msg.chat_id_)
local Cleaner = redis:smembers(Pearlin..":IdsMsgsCleaner:"..msg.chat_id_)
for k,v in pairs(Cleaner) do
redis:del(Pearlin..":SetTimerCleaner:"..msg.chat_id_..v) 
Del_msg(msg.chat_id_,v)
end
redis:del(Pearlin..":IdsMsgsCleaner:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل التنظيف التلقائي بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_cleaner(msg)
    if not msg.Director then return "✧ هذا الامر يخـص {المطور,المنشئ,المدير} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_cleaner"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل التنظيف التلقائي    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )        else
redis:set(Pearlin.."lock_cleaner"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل التنظيف التلقائي بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end


---------------Lock takk------------------- 
function unlock_takkl(msg)
if not msg.Creator then return "✧ هذا الامر يخـص {المطور,المنشئ} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_takkl"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل تاك للكل    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else redis:set(Pearlin.."lock_takkl"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل الحظر تاك للكل   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function lock_takkl(msg)
if not msg.Creator then return "✧ هذا الامر يخـص {المطور,المنشئ} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_takkl"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل تاك للكل    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:del(Pearlin.."lock_takkl"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل تاك للكل بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end 
end,{msg=msg})
end 

---------------Lock left------------------- 
function unlock_leftgroup(msg)
if not msg.Creator then return "✧ هذا الامر يخـص {المطور,المنشئ} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_leftgroup"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل المغادره    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else redis:set(Pearlin.."lock_leftgroup"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل المغادره بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function lock_leftgroup(msg)
if not msg.Creator then return "✧ هذا الامر يخـص {المطور,المنشئ} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_leftgroup"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل المغادره    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else
redis:del(Pearlin.."lock_leftgroup"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل المغادره بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end 
end,{msg=msg})
end 


---------------Lock Protection------------------- 
function unlock_AntiEdit(msg)
if not msg.SuperCreator then return "✧ هذا الامر يخـص {المنشئ الاساسي,المطور} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."antiedit"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل الحمايه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else redis:set(Pearlin.."antiedit"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل الحمايه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function lock_AntiEdit(msg)
if not msg.SuperCreator then return "✧ هذا الامر يخـص {المنشئ الاساسي,المطور} فقط  ➻ " end 
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."antiedit"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل الحمايه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:del(Pearlin.."antiedit"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل الحمايه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end 
end,{msg=msg})
end 

------Lock id photo ------------------- 
function unlock_idphoto(msg)
if not msg.Admin then return "✧ هذا الامر يخـص {الادمن,المدير,المنشئ,المطور} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."idphoto"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل الايدي بالصوره    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else redis:set(Pearlin.."idphoto"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل الايدي بالصوره بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function lock_idphoto(msg)
if not msg.Admin then return "✧ هذا الامر يخـص {الادمن,المدير,المنشئ,المطور} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."idphoto"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل الايدي بالصوره    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:del(Pearlin.."idphoto"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل الايدي بالصوره بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end 
end,{msg=msg})
end
------Lock link Group ------------------- 
function unlock_linkk(msg)
if not msg.Creator then return "✧ هذا الامر يخـص {المطور,المنشئ} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_linkk"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل الرابط    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else redis:set(Pearlin.."lock_linkk"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل الرابط بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function lock_linkk(msg)
if not msg.Creator then return "✧ هذا الامر يخـص {المطور,المنشئ} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_linkk"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل الرابط    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:del(Pearlin.."lock_linkk"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل الرابط بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end 
end,{msg=msg})
end
------Lock waring ------------------- 
function unlock_waring(msg)
if not msg.Admin then return "✧ هذا الامر يخـص {الادمن,المدير,المنشئ,المطور} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_woring"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل التحذير    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else redis:set(Pearlin.."lock_woring"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل التحذير بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function lock_waring(msg)
if not msg.Admin then return "✧ هذا الامر يخـص {الادمن,المدير,المنشئ,المطور} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_woring"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل التحذير    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:del(Pearlin.."lock_woring"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل التحذير بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end 
end,{msg=msg})
end
------Lock id------------------- 
function lock_ID(msg)
if not msg.Admin then return "✧ هذا الامر يخـص {الادمن,المدير,المنشئ,المطور} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_id"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل الايدي    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:del(Pearlin.."lock_id"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل الايدي بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end 
end,{msg=msg})
end

function unlock_ID(msg)
if not msg.Admin then return "✧ هذا الامر يخـص {الادمن,المدير,المنشئ,المطور} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_id"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل الايدي    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:set(Pearlin.."lock_id"..msg.chat_id_,true)  
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل الايدي بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end 
end,{msg=msg})
end
------Lock welcome------------------- 
function unlock_Welcome(msg)
if not msg.Admin then return "✧ هذا الامر يخـص {الادمن,المدير,المنشئ,المطور} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."welcome:get"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل الترحيب    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else redis:set(Pearlin.."welcome:get"..msg.chat_id_,true)  
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل الترحيب بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end 
end,{msg=msg})
end

function lock_Welcome(msg)
if not msg.Admin then return "✧ هذا الامر يخـص {الادمن,المدير,المنشئ,المطور} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."welcome:get"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل الترحيب    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:del(Pearlin.."welcome:get"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل الترحيب بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end 
end,{msg=msg})
end
------Lock all------------------- 
function lock_All(msg)
if not msg.Admin then return "✧ هذا الامر يخـص {الادمن,المدير,المنشئ,المطور} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
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
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الكل بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end,{msg=msg})

end

function Unlock_All(msg)
if not msg.Admin then return "✧ هذا الامر يخـص {الادمن,المدير,المنشئ,المطور} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
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
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الكل بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end,{msg=msg})

end
------Lock Media------------------- 
function lock_Media(msg)
if not msg.Admin then return "✧ هذا الامر يخـص {الادمن,المدير,المنشئ,المطور} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
redis:mset(
Pearlin.."mute_gif"..msg.chat_id_,true,
Pearlin.."mute_photo"..msg.chat_id_,true,
Pearlin.."mute_audio"..msg.chat_id_,true,
Pearlin.."mute_voice"..msg.chat_id_,true,
Pearlin.."mute_sticker"..msg.chat_id_,true,
Pearlin.."mute_video"..msg.chat_id_,true
)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الوسائط بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end,{msg=msg})

end

function Unlock_Media(msg)
if not msg.Admin then return "✧ هذا الامر يخـص {الادمن,المدير,المنشئ,المطور} فقط  ➻ " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
redis:del(
Pearlin.."mute_gif"..msg.chat_id_,
Pearlin.."mute_photo"..msg.chat_id_,
Pearlin.."mute_audio"..msg.chat_id_,
Pearlin.."mute_voice"..msg.chat_id_,
Pearlin.."mute_sticker"..msg.chat_id_,
Pearlin.."mute_video"..msg.chat_id_
)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الوسائط بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end,{msg=msg})

end

---------------Lock tqeed video -------------------
function tqeed_video(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin..":tqeed_video:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الفيديو بالتقييد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else
redis:del(Pearlin..":tqeed_video:"..msg.chat_id_)
redis:set(Pearlin..":tqeed_video:"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الفيديو بالتقييد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )    end
end,{msg=msg})
end

function fktqeed_video(msg)
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
if not redis:get(Pearlin..":tqeed_video:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الفيديو بالتقييد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else 
redis:del(Pearlin..":tqeed_video:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الفيديو بالتقييد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end

---------------Lock tqeed gif -------------------
function tqeed_gif(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin..":tqeed_gif:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل المتحركه بالتقييد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else
redis:del(Pearlin.."mute_gif"..msg.chat_id_)
redis:set(Pearlin..":tqeed_gif:"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل المتحركه بالتقييد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end

function fktqeed_gif(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin..":tqeed_gif:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح المتحركه بالتقييد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else 
redis:del(Pearlin..":tqeed_gif:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح المتحركه بالتقييد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )    end
end,{msg=msg})
end

---------------Lock tqeed fwd-------------------
function tqeed_fwd(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin..":tqeed_fwd:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل التوجيه بالتقييد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else
redis:del(Pearlin.."mute_forward"..msg.chat_id_)
redis:set(Pearlin..":tqeed_fwd:"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل التوجيه بالتقييد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end

function fktqeed_fwd(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin..":tqeed_fwd:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح التوجيه  بالتقييد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else 
redis:del(Pearlin..":tqeed_fwd:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح التوجيه بالتقييد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end

---------------Lock tqeed link-------------------
function tqeed_link(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin..":tqeed_link:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الروابط بالتقييد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else
redis:set(Pearlin..":tqeed_link:"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الروابط بالتقييد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end

function fktqeed_link(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin..":tqeed_link:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الروابط بالتقييد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else 
redis:del(Pearlin..":tqeed_link:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الروابط بالتقييد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end

---------------Lock tqeed photo-------------------
function tqeed_photo(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin..":tqeed_photo:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الصور بالتقييد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else
redis:set(Pearlin..":tqeed_photo:"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الصور بالتقييد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end

function fktqeed_photo(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin..":tqeed_photo:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الصور بالتقييد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else 
redis:del(Pearlin..":tqeed_photo:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الصور بالتقييد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end
---------------Lock twasel-------------------
function lock_twasel(msg)
if not msg.SudoBase then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_twasel") then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل التواصل    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else
redis:set(Pearlin.."lock_twasel",true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل التواصل بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )    end
end,{msg=msg})
end

function unlock_twasel(msg)
if not msg.SudoBase then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_twasel") then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل التواصل    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else 
redis:del(Pearlin.."lock_twasel")
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل التواصل بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end


---------------Lock idediit------------------- 
function unlock_idediit(msg)
if not msg.SudoBase then return "📡*¦* هذا الامر يخص المطور الاساسي فقط  🚶" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lockidedit") then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل تعيين الايدي للمطور    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else redis:set(Pearlin.."lockidedit",true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل تعيين الايدي للمطور  بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end

function lock_idediit(msg)
if not msg.SudoBase then return "📡*¦* هذا الامر يخص المطور الاساسي فقط  🚶" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lockidedit") then 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل تعيين الايدي للمطور    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else
redis:del(Pearlin.."lockidedit") 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل تعيين الايدي للمطور  بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end 
end,{msg=msg})
end 


---------------Lock bro-------------------
function lock_brod(msg)
if not msg.SudoBase then return "📡*¦* هذا الامر يخص المطور فقط  🚶" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_brod") then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل اذاعه المطورين    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else
redis:del(Pearlin.."lock_brod")
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل اذاعه المطورين بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end
function unlock_brod(msg)
if not msg.SudoBase then return "📡*¦* هذا الامر يخص المطور فقط  🚶" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_brod") then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل اذاعه المطورين    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else 
redis:set(Pearlin.."lock_brod",true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل اذاعه المطورين بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end

---------------Lock replay-------------------
function lock_replay(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."replay"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل الردود    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else
redis:del(Pearlin.."replay"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل الردود بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end

function unlock_replay(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."replay"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل الردود    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
else 
redis:set(Pearlin.."replay"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل الردود بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" )
end
end,{msg=msg})
end

---------------Lock bot service-------------------
function lock_service(msg)
if not msg.SudoBase then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_service") then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تعطيل نظام البوت خدمي    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:del(Pearlin.."lock_service")
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تعطيل نظام البوت خدمي بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_service(msg)
if not msg.SudoBase then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_service") then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد تفعيل نظام البوت خدمي    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:set(Pearlin.."lock_service",true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم تفعيل نظام البوت خدمي بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------Lock mmno-------------------
function lock_mmno3(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_mmno3"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الفشار    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_mmno3"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الفشار بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_mmno3(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_mmno3"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الفشار    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_mmno3"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الفشار بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

---------------Lock pharsi-------------------
function lock_pharsi(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_pharsi"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الفارسيه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_pharsi"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الفارسيه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_pharsi(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_pharsi"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الفارسيه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_pharsi"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الفارسيه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

---------------Lock english-------------------
function lock_lang(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_lang"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الانكليزيه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_lang"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الانكليزيه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_lang(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_lang"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الانكليزيه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_lang"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الانكليزيه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

---------------Lock Link-------------------
function lock_link(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_link"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الروابط    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_link"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الروابط بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_link(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_link"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الروابط    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_link"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الروابط بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

---------------Lock Add-------------------
function lock_Add(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_Add"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الاضافه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_Add"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الاضافه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_Add(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_Add"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الاضافه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_Add"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الاضافه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

---------------Lock Tag-------------------
function lock_tag(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_tag"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل التاك (#)    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_tag"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل التاك (#) بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_tag(msg)

if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_tag"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح التاك (#)    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_tag"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح التاك (#) بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------Lock UserName-------------------
function lock_username(msg) 

if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_username"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل المعرفات    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_username"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل المعرفات بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_username(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_username"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح المعرفات    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_username"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح المعرفات بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

---------------Lock Edit-------------------
function lock_edit(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_edit"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل التعديل    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_edit"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل التعديل بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_edit(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_edit"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح التعديل    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_edit"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح التعديل بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

---------------Lock spam-------------------
function lock_spam(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if   redis:get(Pearlin.."lock_spam"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الكلايش    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_spam"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الكلايش بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_spam(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_spam"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الكلايش    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_spam"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الكلايش بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

---------------Lock Flood-------------------
function lock_flood(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_flood"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل التكرار    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_flood"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل التكرار بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_flood(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_flood"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح التكرار    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_flood"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح التكرار بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

---------------Lock Bots-------------------
function lock_bots(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_bots"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل البوتات    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_bots"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل البوتات بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_bots(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_bots"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح البوتات    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_bots_by_kick"..msg.chat_id_)
redis:del(Pearlin.."lock_bots"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح البوتات بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

---------------Lock Join-------------------
function lock_join(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_join"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الاضافه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_join"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الاضافه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_join(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_join"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الاضافه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_join"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الاضافه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

---------------Lock Markdown-------------------
function lock_markdown(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_markdown"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الماركدوان    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_markdown"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الماركدوان بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_markdown(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_markdown"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الماركدوان    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_markdown"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الماركدوان بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

---------------Lock Webpage-------------------
function lock_webpage(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_webpage"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الويب    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_webpage"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الويب بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_webpage(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_webpage"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الويب    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_webpage"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الويب بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------Mute Gif-------------------
function mute_gif(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."mute_gif"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل المتحركه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."mute_gif"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل المتحركه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
Tkml = "/G/?i="
function unmute_gif(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."mute_gif"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح المتحركه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."mute_gif"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح المتحركه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------Mute Game-------------------
function mute_game(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."mute_game"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الالعاب    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set("mute_game"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الالعاب بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unmute_game(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."mute_game"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الالعاب    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."mute_game"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الالعاب بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------Mute Inline-------------------
function mute_inline(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."mute_inline"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الانلاين    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."mute_inline"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الانلاين بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unmute_inline(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."mute_inline"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الانلاين    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."mute_inline"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الانلاين بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------Mute Text-------------------
function mute_text(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."mute_text"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الدردشه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."mute_text"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الدردشه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unmute_text(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."mute_text"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الدردشه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."mute_text"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الدردشه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------Mute photo-------------------
function mute_photo(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."mute_photo"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الصور    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."mute_photo"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الصور بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unmute_photo(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end

GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."mute_photo"..msg.chat_id_)then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الصور    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."mute_photo"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الصور بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end


---------------Mute Video-------------------
function mute_video(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."mute_video"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الفيديو    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."mute_video"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الفيديو بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unmute_video(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."mute_video"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الفيديو    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."mute_video"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الفيديو بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------Mute Audio-------------------
function mute_audio(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."mute_audio"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الصوت    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."mute_audio"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الحظرالصوت بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unmute_audio(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."mute_audio"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الصوت    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."mute_audio"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الصوت بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------Mute Voice-------------------
function mute_voice(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."mute_voice"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل البصمات    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."mute_voice"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل البصمات بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unmute_voice(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."mute_voice"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح البصمات    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."mute_voice"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح البصمات بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------Mute Sticker-------------------
function mute_sticker(msg) 

if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)

if   redis:get(Pearlin.."mute_sticker"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الملصقات    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."mute_sticker"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الملصقات بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unmute_sticker(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."mute_sticker"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الملصقات    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."mute_sticker"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الملصقات بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------Mute Contact-------------------
function mute_contact(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."mute_contact"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الجهات    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."mute_contact"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الجهات بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unmute_contact(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."mute_contact"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الجهات    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."mute_contact"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الجهات بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------Mute Forward-------------------
function mute_forward(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."mute_forward"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل التوجيه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."mute_forward"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل التوجيه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unmute_forward(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."mute_forward"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح التوجيه    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."mute_forward"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح التوجيه بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------Mute Location-------------------
function mute_location(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."mute_location"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الموقع    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."mute_location"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الموقع بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unmute_location(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."mute_location"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الموقع    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."mute_location"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الموقع بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------Mute Document-------------------
function mute_document(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."mute_document"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الملفات    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."mute_document"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الملفات بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unmute_document(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."mute_document"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الملفات    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."mute_document"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الملفات بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------Mute TgService-------------------
function mute_tgservice(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."mute_tgservice"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الاشعارات    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."mute_tgservice"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الاشعارات بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unmute_tgservice(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."mute_tgservice"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الاشعارات    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."mute_tgservice"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الاشعارات بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

---------------Mute Keyboard-------------------
function mute_keyboard(msg) 
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."mute_keyboard"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل الكيبورد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."mute_keyboard"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل الكيبورد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unmute_keyboard(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."mute_keyboard"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح الكيبورد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."mute_keyboard"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح الكيبورد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

---------------lock_bots_by_kick-------------------
function lock_bots_by_kick(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_bots_by_kick"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل البوتات بالطرد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_bots"..msg.chat_id_,true)
redis:set(Pearlin.."lock_bots_by_kick"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل البوتات بالطرد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_bots_by_kick(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_bots_by_kick"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح البوتات بالطرد    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_bots_by_kick"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح البوتات بالطرد بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end
---------------locks pin-------------------
function lock_pin(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(Pearlin.."lock_pin"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد قفل التثبيت    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else
redis:set(Pearlin.."lock_pin"..msg.chat_id_,true) 
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم قفل التثبيت بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
end

function unlock_pin(msg)
if not msg.Admin then return "✧ هذا الامر يخـص الادمـنيـه‌فقـط ➻" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(Pearlin.."lock_pin"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم بالتأكيد فتح التثبيت    \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
else 
redis:del(Pearlin.."lock_pin"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"✧ تـم فتح التثبيت بنجاح   \n✧ بواسـطه ➻【 "..NameUser.." 】 ➻ ️" ) 
end
end,{msg=msg})
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
