--[[ MARBEG DUMP #8
  origin: loadstring
  chunk:  
  size:   1421 bytes
  hash:   0738f280
  time:   12.41s
  caller: jcLEdImeFmfJNeoGbVBuOBzXr:206 ()
]]--
-- Do not save this file
-- Always use the loadstring 
  _bsdata0={1451677840,"1D-_E-.C1BE4-LL50L040235_C_DRB0.CBL4C-2LR0C3B_R-LE-1__0_EDL1DCL4R25R3C_31EDABA-.3RB.C.-_RB_1DA..4C3RR_._54E1RLL_0AAB13B404--4BC4ARA43B4_",36142748,"\178\77\37\91\27\114\32\24\159\232\99\244\201\199\168\151\107\0\71\67\190\154\205\19\64\157\115\99\170",23082150,1334916404,1776487361,2851531,2645682,45808856,"15c8811a1369b145d663ec1354986fd94e2e21375046e5ec170af64bfecee45de0475361821920a77724768d1370e6a47d8a8c6ce5c97352ca3ae047ac0c89d2c89906815cd68eb5139d855be6bff3783ce75a43eabecded1255903f47af7b1592d748f5aa49d8059ec2f61c87070682129a4f2a512359ecb89d5bf680dbd30c4e0416667bba04dfbc83f09f15d49e65b4ba1f724cb4f904b1e3ef668fd403cf09431a83af80556f926e1acdacf74e1b2678e51f215c9a94319e7b5e5b3e0f17b151211741cb0a3ac7ab","\220\159\221\176\13\80\86\178\29\245\90\164\167\95\51\53\21\48\93\183\105\227\13\163"};
local f,b,a="static_content_130525","74c74f95fd0-marbeg";pcall(function()a=readfile(f.."/init-"..b..".lua")end) if a and #a>2000 then a=loadstring(a) else a=nil; end;
if a then return a() else pcall(makefolder,f) a=game:HttpGet("https://cdn.luarmor.net/v4_init_marbeg.lua"..(_ca920af6193 or "")) writefile(f.."/init-"..b..".lua", a); 
pcall(function() for i,v in pairs(listfiles('./'..f)) do local m=v:match('(init[%w%-]*).lua$') if m and m~=('init-'..b) then pcall(delfile, f..'/'..m..'.lua') end end; end); return loadstring(a)() end
  