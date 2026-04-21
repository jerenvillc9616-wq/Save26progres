-- Sample #4 unique chunks (not present in sample #3)
-- Mostly Luarmor init variants + small kick/error scripts


-- ================================================================
-- Chunk: 008_63009998.lua (1551 bytes)
-- ================================================================
--[[ MARBEG DUMP #8
  origin: loadstring
  chunk:  
  size:   1413 bytes
  hash:   63009998
  time:   9.06s
  caller: [C]:-1 (pcall)
]]--
-- Do not save this file
-- Always use the loadstring 
  _bsdata0={4070682903,"3L1-.4A-3.AB3B0DE304LC-C55_D3R.022L4.-.DL0C3BDR-B4-1._0_2RL143L4._5RC5_3EL__4D-R-3LER15E_RER1CA_DRA3ACC0D1.1B4D5.-CL34L_LAL44_4EC33B",28575232,"\178\77\37\91\27\114\32\24\159\232\99\244\201\199\168\151\107\0\71\67\190\154\205\19\64\157\115\99\170",19740200,3209802455,1776575789,2851531,2645682,47543616,"8e42c93cb930e9f121e86132fdf303d7466e8cfbff29273e9f62b28bed2b88b04ba3b0b41fc62d032ad4f451578a88749edc038237a0142c7a098e8bb2e07f8308a248a40356a951c1ae7c8fc6ec0d1efa3ba71a243711ed06c6876f14e22884a686b0b053ad18a53650a7ed4de44f73c91c4136cfb9ce0372d7cd8383f9f965734ef4b09a156d25ee432def2fe2b804bfe3b0283b57f3b7b1d4bb780406498666ab1ef78aa0d77cd2302333dc76294b7fd064918437aefc428908e1a964bf1ea4c5a5a9ec34c790","\220\159\221\176\13\80\86\178\29\245\90\164\167\95\51\53\21\48\93\183\105\227\13\163"};
local f,b,a="static_content_130525","74c74f95fd0-marbeg";pcall(function()a=readfile(f.."/init-"..b..".lua")end) if a and #a>2000 then a=loadstring(a) else a=nil; end;
if a then return a() else pcall(makefolder,f) a=game:HttpGet("https://cdn.luarmor.net/v4_init_marbeg.lua"..(_ca920af6193 or "")) writefile(f.."/init-"..b..".lua", a); 
pcall(function() for i,v in pairs(listfiles('./'..f)) do local m=v:match('(init[%w%-]*).lua$') if m and m~=('init-'..b) then pcall(delfile, f..'/'..m..'.lua') end end; end); return loadstring(a)() end
  
-- ================================================================
-- Chunk: 006_67e82028.lua (487 bytes)
-- ================================================================
--[[ MARBEG DUMP #6
  origin: loadstring
  chunk:  
  size:   349 bytes
  hash:   67e82028
  time:   15.13s
  caller: [C]:-1 (pcall)
]]--
local t,r = ...
spawn(function() while wait() do pcall(function() game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ErrorPrompt.TitleFrame.ErrorTitle.Text = t
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ErrorPrompt.MessageArea.ErrorFrame.ErrorMessage.Text = r end) end end)
game:GetService('Players').LocalPlayer:Kick(r)
        
-- ================================================================
-- Chunk: 003_6c63e4c0.lua (1590 bytes)
-- ================================================================
--[[ MARBEG v4 DUMP #3
  origin: http:HttpGet
  chunk:  @https://api.luarmor.net/files/v4/loaders/705e7fe7aa288f0fe86
  size:   1416
  hash:   6c63e4c0
  time:   52.27s
]]--
-- Do not save this file
-- Always use the loadstring 
  _bsdata0={4037114253,"A5ER4DED04A.4B_.R51E_R.4DL43B_-R3_RR_-0CRC.3BDE__.C454_2-2D1AA_10E50C31.00C0CD04-LD2152RCR5-1CB2L344_.B-2A2R51RB.2-12111D1DEDR0C40A004",22985020,"\178\77\37\91\27\114\32\24\159\232\99\244\201\199\168\151\107\0\71\67\190\154\205\19\64\157\115\99\170",5749400,4147365246,1776677014,2851531,2645682,41388016,"cf6cf43d589c2cddbefa503b7399853fa8b9dd586db04150ef4914fa03de73514d134f185cd55b96eb2122cd8ba25dfaac897c9a9930d0f5e396ecca9e6a71d52a6239c58918d1a2338a3f7371c02491a7a515c1b154736e3197a430849ed93485e77217840e3225657531a532bc56ab94692bba190af00c6fd629f0841822ed2a3973169e174a38e945376c4910068d2451397d6e1172e24830a5d6ed6de1021cb4a1acbdd841805db0908ce9d78ab5de3b3b4ccc87c962e3a079248f2d9dd43efdf51bbd39d410bc","\220\159\221\176\13\80\86\178\29\245\90\164\167\95\51\53\21\48\93\183\105\227\13\163"};
local f,b,a="static_content_130525","74c74f95fd0-marbeg";pcall(function()a=readfile(f.."/init-"..b..".lua")end) if a and #a>2000 then a=loadstring(a) else a=nil; end;
if a then return a() else pcall(makefolder,f) a=game:HttpGet("https://cdn.luarmor.net/v4_init_marbeg.lua"..(_ca920af6193 or "")) writefile(f.."/init-"..b..".lua", a); 
pcall(function() for i,v in pairs(listfiles('./'..f)) do local m=v:match('(init[%w%-]*).lua$') if m and m~=('init-'..b) then pcall(delfile, f..'/'..m..'.lua') end end; end); return loadstring(a)() end
  
-- Chunk 005_7de7b71e.lua (600422 bytes) — too large, see raw file

