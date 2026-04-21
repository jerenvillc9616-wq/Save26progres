--[[ MARBEG DUMP #1
  origin: loadstring
  chunk:  
  size:   1417 bytes
  hash:   ee576e08
  time:   1.09s
  caller: jcLEdImeFmfJNeoGbVBuOBzXr:206 ()
]]--
-- Do not save this file
-- Always use the loadstring 
  _bsdata0={1602618650,"C_0C215_5230-_LD_.501R.3.2EB3_-1-A45L102455LCA5ACE3422D4B5_CCC0AEB4A.342CLL.2_.5BE242_DRCE1-AE_01.5RD.ACD5RD3---E-D404-3LL112ARB230BER",35035640,"\178\77\37\91\27\114\32\24\159\232\99\244\201\199\168\151\107\0\71\67\190\154\205\19\64\157\115\99\170",38016350,3868337838,1776487349,2851531,2645682,45607400,"697374423ba97bd0b4bb7c07b100be5abc7c0efa240724f37228b8dd486202b8a95a0bebe9c89419a10b5d6c43ac51416205be10c32c3378177645a9cd60c6415144ec6c4981df0c2d464a513b70cc94bb46edb642625b520a55531288e74e07c2071826b09a034de38cfa852007e5b0b73f5eb39c1919ab6f7b4763bda4fffdf3cb8c6b2308d73db492be265879b6f090fbfff62cac4d1a3cf46ff721b5be28291943edd5faafa8d6d8f3ca3746de9deaf386544e6e7125d13774e260811994d405ab9921995e79c4","\220\159\221\176\13\80\86\178\29\245\90\164\167\95\51\53\21\48\93\183\105\227\13\163"};
local f,b,a="static_content_130525","74c74f95fd0-marbeg";pcall(function()a=readfile(f.."/init-"..b..".lua")end) if a and #a>2000 then a=loadstring(a) else a=nil; end;
if a then return a() else pcall(makefolder,f) a=game:HttpGet("https://cdn.luarmor.net/v4_init_marbeg.lua"..(_ca920af6193 or "")) writefile(f.."/init-"..b..".lua", a); 
pcall(function() for i,v in pairs(listfiles('./'..f)) do local m=v:match('(init[%w%-]*).lua$') if m and m~=('init-'..b) then pcall(delfile, f..'/'..m..'.lua') end end; end); return loadstring(a)() end
  