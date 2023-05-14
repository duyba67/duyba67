local expiredDate = os.time{year = 2223, month = 5, day = 15}

function checkExpiredDate()
    local currentDate = os.time()
    local remainingTime = expiredDate - currentDate
    if remainingTime <= 0 then
        gg.alert("Kịch bản đã hết hạn! Vui lòng mua key mới để sử dụng")
        gg.setRanges(gg.REGION_ANONYMOUS)
        gg.clearResults()
        gg.setVisible(false)
        os.exit()
    end
    local remainingDays = math.floor(remainingTime / 86400)
    local remainingHours = math.floor((remainingTime % 86400) / 3600)
    gg.alert("Còn lại " .. remainingDays .. " ngày " .. remainingHours .. " giờ để sử dụng Kịch Bản")
    
end

checkExpiredDate()

local n, startAddress, endAddress = nil, 0, 0
local function name(lib)
	if n == lib then
		return startAddress, endAddress
	end
	local ranges = gg.getRangesList(lib or 'libil2cpp.so')
	for i, v in ipairs(ranges) do
		if v.state == "Xa" then
			startAddress = v.start
			endAddress = ranges[#ranges]['end']
			break
		end
	end
	return startAddress, endAddress
end

local function setHexMemory(libname, offset, hex)
	name(libname)
	local t, total = {}, 0
	for h in string.gmatch(hex, "%S%S") do
	    table.insert(t, {
	        address = startAddress + offset + total,
	        flags = gg.TYPE_BYTE,
	        value = h .. "r"
	    })
	    total = total + 1
	end
	local res = gg.setValues(t)
	if type(res) ~= 'string' then
		return true
	else
		gg.alert(res)
		return false
	end
end
function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."\nFailed to Open")else sl=gg.getResults(99999)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."\n Thành Công")else gg.toast(_on.."\nSuccessfully Opened")end end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
x = nil
gg.toast("SCRIPT HACK LIÊN QUÂN ")
function Main()
K = gg.multiChoice({
' ঔৣ͜͡➳BYPASS ',
' ঔৣ͜͡➳ HACK MAP',
' ঔৣ͜͡➳ CAMERA SIÊU XA',
' ঔৣ͜͡➳ EXIT MENU '
},x,'SCRIPT HACK LIÊN QUÂN VIP  ')
if K == nil then  
else
if K[1] == true then a1() end
if K[2] == true then a2() end
if K[3] == true then a3() end
if K[4] == true then a4() end
end
XGCK=-1
end

function a1()
function WriteSignatures(original,TSS_SHADOW) gg.setRanges(16384) gg.searchNumber("h"..original) gg.getResults(9999) gg.editAll("h"..TSS_SHADOW,1) gg.clearResults() end
function split(szFullString, szSeparator)  local nFindStartIndex = 1  local nSplitIndex = 1  local nSplitArray = {}  while true do  local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex)  if not nFindLastIndex then  nSplitArray[nSplitIndex] =  string.sub(szFullString, nFindStartIndex, string.len (szFullString))  break end  nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1)  nFindStartIndex = nFindLastIndex + string.len (szSeparator)  nSplitIndex = nSplitIndex + 1 end return  nSplitArray end  function xgxc(szpy, qmxg)  for x = 1, #(qmxg) do  xgpy = szpy + qmxg[x]["offset"]  xglx = qmxg[x]["type"]  xgsz = qmxg[x]["value"]  xgdj = qmxg[x]["freeze"]  if xgdj == nil or xgdj == "" then  gg.setValues({[1]  = {address = xgpy, flags = xglx, value = xgsz}})  else  gg.addListItems({[1]  = {address = xgpy, flags = xglx,  freeze = xgdj, value = xgsz}}) end  xgsl = xgsl + 1 xgjg = true end end  function xqmnb(qmnb)  gg.clearResults()  gg.setRanges(qmnb[1]["memory"])  gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])  if gg.getResultCount() == 0 then  gg.toast(qmnb[2]["name"] .. "")  else  gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])  gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])  if gg.getResultCount() == 0 then  gg.toast(qmnb[2]["name"] .. "")  else          sl = gg.getResults(999999)  sz = gg.getResultCount()          xgsl = 0 if sz > 999999 then  sz = 999999 end for i = 1, sz do  pdsz = true for v = 4, #(qmnb) do if  pdsz == true then  pysz = {} pysz[1]  = {} pysz[1].address  = sl[i].address + qmnb[v]["offset"] pysz[1].flags  = qmnb[v]["type"]  szpy = gg.getValues(pysz)  pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd  = split(pdpd, ";") tzszpd  = szpd[1] pyszpd = szpd[2]  if tzszpd == pyszpd then  pdjg = true pdsz = true else  pdjg = false pdsz = false end end end if  pdjg == true then szpy  = sl[i].address xgxc(szpy, qmxg) end end  if xgjg == true then  gg.toast(qmnb[2]["name"] .. "," .. xgsl .. "")  else  gg.toast(qmnb[2]["name"] .. "")  end  end  end  end