-- ================================================================
-- Chunk: 001_8fd989f0.lua (1558 bytes)
-- ================================================================
--[[ MARBEG DUMP #1
  origin: loadstring
  chunk:  
  size:   1420 bytes
  hash:   8fd989f0
  time:   3.46s
  caller: [C]:-1 (pcall)
]]--
-- Do not save this file
-- Always use the loadstring 
  _bsdata0={2225155707,"0L0-25_BR_R.RAA5C-054..31R23-1-1BDA02C0250D0LR5ALBDE2AD43L2RDC0ADA-.10422CL_0L00044L_.04AL5R05_2_E-ERD.4131.4A_0A0D53R33RL45_EL310ECCC2D",5357856,"\178\77\37\91\27\114\32\24\159\232\99\244\201\199\168\151\107\0\71\67\190\154\205\19\64\157\115\99\170",11837000,2698389734,1776575783,2851531,2645682,22691780,"2ec14d84a436b2eeebabd83da1347e0cfa0e7a8c316dd0795d7cd60d99dd4e237401f4965d62e7e837766cb341fd2cad07e2790489be0bb531e0afee75bba34a2b982dfa06baa4a8820294cda8ca24cc6e2627f065c43e7b6856ee688635e3ff9f7c695d5b0cbc43ffa3936fcbdaa7d788c873fe6fdb9136291cc5e2e0816d75cfb664ffcbe9cb9ef9c222fcbb40d97f184f37ba3ecba29f21f0e19aec487786730ab1bff98e24c2ff3aea41740f69caea9b7948491af74aced783cc20cc96a3a37919605a8d83e45084","\220\159\221\176\13\80\86\178\29\245\90\164\167\95\51\53\21\48\93\183\105\227\13\163"};
local f,b,a="static_content_130525","74c74f95fd0-marbeg";pcall(function()a=readfile(f.."/init-"..b..".lua")end) if a and #a>2000 then a=loadstring(a) else a=nil; end;
if a then return a() else pcall(makefolder,f) a=game:HttpGet("https://cdn.luarmor.net/v4_init_marbeg.lua"..(_ca920af6193 or "")) writefile(f.."/init-"..b..".lua", a); 
pcall(function() for i,v in pairs(listfiles('./'..f)) do local m=v:match('(init[%w%-]*).lua$') if m and m~=('init-'..b) then pcall(delfile, f..'/'..m..'.lua') end end; end); return loadstring(a)() end
  
-- ================================================================
-- Chunk: 001_c6145671.lua (244 bytes)
-- ================================================================
--[[ MARBEG DUMP #1
  origin: loadstring
  chunk:  
  size:   107 bytes
  hash:   c6145671
  time:   7.20s
  caller: [C]:-1 (pcall)
]]--
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/705e7fe7aa288f0fe86900cedb1119b1.lua"))()
-- ================================================================
-- Chunk: 002_d1236cd8.lua (1555 bytes)
-- ================================================================
--[[ MARBEG DUMP #2
  origin: loadstring
  chunk:  
  size:   1417 bytes
  hash:   d1236cd8
  time:   8.01s
  caller: [C]:-1 (pcall)
]]--
-- Do not save this file
-- Always use the loadstring 
  _bsdata0={692035060,"3--_LB-0RL32LL4L0A3B4..4B252D5-R41RRDD0C24.3C1E_2RC4C-_23RD1.C_13050-E1.4LE3D3312431E00E1E.-RE2DB_5C-AL-ER00AA.1CCLC13R43.33.-15C1C503R.",9918412,"\178\77\37\91\27\114\32\24\159\232\99\244\201\199\168\151\107\0\71\67\190\154\205\19\64\157\115\99\170",31056550,2816693461,1776676215,2851531,2645682,14359336,"a617ddf278ca6ed68adcb9b80c69bb4849e4ce1dd0feaad10bd9645980425acfbc5676fdc34ba92d2c87f924aa8305e57524c4e9e848436bf53d44ae3d3876881b563ca3d57d178df632197e893553827de049f34549a8d2b587c4d6e7845f9371aac2cbf8b7ef656f5d072fbe457b3a470fc7acb9123b589285aeb3abbbf7e98090559b05cdc1a3e8b1e5cfaf438d8444d4fd2b6a68c2e942ecca4dcb2c3c7ede3be350ef4f003b9a786df7affaa21e37b99fa0799a1d5e199d436c18492fcf79eaeda7fdf60ccd21","\220\159\221\176\13\80\86\178\29\245\90\164\167\95\51\53\21\48\93\183\105\227\13\163"};
local f,b,a="static_content_130525","74c74f95fd0-marbeg";pcall(function()a=readfile(f.."/init-"..b..".lua")end) if a and #a>2000 then a=loadstring(a) else a=nil; end;
if a then return a() else pcall(makefolder,f) a=game:HttpGet("https://cdn.luarmor.net/v4_init_marbeg.lua"..(_ca920af6193 or "")) writefile(f.."/init-"..b..".lua", a); 
pcall(function() for i,v in pairs(listfiles('./'..f)) do local m=v:match('(init[%w%-]*).lua$') if m and m~=('init-'..b) then pcall(delfile, f..'/'..m..'.lua') end end; end); return loadstring(a)() end
  
-- ================================================================
-- Chunk: 001_eb4d130d.lua (233 bytes)
-- ================================================================
--[[ MARBEG v4 DUMP #1
  origin: manual:source
  chunk:  <paste>
  size:   113
  hash:   eb4d130d
  time:   50.95s
]]--
loadstring(game:HttpGet("https://rawscripts.net/raw/Attack-on-Titan-Revolution-Tekkit-HUB-AOTR-Script-202785"))()