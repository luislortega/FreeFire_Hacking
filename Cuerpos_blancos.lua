local memFrom, memTo, lib, num, lim, results, src, ok = 0, -1, nil, 0, 32, {}, nil, false
function name(n)
if lib ~= n then
lib = n
local ranges = gg.getRangesList(lib)
if #ranges == 0 then
print("Eʀʀᴏʀ : " .. lib .. "EDITABLE")
gg.alert("Eʀʀᴏʀ : " .. lib .. "\nEDITABLE")
gg.toast("Eʀʀᴏʀ : " .. lib .. "\nEDITABLE")
os.exit()
else
memFrom = ranges[1].start
memTo = ranges[#ranges]["end"]
 end
end
end
function hex2tbl(hex)
local ret = {}
hex:gsub("%S%S", function(ch)
ret[#ret + 1] = ch
return ""
end)
return ret
end
function original(orig)
local tbl = hex2tbl(orig)
local len = #tbl
if len == 0 then
return
end
local used = len
if len > lim then
used = lim
end
local s = ""
for i = 1, used do
if i ~= 1 then
s = s .. ";"
end
local v = tbl[i]
if v == "??" or v == "**" then
v = "0~~0"
end
s = s .. v .. "r"
end
s = s .. "::" .. used
gg.searchNumber(s, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, memFrom, memTo)
if len > used then
for i = used + 1, len do
local v = tbl[i]
if v == "??" or v == "**" then
v = 256
else
v = ("0x" .. v) + 0
if v > 127 then
v = v - 256
end
end
tbl[i] = v
end
end
local found = gg.getResultCount()
results = {}
local count = 0
local checked = 0
while not (found <= checked) do
local all = gg.getResults(8)
local total = #all
local start = checked
if total < checked + used then
break
end
for i, v in ipairs(all) do
v.address = v.address + myoffset
end
gg.loadResults(all)
while total > start do
local good = true
local offset = all[1 + start].address - 1
if len > used then
local get = {}
for i = lim + 1, len do
get[i - lim] = {
address = offset + i,
flags = gg.TYPE_BYTE,
value = 0
}
end
get = gg.getValues(get)
for i = lim + 1, len do
local ch = tbl[i]
if ch ~= 256 and get[i - lim].value ~= ch then
good = false
break
end
end
end
if good then
count = count + 1
results[count] = offset
checked = checked + used
else
local del = {}
for i = 1, used do
del[i] = all[i + start]
end
gg.removeResults(del)
end
start = start + used
end
end
end
function replaced(repl)
num = num + 1
local tbl = hex2tbl(repl)
if src ~= nil then
local source = hex2tbl(src)
for i, v in ipairs(tbl) do
if v ~= "??" and v ~= "**" and v == source[i] then
tbl[i] = "**"
end
end
src = nil
end
local cnt = #tbl
local set = {}
local s = 0
for _, addr in ipairs(results) do
for i, v in ipairs(tbl) do
if v ~= "??" and v ~= "**" then
s = s + 1
set[s] = {
address = addr + i,
value = v .. "r",
flags = gg.TYPE_BYTE
}
 end
end
end
if s ~= 0 then
gg.setValues(set)
end
ok = true
end
gg.clearResults()
t = gg.getListItems()
gg.removeListItems(t)
libil2cpp = "3.5;9.219563e-41;3.34241e-39;1.4012985e-45;4.8808683e-39::25"
libunity = "3.5;9.219563e-41;3.34241e-39;1.4012985e-45;.52e-44;2.936e-38::33"
if gg.isVisible(true) then
gg.setVisible(false)
end
gg.clearResults()
Random = 1
function START()
  multi = gg.multiChoice({
    ff.."Cuerpos Blancos",
    },nil,' AimPro By Node')

    if multi[1] == true then E() end
end
ff = "😳"
function E()
  if ff == "😳" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 10616188
    original("7F 45 4C 46 01 01 01 00")
    replaced("01 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 25534280
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 BB E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("Activado")
    ff = "🥶"
  elseif ff == "🥶" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 10616188
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4F 2D E9 1C B0 8D E2")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 25534280
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4F 2D E9 1C B0 8D E2")
    gg.clearResults()
    gg.toast("Desactivado")
    ff = "😳"
  end
end

function Exit()
 gg.alert("NOTA: La fecha de vencimiento es el EDITABLE, recuerda visitar el canal para buscar una actualizacion")
  print("⚠️⚠️⚠️ -------Creador:ImNotNode------ ⚠️⚠️⚠️")
  print("⚠️⚠️⚠️ ----------Version: 1--------- ⚠️⚠️⚠️")
  print("⚠️⚠️⚠️ SCRIPT APRENDIZAJE ⚠️⚠️⚠️")

    gg.setVisible(true)
    gg.toast('Gracias Por Utilizar Mis Servicios')
    gg.alert('Visita el canal de ImNotNode para mas contenido', 'OK')
    print('ImNotNode MOD')
    gg.toast('SUSCRIBETE A MI CANAL')
    os.remove('/storage/emulated/0/multspace/crash/crash_report')
    os.remove('/storage/emulated/0/tencent/beacon/meta_0M300GVKSH1IMBEK.dat')
    os.remove('/storage/emulated/0/tencent/beacon/meta.dat')
    os.remove('/storage/emulated/0/tencent/tbs/backup/com.estrongs.android.pop/x5.tbs.org')
    os.remove('/storage/emulated/0/Android/data/com.snssdk.api/bytedance/device_parameters_i18n.dat')
    os.remove('/storage/emulated/0/libs/task/gkt')
    os.remove('/storage/emulated/0/libs/task/gkt-journal')
    os.remove('/storage/emulated/0/libs/com.excean.masteraid.bin')
    os.remove('/storage/emulated/0/libs/com.excean.masteraid.db')
    os.remove('/storage/emulated/0/libs/com.getui.sdk.deviceId.db')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/0.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/1.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/2.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/3.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/4.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/5.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/6.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/7.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/8.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/9.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/10.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/11.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/12.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/13.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/14.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/15.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/16.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/17.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/18.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/19.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/20.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/21.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/22.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/23.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/24.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/25.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/26.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/27.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/28.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/29.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/30.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200513/31.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/0.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/1.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/2.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/3.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/4.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/5.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/6.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/7.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/8.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/9.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/10.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/11.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/12.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/13.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/14.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/15.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/16.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/17.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/18.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/19.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/20.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/21.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/22.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/23.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/24.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/25.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/26.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/27.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/28.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/29.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/30.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200514/31.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/0.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/1.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/2.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/3.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/4.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/5.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/6.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/7.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/8.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/9.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/10.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/11.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/12.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/13.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/14.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/15.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/16.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/17.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/18.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/19.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/20.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/21.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/22.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/23.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/24.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/25.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/26.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/27.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/28.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/29.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/30.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200515/31.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/0.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/1.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/2.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/3.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/4.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/5.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/6.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/7.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/8.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/9.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/10.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/11.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/12.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/13.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/14.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/15.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/16.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/17.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/18.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/19.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/20.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/21.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/22.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/23.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/24.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/25.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/26.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/27.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/28.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/29.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/30.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200516/31.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/0.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/1.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/2.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/3.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/4.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/5.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/6.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/7.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/8.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/9.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/10.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/11.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/12.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/13.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/14.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/15.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/16.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/17.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/18.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/19.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/20.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/21.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/22.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/23.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/24.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/25.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/26.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/27.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/28.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/29.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/30.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200517/31.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/0.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/1.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/2.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/3.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/4.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/5.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/6.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/7.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/8.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/9.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/10.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/11.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/12.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/13.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/14.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/15.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/16.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/17.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/18.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/19.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/20.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/21.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/22.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/23.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/24.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/25.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/26.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/27.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/28.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/29.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/30.1.app.log')
    os.remove('/storage/emulated/0/tencent/XG/Logs/20200518/31.1.app.log')
    os.remove('/storage/emulated/0/multspace/log/multspace-multspace-2020-05-08-18-58-45.log')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-01.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-02.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-03.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-04.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-05.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-06.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-07.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-08.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-09.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-10.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-11.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-12.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-13.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-14.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-15.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-16.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-17.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-18.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-19.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-20.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-21.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-22.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-23.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-24.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-25.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-26.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-27.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-28.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-29.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-30.log.txt')
    os.remove('/storage/emulated/0/Android/data/pushSdk/defaultLog/2020-05-31.log.txt')
    os.exit()
  end

  function noselect()
    gg.toast('SCRIPT PROGRAMADO POR ImNotNode')
  end

  while true do
    if gg.isVisible(true) then
      XGCK = 1
      gg.setVisible(false)
      gg.clearResults()
      gg.clearList()
      os.remove(gg.EXT_STORAGE .. '/ᴍᴜʜᴀᴍᴀᴅɢᴀᴍᴇʀ.ʟᴜᴀ')
    end
    if XGCK == 1 then
      START()
    end
    XGCK = -1
  end