local targetSignature = "00 00 00 7C"
local overrideSignature = "00"

local targetSignature = "0D 00 00 00 0D 00 00 00 00 00 00 00"
local overrideSignature = "00"
WriteSignatures(targetSignature,overrideSignature)


gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134218241", gg.TYPE_QWORD)
gg.getResults(999999)
gg.editAll("0", gg.TYPE_QWORD)
gg.clearResults()
gg.setVisible(false)
gg.alert("💚 BYPASS VIP LIÊN QUÂN ĐÃ BẬT💚")
end


function a2()
           --hackmap--
            setHexMemory("libil2cpp.so", 0x2D4F614, "36 00 80 52")
            --Hiện Unlti--
            setHexMemory("libil2cpp.so", 0x2627C64, "C0 03 5F D6")
            setHexMemory("libil2cpp.so", 0x29875FC, "34 00 80 52")
            setHexMemory("libil2cpp.so", 0x29874AC, "C0 03 5F D6")
             --bán iteam--
            setHexMemory("libil2cpp.so", 0x2777CB8, "20 00 80 D2 C0 03 5F D6")
            --HDR--
            setHexMemory("libil2cpp.so", 0x1FDCAAC, "20 00 80 D2 C0 03 5F D6")
             --120+90fps--
            setHexMemory("libil2cpp.so", 0x1FCB0AC, "20 00 80 D2 C0 03 5F D6")
            setHexMemory("libil2cpp.so", 0x1FCB17C, "20 00 80 D2 C0 03 5F D6")
            --hiện ls đấu--
            setHexMemory("libil2cpp.so", 0x21A163C, "20 00 80 D2 C0 03 5F D6")
            --hiện avt--
            setHexMemory("libil2cpp.so", 0x1FFB384, "36 00 80 52")
            --hiện rank--
            setHexMemory("libil2cpp.so", 0x22A8714, "1F 20 03 D5")
            --hiện tên ban pick--
            setHexMemory("libil2cpp.so", 0x2632100, "37 00 80 52")
            --cam xa ba nấc--
            setHexMemory("libil2cpp.so", 0x1FCA6C4, "20 00 80 D2 C0 03 5F D6")
            setHexMemory("libil2cpp.so", 0x1FD700C, "20 00 80 D2 C0 03 5F D6")
            setHexMemory("libil2cpp.so", 0x1FD81DC, "20 00 80 D2 C0 03 5F D6")
            --không giới hạn vàng--
            setHexMemory("libil2cpp.so", 0x202F7EC, "20 00 80 D2 C0 03 5F D6")
gg.alert("💚 HACK MAP LIÊN QUÂN ĐÃ BẬT💚")
end

function a3()
edit({
{gg.REGION_ANONYMOUS},
{"💕CAM XA💕"},
{4715268810956865536 ,gg.TYPE_QWORD},
{18.0, 0, gg.TYPE_FLOAT},
{15.0, 4, gg.TYPE_FLOAT},
},
{
{18.0, 0, gg.TYPE_FLOAT},
{27.0, 4, gg.TYPE_FLOAT}, 
})
gg.clearResults()
gg.toast("💕CAM XA BẬT💕 ")
end



function a4()

for i = 1,5 do 
print("")
end
os.exit()
end
while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
gg.clearResults()
if XGCK == 1 then Main() end
end
