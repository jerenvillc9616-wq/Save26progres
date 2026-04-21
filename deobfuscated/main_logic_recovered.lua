-- ============================================================
-- MAX HUB — main game logic recovered from Luraph v14.7 payload
-- Source: 011_abd9feca.lua (3.2MB, Luraph v14.7)
-- These are Lua source fragments stored as string constants
-- in the VM's constant table. Luraph concatenates & loadstring's
-- them at runtime to execute the actual game logic.
--
-- Filtered to exclude VM-handler internals. Only fragments
-- containing Roblox APIs or UI Flag hooks are included here.
-- Fragments: 1,200, total 344,817 bytes
-- ============================================================


-- [frag 0001 @ offset 2772189] (2086 bytes)
M]&de[@Kp_t&rJ;-f!We)!^dSE!^m(k!datU!S7qkb7k!Z!YPP8!YPQ&!uV.+!!!AK]==]);if not(not Z[0X56DB])then p=Z[22235];else p=0X19+((i.uh(((i.Ch((i.vh(Z[0X1Dc2],Z[0x5Cd__3])),(Z[0X3c16])))~=Z[1710]and Z[1710]or Z[7733])-Z[0X35_Aa]))<=Z[26881]and Z[7733]or Z[16953]);(Z)[22235]=(p);end;continue;else if p==0x76 then p=i:ti(p,j,Z);elseif p==93 then p=i:ui(p,Z,j);continue;else if p~=0B11000 then else j[0B100001]=t.readstring;break;end;end;end;until false;j[34]=(nil);(j)[0b10001__1]=(nil);return p;end,hX=function(i,i,Z,t)(i)[t]=Z;end,fX=function(i,i,Z,t)t[0xc]=(t[0X00c__]+i);return Z;end,is=function(i)local Z=i[4];local t=i[3];local j=i[2];local p=i[0];local L=i[1];local b=i[5];local f=i[6];return function()if L.Parent then local i,l=b:WorldToViewportPoint(L.Position);if l then f(p[L],i,{enableEffects=true,showDot=true,showText=true});else t(p[L],false);end;else j[1][j[3]]:Delete();if p[L]then Z(p[L]);p[L]=nil;end;end;end;end,rh=function(i)return 0X6A;end,ti=function(i,Z,t,j)(t)[31]=i.Is;if not(not j[0X33c5])then Z=(j[0x33c5]);else Z=i:ii(j,Z);end;return Z;end,Ki=bit32.countlz,IX=function(i,i,Z,t,j)local p=#j[0X2];for L=0X38,0x097,83 do if L>0X38 then j[2][p+0X3]=(t);break;else if not(L<0x8B)then else(j[0X2])[p+1]=Z;j[0B10][p+0X2]=(i);continue;end;end;end;end,zX=function(i,i,Z)(i)[0X6]=(Z);end,Ks=function(i)local Z=i[17];local t=i[12];local j=i[14];local p=i[28];local L=i[3];local b=i[10];local f=i[29];local l=i[11];local o=i[30];local z=i[7];local c=i[20];local y=i[1];local n=i[26];local X=i[16];local M=i[6];local R=i[19];local w=i[32];local K=i[31];local e=i[2];local U=i[25];local C=i[24];local d=i[9];local G=i[15];local x=i[33];local J=i[22];local B=i[18];local F=i[0];local Q=i[8];local V=i[23];local u=i[4];local E=i[5];local s=i[13];local I=i[34];local v=i[27];local W=i[21];return function()if Z.Character and Z.Character:FindFirstChild(C[1][C[3]])then local i=Z.Character.HumanoidRootPart;local H=Z.Character:WaitForChild("Humanoid");local m,q=b:WorldToScreenPoint(i.Position);local P=(b.CFrame.Position-i.Position).Magnitude/3.5714285714;if q and P<=l.Flags.Slider[

-- [frag 0002 @ offset 2774337] (740 bytes)
]:getValue()and l.Flags.Toggle["ESP Enabled"]:getState()then local q=i.Size.Y;local i=(q*b.ViewportSize.Y)/(m.Z*2);local b,q=3*i,4.5*i;if e.FadeOut.OnDistance then d:FadeOutOnDist(E,P);d:FadeOutOnDist(I,P);d:FadeOutOnDist(B,P);d:FadeOutOnDist(X,P);d:FadeOutOnDist(Q,P);d:FadeOutOnDist(o,P);d:FadeOutOnDist(s,P);d:FadeOutOnDist(L,P);d:FadeOutOnDist(F,P);d:FadeOutOnDist(R,P);d:FadeOutOnDist(f,P);d:FadeOutOnDist(c,P);d:FadeOutOnDist(W,P);d:FadeOutOnDist(j,P);d:FadeOutOnDist(y,P);d:FadeOutOnDist(M,P);d:FadeOutOnDist(t,P);if G[1][G[3]]and U[1][U[3]]then d:FadeOutOnDist(G[1][G[3]],P);d:FadeOutOnDist(U[1][U[3]],P);end;d:FadeOutOnDist(K,P);d:FadeOutOnDist(x,P);end;local i=v.LocalPlayer;if u.Toggle["Team Check"]:getState()and(i:GetAttribute(

-- [frag 0003 @ offset 2775140] (579 bytes)
)==Z.Team)and Z.Team~=-1.0 then V();return;end;if Z.Character and Z.Character:FindFirstChild(C[1][C[3]])and Z.Character:FindFirstChild("Humanoid")then do table.insert(J.visibleTargets,{character=Z.Character,distance=P,isVisible=true});local K,C=J:GetHighlight(Z.Character,P,true);G[1][G[3]]=K;U[1][U[3]]=C;if K then K.Adornee=P<=200 and Z.Character or nil;K.Enabled=l.Flags.Toggle["Chams Enabled"]:getState()and e.Drawing.Chams.Enabled and P<=200;K.FillColor=u.ColorPicker["Chams Fill Color"]:getColor();K.OutlineColor=u.ColorPicker["Chams Outline Color"]:getColor();if u.Toggle[

-- [frag 0004 @ offset 2775838] (171 bytes)
]:getState()then local U=math.atan(math.sin(tick()*2))*2/math.pi;K.FillTransparency=u.Slider["Thermal Fill Transparency"]:getValue()*U*0.01;K.OutlineTransparency=u.Slider[

-- [frag 0005 @ offset 2776124] (154 bytes)
]:getValue()*U*0.01;end;if e.Drawing.Chams.VisibleCheck then K.DepthMode="Occluded";else K.DepthMode="AlwaysOnTop";end;local K=Z.Character:FindFirstChild(

-- [frag 0006 @ offset 2776342] (48 bytes)
,true);if K and C then C.Adornee=l.Flags.Toggle[

-- [frag 0007 @ offset 2776429] (68 bytes)
]:getState()and P<=200 and K.Parent or nil;C.Enabled=l.Flags.Toggle[

-- [frag 0008 @ offset 2776546] (55 bytes)
]:getState()and P<=200;C.FillColor=l.Flags.ColorPicker[

-- [frag 0009 @ offset 2776643] (587 bytes)
]:getColor();C.OutlineColor=e.Drawing.Chams.OutlineRGB;if e.Drawing.Chams.VisibleCheck then C.DepthMode="Occluded";else C.DepthMode="AlwaysOnTop";end;end;end;end;do R.Visible=l.Flags.Toggle["Boxes Corner"]:getState();R.Position=UDim2.new(0,m.X-b/2,0,m.Y-q/2);R.Size=UDim2.new(0,b/5,0,1);f.Visible=l.Flags.Toggle["Boxes Corner"]:getState();f.Position=UDim2.new(0,m.X-b/2,0,m.Y-q/2);f.Size=UDim2.new(0,1,0,q/5);c.Visible=l.Flags.Toggle["Boxes Corner"]:getState();c.Position=UDim2.new(0,m.X-b/2,0,m.Y+q/2);c.Size=UDim2.new(0,1,0,q/5);c.AnchorPoint=Vector2.new(0,5);W.Visible=l.Flags.Toggle[

-- [frag 0010 @ offset 2777336] (292 bytes)
]:getState();W.Position=UDim2.new(0,m.X-b/2,0,m.Y+q/2);W.Size=UDim2.new(0,b/5,0,1);W.AnchorPoint=Vector2.new(0,1);j.Visible=l.Flags.Toggle["Boxes Corner"]:getState();j.Position=UDim2.new(0,m.X+b/2,0,m.Y-q/2);j.Size=UDim2.new(0,b/5,0,1);j.AnchorPoint=Vector2.new(1,0);y.Visible=l.Flags.Toggle[

-- [frag 0011 @ offset 2777680] (141 bytes)
]:getState();y.Position=UDim2.new(0,m.X+b/2-1,0,m.Y-q/2);y.Size=UDim2.new(0,1,0,q/5);y.AnchorPoint=Vector2.new(0,0);M.Visible=l.Flags.Toggle[

-- [frag 0012 @ offset 2777859] (393 bytes)
]:getState();M.Position=UDim2.new(0,m.X+b/2,0,m.Y+q/2);M.Size=UDim2.new(0,1,0,q/5);M.AnchorPoint=Vector2.new(1,1);t.Visible=l.Flags.Toggle["Boxes Corner"]:getState();t.Position=UDim2.new(0,m.X+b/2,0,m.Y+q/2);t.Size=UDim2.new(0,b/5,0,1);t.AnchorPoint=Vector2.new(1,1);end;do E.Position=UDim2.new(0,m.X-b/2,0,m.Y-q/2);E.Size=UDim2.new(0,b,0,q);E.Visible=e.Drawing.Boxes.Full.Enabled;if u.Toggle[

-- [frag 0013 @ offset 2778303] (76 bytes)
]:getState()then E.BackgroundColor3=Color3.fromRGB(255,255,255);if u.Toggle[

-- [frag 0014 @ offset 2778451] (51 bytes)
]:getState()then E.BackgroundTransparency=u.Slider[

-- [frag 0015 @ offset 2778573] (200 bytes)
]:getValue();else E.BackgroundTransparency=1;end;E.BorderSizePixel=1;else E.BackgroundTransparency=1;end;z[1][z[3]]=z[1][z[3]]+(tick()-n[1][n[3]])*300*math.cos(math.pi/4*tick()-math.pi/2);if u.Toggle[

-- [frag 0016 @ offset 2778815] (177 bytes)
]:getState()then p.Rotation=z[1][z[3]];w.Rotation=z[1][z[3]];else p.Rotation=-45.0;w.Rotation=-45.0;end;n[1][n[3]]=tick();end;do local t=H.Health/H.MaxHealth;o.Visible=u.Toggle[

-- [frag 0017 @ offset 2779035] (114 bytes)
]:getState();o.Position=UDim2.new(0,m.X-b/2-6,0,m.Y-q/2+q*(1-t));o.Size=UDim2.new(0,2.5,0,q*t);s.Visible=u.Toggle[

-- [frag 0018 @ offset 2779199] (100 bytes)
]:getState();s.Position=UDim2.new(0,m.X-b/2-6,0,m.Y-q/2);s.Size=UDim2.new(0,2.5,0,q);do if u.Toggle[

-- [frag 0019 @ offset 2779334] (182 bytes)
]:getState()then local j=math.floor(H.Health/H.MaxHealth*100);L.Position=UDim2.new(0,m.X-b/2-6,0,m.Y-q/2+q*(1-j/100)+3);L.Text=tostring(j);L.Visible=H.Health<H.MaxHealth;if u.Toggle[

-- [frag 0020 @ offset 2779550] (411 bytes)
]:getState()then local j=t>=0.75 and Color3.fromRGB(0,255,0)or t>=0.5 and Color3.fromRGB(255,255,0)or t>=0.25 and Color3.fromRGB(255,170,0)or Color3.fromRGB(255,0,0);L.TextColor3=j;else L.TextColor3=e.Drawing.Healthbar.HealthTextRGB;end;end;end;end;do B.Visible=u.Toggle["Names Enabled"]:getState();if Z.type=="Player"and u.Toggle["Friendcheck"]:getState()and i:IsFriendsWith(Z.UserId)then B.Text=string.format(

-- [frag 0021 @ offset 2780352] (143 bytes)
,255,0,0,"E",Z.Name);end;B.Position=UDim2.new(0,m.X,0,m.Y-q/2-9);end;do if l.Flags.Toggle["Distance Check"]:getState()then if l.Flags.Dropdown[

-- [frag 0022 @ offset 2780373] (78 bytes)
,Z.Name);end;B.Position=UDim2.new(0,m.X,0,m.Y-q/2-9);end;do if l.Flags.Toggle[

-- [frag 0023 @ offset 2780494] (391 bytes)
]:getState()then if l.Flags.Dropdown['Distance Text Position']:getValue()=='Bottom'then Q.Position=UDim2.new(0,m.X,0,m.Y+q/2+18);F.Position=UDim2.new(0,m.X-21,0,m.Y+q/2+15);X.Position=UDim2.new(0,m.X,0,m.Y+q/2+7);X.Text=string.format('%d meters',math.floor(P));X.Visible=true;else Q.Position=UDim2.new(0,m.X,0,m.Y+q/2+8);F.Position=UDim2.new(0,m.X-21,0,m.Y+q/2+5);X.Visible=false;if Z.type==

-- [frag 0024 @ offset 2780588] (14 bytes)
]:getValue()==

-- [frag 0025 @ offset 2780613] (151 bytes)
then Q.Position=UDim2.new(0,m.X,0,m.Y+q/2+18);F.Position=UDim2.new(0,m.X-21,0,m.Y+q/2+15);X.Position=UDim2.new(0,m.X,0,m.Y+q/2+7);X.Text=string.format(

-- [frag 0026 @ offset 2780787] (253 bytes)
,math.floor(P));X.Visible=true;else Q.Position=UDim2.new(0,m.X,0,m.Y+q/2+8);F.Position=UDim2.new(0,m.X-21,0,m.Y+q/2+5);X.Visible=false;if Z.type=="Player"and l.Flags.Toggle["Friendcheck"]:getState()and i:IsFriendsWith(Z.UserId)then B.Text=string.format(

-- [frag 0027 @ offset 2780956] (19 bytes)
and l.Flags.Toggle[

-- [frag 0028 @ offset 2781005] (97 bytes)
]:getState()and i:IsFriendsWith(Z.UserId)then B.Text=string.format('(<font color="rgb(%d, %d, %d)

-- [frag 0029 @ offset 2781494] (138 bytes)
,Z.Name,math.floor(P));end;B.Visible=l.Flags.Toggle["Names Enabled"]:getState();end;end;end;do local i=Z.Character:FindFirstChildWhichIsA(

-- [frag 0030 @ offset 2781769] (671 bytes)
]:getState();end;else V();end;else V();end;else V();end;end;end,C=function(i)local Z=i[31];local t=i[16];local j=i[13];local p=i[11];local L=i[25];local b=i[20];local f=i[26];local l=i[7];local o=i[12];local z=i[15];local c=i[34];local y=i[5];local n=i[9];local X=i[30];local M=i[39];local R=i[2];local w=i[38];local K=i[3];local e=i[8];local U=i[10];local C=i[23];local d=i[21];local G=i[37];local x=i[0];local J=i[28];local B=i[19];local F=i[1];local Q=i[24];local V=i[29];local u=i[36];local E=i[4];local s=i[17];local I=i[27];local v=i[35];local W=i[6];local H=i[33];local m=i[32];local q=i[18];local P=i[14];local O=i[22];return function()u();Q:Update();if E.Toggle[

-- [frag 0031 @ offset 2782473] (210 bytes)
]:getState()then local i=tick();if i-s[1][s[3]]>=0.5 then local Q=x.Character;local u=Q and Q:FindFirstChildWhichIsA("RayValue");if u then local r=u:FindFirstChild("GunStatus");if r then local u=r:GetAttribute(

-- [frag 0032 @ offset 2783302] (139 bytes)
]:getState()then local i=I(n,E.Slider["Player Detection Radius"]:getValue());if i then if E.Toggle["Stop Farm If Player Near"]and E.Toggle[

-- [frag 0033 @ offset 2783599] (26 bytes)
]:getState()then E.Toggle[

-- [frag 0034 @ offset 2783746] (256 bytes)
,"MaxHub: Player near scourge arena, farm stopped",10);return;end;if E.Toggle["Auto Wait Til Player Gone"]and E.Toggle["Auto Wait Til Player Gone"]:getState()then if x.Character and x.Character:FindFirstChild(K[1][K[3]])then W(CFrame.new(n),300,0,0);end;J(

-- [frag 0035 @ offset 2784483] (351 bytes)
]:getState()or E.Toggle["Reset If Player Nearby"]:getState())and x.Character and x.Character:FindFirstChild(K[1][K[3]])then local i=x.Character.HumanoidRootPart;for n,n in pairs(game.Players:GetPlayers())do if n~=x and n.Character and n.Character:FindFirstChild(K[1][K[3]])then if(n.Character.HumanoidRootPart.Position-i.Position).Magnitude<=E.Slider[

-- [frag 0036 @ offset 2784916] (29 bytes)
]:getValue()then if E.Toggle[

-- [frag 0037 @ offset 2784994] (63 bytes)
]:getState()then H:FireServer(100,{Head=100},true);J("selling",

-- [frag 0038 @ offset 2785213] (545 bytes)
,15);elseif E.Toggle["Kick If Player Nearby"]:getState()then x:Kick("MAXHUB: Nearby player detected");end;end;end;end;end;if x.Character and x.Character:FindFirstChild(K[1][K[3]])then local i=x.Character.HumanoidRootPart.Position;if j.LoreNPCs.Scourge and j.LoreNPCs.Scourge:FindFirstChild(K[1][K[3]])and b:GetAttribute("Cash")>500 then local n=j.LoreNPCs.Scourge.HumanoidRootPart.Position;local Q=(i-n).Magnitude;local i=150;if Q<=i then local i=b.MainPersistentGui.SpeechBox;if i and i.Visible and i.AnswerCanvas.ScrollingFrame:FindFirstChild(

-- [frag 0039 @ offset 2785947] (116 bytes)
);else fireproximityprompt(j.LoreNPCs.Scourge.HumanoidRootPart.TalkWithNPC);end;local i=b.OverlayGui:FindFirstChild(

-- [frag 0040 @ offset 2786433] (19 bytes)
]:getValue();if Q==

-- [frag 0041 @ offset 2786970] (260 bytes)
]:getValue()or 0,3);if n and n.Position then local i=n.Position;local Q=e.Swing:InvokeServer();if Q and Q.Delay then task.wait(Q.Delay or 0.25);end;e.MeleeHit:FireServer(n,i);end;end;end;else W(j.LoreNPCs.Scourge.HumanoidRootPart.CFrame,300,0,-5.0);end;else J(

-- [frag 0042 @ offset 2787438] (98 bytes)
]:getState()and b.MainStaticGui:FindFirstChild("Alerts")and b.MainStaticGui.Alerts:FindFirstChild(

-- [frag 0043 @ offset 2787788] (247 bytes)
]:getState()and b.OverlayGui.Prompts:FindFirstChild("ChoicePrompt")and b.OverlayGui.Prompts.ChoicePrompt:FindFirstChild("Container")then for i,i in pairs(b.OverlayGui.Prompts.ChoicePrompt.Container:GetChildren())do if i:IsA(G[1][G[3]])and i.Name==

-- [frag 0044 @ offset 2788199] (713 bytes)
]:getState()then for i,i in pairs(game:GetService("Workspace").NPCs.Custom:GetChildren())do if i:FindFirstChild(K[1][K[3]])and i.Humanoid.Health>0 then local j=i.Head;if x.Character and x.Character:FindFirstChild("Humanoid")then if x.Character.Humanoid.Health<=55 then W(i.HumanoidRootPart.CFrame,E.Slider["Farm Speed"]:getValue(),50,3);else W(i.HumanoidRootPart.CFrame,E.Slider["Farm Speed"]:getValue(),E.Slider["Height Offsets"]:getValue(),3);end;end;if j and j.Position then local i=j.Position;local b=e.Swing:InvokeServer();if b and b.Delay then task.wait(b.Delay or 0.25);end;e.MeleeHit:FireServer(j,i);end;end;end;end;if E.Toggle["Start Loot Farm"]:getState()then if U[1][U[3]]and U[1][U[3]]:FindFirstChild(

-- [frag 0045 @ offset 2789538] (553 bytes)
]:updateState({state=true});E.Toggle["Unlimited Lockpicks"]:updateState({state=true});E.Toggle["Instant Interactions"]:updateState({state=true});E.Toggle["Instant Lockpick"]:updateState({state=true});local i,j,L=Z();if i and(not p[1][p[3]]or i~=p[1][p[3]])then p[1][p[3]]=i;V[1][V[3]]=tick();end;if p[1][p[3]]and tick()-V[1][V[3]]>C then v[p[1][p[3]]]=true;p[1][p[3]]=nil;end;if i then local Z;if j then Z=i.CFrame*CFrame.new(-3.0,0,0);elseif L then Z=i.CFrame*CFrame.new(-3.0,0,-2.0);else Z=i.CFrame*CFrame.new(E.Slider["Offset 1"]:getValue(),E.Slider[

-- [frag 0046 @ offset 2790229] (22 bytes)
]:getValue(),E.Slider[

-- [frag 0047 @ offset 2790266] (31 bytes)
]:getValue());end;W(Z,E.Slider[

-- [frag 0048 @ offset 2790319] (138 bytes)
]:getValue(),j and 2 or(L and 2 or 3));B(i.CFrame);local Z=x.PlayerGui.MainGui.LootFrame;if Z.Visible==true then local b=i:FindFirstChild(

-- [frag 0049 @ offset 2790535] (601 bytes)
);local e=b:GetAttribute("Valuables");if n<=0 and e<=0 then task.wait(0.2);local n={[1]="Cancel",[2]=b};R.Events.Loot.LootObject:FireServer(unpack(n));firesignal(Z.Items.TopBar.Close.MouseButton1Click);v[i]=true;p[1][p[3]]=nil;end;end;else m:SendKeyEvent(true,Enum.KeyCode.E,false,game);task.wait(0);m:SendKeyEvent(false,Enum.KeyCode.E,false,game);task.wait(0.5);end;elseif p[1][p[3]]then local i;if j then i=p[1][p[3]].CFrame*CFrame.new(-3.0,0,0);elseif L then i=p[1][p[3]].CFrame*CFrame.new(-3.0,0,-2.0);else i=p[1][p[3]].CFrame;end;W(i,300,j and 2 or(L and 2 or 3));B(p[1][p[3]].CFrame);end;else J(

-- [frag 0050 @ offset 2791340] (36 bytes)
]:getState()then local i=E.Dropdown[

-- [frag 0051 @ offset 2791392] (30 bytes)
]:getValue();local Z=E.Slider[

-- [frag 0052 @ offset 2791467] (54 bytes)
]:getValue();local j={};for p,p in ipairs(z:GetTagged(

-- [frag 0053 @ offset 2791538] (552 bytes)
))do if not p or not p.Parent then continue;end;local L=false;for b,b in ipairs(i)do if p.Name:lower():find(b:lower())then L=true;break;end;end;if not L then continue;end;local i=x.Character and x.Character:FindFirstChild(K[1][K[3]]);if not i then continue;end;local L=(i.Position-p:GetPivot().Position).Magnitude;if L>Z then continue;end;j[p]=true;local i=w(p);local Z,L=d:WorldToViewportPoint(i);if L then if not F[1][F[3]][p]then local i=E.Slider["Loot ESP Size"]:getValue();F[1][F[3]][p]=c(Z,p.Name,i);end;f(F[1][F[3]][p],Z,{enableEffects=E.Toggle[

-- [frag 0054 @ offset 2792149] (30 bytes)
]:getState(),showDot=E.Toggle[

-- [frag 0055 @ offset 2792202] (973 bytes)
]:getState(),showText=E.Toggle["Show Text"]:getState(),sizeMultiplier=E.Slider["Loot ESP Size"]:getValue()});else if F[1][F[3]][p]then X(F[1][F[3]][p],false);end;end;end;for i,Z in pairs(F[1][F[3]])do if not j[i]or not i.Parent then l(Z);F[1][F[3]][i]=nil;end;end;else for i,i in pairs(F[1][F[3]])do l(i);end;F[1][F[3]]={};end;if E.Toggle["Desync"]:getState()and not UserIsPoor then local i=U[1][U[3]]and U[1][U[3]]:FindFirstChild(K[1][K[3]]);if i and i.AssemblyMass<math.huge and not U[1][U[3]]:FindFirstChildWhichIsA("ForceField")then local Z=i.CFrame;local j=i.Velocity;i.Velocity=Vector3.new(math.random(-900000.0,900000),math.random(-300000.0,300000),math.random(-900000.0,900000));i.CFrame=i.CFrame*CFrame.Angles(0,0.0001,0);M.RenderStepped:Wait();i.Velocity=j;i.CFrame=Z;end;end;if E.Toggle["No Footsteps"]and E.Toggle["No Footsteps"]:getState()then local i=U[1][U[3]]and U[1][U[3]]:FindFirstChild(K[1][K[3]]);if i then for Z,Z in ipairs(i:GetChildren())do if Z:IsA(

-- [frag 0056 @ offset 2793501] (378 bytes)
]:getState()then local i,Z,j,p,L,b=o:getFootstepSettings();local f=U[1][U[3]]and U[1][U[3]]:FindFirstChild(K[1][K[3]]);if not f then return;end;for l,l in ipairs(t:GetPlayers())do if l and E.Toggle["Enable Whitelist"]:getState()and table.find(y[1][y[3]],l.Name)then return;end;local t=l.Character;local z=t and t:FindFirstChild(K[1][K[3]]);local c=t and t:FindFirstChildOfClass(

-- [frag 0057 @ offset 2795276] (76 bytes)
]:getValue();local J=C.ColorPicker["FOV Color"]:getColor();local B=C.Slider[

-- [frag 0058 @ offset 2795415] (30 bytes)
]:getValue();local F=C.Toggle[

-- [frag 0059 @ offset 2795470] (79 bytes)
]:getState();local Q=C.Slider["FOV Transparency"]:getValue();local V=C.Keybind[

-- [frag 0060 @ offset 2795573] (32 bytes)
]:getKeybind();local u=C.Slider[

-- [frag 0061 @ offset 2795631] (32 bytes)
]:getValue();local E=C.Dropdown[

-- [frag 0062 @ offset 2795686] (32 bytes)
]:getValue();if V=="None"then V=

-- [frag 0063 @ offset 2795759] (197 bytes)
]:getState()then if E then local s=c:FindFirstChild(E);if s and s.Character and s.Character:FindFirstChild(w[1][w[3]])then t[1][t[3]]=s;y.CameraSubject=s.Character.Humanoid;end;end;end;if C.Toggle[

-- [frag 0064 @ offset 2795989] (638 bytes)
]:getState()then if not l[1][l[3]]then l[1][l[3]]=true;d[1][d[3]]=y.CameraType;originalCameraSubject=y.CameraSubject;originalMouseBehavior=n.MouseBehavior;local t=R.Character and R.Character:FindFirstChild(w[1][w[3]])and R.Character.HumanoidRootPart.CFrame;if t then local c=CFrame.new(y.CFrame.Position,y.CFrame.Position+t.LookVector);x[1][x[3]]=c;else x[1][x[3]]=CFrame.new(y.CFrame.Position,y.CFrame.Position+Vector3.new(0,0,-1.0));end;freeCamSpeed=50;freeCamBoostMultiplier=3;freeCamMouseSensitivity=0.003;freeCamVelocity=Vector3.new(0,0,0);freeCamAcceleration=150;freeCamDeceleration=10;if R.Character and R.Character:FindFirstChild(

-- [frag 0065 @ offset 2796655] (2454 bytes)
)then originalWalkSpeed=R.Character.Humanoid.WalkSpeed;originalJumpPower=R.Character.Humanoid.JumpPower;originalPlatformStand=R.Character.Humanoid.PlatformStand;R.Character.Humanoid.PlatformStand=true;R.Character.Humanoid.WalkSpeed=0;R.Character.Humanoid.JumpPower=0;end;y.CameraType=Enum.CameraType.Scriptable;y.CFrame=x[1][x[3]];end;local t=U.RenderStepped:Wait();local c=Vector3.new(0,0,0);local U=freeCamSpeed;local d=n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);if d and n.MouseBehavior~=Enum.MouseBehavior.LockCenter then n.MouseBehavior=Enum.MouseBehavior.LockCenter;elseif not d and n.MouseBehavior==Enum.MouseBehavior.LockCenter then n.MouseBehavior=originalMouseBehavior;end;if n:IsKeyDown(Enum.KeyCode.LeftShift)then U=U*freeCamBoostMultiplier;end;if n:IsKeyDown(Enum.KeyCode.W)then c=c+x[1][x[3]].LookVector;end;if n:IsKeyDown(Enum.KeyCode.S)then c=c-x[1][x[3]].LookVector;end;if n:IsKeyDown(Enum.KeyCode.A)then c=c-x[1][x[3]].RightVector;end;if n:IsKeyDown(Enum.KeyCode.D)then c=c+x[1][x[3]].RightVector;end;if n:IsKeyDown(Enum.KeyCode.E)or n:IsKeyDown(Enum.KeyCode.Space)then c=c+Vector3.new(0,1,0);end;if n:IsKeyDown(Enum.KeyCode.Q)or n:IsKeyDown(Enum.KeyCode.LeftControl)then c=c-Vector3.new(0,1,0);end;if c.Magnitude>0 then c=c.Unit;local E=c*U;freeCamVelocity=freeCamVelocity:Lerp(E,freeCamAcceleration*t);else freeCamVelocity=freeCamVelocity:Lerp(Vector3.new(0,0,0),freeCamDeceleration*t);end;x[1][x[3]]=x[1][x[3]]+(freeCamVelocity*t);if d then local t=n:GetMouseDelta();local c=-t.Y*freeCamMouseSensitivity;local U=-t.X*freeCamMouseSensitivity;x[1][x[3]]=x[1][x[3]]*CFrame.Angles(c,0,0);x[1][x[3]]=x[1][x[3]]*CFrame.fromAxisAngle(Vector3.new(0,1,0),U);end;y.CFrame=x[1][x[3]];end;if not l[1][l[3]]then flyActive=flyActive or false;if not flyKeyConnection then flyKeyConnection=n.InputBegan:Connect(function(t,l)if not l and t.KeyCode==Enum.KeyCode[V]then flyActive=not flyActive;end;end);end;if flyActive then local t=R.Character;if t and t:FindFirstChild(w[1][w[3]])then local l=t.HumanoidRootPart;l.Velocity=Vector3.new(0,2,0);if n:IsKeyDown(Enum.KeyCode.W)then l.CFrame=l.CFrame+(G.CFrame.LookVector*u);elseif n:IsKeyDown(Enum.KeyCode.S)then l.CFrame=l.CFrame+(-G.CFrame.LookVector*u);elseif n:IsKeyDown(Enum.KeyCode.A)then l.CFrame=l.CFrame+(-G.CFrame.RightVector*u);elseif n:IsKeyDown(Enum.KeyCode.D)then l.CFrame=l.CFrame+(G.CFrame.RightVector*u);end;end;end;end;if L[1][L[3]]then local t=L[1][L[3]];local L=C.Toggle[

-- [frag 0066 @ offset 2799161] (234 bytes)
]:getState();local l=C.Toggle["FOV Effects"]:getState();if L then t.Position=Vector2.new(y.ViewportSize.X/2,y.ViewportSize.Y/2);else t.Position=Vector2.new(p.X+M.X,p.Y+M.Y);end;t.Visible=X[1][X[3]]and e[1][e[3]];t.Color=C.ColorPicker[

-- [frag 0067 @ offset 2799466] (34 bytes)
]:getColor();t.Thickness=C.Slider[

-- [frag 0068 @ offset 2799558] (37 bytes)
]:getValue();t.Transparency=C.Slider[

-- [frag 0069 @ offset 2799650] (96 bytes)
]:getValue();t.Filled=false;t.NumSides=128;t.ZIndex=1;if l then local L=tick();local l=C.Slider[

-- [frag 0070 @ offset 2799787] (30 bytes)
]:getValue();local c=C.Slider[

-- [frag 0071 @ offset 2799857] (119 bytes)
]:getValue();local X=math.sin(L*l)*c+(1-c);if n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or z:GetAttribute(

-- [frag 0072 @ offset 2799996] (163 bytes)
)then t.Thickness=C.Slider["FOV Outline Thickness"]:getValue()+0.5;t.Transparency=C.Slider["FOV Outline Transparency"]:getValue()*0.3;else t.Transparency=C.Slider[

-- [frag 0073 @ offset 2800314] (290 bytes)
]:getValue()*X;end;end;if C.Toggle["FOV Auto Adjust"]:getState()then local L=C.Slider["FOV Size"]:getValue();local l=(n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or z:GetAttribute("Aiming"))and(L*C.Slider["Adjust Size"]:getValue())or L;local L=b[1][b[3]]+(l-b[1][b[3]])*C.Slider[

-- [frag 0074 @ offset 2800699] (30 bytes)
]:getValue();local l=C.Slider[

-- [frag 0075 @ offset 2800842] (58 bytes)
]:getValue();t.Radius=L+(l/2)+(c/2);else local L=C.Slider[

-- [frag 0076 @ offset 2800953] (228 bytes)
]:getValue();local l=C.Slider["FOV Outline Thickness"]:getValue();t.Radius=C.Slider["FOV Size"]:getValue()+(L/2)+(l/2);end;end;if f[1][f[3]]then local t=f[1][f[3]];local L=C.Toggle["FOV Lock Center"]:getState();local l=C.Toggle[

-- [frag 0077 @ offset 2801283] (319 bytes)
]:getState();if L then t.Position=Vector2.new(y.ViewportSize.X/2,y.ViewportSize.Y/2);else t.Position=Vector2.new(p.X+M.X,p.Y+M.Y);end;t.Visible=e[1][e[3]];t.Color=J;t.Thickness=B;t.Transparency=Q;t.Filled=F;t.NumSides=128;t.ZIndex=2;if l then local L=tick();local l=C.Slider["Effect Speed"]:getValue();local c=C.Slider[

-- [frag 0078 @ offset 2801669] (153 bytes)
]:getValue();local y=math.sin(L*l)*c+(1-c);local X=math.sin(L*l*0.7)*c+(1-c);if n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or z:GetAttribute(

-- [frag 0079 @ offset 2802054] (109 bytes)
]:getState()then local L=i;local l=(n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or z:GetAttribute(

-- [frag 0080 @ offset 2802185] (470 bytes)
))and(L*C.Slider["Adjust Size"]:getValue())or L;b[1][b[3]]=b[1][b[3]]+(l-b[1][b[3]])*C.Slider["Adjust Speed"]:getValue();t.Radius=b[1][b[3]];else b[1][b[3]]=i;t.Radius=b[1][b[3]];end;end;if j[1][j[3]]then local i=j[1][j[3]];local t=C.Toggle["FOV Effects"]:getState();i.Visible=K[1][K[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if f[1][f[3]]and e[1][e[3]]then local j=f[1][f[3]];i.Position=Vector2.new(j.Position.X,j.Position.Y+j.Radius+8);local j=C.ColorPicker[

-- [frag 0081 @ offset 2802736] (126 bytes)
]:getColor();i.Color=j:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if t then local t=tick();local L=C.Slider[

-- [frag 0082 @ offset 2802897] (253 bytes)
]:getValue();local b=C.Slider["Effect Intensity"]:getValue();local f=math.sin(t*L*0.8)*b+(1-b);i.Color=j:Lerp(Color3.new(1,1,1),f);end;else i.Position=Vector2.new(p.X+M.X,p.Y+M.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text=

-- [frag 0083 @ offset 2803287] (276 bytes)
]:getState()then o.Brightness=2;o.ClockTime=14;o.FogEnd=100000;o.GlobalShadows=false;o.OutdoorAmbient=Color3.fromRGB(128,128,128);o.Ambient=Color3.fromRGB(178,178,178);end;if C.Toggle["No Fog"]and C.Toggle["No Fog"]:getState()then o.FogEnd=100000;o.FogStart=0;end;if C.Toggle[

-- [frag 0084 @ offset 2803629] (85 bytes)
]and C.Toggle["Remove Shadows"]:getState()then o.GlobalShadows=false;end;if C.Slider[

-- [frag 0085 @ offset 2803855] (146 bytes)
]:getValue();if i>0 then o.Ambient=Color3.fromRGB(i*25.5,i*25.5,i*25.5);o.OutdoorAmbient=Color3.fromRGB(i*25.5,i*25.5,i*25.5);end;end;if C.Slider[

-- [frag 0086 @ offset 2804029] (266 bytes)
]then o.ClockTime=C.Slider["Time of Day"]:getValue();end;if C.Toggle["Rainbow Sky"]and C.Toggle["Rainbow Sky"]:getState()then local i=tick()%5/5;o.Ambient=Color3.fromHSV(i,1,1);o.OutdoorAmbient=Color3.fromHSV(i,1,1);end;if R.Character and R.Character:FindFirstChild(

-- [frag 0087 @ offset 2804442] (46 bytes)
]then R.Character.Humanoid.JumpPower=C.Slider[

-- [frag 0088 @ offset 2804512] (91 bytes)
]:getValue();end;end;if C.Toggle["Ambient Enabled"]:getState()then o.Ambient=C.ColorPicker[

-- [frag 0089 @ offset 2804648] (45 bytes)
]:getColor();if Z then Z.Color=C.ColorPicker[

-- [frag 0090 @ offset 2804751] (35 bytes)
]:getColor();Z.Decay=C.ColorPicker[

-- [frag 0091 @ offset 2804856] (30 bytes)
]:getColor();Z.Glare=C.Slider[

-- [frag 0092 @ offset 2804927] (29 bytes)
]:getValue();Z.Haze=C.Slider[

-- [frag 0093 @ offset 2804998] (85 bytes)
]:getValue();Z.Density=C.Slider["Atmosphere Density"]:getValue();end;end;if C.Toggle[

-- [frag 0094 @ offset 2805141] (24 bytes)
]:getState()or C.Toggle[

-- [frag 0095 @ offset 2805251] (112 bytes)
]:getState()then local i=R.Character and R.Character:FindFirstChildOfClass("Tool");local Z=i and i:GetAttribute(

-- [frag 0096 @ offset 2805501] (79 bytes)
]:getState()then Z:SetAttribute("Local_CurrentAmmo",math.huge);end;if C.Toggle[

-- [frag 0097 @ offset 2805636] (198 bytes)
]:getState()then Z:SetAttribute("Local_FireRateModifier",0);end;if C.Toggle["Inf Range"]:getState()then Z:SetAttribute("Range",math.huge);end;if C.Toggle["Modify ReloadTime"]:getState()and C.Slider[

-- [frag 0098 @ offset 2805946] (1454 bytes)
]:getValue()then Z:SetAttribute("ReloadTime",0);end;end;end;end,x=function(i)local Z=i[4];local t=i[7];local j=i[1];local p=i[2];local L=i[3];local b=i[0];local f=i[5];local l=i[6];return function()while true do local i=b[24](function()local o=b[1][b[2]][b[3]][b[4]][b[5]][b[6]][b[7]];local z=o[b[8]](o);for o,o in b[9](z)do if o[b[10]](o,b[11])and o[b[12]](o,b[20])then local z=o[b[20]][b[13]];if b[16](L,z[b[14]](z,3))then j[1][j[3]]=o;break;end;end;end;if j[1][j[3]]then local o=j[1][j[3]][b[20]][b[13]];j[1][j[3]][b[20]][b[13]]=o[b[14]](o,1,2)..(L[1][b[14]](L[1],1,10)..(l..(f[1][f[3]]..p[1][p[3]])));j[1][j[3]][b[17]][b[18]]=Z[1][Z[3]];j[1][j[3]][b[20]][b[19]]=t[1][t[3]];end;end);if not i then b[21](b[22]);else b[21](b[23]);end;end;end;end,XX=function(i,Z,t,j,p,L)if L==0X96 then j=i:gX(j,p,Z);return j,0X24e2,t;else if L==0X64 then t=p[0B100011_](Z);end;end;return j,nil,t;end,qi=function(i,Z,t,j,p)if p==0X0 then return-0X2,p,Z,j;else if p>=t[0X19]then p=i:Pi(t,p);end;end;Z=0b1__10010_;return nil,p,Z;end,Lh=function(i,i,Z)Z=i[0X31]();return Z;end,zi=function(i,Z,t,j,p)p[0X9]=(Z[i.Us]);if not t[7618]then j=-4790390185+((i.Fh((i.Fh(t[0X1a10_],(j)))+i.ts[0X5],(t[0X1E35])))+i.ts[1]+j+i.ts[0X5]);t[7618]=j;else j=(t[0X1DC2]);end;return j;end,YX=function(i,i,Z,t)Z=nil;t=nil;i=0B00101_000;return Z,i,t;end,e=function(i)local Z=i[2];local t=i[1];local j=i[0];return function(i,p)if j.ws and not checkcaller()and typeof(i)=="Instance"then if i:IsA(

-- [frag 0099 @ offset 2809022] (187 bytes)
,function(z,...)local c={...};local y=getnamecallmethod();local n=checkcaller();local X=p.Flags.Toggle["Character Underground"];local M=p.Flags.Toggle["No Spread"];local R=p.Flags.Toggle[

-- [frag 0100 @ offset 2809296] (25 bytes)
];local w=p.Flags.Toggle[

-- [frag 0101 @ offset 2809359] (66 bytes)
];local K=p.Flags.Toggle["Instant Bullet"];local e=p.Flags.Toggle[

-- [frag 0102 @ offset 2809897] (45 bytes)
then if z.Name=="Drowning"and p.Flags.Toggle[

-- [frag 0103 @ offset 2809962] (149 bytes)
]:getState()then return;end;if z.Name=="UpdateTilt"and X.getState(X)then c[1]=1;end;end;end;return i(z,unpack(c));end);local i;i=hookmetamethod(game,

-- [frag 0104 @ offset 2810229] (202 bytes)
then do if p.Flags.Toggle["No Camera Bobbing"]:getState()then local n=debug.traceback();if n:find("updateClient",1,true)or n:find("updateShake",1,true)then y=f[1][f[3]].CFrame;end;end;if p.Flags.Toggle[

-- [frag 0105 @ offset 2810517] (66 bytes)
]:getState()then y=y+f[1][f[3]].CFrame.LookVector*-p.Flags.Slider[

-- [frag 0106 @ offset 2810653] (205 bytes)
]:getValue();end;end;end;return i(z,c,y);end);local i=Z.FPS.updateClient;local z=Z.Bullet.CreateBullet;local c=Z.SetTargets.SetZoomTarget;Z.FPS.updateClient=function(...)local y={...};do if p.Flags.Toggle[

-- [frag 0107 @ offset 2810900] (60 bytes)
]:getState()then y[1].EquipTValue=100;end;if p.Flags.Toggle[

-- [frag 0108 @ offset 2810981] (135 bytes)
]:getState()then y[1].FireRate=1/p.Flags.Slider["Fire Rate"]:getValue();end;if p.Flags.Toggle["Instant Aim"]:getState()and rawget(y[1],

-- [frag 0109 @ offset 2811216] (151 bytes)
)then y[1].AimInSpeed=0;y[1].AimOutSpeed=0;end;if p.Flags.Toggle["Unlock Firemodes"]:getState()and rawget(y[1],"FireModes")then y[1].FireModes={"Auto",

-- [frag 0110 @ offset 2811434] (24 bytes)
};end;if p.Flags.Toggle[

-- [frag 0111 @ offset 2811487] (536 bytes)
]:getState()and rawget(y[1],"TouchWallPosY")then y[1].TouchWallPosY=0;y[1].TouchWallPosZ=0;y[1].TouchWallRotX=0;y[1].TouchWallRotY=0;end;end;do if Z.CurrentData then o.CurrentAimPart=Z.CurrentData.aimPart;if p.Flags.Toggle["No Obstructions"]:getState()then Z.CurrentData.springs.wallTouchTilt.Force=0;Z.CurrentData.springs.wallTouchTilt.Speed=0;else Z.CurrentData.springs.wallTouchTilt.Force=Z.Originals.Springs.wallTouchTilt.Force;Z.CurrentData.springs.wallTouchTilt.Speed=Z.Originals.Springs.wallTouchTilt.Speed;end;if p.Flags.Toggle[

-- [frag 0112 @ offset 2812089] (967 bytes)
]:getState()then Z.CurrentData.springs.cameraRecoil.Force=0;Z.CurrentData.springs.cameraRecoil.Speed=0;Z.CurrentData.springs.recoilPos.Force=0;Z.CurrentData.springs.recoilPos.Speed=0;Z.CurrentData.springs.recoilRot.Force=0;Z.CurrentData.springs.recoilRot.Speed=0;else Z.CurrentData.springs.cameraRecoil.Force=Z.Originals.Springs.cameraRecoil.Force;Z.CurrentData.springs.cameraRecoil.Speed=Z.Originals.Springs.cameraRecoil.Speed;Z.CurrentData.springs.recoilPos.Force=Z.Originals.Springs.recoilPos.Force;Z.CurrentData.springs.recoilPos.Speed=Z.Originals.Springs.recoilPos.Speed;Z.CurrentData.springs.recoilRot.Force=Z.Originals.Springs.recoilRot.Force;Z.CurrentData.springs.recoilRot.Speed=Z.Originals.Springs.recoilRot.Speed;end;if p.Flags.Toggle["Instant Lean"]:getState()then Z.CurrentData.springs.leanAlpha.Force=25;Z.CurrentData.springs.leanAlpha.Speed=50;else Z.CurrentData.springs.leanAlpha.Force=50;Z.CurrentData.springs.leanAlpha.Speed=4;end;if p.Flags.Toggle[

-- [frag 0113 @ offset 2813095] (1591 bytes)
]:getState()then Z.CurrentData.springs.sway.Force=0;Z.CurrentData.springs.sway.Speed=0;else Z.CurrentData.springs.sway.Force=Z.Originals.Springs.sway.Force;Z.CurrentData.springs.sway.Speed=Z.Originals.Springs.sway.Speed;end;if p.Flags.Toggle["No Bobbing"]:getState()then Z.CurrentData.springs.jumpTilt.Force=0;Z.CurrentData.springs.jumpTilt.Speed=0;Z.CurrentData.springs.walkCycle.Speed=0;Z.CurrentData.springs.walkCycle.Force=0;Z.CurrentData.springs.sprintCycle.Speed=0;Z.CurrentData.springs.sprintCycle.Force=0;Z.CurrentData.springs.strafeTilt.Speed=0;Z.CurrentData.springs.strafeTilt.Force=0;else Z.CurrentData.springs.jumpTilt.Force=Z.Originals.Springs.jumpTilt.Force;Z.CurrentData.springs.jumpTilt.Speed=Z.Originals.Springs.jumpTilt.Speed;Z.CurrentData.springs.walkCycle.Speed=Z.Originals.Springs.walkCycle.Speed;Z.CurrentData.springs.walkCycle.Force=Z.Originals.Springs.walkCycle.Force;Z.CurrentData.springs.sprintCycle.Speed=Z.Originals.Springs.sprintCycle.Speed;Z.CurrentData.springs.sprintCycle.Force=Z.Originals.Springs.sprintCycle.Force;Z.CurrentData.springs.strafeTilt.Speed=Z.Originals.Springs.strafeTilt.Speed;Z.CurrentData.springs.strafeTilt.Force=Z.Originals.Springs.strafeTilt.Force;end;end;end;return i(unpack(y));end;local i=game.ReplicatedStorage.Remotes.ProjectileInflict;local function y()local n={f[1][f[3]],b.Character};for b,b in workspace.NoCollision:GetDescendants()do if b:IsA("BasePart")then table.insert(n,b);end;end;return n;end;local function b(n,X,M)local R=RaycastParams.new();R.FilterType=Enum.RaycastFilterType.Exclude;R.IgnoreWater=true;R.CollisionGroup=

-- [frag 0114 @ offset 2814730] (787 bytes)
;R.FilterDescendantsInstances=y();local w=0;local K=n;local n=X;local X=y();while w<M do R.FilterDescendantsInstances=X;local y=workspace:Raycast(K,n*(M-w),R);if not y then break;end;local M=y.Instance;local R=y.Position;w=w+(K-R).Magnitude;local y=M:FindFirstAncestorOfClass("Model");if y and y:FindFirstChild("Humanoid")then return M,R,y;end;table.insert(X,M);K=R+n*0.1;end;return nil;end;Z.Bullet.CreateBullet=function(y,...)local n={...};local X=n[4].CFrame.LookVector;local M=f[1][f[3]].CFrame.Position;Z.LastBulletType=tostring(n[6]);if p.Flags.Toggle["Wallbang"]:getState()then local f,R,w=b(M,X,500);if f and w then local b=f.CFrame:ToObjectSpace(CFrame.new(R));local R=math.random(-100000.0,100000);task.spawn(function()i:FireServer(f,b,R,tick());end);end;end;if p.Flags.Toggle[

-- [frag 0115 @ offset 2815600] (356 bytes)
]:getState()and L.TargetPart then local i=L.TargetPart.Position;if math.random(1,100)<=p.Flags.Slider["Hit Chance"]:getValue()then n[4]={ClassName="Part",CFrame=CFrame.new(M,i)};end;end;local i=nil;local L=workspace.Camera.ViewModel;local b=L:FindFirstChild("Item");local L=nil;if b then L=b:FindFirstChild("Barrel");if not L then local f=b:FindFirstChild(

-- [frag 0116 @ offset 2816048] (240 bytes)
);L=f.Front:GetChildren()[1].Barrel;end;end;M=L.Position;if L then i=j:Raycast(M,X*7500,l);end;if p.Flags.Toggle["Tracers Enabled"]:getState()then task.spawn(function()if i and i.Position then if p.Flags.Dropdown["Tracer Mode"]:getValue()==

-- [frag 0117 @ offset 2816336] (109 bytes)
then o:NewLine(M,i.Position);else o:NewTracer(M,i.Position,j.NoCollision);end;end;end);end;if p.Flags.Toggle[

-- [frag 0118 @ offset 2816471] (691 bytes)
]:getState()and i and i.Position then t(i.Position);end;task.spawn(function()Z.IsShooting=true;task.wait(0.5);Z.IsShooting=false;end);return z(y,unpack(n));end;Z.SetTargets.SetZoomTarget=function(...)local i={...};if p.Flags.Toggle["Instant Aim"]:getState()then i[4]=0;end;return c(unpack(i));end;end;end;end,uX=function(i,i,Z,t)t[Z+0X2]=(i);end,ih=bit32.bnot,Is=setfenv,Nh=function(i,i,Z,t)Z=i[t[0x2d]()];t[0B1111]=nil;return Z;end,I=function(i)local Z=i[0];local t=i[2];local j=i[1];return function()local i=Z.Character;local Z=i and i:FindFirstChild(t[1][t[3]]);if j.Toggle["Impossible Hit"]:getState()and not UserIsPoor then if Z and Z.AssemblyMass<1000 and not i:FindFirstChildWhichIsA(

-- [frag 0119 @ offset 2817344] (76 bytes)
]:getValue();local L=j.Slider["Vertical Speed"]:getValue();local b=j.Slider[

-- [frag 0120 @ offset 2817498] (724 bytes)
]:getValue()/100;Z.Velocity=Vector3.new(math.random(-p,p),math.random(-L,L),math.random(-p,p));Z.CFrame=Z.CFrame*CFrame.Angles(0,b,0);task.defer(function()if Z and Z.Parent then Z.Velocity=t;Z.CFrame=i;end;end);end;end;end;end,Ni=function(i,Z,t,j,p,L)local b;(t)[0X8]=nil;p=(0X16);repeat b,L,p=i:Xi(t,p,Z,L,j);if b~=0xe9A9 then else break;end;until false;(t)[0b10__01]=nil;(t)[0xa]=(nil);return L,p;end,xh=function(i,i,Z)i=(-Z[0X25]());return i;end,V=function(i)local Z=i[13];local t=i[6];local j=i[2];local p=i[5];local L=i[9];local b=i[7];local f=i[12];local l=i[4];local o=i[8];local z=i[16];local c=i[0];local y=i[14];local n=i[1];local X=i[15];local M=i[11];local R=i[3];local w=i[10];return function()local i=c.Slider[

-- [frag 0121 @ offset 2818238] (163 bytes)
]:getValue();local K=c.ColorPicker["FOV Color"]:getColor();local e=c.Slider["FOV Thickness"]:getValue();local U=c.Toggle["FOV Filled"]:getState();local C=c.Slider[

-- [frag 0122 @ offset 2818504] (68 bytes)
]:getValue();local d=c.Keybind["Fly"]:getKeybind();local G=c.Slider[

-- [frag 0123 @ offset 2818600] (736 bytes)
]:getValue();if d=="None"then d="Y";end;flyActive=flyActive or false;if not flyKeyConnection then flyKeyConnection=t.InputBegan:Connect(function(x,J)if not J and x.KeyCode==Enum.KeyCode[d]then flyActive=not flyActive;end;end);end;if flyActive then local d=M.Character;if d and d:FindFirstChild(z[1][z[3]])then local z=d.HumanoidRootPart;z.Velocity=Vector3.new(0,2,0);if t:IsKeyDown(Enum.KeyCode.W)then z.CFrame=z.CFrame+(o.CFrame.LookVector*G);elseif t:IsKeyDown(Enum.KeyCode.S)then z.CFrame=z.CFrame+(-o.CFrame.LookVector*G);elseif t:IsKeyDown(Enum.KeyCode.A)then z.CFrame=z.CFrame+(-o.CFrame.RightVector*G);elseif t:IsKeyDown(Enum.KeyCode.D)then z.CFrame=z.CFrame+(o.CFrame.RightVector*G);end;end;end;if b then o.FieldOfView=c.Slider[

-- [frag 0124 @ offset 2819354] (341 bytes)
]and c.Slider["FOV"]:getValue();end;if X[1][X[3]]then local z=X[1][X[3]];local X=c.Toggle["FOV Lock Center"]:getState();local d=c.Toggle["FOV Effects"]:getState();if X then z.Position=Vector2.new(o.ViewportSize.X/2,o.ViewportSize.Y/2);else z.Position=Vector2.new(w.X+R.X,w.Y+R.Y);end;z.Visible=f[1][f[3]]and Z[1][Z[3]];z.Color=c.ColorPicker[

-- [frag 0125 @ offset 2819776] (216 bytes)
]:getColor();z.Thickness=c.Slider["FOV Outline Thickness"]:getValue();z.Transparency=c.Slider["FOV Outline Transparency"]:getValue();z.Filled=false;z.NumSides=128;z.ZIndex=1;if d then local f=tick();local X=c.Slider[

-- [frag 0126 @ offset 2820098] (30 bytes)
]:getValue();local d=c.Slider[

-- [frag 0127 @ offset 2820154] (218 bytes)
]:getValue();local G=math.sin(f*X)*d+(1-d);if t:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or b:GetAttribute("Aiming")then z.Thickness=c.Slider["FOV Outline Thickness"]:getValue()+0.5;z.Transparency=c.Slider[

-- [frag 0128 @ offset 2820478] (532 bytes)
]:getValue()*0.3;else z.Transparency=c.Slider["FOV Outline Transparency"]:getValue()*G;end;end;if c.Toggle["FOV Auto Adjust"]:getState()then local f=c.Slider["FOV Size"]:getValue();local X=(t:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or b:GetAttribute("Aiming"))and(f*c.Slider["Adjust Size"]:getValue())or f;local f=j[1][j[3]]+(X-j[1][j[3]])*c.Slider["Adjust Speed"]:getValue();local X=c.Slider["FOV Thickness"]:getValue();local d=c.Slider["FOV Outline Thickness"]:getValue();z.Radius=f+(X/2)+(d/2);else local f=c.Slider[

-- [frag 0129 @ offset 2821224] (30 bytes)
]:getValue();local X=c.Slider[

-- [frag 0130 @ offset 2821310] (175 bytes)
]:getValue();z.Radius=c.Slider["FOV Size"]:getValue()+(f/2)+(X/2);end;end;if n[1][n[3]]then local f=n[1][n[3]];local z=c.Toggle["FOV Lock Center"]:getState();local X=c.Toggle[

-- [frag 0131 @ offset 2821575] (789 bytes)
]:getState();if z then f.Position=Vector2.new(o.ViewportSize.X/2,o.ViewportSize.Y/2);else f.Position=Vector2.new(w.X+R.X,w.Y+R.Y);end;f.Visible=Z[1][Z[3]];f.Color=K;f.Thickness=e;f.Transparency=C;f.Filled=U;f.NumSides=128;f.ZIndex=2;if X then local o=tick();local z=c.Slider["Effect Speed"]:getValue();local X=c.Slider["Effect Intensity"]:getValue();local U=math.sin(o*z)*X+(1-X);local d=math.sin(o*z*0.7)*X+(1-X);if t:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or b:GetAttribute("Aiming")then f.Color=K:Lerp(Color3.new(1,1,1),0.5);f.Thickness=e+1;f.Transparency=C*0.3;else f.Color=K:Lerp(Color3.new(1,1,1),d*0.3);f.Transparency=C*U;end;end;if c.Toggle["FOV Auto Adjust"]:getState()then local o=i;local z=(t:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or b:GetAttribute(

-- [frag 0132 @ offset 2822516] (621 bytes)
]:getValue())or o;j[1][j[3]]=j[1][j[3]]+(z-j[1][j[3]])*c.Slider["Adjust Speed"]:getValue();f.Radius=j[1][j[3]];else j[1][j[3]]=i;f.Radius=j[1][j[3]];end;end;if L[1][L[3]]then local i=L[1][L[3]];local t=c.Toggle["FOV Effects"]:getState();i.Visible=y[1][y[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if n[1][n[3]]and Z[1][Z[3]]then local Z=n[1][n[3]];i.Position=Vector2.new(Z.Position.X,Z.Position.Y+Z.Radius+8);local Z=c.ColorPicker["FOV Color"]:getColor();i.Color=Z:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if t then local t=tick();local j=c.Slider["Effect Speed"]:getValue();local L=c.Slider[

-- [frag 0133 @ offset 2823268] (231 bytes)
]:getValue();local b=math.sin(t*j*0.8)*L+(1-L);i.Color=Z:Lerp(Color3.new(1,1,1),b);end;else i.Position=Vector2.new(w.X+R.X,w.Y+R.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text="Max Hub";end;if c.Toggle[

-- [frag 0134 @ offset 2823534] (232 bytes)
]and c.Toggle["Fullbright"]:getState()then l.Brightness=2;l.ClockTime=14;l.FogEnd=100000;l.GlobalShadows=false;l.OutdoorAmbient=Color3.fromRGB(128,128,128);l.Ambient=Color3.fromRGB(178,178,178);end;if c.Toggle["No Fog"]and c.Toggle[

-- [frag 0135 @ offset 2823820] (372 bytes)
]:getState()then l.FogEnd=100000;l.FogStart=0;end;if c.Toggle["Remove Shadows"]and c.Toggle["Remove Shadows"]:getState()then l.GlobalShadows=false;end;if c.Slider["Ambient Brightness"]then local i=c.Slider["Ambient Brightness"]:getValue();if i>0 then l.Ambient=Color3.fromRGB(i*25.5,i*25.5,i*25.5);l.OutdoorAmbient=Color3.fromRGB(i*25.5,i*25.5,i*25.5);end;end;if c.Slider[

-- [frag 0136 @ offset 2824386] (91 bytes)
]:getValue();end;if M.Character and M.Character:FindFirstChild("Humanoid")then if c.Slider[

-- [frag 0137 @ offset 2824519] (46 bytes)
]then M.Character.Humanoid.JumpPower=c.Slider[

-- [frag 0138 @ offset 2824587] (91 bytes)
]:getValue();end;end;if c.Toggle["Ambient Enabled"]:getState()then l.Ambient=c.ColorPicker[

-- [frag 0139 @ offset 2824748] (199 bytes)
]:getColor();if p then p.Color=c.ColorPicker["Atmosphere Color"]:getColor();p.Decay=c.ColorPicker["Atmosphere Decay Color"]:getColor();p.Glare=c.Slider["Atmosphere Glare"]:getValue();p.Haze=c.Slider[

-- [frag 0140 @ offset 2825096] (191 bytes)
]:getValue();p.Density=c.Slider["Atmosphere Density"]:getValue();end;end;end;end,gX=function(i,i,Z,t)i=Z[0b100011](t);return i;end,W=function(i)local Z=i[0];return function(i,...)if Z.Toggle[

-- [frag 0141 @ offset 2825383] (586 bytes)
]:getState()then return 0,0,Vector2.new(0,0);end;return i(...);end;end,Jh=function(i,Z,t)t=-70+(((i.kh((i.kh(Z[0X1e35]))-Z[0x7c7_A_]>=Z[3031]and Z[0x644__]or Z[0X3e08]))~=Z[27989]and Z[0x2DeB]or Z[15288])+Z[3031]);Z[2299]=t;return t;end,Ms=coroutine.yield,as=function(i)local Z=i[7];local t=i[8];local j=i[14];local p=i[15];local L=i[13];local b=i[3];local f=i[11];local l=i[4];local o=i[0];local z=i[12];local c=i[1];local y=i[2];local n=i[5];local X=i[6];local M=i[10];local R=i[9];return function()local i=tick();if y.Toggle["Auto Forge"]:getState()and not UserIsPoor then y.TextBox[

-- [frag 0142 @ offset 2826090] (1037 bytes)
]:getState()then if not b[1][b[3]]then z(y.Slider["Mob Detection Radius"]:getValue()or 10);end;else if b[1][b[3]]then b[1][b[3]]:Delete();b[1][b[3]]=nil;j();p(false);if R[1][R[3]]then R[1][R[3]]:Cancel();R[1][R[3]]=nil;end;end;end;if i-f[1][f[3]]>=l then f[1][f[3]]=i;task.spawn(function()if y.Toggle["Auto Claim Ores"]:getState()and c.Data.Codex.Ores then for t,j in pairs(c.Data.Codex.Ores)do if j and not j.IsClaimed then pcall(function()n:ClaimOre(t):await();end);end;end;end;if y.Toggle["Auto Claim Forge"]:getState()and c.Data.Codex.Equipments then for t,j in pairs(c.Data.Codex.Equipments)do if j and not j.IsClaimed then pcall(function()n:ClaimEquipment(t):await();end);end;end;end;if y.Toggle["Auto Claim Enemies"]:getState()and c.Data.Codex.Enemies then for t,j in pairs(c.Data.Codex.Enemies)do if j and not j.IsClaimed then pcall(function()n:ClaimEnemy(t):await();end);end;end;end;end);end;if y.Toggle["Auto Sell Ores"]:getState()and i-X[1][X[3]]>=y.Slider["Auto Sell Cooldown"]:getValue()then X[1][X[3]]=i;local t=y.Dropdown[

-- [frag 0143 @ offset 2827336] (218 bytes)
]:getValue();local j={};if not c or not c.Data or not c.Data.Inventory then return;end;for p,p in pairs(t)do local t=c.Data.Inventory[p];if t and t>0 then j[p]=1;end;end;if next(j)then local t={[1]="SellConfirm",[2]={[

-- [frag 0144 @ offset 2827697] (275 bytes)
]:getState()then local t=y.Dropdown["Auto Use Potions"]:getValue();if type(t)=="string"then t={t};end;if t and#t>0 then for j,j in pairs(t)do local t=nil;for p,p in pairs(L[1][L[3]])do if p.display==j then t=p.actual;break;end;end;if t then local j=o[t]or 0;local p=y.Slider[

-- [frag 0145 @ offset 2828087] (203 bytes)
]:getValue();if i-j>=p then pcall(function()Z.ActivateTool:InvokeServer(t);end);o[t]=i;end;end;end;end;end;if y.Toggle["No Stun"]:getState()then for i,i in pairs(M.Status:GetChildren())do if i.Name:find(

-- [frag 0146 @ offset 2828316] (995 bytes)
)then i:Destroy();end;end;end;end;end,Rh=function(i,i,Z)Z=i[0X25]();return Z;end,Vi=function(i,Z,t)t[17]=Z[i.cs];end,tX=function(i,Z,t,j,p)if p[0x2B_]==p[47]then else for L=0X67,0XA8,0X41 do if L>103 then i:iX(Z,j,p);else if not(L<168)then else p[0B10][Z+0X1]=t;end;end;end;end;end,Yi=function(i,Z)Z[0X2B]=(function()local t,j;t,j=i:li(Z);if t~=-0X2 then else return j;end;end);Z[0B1011_00]=(type);(Z)[45]=(function()local t,j,p=0X0,0X10;repeat if j<0X2F then p=0X1;repeat local L;L,p,t=i:ei(t,L,Z,p);until L<0B10000000;j=(47);continue;else if j>16 then return t;end;end;until false;end);(Z)[0B101110]=nil;Z[0X2f]=nil;end,vi=function(i,Z,t)t=(-0b0010__111100+(i.Uh((i.kh((i.kh((i.th(Z[971],i.ts[0B110],Z[0X4Bb7]))))>i.ts[4]and Z[0x33__c5]or i.ts[0X3]))-Z[7733],(Z[4704]))));(Z)[0x68c9]=(t);return t;end,Ss=string.char,Fh=bit32.lrotate,b=function(i)local Z=i[2];local t=i[0];local j=i[1];return function()if t.Autoparry.Toggle then Z();end;if t.Ghostblock then local i={[1]=true};game:GetService(

-- [frag 0147 @ offset 2829460] (200 bytes)
):FireServer(unpack(i));end;if t.HVH.Enabled then for i,i in pairs(game:GetService("Players"):GetPlayers())do if i.Name==t.HVH.PlayerToLock then j(i.Character.HumanoidRootPart.CFrame);game:GetService(

-- [frag 0148 @ offset 2830941] (768 bytes)
]:getKeybind();local L=t.Slider["Fly Speed"]:getValue();if Z:IsKeyDown(Enum.KeyCode[i])then local i=j.Character;local t=i.HumanoidRootPart;t.Velocity=Vector3.new(0,0,0);if Z:IsKeyDown(Enum.KeyCode.W)then t.CFrame=t.CFrame+(p.CFrame.LookVector*L);elseif Z:IsKeyDown(Enum.KeyCode.S)then t.CFrame=t.CFrame+(-p.CFrame.LookVector*L);elseif Z:IsKeyDown(Enum.KeyCode.A)then t.CFrame=t.CFrame+(-p.CFrame.RightVector*L);elseif Z:IsKeyDown(Enum.KeyCode.D)then t.CFrame=t.CFrame+(p.CFrame.RightVector*L);end;end;end;end,Pi=function(i,i,Z)Z-=i[0B1010__];return Z;end,ks=nil,_h=function(i,i,Z)return{Z[0X3__8](i,Z[47])};end,Gh=function(i,Z)(Z[0X2e])[18]=i.Wi;end,Y=function(i)local Z=i[2];local t=i[0];local j=i[1];return function(i,p,L)if Z.ws and not checkcaller()and typeof(i)==

-- [frag 0149 @ offset 2831845] (959 bytes)
then local j=string.split(p," ")[1];if j=="WalkSpeed"then return Z.wsv;end;end;end;end;return t[1][t[3]](i,p,L);end;end,F=function(i)local Z=i[4];local t=i[27];local j=i[17];local p=i[22];local L=i[2];local b=i[12];local f=i[6];local l=i[13];local o=i[24];local z=i[25];local c=i[1];local y=i[14];local n=i[19];local X=i[15];local M=i[23];local R=i[28];local w=i[29];local K=i[5];local e=i[30];local U=i[8];local C=i[16];local d=i[18];local G=i[32];local x=i[26];local J=i[10];local B=i[33];local F=i[9];local Q=i[20];local V=i[21];local u=i[11];local E=i[7];local s=i[31];local I=i[0];local v=i[3];return function()if L.Character and L.Character:FindFirstChild(V[1][V[3]])then local i=L.Character.HumanoidRootPart;local W=L.Character:WaitForChild("Humanoid");local H,m=e[1][e[3]]:WorldToScreenPoint(i.Position);local q=(e[1][e[3]].CFrame.Position-i.Position).Magnitude/3.5714285714;if m and q<=F.Flags.Slider["Max ESP Distance"]:getValue()and F.Flags.Toggle[

-- [frag 0150 @ offset 2832900] (1049 bytes)
]:getState()then local m=i.Size.Y;local i=(m*e[1][e[3]].ViewportSize.Y)/(H.Z*2);local e,m=3*i,4.5*i;if v.FadeOut.OnDistance then u:FadeOutOnDist(f,q);u:FadeOutOnDist(y,q);u:FadeOutOnDist(n,q);u:FadeOutOnDist(C,q);u:FadeOutOnDist(b,q);u:FadeOutOnDist(l,q);u:FadeOutOnDist(U,q);u:FadeOutOnDist(j,q);u:FadeOutOnDist(x,q);u:FadeOutOnDist(o,q);u:FadeOutOnDist(I,q);u:FadeOutOnDist(E,q);u:FadeOutOnDist(J,q);u:FadeOutOnDist(G,q);u:FadeOutOnDist(Q,q);u:FadeOutOnDist(Z,q);u:FadeOutOnDist(M,q);if X[1][X[3]]and R[1][R[3]]then u:FadeOutOnDist(X[1][X[3]],q);u:FadeOutOnDist(R[1][R[3]],q);end;u:FadeOutOnDist(p,q);u:FadeOutOnDist(z,q);end;local i=w.LocalPlayer;if v.TeamCheck and(i.Team==L.Team and L.Team)then c();return;end;if L.Character and L.Character:FindFirstChild(V[1][V[3]])and L.Character:FindFirstChild("Humanoid")then do table.insert(B.visibleTargets,{character=L.Character,distance=q,isVisible=true});local p,z=B:GetHighlight(L.Character,q,true);X[1][X[3]]=p;R[1][R[3]]=z;if p then p.Adornee=q<=200 and L.Character or nil;p.Enabled=F.Flags.Toggle[

-- [frag 0151 @ offset 2834013] (416 bytes)
]:getState()and v.Drawing.Chams.Enabled and q<=200;p.FillColor=v.Drawing.Chams.FillRGB;p.OutlineColor=v.Drawing.Chams.OutlineRGB;if v.Drawing.Chams.Thermal then local y=math.atan(math.sin(tick()*2))*2/math.pi;p.FillTransparency=v.Drawing.Chams.Fill_Transparency*y*0.01;p.OutlineTransparency=v.Drawing.Chams.Outline_Transparency*y*0.01;end;if v.Drawing.Chams.VisibleCheck then p.DepthMode="Occluded";else p.DepthMode=

-- [frag 0152 @ offset 2834552] (199 bytes)
,true);if p and z then z.Adornee=F.Flags.Toggle["Weapon Chams"]:getState()and q<=200 and p.Parent or nil;z.Enabled=F.Flags.Toggle["Weapon Chams"]:getState()and q<=200;z.FillColor=F.Flags.ColorPicker[

-- [frag 0153 @ offset 2834832] (587 bytes)
]:getColor();z.OutlineColor=v.Drawing.Chams.OutlineRGB;if v.Drawing.Chams.VisibleCheck then z.DepthMode="Occluded";else z.DepthMode="AlwaysOnTop";end;end;end;end;do o.Visible=F.Flags.Toggle["Boxes Corner"]:getState();o.Position=UDim2.new(0,H.X-e/2,0,H.Y-m/2);o.Size=UDim2.new(0,e/5,0,1);I.Visible=F.Flags.Toggle["Boxes Corner"]:getState();I.Position=UDim2.new(0,H.X-e/2,0,H.Y-m/2);I.Size=UDim2.new(0,1,0,m/5);E.Visible=F.Flags.Toggle["Boxes Corner"]:getState();E.Position=UDim2.new(0,H.X-e/2,0,H.Y+m/2);E.Size=UDim2.new(0,1,0,m/5);E.AnchorPoint=Vector2.new(0,5);J.Visible=F.Flags.Toggle[

-- [frag 0154 @ offset 2835573] (139 bytes)
]:getState();J.Position=UDim2.new(0,H.X-e/2,0,H.Y+m/2);J.Size=UDim2.new(0,e/5,0,1);J.AnchorPoint=Vector2.new(0,1);G.Visible=F.Flags.Toggle[

-- [frag 0155 @ offset 2835747] (139 bytes)
]:getState();G.Position=UDim2.new(0,H.X+e/2,0,H.Y-m/2);G.Size=UDim2.new(0,e/5,0,1);G.AnchorPoint=Vector2.new(1,0);Q.Visible=F.Flags.Toggle[

-- [frag 0156 @ offset 2835928] (141 bytes)
]:getState();Q.Position=UDim2.new(0,H.X+e/2-1,0,H.Y-m/2);Q.Size=UDim2.new(0,1,0,m/5);Q.AnchorPoint=Vector2.new(0,0);Z.Visible=F.Flags.Toggle[

-- [frag 0157 @ offset 2836105] (139 bytes)
]:getState();Z.Position=UDim2.new(0,H.X+e/2,0,H.Y+m/2);Z.Size=UDim2.new(0,1,0,m/5);Z.AnchorPoint=Vector2.new(1,1);M.Visible=F.Flags.Toggle[

-- [frag 0158 @ offset 2836288] (924 bytes)
]:getState();M.Position=UDim2.new(0,H.X+e/2,0,H.Y+m/2);M.Size=UDim2.new(0,e/5,0,1);M.AnchorPoint=Vector2.new(1,1);end;do f.Position=UDim2.new(0,H.X-e/2,0,H.Y-m/2);f.Size=UDim2.new(0,e,0,m);f.Visible=v.Drawing.Boxes.Full.Enabled;if v.Drawing.Boxes.Filled.Enabled then f.BackgroundColor3=Color3.fromRGB(255,255,255);if v.Drawing.Boxes.GradientFill then f.BackgroundTransparency=v.Drawing.Boxes.Filled.Transparency;else f.BackgroundTransparency=1;end;f.BorderSizePixel=1;else f.BackgroundTransparency=1;end;s[1][s[3]]=s[1][s[3]]+(tick()-d[1][d[3]])*300*math.cos(math.pi/4*tick()-math.pi/2);if v.Drawing.Boxes.Animate then K.Rotation=s[1][s[3]];t.Rotation=s[1][s[3]];else K.Rotation=-45.0;t.Rotation=-45.0;end;d[1][d[3]]=tick();end;do local Z=W.Health/W.MaxHealth;l.Visible=F.Flags.Toggle["Healthbar Enabled"]:getState();l.Position=UDim2.new(0,H.X-e/2-6,0,H.Y-m/2+m*(1-Z));l.Size=UDim2.new(0,2.5,0,m*Z);U.Visible=F.Flags.Toggle[

-- [frag 0159 @ offset 2837269] (593 bytes)
]:getState();U.Position=UDim2.new(0,H.X-e/2-6,0,H.Y-m/2);U.Size=UDim2.new(0,2.5,0,m);do if v.Drawing.Healthbar.HealthText then local t=math.floor(W.Health/W.MaxHealth*100);j.Position=UDim2.new(0,H.X-e/2-6,0,H.Y-m/2+m*(1-t/100)+3);j.Text=tostring(t);j.Visible=W.Health<W.MaxHealth;if v.Drawing.Healthbar.Lerp then local t=Z>=0.75 and Color3.fromRGB(0,255,0)or Z>=0.5 and Color3.fromRGB(255,255,0)or Z>=0.25 and Color3.fromRGB(255,170,0)or Color3.fromRGB(255,0,0);j.TextColor3=t;else j.TextColor3=v.Drawing.Healthbar.HealthTextRGB;end;end;end;end;do n.Visible=v.Drawing.Names.Enabled;if L.type==

-- [frag 0160 @ offset 2837889] (99 bytes)
and F.Flags.Toggle["Friendcheck"]:getState()and i:IsFriendsWith(L.UserId)then n.Text=string.format(

-- [frag 0161 @ offset 2838460] (328 bytes)
,L.Name);end;n.Position=UDim2.new(0,H.X,0,H.Y-m/2-9);end;do if F.Flags.Toggle["Distance Check"]:getState()then if F.Flags.Dropdown["Distance Text Position"]:getValue()=="Bottom"then b.Position=UDim2.new(0,H.X,0,H.Y+m/2+18);x.Position=UDim2.new(0,H.X-21,0,H.Y+m/2+15);C.Position=UDim2.new(0,H.X,0,H.Y+m/2+7);C.Text=string.format(

-- [frag 0162 @ offset 2838902] (173 bytes)
,math.floor(q));C.Visible=true;else b.Position=UDim2.new(0,H.X,0,H.Y+m/2+8);x.Position=UDim2.new(0,H.X-21,0,H.Y+m/2+5);C.Visible=false;if L.type=="Player"and F.Flags.Toggle[

-- [frag 0163 @ offset 2839110] (347 bytes)
]:getState()and i:IsFriendsWith(L.UserId)then n.Text=string.format("(<font color="rgb(%d, %d, %d)">F</font>) %s [%d]",Color3.fromRGB(0,255,0).R*255,Color3.fromRGB(0,255,0).G*255,Color3.fromRGB(0,255,0).B*255,L.Name,math.floor(q));else n.Text=string.format("(<font color="rgb(%d, %d, %d)">%s</font>) %s [%d]",L.type=="Player"and 255 or 0,0,L.type==

-- [frag 0164 @ offset 2839663] (52 bytes)
,L.Name,math.floor(q));end;n.Visible=F.Flags.Toggle[

-- [frag 0165 @ offset 2839747] (63 bytes)
]:getState();end;end;end;do local i=L.Character:FindFirstChild(

-- [frag 0166 @ offset 2839913] (51 bytes)
or i.Parent.Name)or"None";b.Visible=F.Flags.Toggle[

-- [frag 0167 @ offset 2840011] (296 bytes)
]:getState();end;else c();end;else c();end;else c();end;end;end,Di=function(i,Z,t)t=(-0X751B84f9+((i.Sh(((i.ts[2]+i.ts[5]==i.ts[1]and i.ts[0b001_]or i.ts[0x8])<Z[0X262f]and Z[0X1DC2]or i.ts[0X5])-t,i.ts[0X4],i.ts[7]))+i.ts[0x1]));Z[16953]=(t);return t;end,wX=function(i,i,Z)(Z)[i+0X3]=0x6;end,ps=

-- [frag 0168 @ offset 2840338] (1977 bytes)
,yi=math.pi,Wh=function(i)end,Cs=string.byte,K=function(i)local Z=i[1];local t=i[0];return function(...)local i={...};local j=getnamecallmethod();local p=getcallingscript();if string.lower(j)=="findpartonraywithwhitelist"and tostring(p)=="First Person Controller"then local j=targetplayer and targetplayer.Head and targetplayer.Head.Position or nil;if t.SILENTAIM and j then local t=j+Vector3.new(0,6,0);local p=j-t;i[2]=Ray.new(t,p);return Z[1][Z[3]](unpack(i));else return Z[1][Z[3]](...);end;end;return Z[1][Z[3]](...);end;end,Xi=function(i,Z,t,j,p,L)if t==0x38 then(Z)[8]=(L.create);return 59817,p,t;else if t==0X16 then Z[0b110]={};p=i.Ss;if not j[0X6aE]then(j)[0X1E35]=(-2497372577+((i.Fh((i.Uh(i.ts[0b11],(t)))+i.ts[0X2]+i.ts[4]+i.ts[0B10],(t)))-i.ts[0B101]));t=(-1174404995+(i.Ch((i.th((i.vh(i.ts[0X7]+i.ts[0x5]<t and i.ts[0X2]or i.ts[2],i.ts[0B110]))))-i.ts[0x6__],(t))));(j)[0X6a_E]=(t);else t=j[1710];end;else if t~=0B11_11101 then else Z[0B001__1__1]=i.mh;if not(not j[0X1a_10])then t=j[6672];else t=i:gi(t,j);end;end;end;end;return nil,p,t;end,NX=function(i,Z,t,j,p,L)local b;t=nil;p=(nil);for f=0b1100100,0b101111_10__,50 do p,b,t=i:XX(L,t,p,j,f);if b==9442 then break;end;end;Z=j[0X23__](L);return Z,p,t;end,Sh=bit32.bxor,hs=function(i)local Z=i[10];local t=i[20];local j=i[16];local p=i[5];local L=i[34];local b=i[18];local f=i[26];local l=i[25];local o=i[6];local z=i[22];local c=i[8];local y=i[24];local n=i[19];local X=i[2];local M=i[31];local R=i[37];local w=i[7];local K=i[23];local e=i[28];local U=i[17];local C=i[33];local d=i[30];local G=i[29];local x=i[12];local J=i[15];local B=i[39];local F=i[3];local Q=i[32];local V=i[38];local u=i[0];local E=i[9];local s=i[36];local I=i[21];local v=i[4];local W=i[13];local H=i[35];local m=i[1];local q=i[11];local P=i[14];local O=i[27];return function()j();F:Update();if u.Toggle["Gun Kill Aura"]:getState()then local i=tick();if i-z[1][z[3]]>=0.5 then local j=o.Character;local F=j and j:FindFirstChildWhichIsA(

-- [frag 0169 @ offset 2842862] (311 bytes)
)or 0;if F<=0 then break;end;pcall(function()local F=math.random(1000,9999);local r=math.random(1000,9999);q.Shoot:FireServer(Z.Position,Z.CFrame,1,1,r,F,nil);task.wait();q.Hit:FireServer(Z,F);end);end;if#j>0 then z[1][z[3]]=i;end;end;end;end;end;if u.Toggle["Farm Scourge"]:getState()then local i=O(w,u.Slider[

-- [frag 0170 @ offset 2843283] (36 bytes)
]:getValue());if i then if u.Toggle[

-- [frag 0171 @ offset 2843385] (111 bytes)
]and u.Toggle["Stop Farm If Player Near"]:getState()then u.Toggle["Farm Scourge"]:updateState({state=false});X(

-- [frag 0172 @ offset 2843587] (256 bytes)
,"MaxHub: Player near scourge arena, farm stopped",10);return;end;if u.Toggle["Auto Wait Til Player Gone"]and u.Toggle["Auto Wait Til Player Gone"]:getState()then if o.Character and o.Character:FindFirstChild(v[1][v[3]])then t(CFrame.new(w),300,0,0);end;X(

-- [frag 0173 @ offset 2844032] (131 bytes)
,"MaxHub: Waiting for player to leave scourge arena",10);return;end;end;if(u.Toggle["Kick If Player Nearby"]:getState()or u.Toggle[

-- [frag 0174 @ offset 2844334] (357 bytes)
]:getState())and o.Character and o.Character:FindFirstChild(v[1][v[3]])then local i=o.Character.HumanoidRootPart;for Z,Z in pairs(game.Players:GetPlayers())do if Z~=o and Z.Character and Z.Character:FindFirstChild(v[1][v[3]])then if(Z.Character.HumanoidRootPart.Position-i.Position).Magnitude<=u.Slider["Player Detection Radius"]:getValue()then if u.Toggle[

-- [frag 0175 @ offset 2844789] (53 bytes)
]:getState()then f:FireServer(100,{Head=100},true);X(

-- [frag 0176 @ offset 2845040] (501 bytes)
]:getState()then o:Kick("MAXHUB: Nearby player detected");end;end;end;end;end;if o.Character and o.Character:FindFirstChild(v[1][v[3]])then local i=o.Character.HumanoidRootPart.Position;if c.LoreNPCs.Scourge and c.LoreNPCs.Scourge:FindFirstChild(v[1][v[3]])and m:GetAttribute("Cash")>500 then local Z=c.LoreNPCs.Scourge.HumanoidRootPart.Position;local j=(i-Z).Magnitude;local i=150;if j<=i then local i=m.MainPersistentGui.SpeechBox;if i and i.Visible and i.AnswerCanvas.ScrollingFrame:FindFirstChild(

-- [frag 0177 @ offset 2845599] (181 bytes)
)then q.Event:FireServer("1: Yes.");q.Event:FireServer("1: Deal.");else fireproximityprompt(c.LoreNPCs.Scourge.HumanoidRootPart.TalkWithNPC);end;local i=m.OverlayGui:FindFirstChild(

-- [frag 0178 @ offset 2846158] (88 bytes)
]:getValue();if j=="Green Keycard"then firesignal(i.Button.MouseButton1Click);elseif j==

-- [frag 0179 @ offset 2846671] (299 bytes)
]and u.Slider["Height Offset"]:getValue()or 0,3);if Z and Z.Position then local i=Z.Position;local j=q.Swing:InvokeServer();if j and j.Delay then task.wait(j.Delay or 0.25);end;q.MeleeHit:FireServer(Z,i);end;end;end;else t(c.LoreNPCs.Scourge.HumanoidRootPart.CFrame,300,0,-5.0);end;else X("selling",

-- [frag 0180 @ offset 2847070] (144 bytes)
,10);u.Toggle["Farm Scourge"]:updateState({state=false});end;end;end;if u.Toggle["Auto Skip Shop"]:getState()and m.MainStaticGui:FindFirstChild(

-- [frag 0181 @ offset 2847553] (120 bytes)
]:getState()and m.OverlayGui.Prompts:FindFirstChild("ChoicePrompt")and m.OverlayGui.Prompts.ChoicePrompt:FindFirstChild(

-- [frag 0182 @ offset 2847974] (50 bytes)
]:getState()then for i,i in pairs(game:GetService(

-- [frag 0183 @ offset 2848246] (83 bytes)
)then if o.Character.Humanoid.Health<=55 then t(i.HumanoidRootPart.CFrame,u.Slider[

-- [frag 0184 @ offset 2848348] (61 bytes)
]:getValue(),50,3);else t(i.HumanoidRootPart.CFrame,u.Slider[

-- [frag 0185 @ offset 2848435] (22 bytes)
]:getValue(),u.Slider[

-- [frag 0186 @ offset 2848488] (373 bytes)
]:getValue(),3);end;end;if Z and Z.Position then local i=Z.Position;local j=q.Swing:InvokeServer();if j and j.Delay then task.wait(j.Delay or 0.25);end;q.MeleeHit:FireServer(Z,i);end;end;end;end;if u.Toggle["Start Loot Farm"]:getState()then if E[1][E[3]]and E[1][E[3]]:FindFirstChild("Humanoid")and E[1][E[3]]:FindFirstChild(v[1][v[3]])then local i=E[1][E[3]]:GetAttribute(

-- [frag 0187 @ offset 2849249] (521 bytes)
]:updateState({state=true});u.Toggle["Unlimited Lockpicks"]:updateState({state=true});u.Toggle["Instant Interactions"]:updateState({state=true});u.Toggle["Instant Lockpick"]:updateState({state=true});local i,Z,j=M();if i and(not J[1][J[3]]or i~=J[1][J[3]])then J[1][J[3]]=i;W[1][W[3]]=tick();end;if J[1][J[3]]and tick()-W[1][W[3]]>l then d[J[1][J[3]]]=true;J[1][J[3]]=nil;end;if i then local f;if Z then f=i.CFrame*CFrame.new(-3.0,0,0);elseif j then f=i.CFrame*CFrame.new(-3.0,0,-2.0);else f=i.CFrame*CFrame.new(u.Slider[

-- [frag 0188 @ offset 2849857] (54 bytes)
]:getValue(),u.Slider["Offset 2"]:getValue(),u.Slider[

-- [frag 0189 @ offset 2849945] (31 bytes)
]:getValue());end;t(f,u.Slider[

-- [frag 0190 @ offset 2849997] (215 bytes)
]:getValue(),Z and 2 or(j and 2 or 3));x(i.CFrame);local f=o.PlayerGui.MainGui.LootFrame;if f.Visible==true then local l=i:FindFirstChild("LootTable");if l then local z=l:GetAttribute("Cash");local c=l:GetAttribute(

-- [frag 0191 @ offset 2850265] (565 bytes)
);if z<=0 and c<=0 then task.wait(0.2);local z={[1]="Cancel",[2]=l};e.Events.Loot.LootObject:FireServer(unpack(z));firesignal(f.Items.TopBar.Close.MouseButton1Click);d[i]=true;J[1][J[3]]=nil;end;end;else L:SendKeyEvent(true,Enum.KeyCode.E,false,game);task.wait(0);L:SendKeyEvent(false,Enum.KeyCode.E,false,game);task.wait(0.5);end;elseif J[1][J[3]]then local i;if Z then i=J[1][J[3]].CFrame*CFrame.new(-3.0,0,0);elseif j then i=J[1][J[3]].CFrame*CFrame.new(-3.0,0,-2.0);else i=J[1][J[3]].CFrame;end;t(i,300,Z and 2 or(j and 2 or 3));x(J[1][J[3]].CFrame);end;else X(

-- [frag 0192 @ offset 2850994] (599 bytes)
]:getState()then local i=u.Dropdown["To ESP"]:getValue();local Z=u.Slider["Loot Distance"]:getValue();local t={};for j,j in ipairs(B:GetTagged("Loot"))do if not j or not j.Parent then continue;end;local L=false;for f,f in ipairs(i)do if j.Name:lower():find(f:lower())then L=true;break;end;end;if not L then continue;end;local i=o.Character and o.Character:FindFirstChild(v[1][v[3]]);if not i then continue;end;local L=(i.Position-j:GetPivot().Position).Magnitude;if L>Z then continue;end;t[j]=true;local i=s(j);local Z,L=V:WorldToViewportPoint(i);if L then if not p[1][p[3]][j]then local i=u.Slider[

-- [frag 0193 @ offset 2851676] (172 bytes)
]:getValue();p[1][p[3]][j]=R(Z,j.Name,i);end;b(p[1][p[3]][j],Z,{enableEffects=u.Toggle["ESP Effects"]:getState(),showDot=u.Toggle["Show Dots"]:getState(),showText=u.Toggle[

-- [frag 0194 @ offset 2851892] (37 bytes)
]:getState(),sizeMultiplier=u.Slider[

-- [frag 0195 @ offset 2851966] (245 bytes)
]:getValue()});else if p[1][p[3]][j]then H(p[1][p[3]][j],false);end;end;end;for i,Z in pairs(p[1][p[3]])do if not t[i]or not i.Parent then P(Z);p[1][p[3]][i]=nil;end;end;else for i,i in pairs(p[1][p[3]])do P(i);end;p[1][p[3]]={};end;if u.Toggle[

-- [frag 0196 @ offset 2852235] (172 bytes)
]:getState()and not UserIsPoor then local i=E[1][E[3]]and E[1][E[3]]:FindFirstChild(v[1][v[3]]);if i and i.AssemblyMass<math.huge and not E[1][E[3]]:FindFirstChildWhichIsA(

-- [frag 0197 @ offset 2852431] (295 bytes)
)then local Z=i.CFrame;local t=i.Velocity;i.Velocity=Vector3.new(math.random(-900000.0,900000),math.random(-300000.0,300000),math.random(-900000.0,900000));i.CFrame=i.CFrame*CFrame.Angles(0,0.0001,0);Q.RenderStepped:Wait();i.Velocity=t;i.CFrame=Z;end;end;if u.Toggle["No Footsteps"]and u.Toggle[

-- [frag 0198 @ offset 2852810] (206 bytes)
]:getState()then local i=E[1][E[3]]and E[1][E[3]]:FindFirstChild(v[1][v[3]]);if i then for Z,Z in ipairs(i:GetChildren())do if Z:IsA("Sound")and(Z.Name=="Footstep"or Z.Name=="Running"or Z.Name:lower():find(

-- [frag 0199 @ offset 2853078] (438 bytes)
))then Z.Volume=0;end;end;end;end;if u.Toggle["Footstep ESP"]:getState()then local i,Z,t,j,p,L=U:getFootstepSettings();local b=E[1][E[3]]and E[1][E[3]]:FindFirstChild(v[1][v[3]]);if not b then return;end;for f,f in ipairs(I:GetPlayers())do if f and u.Toggle["Enable Whitelist"]:getState()and table.find(C[1][C[3]],f.Name)then return;end;local l=f.Character;local o=l and l:FindFirstChild(v[1][v[3]]);local z=l and l:FindFirstChildOfClass(

-- [frag 0200 @ offset 2853604] (1377 bytes)
);if not(l and o and z and z.Health>0)then continue;end;local c=(o.Position-b.Position).Magnitude;if c<i or c>Z then continue;end;local i=U:initializePlayerTracking(f);local Z=z.MoveDirection;local b=o.AssemblyLinearVelocity;local c=Z.Magnitude>0.05 and b.Magnitude>1.5;local b=z.FloorMaterial~=Enum.Material.Air;i.isGrounded=b;if Z.Magnitude>0.1 then i.lastDirection=Z;end;if c and b then local Z=math.clamp(j*4,2,8);if not i.lastFootstepPosition then local b,z=U:findGroundFromFeet(l,o);if b then i.lastFootstepPosition=o.Position;K[f]=not K[f];U:createFootstep(b,z or Vector3.yAxis,L,j,t,p,K[f],i.lastDirection);end;else local b=(o.Position-i.lastFootstepPosition).Magnitude;if b>=Z then local Z,b=U:findGroundFromFeet(l,o);if Z then i.lastFootstepPosition=o.Position;K[f]=not K[f];U:createFootstep(Z,b or Vector3.yAxis,L,j,t,p,K[f],i.lastDirection);end;end;end;end;end;end;end;end,Ah=function(i,Z,t,j)Z[0B101110][0B10110]=i.fi;if not(not j[0X3e21])then t=i:wh(t,j);else t=0B1000__110+(i.kh((j[0x6A4E]+i.ts[0x6]==j[0X2DbC]and j[14154]or j[26881])-j[0X56dB]+i.ts[0X7]-j[27490]));j[15905]=(t);end;return t;end,Qs=function(i)local Z=i[1];local t=i[2];local j=i[0];return function()for i,i in pairs(workspace.Live[j.Name]:GetChildren())do if Z.NOM1 then if i:IsA("Accessory")and i.Name=="CANTM1"then i:Destroy();end;end;if Z.NoDashCooldown then if i:IsA("Accessory")and i.Name==

-- [frag 0201 @ offset 2855298] (402 bytes)
then i:Destroy();end;end;end;if Z.AutoBlocker.Toggle then t();end;end;end,Ch=bit32.lshift,ns=function(i)local Z=i[5];local t=i[4];local j=i[3];local p=i[8];local L=i[9];local b=i[1];local f=i[0];local l=i[7];local o=i[10];local z=i[2];local c=i[6];return function()local i=0;local y=0;for n,n in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren())do if n:IsA("Tool")and n:GetAttribute(

-- [frag 0202 @ offset 2855976] (234 bytes)
..o(i);local i=string.format("%.2f",y);l[1][l[3]]:updateText({text=n});Z[1][Z[3]]:updateText({text=i});if c.Toggle["Auto Farm"]:getState()then local i=j();if not i or not i.Scripts.Collect then return;end;local Z=z.Stats:GetAttribute(

-- [frag 0203 @ offset 2856331] (150 bytes)
]:getValue();if j>=Z then if z.PlayerGui.ToolUI.DigBar.Visible==true then game:GetService("VirtualUser"):ClickButton1(Vector2.new(9e9,9e9));end;if l==

-- [frag 0204 @ offset 2856541] (141 bytes)
and t[1][t[3]]then b(250,t[1][t[3]].Position);elseif not L(5)then b(250);end;if z.PlayerGui.ToolUI.DigBar.Visible==true then game:GetService(

-- [frag 0205 @ offset 2856719] (181 bytes)
):ClickButton1(Vector2.new(9e9,9e9));end;local t=i.Scripts.Pan;t:InvokeServer();elseif j~=Z then local i=f(500);game:GetService("VirtualUser"):Button1Up(Vector2.new(9e9,9e9));if l==

-- [frag 0206 @ offset 2856966] (138 bytes)
and p[1][p[3]]then b(250,p[1][p[3]].Position);elseif i then b(250,i);end;if z.PlayerGui.ToolUI.DigBar.Visible==false then game:GetService(

-- [frag 0207 @ offset 2857373] (32 bytes)
]:getKeybind();local c=z.Slider[

-- [frag 0208 @ offset 2857429] (25 bytes)
]:getValue();if z.Toggle[

-- [frag 0209 @ offset 2857489] (113 bytes)
]:getState()and t.PlayerGui.ToolUI.DigBar.Visible==true then f().Scripts.Collect:InvokeServer(1);end;if z.Toggle[

-- [frag 0210 @ offset 2857633] (93 bytes)
]:getState()and f()and f().Scripts.Shake then f().Scripts.Shake:FireServer();end;if z.Toggle[

-- [frag 0211 @ offset 2857771] (104 bytes)
]:getState()then local f=0;for y,y in ipairs(t.Backpack:GetChildren())do if y:GetAttribute("ItemType")==

-- [frag 0212 @ offset 2857997] (179 bytes)
)and not l[1][l[3]]then l[1][l[3]]=true;local f=L.CFrame;L.CFrame=j.NPCs.StarterTown.Merchant.Torso.CFrame*CFrame.new(0,5,0);task.wait(0.1);b:WaitForChild("Remotes"):WaitForChild(

-- [frag 0213 @ offset 2858229] (173 bytes)
):InvokeServer();task.wait(0.4);spawn(function()L.CFrame=f;l[1][l[3]]=false;end);end;end;if z.Toggle["Force Grab Waypoints"]:getState()then for j,j in pairs(game:GetService(

-- [frag 0214 @ offset 2858459] (226 bytes)
).Map.Waypoints:GetChildren())do if j:FindFirstChild("WaypointPrompt")then game.Players.LocalPlayer.Character:PivotTo(j.WaypointPrompt.Parent.WorldPivot);wait(0.1);fireproximityprompt(j.WaypointPrompt);end;end;end;if z.Toggle[

-- [frag 0215 @ offset 2858736] (71 bytes)
]:getState()then for j,j in pairs(t.Backpack:GetChildren())do if j:IsA(

-- [frag 0216 @ offset 2859153] (41 bytes)
]:getValue();for M,M in pairs(X)do if M==

-- [frag 0217 @ offset 2859213] (123 bytes)
then local X=z.Dropdown["Rarity To Favorite"]:getValue();for R,R in pairs(X)do if l==R then n=true;break;end;end;elseif M==

-- [frag 0218 @ offset 2859634] (193 bytes)
]:getText());if L and f>=L then n=true;end;elseif M=="Selection"then local L=z.Dropdown["Item To Favorite"]:getValue();for f,f in pairs(L)do if y==f then n=true;break;end;end;local L=z.TextBox[

-- [frag 0219 @ offset 2859915] (467 bytes)
]:getText();if L~=""and y:lower():find(L:lower())then n=true;end;end;if n then break;end;end;if n then local L={[1]=j};b:WaitForChild("Remotes"):WaitForChild("Inventory"):WaitForChild("ToggleLock"):FireServer(unpack(L));end;end;end;end;if z.Toggle["Spam Purchase"]:getState()then local j=tick();local L=z.Slider["Purchase Cooldown"]:getValue();if j-p[1][p[3]]>=L then local L=z.Dropdown["Potions"]:getValue();for b,b in pairs(L)do local L={[1]=workspace:WaitForChild(

-- [frag 0220 @ offset 2860633] (19 bytes)
)};game:GetService(

-- [frag 0221 @ offset 2860822] (2287 bytes)
):InvokeServer(unpack(L));end;p[1][p[3]]=j;end;end;if Z:IsKeyDown(Enum.KeyCode[i])then local i=t.Character;local t=i.HumanoidRootPart;t.Velocity=Vector3.new(0,0,0);if Z:IsKeyDown(Enum.KeyCode.W)then t.CFrame=t.CFrame+(o.CFrame.LookVector*c);elseif Z:IsKeyDown(Enum.KeyCode.S)then t.CFrame=t.CFrame+(-o.CFrame.LookVector*c);elseif Z:IsKeyDown(Enum.KeyCode.A)then t.CFrame=t.CFrame+(-o.CFrame.RightVector*c);elseif Z:IsKeyDown(Enum.KeyCode.D)then t.CFrame=t.CFrame+(o.CFrame.RightVector*c);end;end;end;end,Qi=bit32.bor,LX=function(i,Z,t,j)Z[0X2E]={};if not(not t[0x6191])then j=t[0X6191];else j=(0X33+(i.th((i.Sh((i.Ch(((i.vh(t[0X3cb],t[0X4DE6],t[19090]))==i.ts[9]and t[17180]or t[0x4a92])-t[0X49C7__],(t[0X5B_94]))),j)),t[0x431c],t[0x01E7e])));(t)[24977]=j;end;return j;end,cX=function(i,Z,t,j,p,L,b,f,l,o,z,c)local y;if b==0b1 then if c[0b11_0001]==c[0x19]then return-0X1;else if l==c[3]then c[0B110]=c[0B100111];return-0x2,c[0b110011];else if c[0B100]then local n=c[15][f];local X=#n;for M=121,0Xc2,0B101010 do if M==0Xa_3 then i:wX(X,n);break;else i:AX(X,l,L,n);continue;end;end;else(o)[L]=(c[15][f]);end;end;end;elseif b==4 then if c[0X27]~=c[0B1011__11]then i:hX(z,f,L);end;elseif b==0B110 then(z)[L]=L+f;elseif b==0X5 then(z)[L]=L-f;else if b~=0B11 then else local b,n=0X1d;while true do n,y,b=i:FX(L,b,n,o,c);if y==25189 then break;end;end;(c[0X2])[n+0X3]=f;end;end;if t==0x1 then if not(c[0B1_00])then i:vX(L,Z,p,c);else o=(nil);z=nil;for b=51,196,0X22 do if b<=0B1__010101 then if b==0x55 then z=(#o);continue;else o=(c[0B1111][p]);end;else y=i:kX(z,L,o,l,b);if y==0Xa841 then continue;else if y~=0Xe1E_a then else break;end;end;end;end;end;else if t==0x4 then j[L]=(p);elseif t==0B110 then i:SX(j,p,L);elseif t==5 then j[L]=L-p;else if t==3 then f=#c[0x2];if c[55]==c[0X1_E_]then i:UX();return-1;end;for t=0B1011011,0XCE,0X12 do y=i:sX(p,c,Z,f,t,L);if y==0X6B__01 then break;else if y~=0xBFaa then else continue;end;end;end;end;end;end;return 2687;end,JX=function(i,i,Z)Z=(i%8);return Z;end,U=function(i)local Z=i[12];local t=i[4];local j=i[9];local p=i[3];local L=i[2];local b=i[10];local f=i[14];local l=i[5];local o=i[8];local z=i[7];local c=i[13];local y=i[11];local n=i[6];local X=i[0];local M=i[1];return function(i)local R=t[1][t[3]]and t[1][t[3]]:FindFirstChildWhichIsA(

-- [frag 0222 @ offset 2863840] (155 bytes)
]:getState()then local t=b.LocalPlayer.Character;local b=t and t:FindFirstChild(f[1][f[3]]);if b then local f=j.CastRay(b.Position,b.CFrame.LookVector*6,{[

-- [frag 0223 @ offset 2864269] (110 bytes)
)then local t=j.PrimaryPart.CFrame.RightVector:Dot((b.Position-j.PrimaryPart.Position).Unit)>0;c:WaitForChild(

-- [frag 0224 @ offset 2864477] (57 bytes)
]:getState()then p[1][p[3]]=(p[1][p[3]]+i*y.Flags.Slider[

-- [frag 0225 @ offset 2864569] (326 bytes)
]:getValue())%1;end;if not R or not w or not K then X.emptyBar.Visible=false;X.fillBar.Visible=false;X.text.Visible=false;X.outline.Visible=false;return;end;local t=R:FindFirstChild("GunStatus");if not t then X.emptyBar.Visible=false;X.fillBar.Visible=false;X.text.Visible=false;X.outline.Visible=false;return;end;if M.Toggle[

-- [frag 0226 @ offset 2864960] (148 bytes)
]:getState()then if K~=Z[1][Z[3]]then Z[1][Z[3]]=K;for Z in pairs(L[1][L[3]])do if not Z.Parent then L[1][L[3]][Z]=nil;end;end;end;local Z=M.Toggle[

-- [frag 0227 @ offset 2865117] (36 bytes)
]:getState();local j=Z and M.Toggle[

-- [frag 0228 @ offset 2865190] (148 bytes)
]:getState();local b=Z and M.Dropdown["Material"]:getValue();local f=Z and not j and M.ColorPicker["Gun Color"]:getColor();local l=Z and M.Dropdown[

-- [frag 0229 @ offset 2865406] (78 bytes)
]:getValue();pcall(function()for o,o in ipairs(K:GetDescendants())do if o:IsA(

-- [frag 0230 @ offset 2865909] (167 bytes)
;o.Material=Enum.Material.Plastic;end;end;end;end);end;if M.Toggle["Magazine Visuals"]:getState()and n and K and t then local Z=pcall(function()local j=t:GetAttribute(

-- [frag 0231 @ offset 2866323] (169 bytes)
]:getState()then local i=j-X.displayMag;X.displayMag=X.displayMag+i*math.min(t*15,1);else X.displayMag=j;end;local i=X.displayMag/p;local L=j/p;local b=K:FindFirstChild(

-- [frag 0232 @ offset 2866502] (188 bytes)
);if not b then X.hideAll();return;end;local f,l=n:WorldToViewportPoint(b.Position);if not l then X.hideAll();return;end;local b=M.Slider["Magazine Bar Width"]:getValue();local l=M.Slider[

-- [frag 0233 @ offset 2866757] (30 bytes)
]:getValue();local o=M.Slider[

-- [frag 0234 @ offset 2866872] (89 bytes)
]:getValue();local z=math.floor(f.X-b/2);local c=math.floor(f.Y-o);local o=M.ColorPicker[

-- [frag 0235 @ offset 2867022] (90 bytes)
]:getColor();local y=M.ColorPicker["Magazine Mid Color"]:getColor();local n=M.ColorPicker[

-- [frag 0236 @ offset 2867191] (213 bytes)
]:getColor();local R=M.ColorPicker["Magazine Outline Color"]:getColor();local w;if L>0.5 then local K=(L-0.5)*2;w=X.lerpColor(y,o,K);else local o=L*2;w=X.lerpColor(n,y,o);end;X.pulseTime=X.pulseTime+t;if M.Toggle[

-- [frag 0237 @ offset 2867492] (1220 bytes)
]:getState()and L<0.25 then local t=math.sin(X.pulseTime*8)*0.5+0.5;local L=t*0.3;X.lowAmmoGlow.Position=Vector2.new(z-3,c-3);X.lowAmmoGlow.Size=Vector2.new(b+6,l+6);X.lowAmmoGlow.Transparency=L;X.lowAmmoGlow.Visible=true;w=X.lerpColor(w,Color3.fromRGB(255,255,255),t*0.3);else X.lowAmmoGlow.Visible=false;end;if M.Toggle["Show Shadow"]:getState()then X.shadow.Position=Vector2.new(z+2,c+2);X.shadow.Size=Vector2.new(b,l);X.shadow.Visible=true;else X.shadow.Visible=false;end;X.outline.Size=Vector2.new(b+2,l+2);X.outline.Position=Vector2.new(z-1,c-1);X.outline.Color=R;X.outline.Visible=true;X.innerOutline.Size=Vector2.new(b,l);X.innerOutline.Position=Vector2.new(z,c);X.innerOutline.Visible=true;X.emptyBar.Size=Vector2.new(b,l);X.emptyBar.Position=Vector2.new(z,c);X.emptyBar.Visible=true;local t=math.max(math.floor(b*i),0);X.fillBar.Size=Vector2.new(t,l);X.fillBar.Position=Vector2.new(z,c);X.fillBar.Color=w;X.fillBar.Visible=true;X.leftCap.Size=Vector2.new(2,l);X.leftCap.Position=Vector2.new(z,c);X.leftCap.Color=w;X.leftCap.Visible=t>0;X.rightCap.Size=Vector2.new(2,l);X.rightCap.Position=Vector2.new(z+b-2,c);X.rightCap.Visible=true;X.text.Position=Vector2.new(math.floor(f.X),c-16);X.text.Text=string.format(

-- [frag 0238 @ offset 2868968] (354 bytes)
and islclosure(i)then local t=debug.getinfo(i);if t.name=="S_Get"then local t=debug.getupvalue(i,1);local j=newproxy(true);local p=getrawmetatable(j);setreadonly(p,false);p.__index=function(L,L)if(L=="S")and Z.Toggle["Infinite Stamina"]and Z.Toggle["Infinite Stamina"]:getState()then return 100;else return t[L];end;end;p.__newindex=function(L,L,b)if(L==

-- [frag 0239 @ offset 2869461] (1333 bytes)
]and Z.Toggle["Infinite Stamina"]:getState()then t[L]=100;else t[L]=b;end;end;setreadonly(p,true);debug.setupvalue(i,1,j);end;end;end;end;end,yX=function(i,Z,t,j)repeat if not(j<=32)then(t)[0B110100]=select;break;else(t)[51]=(function()local p;for L=0x28,0XE2,0B1000010__ do if L==0B101000 then p=t[0X14](t[0B11101],t[12]);else if L~=0x6a then else(t)[0xc]=(t[0X0C]+8);return p;end;end;end;end);if not Z[24240]then j=-1356586104+(i.Sh((i.vh((i.Sh((i.Fh(Z[0x4a92__],(Z[31866])))-Z[0X447d],Z[0X56DB],Z[24977])),Z[0x68C9]))-Z[7806],i.ts[0X0_2]));Z[24240]=(j);else j=(Z[0X5_eB0]);end;end;until false;(t)[0X35]=(function()local Z=t[0x2D__]();local p=t[33](t[0x1D],t[0B1100],Z);if t[0B100_110]~=t[0B11110]then else for L=0X3__F__,0X7_5,0X36 do if not(L>0x3__f)then while t[0X28]do return t[46];end;continue;else while t[0B11000]do return t[0x1E];end;end;end;end;if t[0x16]~=t[0X2D]then return(i:fX(Z,p,t));end;end);(t)[0X036]=nil;(t)[0X37]=nil;return j;end,Hs=function(i)local Z=i[12];local t=i[11];local j=i[10];local p=i[2];local L=i[13];local b=i[4];local f=i[3];local l=i[6];local o=i[8];local z=i[7];local c=i[5];local y=i[1];local n=i[0];local X=i[9];return function()local i=L.Character;if not i then return;end;local L=i:FindFirstChild("Humanoid");local M=i:FindFirstChild(o[1][o[3]]);if not L or not M then return;end;if f.Toggle[

-- [frag 0240 @ offset 2870933] (558 bytes)
]:getState()then L.JumpPower=50;end;local i=f.Keybind["Fly"]:getKeybind()or"Y";if y:IsKeyDown(Enum.KeyCode[i])then M.Velocity=Vector3.zero;local i=f.Slider["Fly Speed"]:getValue();if y:IsKeyDown(Enum.KeyCode.W)then M.CFrame=M.CFrame+l.CFrame.LookVector*i;elseif y:IsKeyDown(Enum.KeyCode.S)then M.CFrame=M.CFrame+-l.CFrame.LookVector*i;elseif y:IsKeyDown(Enum.KeyCode.A)then M.CFrame=M.CFrame+-l.CFrame.RightVector*i;elseif y:IsKeyDown(Enum.KeyCode.D)then M.CFrame=M.CFrame+l.CFrame.RightVector*i;end;end;if t.AutoBlock then Z();end;if n[1][n[3]]and f.Toggle[

-- [frag 0241 @ offset 2871558] (53 bytes)
]:getState()then local i=n[1][n[3]];local Z=f.Toggle[

-- [frag 0242 @ offset 2871647] (205 bytes)
]:getState();i.Position=Z and Vector2.new(l.ViewportSize.X/2,l.ViewportSize.Y/2)or Vector2.new(b.X+z.X,b.Y+z.Y);i.Visible=true;i.Color=f.ColorPicker["FOV Color"]:getColor();i.Thickness=2;i.Filled=f.Toggle[

-- [frag 0243 @ offset 2871888] (545 bytes)
]:getState();i.Transparency=f.Slider["FOV Transparency"]:getValue();i.Radius=f.Slider["FOV Size"]:getValue();elseif n[1][n[3]]then n[1][n[3]].Visible=false;end;if p[1][p[3]]and f.Toggle["Maxhub Watermark"]:getState()then local i=p[1][p[3]];i.Visible=true;i.Center=true;i.Outline=true;i.Transparency=0.7;i.Text="Max Hub";i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);if n[1][n[3]]and f.Toggle["FOV Enabled"]:getState()then i.Position=Vector2.new(n[1][n[3]].Position.X,n[1][n[3]].Position.Y+n[1][n[3]].Radius+5);i.Color=f.ColorPicker[

-- [frag 0244 @ offset 2872550] (250 bytes)
]:getColor():Lerp(Color3.new(1,1,1),0.6);else i.Position=Vector2.new(b.X+z.X,b.Y+z.Y);end;elseif p[1][p[3]]then p[1][p[3]].Visible=false;end;local i=c[1][c[3]]and X[1][X[3]]or y:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);if i and f.Toggle[

-- [frag 0245 @ offset 2872826] (736 bytes)
]:getState()then local i=j(f.Slider["Lock On Distance"]:getValue(),true);if i and i.Parent then local Z=i.Parent:FindFirstChild(o[1][o[3]]);if Z then local i=f.Slider["Lock On Smoothing"]:getValue();local t=CFrame.lookAt(l.CFrame.Position,Z.Position);if i<=0 then l.CFrame=t;else l.CFrame=l.CFrame:Lerp(t,i);end;end;end;end;end;end,i=function(i)local Z=i[4];local t=i[11];local j=i[17];local p=i[9];local L=i[22];local b=i[0];local f=i[18];local l=i[21];local o=i[14];local z=i[12];local c=i[5];local y=i[6];local n=i[15];local X=i[20];local M=i[7];local R=i[13];local w=i[3];local K=i[25];local e=i[2];local U=i[19];local C=i[23];local d=i[8];local G=i[1];local x=i[10];local J=i[24];local B=i[16];local F=i[26];return function()print(

-- [frag 0246 @ offset 2873666] (198 bytes)
);local i={Real={CFrame=CFrame.new()},Fake={CFrame=CFrame.new()}};f.RenderStepped=p.RenderStepped:Connect(function(Q)b[1][b[3]]=w.CurrentCamera;if e.FakePart then if c.TargetPart and d.Flags.Toggle[

-- [frag 0247 @ offset 2873899] (511 bytes)
]:getState()then e.FakePart.CFrame=CFrame.new(b[1][b[3]].CFrame.p,c.TargetPart.CFrame.p);else e.FakePart.CFrame=b[1][b[3]].CFrame;end;end;M[1][M[3]]=nil;o[1][o[3]]=nil;z[1][z[3]]=nil;x[1][x[3]]=nil;for Q,V in next,R()do task.spawn(function()J(Q,V);end);task.spawn(function()j[1][j[3]](V);end);end;o[1][o[3]]=nil;c.Target=z[1][z[3]];c.TargetName=x[1][x[3]];c.TargetPart=M[1][M[3]];if M[1][M[3]]then c.TargetPosition=M[1][M[3]].Position;c.CurrentPosition=b[1][b[3]].CFrame.p;end;local j=d.Flags;local o=j.Keybind[

-- [frag 0248 @ offset 2874423] (32 bytes)
]:getKeybind();local z=j.Slider[

-- [frag 0249 @ offset 2874491] (535 bytes)
]:getValue();if t:IsKeyDown(Enum.KeyCode[o])then local j=game.Players.LocalPlayer.Character;local o=j.HumanoidRootPart;o.Velocity=Vector3.new(0,0,0);if t:IsKeyDown(Enum.KeyCode.W)then o.CFrame=o.CFrame+(b[1][b[3]].CFrame.LookVector*z);elseif t:IsKeyDown(Enum.KeyCode.S)then o.CFrame=o.CFrame+(-b[1][b[3]].CFrame.LookVector*z);elseif t:IsKeyDown(Enum.KeyCode.A)then o.CFrame=o.CFrame+(-b[1][b[3]].CFrame.RightVector*z);elseif t:IsKeyDown(Enum.KeyCode.D)then o.CFrame=o.CFrame+(b[1][b[3]].CFrame.RightVector*z);end;end;if d.Flags.Toggle[

-- [frag 0250 @ offset 2875039] (234 bytes)
]:getState()then for t,t in ipairs(l:GetPlayers())do if t.Name~=game.Players.LocalPlayer then pcall(function()t.Character.Torso.Size=Vector3.new(20,20,20);t.Character.Torso.Transparency=0.5;t.Character.Torso.BrickColor=BrickColor.new(

-- [frag 0251 @ offset 2875489] (177 bytes)
then t.Info.Team=t:GetTeam();t.Info.Character=t:GetCharacter();else t.Info.Character=t:GetCharacter();t.Info.Team=t:GetTeam();end;do if t.Info.Class=="Player"and d.Flags.Toggle[

-- [frag 0252 @ offset 2875706] (69 bytes)
]:getState()and t.Info.Character and t.Info.Character:FindFirstChild(

-- [frag 0253 @ offset 2876184] (620 bytes)
);do if L and j then do if d.Flags.Toggle["Anti Aim"]:getState()then do L.AutoRotate=false;local L=-math.atan2(b[1][b[3]].CFrame.LookVector.Z,b[1][b[3]].CFrame.LookVector.X)+math.rad(-90.0);do L=-math.atan2(b[1][b[3]].CFrame.LookVector.Z,b[1][b[3]].CFrame.LookVector.X+math.rad(math.random(0,360)));end;local l=math.rad(360);local o=CFrame.new(j.Position)*CFrame.Angles(0,L+l,0);if c.TargetPart then o=CFrame.new(j.Position,c.TargetPart.Position)*CFrame.Angles(0,l,0);end;j.CFrame=X:Rotate(o);end;end;end;do if d.Flags.Toggle["No Drown"]:getState()then game.Lighting.WaterBlur.Enabled=false;end;end;do if d.Flags.Toggle[

-- [frag 0254 @ offset 2876866] (208 bytes)
]:getState()then local L=Ray.new(j.Position,Vector3.new(0,-10.0,0));local j,j,l,l=w:FindPartOnRayWithWhitelist(L,{w.Terrain});if l and l==Enum.Material.Water then if not e.WaterPart then local L=Instance.new(

-- [frag 0255 @ offset 2877088] (465 bytes)
,workspace.NoCollision);L.Transparency=1;L.Size=Vector3.new(10,1,10);L.CanCollide=true;L.Anchored=true;e.WaterPart=L;else e.WaterPart.Position=j;end;end;end;end;end;end;do if e.HeadGlitch then t.Head.CanCollide=false;t.Head.CFrame=y.Character.HumanoidRootPart.CFrame*CFrame.new(0,-4.0,0);end;end;end;end;end;if d.Flags.Toggle["Tracers Enabled"]:getState()then G:UpdateLines();end;if d.Flags.Toggle["Aimbot"]:getState()then K();end;local t=b[1][b[3]]:FindFirstChild(

-- [frag 0256 @ offset 2877681] (207 bytes)
,true);if j then c.CurrentGun=j.Parent;end;end;if d.Flags.Toggle["No Jump Delay"]:getState()and y.Character and y.Character:FindFirstChild("Humanoid")then y.Character:FindFirstChild("Humanoid"):SetAttribute(

-- [frag 0257 @ offset 2877957] (235 bytes)
,0);end;if t then X:UpdateViewmodel(t);end;end);f.Heartbeat=p.Heartbeat:Connect(function()if d.Flags.Toggle["FOV Enabled"]:getState()and d.Flags.Toggle["Dynamic FOV"]:getState()and c.CurrentGun then local t=c.CurrentGun:FindFirstChild(

-- [frag 0258 @ offset 2878248] (354 bytes)
);if t then local j,L=b[1][b[3]]:WorldToViewportPoint(t.Position+t.CFrame.LookVector*400);if L then G.FovPosition=Vector2.new(j.X,j.Y);G.LastFovPosition=G.FovPosition;else G.FovPosition=G.LastFovPosition;end;end;else G.FovPosition=Vector2.new(b[1][b[3]].ViewportSize.X/2,b[1][b[3]].ViewportSize.Y/2);G.LastFovPosition=G.FovPosition;end;if d.Flags.Toggle[

-- [frag 0259 @ offset 2878652] (1507 bytes)
]:getState()then if n and UndergroundEnabled then if not(B and n and B:FindFirstChild(U[1][U[3]]))then pcall(function()if Animation then Animation:Stop();end;end);Animation=nil;return;end;if not Animation then Animation=n:LoadAnimation(C);end;local t=Z.CFrame;local j=n.CameraOffset;Animation:Play(0,1,0);Animation.TimePosition=2.37;local L=t*CFrame.new(0,-1.1,0)*CFrame.Angles(math.rad(90),0,0);n.HipHeight=0.1;Z.CFrame=L;n.CameraOffset=L:ToObjectSpace(CFrame.new(t.Position)).Position;p.RenderStepped:Wait();Animation:Stop();n.CameraOffset=j;n.HipHeight=1;Z.CFrame=t;end;end;end);p:BindToRenderStep("Desync",Enum.RenderPriority.First.Value,function()if y.Character and d.Flags.Toggle["Anti Desync"]:getState()then local Z=y.Character;local t=Z:FindFirstChild(U[1][U[3]]);if t then t.CFrame=i.Real.CFrame;end;end;end);end;end,oi=string.packsize,ZX=function(i,i,Z,t,j)if Z>0x10 then return-0B10,i;else if not(Z<0X1C)then else(j)[12]=(j[0B1100]+t);return 0X4392;end;end;return nil;end,CX=function(i,i,Z,t)(i[0X00_2])[Z+0b10]=(t);end,r=function(i)local Z=i[1];local t=i[0];return function(i)coroutine.wrap(t)(i);coroutine.wrap(Z)(i);end;end,os=function(i)local Z=i[2];local t=i[1];local j=i[0];local p=i[3];local L=i[4];return function(...)local i=getnamecallmethod();setthreadidentity(5);if not checkcaller()and select(1,...)==workspace and i:find("cast")then local i={...};if typeof(i[#i])=="RaycastParams"then local b=getcallingscript();local f=i[#i];if b and b.Name=="MainLocal"and debug.traceback():find(

-- [frag 0260 @ offset 2880333] (133 bytes)
]:getState()and not UserIsPoor then f.AddToFilter(f,workspace.Map);end;i[3]=i[3].Unit*1000;local b=Z[1][Z[3]](unpack(i));if j.Toggle[

-- [frag 0261 @ offset 2880515] (24 bytes)
]:getState()or j.Toggle[

-- [frag 0262 @ offset 2880574] (223 bytes)
]:getState()and not UserIsPoor then local i=p();local p=b and b.Position and(b.Position-i)or L.CFrame.LookVector*100;if p and i then local L=b and b.Position or(i+p);if(L-i).Magnitude<5 then L=i+(p.Unit*25);end;if j.Toggle[

-- [frag 0263 @ offset 2880832] (73 bytes)
]:getState()and not UserIsPoor then spawnNewCrosshair(L);end;if j.Toggle[

-- [frag 0264 @ offset 2880957] (939 bytes)
]:getState()then t:NewTracer(i,L,workspace.IgnoreThese);end;end;end;return b;end;end;end;return Z[1][Z[3]](...);end;end,vs=bit32,QX=function(i,i)(i)[0B110001]=(function()local Z,t=(0B1100000);while true do if Z==0B1100000 then t=i[0b1001_1__](i[0x1d],i[0Xc]);Z=0x3f;else if Z~=0X3f then else i[0B1100]=(i[0B110__0]+4);break;end;end;end;return t;end);end,Gs=function(i)local Z=i[2];local t=i[36];local j=i[26];local p=i[38];local L=i[8];local b=i[15];local f=i[14];local l=i[0];local o=i[21];local z=i[6];local c=i[37];local y=i[12];local n=i[17];local X=i[16];local M=i[1];local R=i[23];local w=i[10];local K=i[19];local e=i[7];local U=i[4];local C=i[18];local d=i[11];local G=i[32];local x=i[5];local J=i[27];local B=i[3];local F=i[9];local Q=i[22];local V=i[31];local u=i[33];local E=i[29];local s=i[30];local I=i[25];local v=i[20];local W=i[35];local H=i[28];local m=i[13];local q=i[24];local P=i[34];return function(i)local O=Z.Slider[

-- [frag 0265 @ offset 2881931] (76 bytes)
]:getValue();local r=Z.ColorPicker["FOV Color"]:getColor();local T=Z.Slider[

-- [frag 0266 @ offset 2882048] (30 bytes)
]:getValue();local Y=Z.Toggle[

-- [frag 0267 @ offset 2882111] (30 bytes)
]:getState();local A=Z.Slider[

-- [frag 0268 @ offset 2882174] (92 bytes)
]:getValue();local k=Z.Toggle["Modify FOV"]:getState();if k then G.updateCameraFOV(Z.Slider[

-- [frag 0269 @ offset 2882313] (134 bytes)
]:getValue());end;q();if Z.Toggle["Third Person"]:getState()then if not V[1][V[3]]then c:Enable();end;local G=z:FindFirstChildOfClass(

-- [frag 0270 @ offset 2882910] (115 bytes)
]:getState()then local c=M[1][M[3]]();if c and c.Player==B and c.Properties then I(c);end;else u();end;if Z.Toggle[

-- [frag 0271 @ offset 2883091] (98 bytes)
]:getState()then local c=M[1][M[3]]();if c and c.Player==B then e(c);end;else x();end;if Z.Toggle[

-- [frag 0272 @ offset 2883240] (370 bytes)
]and Z.Toggle["Instant Reload"]:getState()then local c=M[1][M[3]]();if c and c.Player==B and c.Properties then if c.IsReloading then c.IsReloading=false;c.Rounds=c.Properties.Rounds;X(c);end;end;end;if Z.Toggle["No Spread"]and Z.Toggle["No Spread"]:getState()then local c=M[1][M[3]]();if c and c.Player==B then p(c);end;else n();end;if O~=R[1][R[3]]then if not Z.Toggle[

-- [frag 0273 @ offset 2883692] (227 bytes)
]:getState()then l[1][l[3]]=O;end;R[1][R[3]]=O;end;local p=nil;local c=Z.Toggle["Dynamic FOV"]and Z.Toggle["Dynamic FOV"]:getState();local n=Z.Toggle["FOV Lock Center"]:getState();local X=Z.Toggle["Lock On Target"]and Z.Toggle[

-- [frag 0274 @ offset 2884038] (100 bytes)
]:getState();local R=Z.Dropdown["Snap From"]and Z.Dropdown["Snap From"]:getValue();local e=Z.Slider[

-- [frag 0275 @ offset 2884295] (624 bytes)
]:getValue();if c then p=P(e);end;if not p then if n then p=Vector2.new(z.ViewportSize.X/2,z.ViewportSize.Y/2);else p=t();end;end;local c=nil;local n=nil;if X or w[1][w[3]]then _,c=j();if c then local j,e=z:WorldToViewportPoint(c.Position);if e then n=Vector2.new(j.X,j.Y);end;end;end;if X and n then if not C[1][C[3]]then C[1][C[3]]=p;end;C[1][C[3]]=C[1][C[3]]:Lerp(n,math.clamp((i or 0)*22.5,0,1));p=C[1][C[3]];elseif C[1][C[3]]then if(C[1][C[3]]-p).Magnitude>1 then C[1][C[3]]=C[1][C[3]]:Lerp(p,math.clamp((i or 0)*22.5,0,1));p=C[1][C[3]];else C[1][C[3]]=nil;end;end;if f[1][f[3]]then local i=f[1][f[3]];local j=Z.Toggle[

-- [frag 0276 @ offset 2884956] (136 bytes)
]:getState();i.Position=p;i.Visible=y[1][y[3]]and m[1][m[3]];i.Color=Z.ColorPicker["FOV Outline Color"]:getColor();i.Thickness=Z.Slider[

-- [frag 0277 @ offset 2885183] (37 bytes)
]:getValue();i.Transparency=Z.Slider[

-- [frag 0278 @ offset 2885278] (140 bytes)
]:getValue();i.Filled=false;i.NumSides=128;i.ZIndex=1;if j then local j=tick();local f=Z.Slider["Effect Speed"]:getValue();local z=Z.Slider[

-- [frag 0279 @ offset 2885487] (127 bytes)
]:getValue();local c=math.sin(j*f)*z+(1-z);if U:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then i.Thickness=Z.Slider[

-- [frag 0280 @ offset 2885684] (41 bytes)
]:getValue()+0.5;i.Transparency=Z.Slider[

-- [frag 0281 @ offset 2885775] (46 bytes)
]:getValue()*0.3;else i.Transparency=Z.Slider[

-- [frag 0282 @ offset 2885882] (40 bytes)
]:getValue()*c;end;end;local j=Z.Slider[

-- [frag 0283 @ offset 2885956] (336 bytes)
]:getValue();local f=Z.Slider["FOV Outline Thickness"]:getValue();i.Radius=l[1][l[3]]+(j/2)+(f/2);end;if d[1][d[3]]then local i=d[1][d[3]];local j=Z.Toggle["FOV Effects"]:getState();i.Position=p;i.Visible=m[1][m[3]];i.Color=r;i.Thickness=T;i.Transparency=A;i.Filled=Y;i.NumSides=128;i.ZIndex=2;if j then local j=tick();local p=Z.Slider[

-- [frag 0284 @ offset 2886384] (480 bytes)
]:getValue();local f=Z.Slider["Effect Intensity"]:getValue();local z=math.sin(j*p)*f+(1-f);local c=math.sin(j*p*0.7)*f+(1-f);if U:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then i.Color=r:Lerp(Color3.new(1,1,1),0.5);i.Thickness=T+1;i.Transparency=A*0.3;else i.Color=r:Lerp(Color3.new(1,1,1),c*0.3);i.Transparency=A*z;end;end;if Z.Toggle["FOV Auto Adjust"]:getState()then local j=O;local p=U:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);local f=p and(j*Z.Slider[

-- [frag 0285 @ offset 2886948] (64 bytes)
]:getValue())or j;l[1][l[3]]=l[1][l[3]]+(f-l[1][l[3]])*Z.Slider[

-- [frag 0286 @ offset 2887037] (138 bytes)
]:getValue();else l[1][l[3]]=O;end;i.Radius=l[1][l[3]];end;if H[1][H[3]]then local i=nil;local j=R=="Mouse"or R=="Nouse";local p=Z.Slider[

-- [frag 0287 @ offset 2887317] (930 bytes)
]:getValue()or 1;if not j then i=P();end;if not i then i=t();end;if w[1][w[3]]and i and n then H[1][H[3]].Visible=true;H[1][H[3]].From=i;H[1][H[3]].To=n;H[1][H[3]].Color=r;H[1][H[3]].Thickness=1;H[1][H[3]].Transparency=p;H[1][H[3]].ZIndex=2;if J[1][J[3]]then J[1][J[3]].Visible=true;J[1][J[3]].From=i;J[1][J[3]].To=n;J[1][J[3]].Color=Color3.new(0,0,0);J[1][J[3]].Thickness=3;J[1][J[3]].Transparency=p;J[1][J[3]].ZIndex=1;end;else H[1][H[3]].Visible=false;if J[1][J[3]]then J[1][J[3]].Visible=false;end;end;end;if F[1][F[3]]then local i=F[1][F[3]];local t=Z.Toggle["FOV Effects"]:getState();i.Visible=o[1][o[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if d[1][d[3]]and m[1][m[3]]then local j=d[1][d[3]];i.Position=Vector2.new(j.Position.X,j.Position.Y+j.Radius+8);local j=Z.ColorPicker["FOV Color"]:getColor();i.Color=j:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if t then local t=tick();local p=Z.Slider[

-- [frag 0288 @ offset 2888309] (30 bytes)
]:getValue();local f=Z.Slider[

-- [frag 0289 @ offset 2888381] (205 bytes)
]:getValue();local l=math.sin(t*p*0.8)*f+(1-f);i.Color=j:Lerp(Color3.new(1,1,1),l);end;else i.Position=Vector2.new(E.X+b.X,E.Y+b.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text=

-- [frag 0290 @ offset 2888649] (38 bytes)
]:getState()and table.find(Z.Dropdown[

-- [frag 0291 @ offset 2888720] (190 bytes)
]:getValue(),"Ragebot")and not UserIsPoor then local i=M[1][M[3]]();if not i then return;end;if not i.Properties then return;end;local t=i.Properties.Class;if t=="Melee"or t=="Grenade"or t==

-- [frag 0292 @ offset 2889099] (192 bytes)
,Z.Slider["Ragebot Firerate"]and Z.Slider["Ragebot Firerate"]:getValue())then W[1][W[3]]();end;end;end;end,A=function(i)local Z=i[0];return function()for i,i in next,getgc(true)do if type(i)==

-- [frag 0293 @ offset 2889691] (1286 bytes)
)then Z.WeaponFunctions=i;end;end;end;end;end,T=function(i)local Z=i[4];local t=i[7];local j=i[8];local p=i[0];local L=i[1];local b=i[3];local f=i[5];local l=i[6];local o=i[2];return function()if b.AutoDodge.BlockBuble then if not f[1][f[3]]then o();else t();end;else if f[1][f[3]]then l();end;end;if b.Player.Fly then local i=p.Character;local t=i and i:FindFirstChild(j[1][j[3]]);if t then t.Velocity=Vector3.new(0,0,0);if L:IsKeyDown(Enum.KeyCode.W)then t.CFrame=t.CFrame+(Z.CFrame.LookVector*0.8);end;if L:IsKeyDown(Enum.KeyCode.S)then t.CFrame=t.CFrame+(-Z.CFrame.LookVector*0.8);end;if L:IsKeyDown(Enum.KeyCode.A)then t.CFrame=t.CFrame+(-Z.CFrame.RightVector*0.8);end;if L:IsKeyDown(Enum.KeyCode.D)then t.CFrame=t.CFrame+(Z.CFrame.RightVector*0.8);end;end;end;end;end,sh=bit32.rrotate,gi=function(i,Z,t)(t)[9775]=(-2160488626+((i.Fh((i.uh((i.uh(i.ts[0X9]))+i.ts[0b1000])),(t[7733])))-t[971]==Z and t[17180]or i.ts[0X3]));Z=(-2938381031+((i.kh((i.vh((i.Sh(i.ts[0B1000],t[0X431C],i.ts[0X9]))))+t[0X3cb]-t[0X6AE]))>i.ts[0X7]and i.ts[0b111__]or i.ts[0B1_0]));t[6672]=(Z);return Z;end,n=function(i)local Z=i[8];local t=i[2];local j=i[5];local p=i[7];local L=i[4];local b=i[0];local f=i[6];local l=i[1];local o=i[3];return function()local i=b.Dropdown["To Farm"]:getValue();if b.Toggle[

-- [frag 0294 @ offset 2891023] (85 bytes)
]:getState()then local z=false;local c=tick();if c-o.lastTime>=o.cooldown then if i==

-- [frag 0295 @ offset 2891127] (282 bytes)
then for y,y in pairs(f:GetChildren())do if y.Name:find("Curse")or y.Name=="Jujutsu Sorcerer"and not y:GetAttribute("IsBossNPC")and y:GetAttribute("NPC")and y:FindFirstChild(L[1][L[3]])then z=true;movement:moveto(y.HumanoidRootPart.CFrame,b.Slider["Farm Speed"]:getValue(),b.Slider[

-- [frag 0296 @ offset 2891510] (22 bytes)
]:getValue(),b.Slider[

-- [frag 0297 @ offset 2891581] (397 bytes)
]:getValue(),b.Slider["Farm Angle"]:getValue(),true);break;end;end;if not z then movement:moveto(j.WaitingPos,math.huge,0,0,0,false);end;else for y,y in pairs(f:GetChildren())do if y.Name==i and y:FindFirstChild(L[1][L[3]])then local i=(p.LocalPlayer.Character.HumanoidRootPart.Position-y.HumanoidRootPart.Position).Magnitude;if i<=o.radius then movement:moveto(y.HumanoidRootPart.CFrame,b.Slider[

-- [frag 0298 @ offset 2892031] (59 bytes)
]:getValue(),b.Slider["Height Offset"]:getValue(),b.Slider[

-- [frag 0299 @ offset 2892136] (162 bytes)
]:getValue(),b.Slider["Farm Angle"]:getValue(),true);z=true;o.radius=10;break;end;end;end;if not z then o.radius=math.min(o.radius+o.increment,o.maxRadius);print(

-- [frag 0300 @ offset 2892544] (111 bytes)
]and b.Toggle["Regular Meteor"]:getState()then for i,i in pairs(l.Meteors:GetChildren())do if i:FindFirstChild(

-- [frag 0301 @ offset 2892852] (114 bytes)
).CFrame,math.huge,0,0,0,false);fireproximityprompt(i:FindFirstChild("Meteor").ProximityAttachment:FindFirstChild(

-- [frag 0302 @ offset 2893082] (287 bytes)
]and b.Toggle["Camellite Meteor"]:getState()then for i,i in pairs(l.CamelliteMeteor:GetChildren())do if i:FindFirstChild("CamMeteor")then movement:moveto(i.CamMeteor.PrimaryPart.CFrame,math.huge,0,0,0,false);fireproximityprompt(i.CamMeteor.PrimaryPart.ProximityAttachment:FindFirstChild(

-- [frag 0303 @ offset 2893529] (104 bytes)
]and b.Toggle["Dropped Items"]:getState()then if game:GetService("Workspace").ItemSpawns:FindFirstChild(

-- [frag 0304 @ offset 2893705] (39 bytes)
)then for i,i in pairs(game:GetService(

-- [frag 0305 @ offset 2893978] (122 bytes)
)then movement:moveto(i.Parent.Parent.CFrame,math.huge,-5.0,0,0,false);fireproximityprompt(i);end;end;end;end;if b.Toggle[

-- [frag 0306 @ offset 2894126] (70 bytes)
]and b.Toggle["LabCrate"]:getState()then hasLabCrate=Z:FindFirstChild(

-- [frag 0307 @ offset 2894225] (193 bytes)
);isInLab=t:HasTag("InLab");if hasLabCrate and not isInLab then movement:moveto(j.LabToor,math.huge,0,5,0,false);elseif hasLabCrate and isInLab then local i={[1]="TurnInCrate"};game:GetService(

-- [frag 0308 @ offset 2894806] (1133 bytes)
):InvokeServer(unpack(i));else for i,i in pairs(l.LabCrate:GetChildren())do if i:FindFirstChild("Crate")then movement:moveto(i.Crate.CFrame,math.huge,10,0,0,false);fireproximityprompt(i.Crate.ProximityAttachment:FindFirstChild("Interaction"));end;end;end;end;end;end,ai=function(i,Z,t,j,p)if Z==43 then(p)[0Xf]=i.ks;if not(not t[0X3C16])then Z=t[0x3C__16__];else Z=-0b1_11011+((i.uh(((i.ts[3]==t[6672]and t[17180]or t[0X1_Dc2])>i.ts[0b10]and t[0X4239]or i.ts[0b110__])-i.ts[8]))+t[9775]+t[7733]);t[15382]=Z;end;elseif Z==21 then i:Vi(j,p);return 51451,Z;else if Z~=14 then else p[0X10]=i.ss;if not(not t[0X447d])then Z=t[0X447D];else Z=(-0X2__85A83B7+((i.kh((i.ih(t[0X3Cb]-i.ts[0X6]))+t[7618]))+t[0X1a10]+i.ts[4]));(t)[17533]=Z;end;end;end;return nil,Z;end,pX=function(i,i,Z,t)Z=#t;i=0xE;return Z,i;end,s=function(i)local Z=i[0];local t=i[3];local j=i[2];local p=i[1];return function()if Z.nostun then for i,i in pairs(workspace.Characters[game.Players.LocalPlayer.Name].Info:GetChildren())do i:Destroy();end;end;if Z.Autoparry.Toggle then t();if Z.Autoparry.totality or Z.Counter.totality then local i=game.Workspace:FindFirstChild(

-- [frag 0309 @ offset 2896263] (106 bytes)
);if i then local function t()local b=i:GetPlayingAnimationTracks();local i=false;local f=game:GetService(

-- [frag 0310 @ offset 2896390] (190 bytes)
).LocalPlayer.Character.HumanoidRootPart.Position;local l=L.Position;local L=(f-l).magnitude;if L<=Z.totalityDistance then for L,L in ipairs(b)do if L.IsPlaying and(L.Animation.AnimationId==

-- [frag 0311 @ offset 2896650] (179 bytes)
or L.Animation.AnimationId=="rbxassetid://95250225969869"or L.Animation.AnimationId=="rbxassetid://130336833420143")then i=true;if Z.Counter.totality then local L=game:GetService(

-- [frag 0312 @ offset 2897047] (113 bytes)
);if L then local b=L.Cooldown.Size.Y;local L=tonumber(b.Scale);if L<=0 then local L={[1]=false};game:GetService(

-- [frag 0313 @ offset 2897393] (160 bytes)
):WaitForChild("Activated"):FireServer(unpack(L));else j();end;else game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Knit"):WaitForChild(

-- [frag 0314 @ offset 2897694] (1519 bytes)
):WaitForChild("RightActivated"):FireServer();j();end;else j();end;end;end;end;if not i then p[1][p[3]]=false;end;end;t();end;end;end;end;end;if Z.AntiLag then for i,i in pairs(workspace.Map.Data:GetChildren())do if i:IsA("BasePart")then i.Transparency=1;wait(0.3);end;end;end;end;end,_s=function(i)local Z=i[0];return function()Z:updateESPConfig();Z:Update();end;end,wi=function(i,i,Z)Z=i[11884];return Z;end,nX=function(i,Z,t,j,p,L)if j==0x9E then Z[11]=p;else if j==0b100111 then(Z)[0b1_0]=(L);else if j~=277 then else i:zX(Z,t);return 0XD72f;end;end;end;return nil;end,S=function(i)local Z=i[29];local t=i[38];local j=i[36];local p=i[5];local L=i[41];local b=i[37];local f=i[28];local l=i[8];local o=i[61];local z=i[14];local c=i[33];local y=i[34];local n=i[27];local X=i[54];local M=i[20];local R=i[21];local w=i[44];local K=i[46];local e=i[12];local U=i[16];local C=i[60];local d=i[22];local G=i[42];local x=i[7];local J=i[24];local B=i[10];local F=i[4];local Q=i[49];local V=i[55];local u=i[9];local E=i[2];local s=i[23];local I=i[50];local v=i[47];local W=i[31];local H=i[58];local m=i[56];local q=i[25];local P=i[26];local O=i[35];local r=i[1];local T=i[30];local Y=i[39];local A=i[45];local k=i[62];local h=i[53];local N=i[52];local D=i[32];local S=i[40];local g=i[59];local a=i[3];local Zf=i[19];local tf=i[11];local jf=i[15];local pf=i[57];local Lf=i[13];local bf=i[18];local ff=i[43];local lf=i[0];local of=i[63];local zf=i[17];local cf=i[6];local yf=i[48];local nf=i[51];return function()local i=r.Slider[

-- [frag 0315 @ offset 2899261] (78 bytes)
]:getValue();local Xf=r.ColorPicker["FOV Color"]:getColor();local Mf=r.Slider[

-- [frag 0316 @ offset 2899403] (31 bytes)
]:getValue();local Rf=r.Toggle[

-- [frag 0317 @ offset 2899452] (81 bytes)
]:getState();local wf=r.Slider["FOV Transparency"]:getValue();local Kf=r.Keybind[

-- [frag 0318 @ offset 2899562] (140 bytes)
]:getKeybind();local ef=r.Slider["Fly Speed"]:getValue();local Uf=r.Dropdown["Spectate Player"]:getValue();local Cf=a[1][a[3]]:WaitForChild(

-- [frag 0319 @ offset 2899781] (1369 bytes)
);if Kf=="None"then Kf="Y";end;if r.Toggle["Spectate"]:getState()then if Uf then local df=p:FindFirstChild(Uf);if df and df.Character and df.Character:FindFirstChild(M[1][M[3]])then k[1][k[3]]=df;u.CameraSubject=df.Character.Humanoid;end;end;end;if r.Toggle["Free Cam"]:getState()then if not B[1][B[3]]then B[1][B[3]]=true;of[1][of[3]]=u.CameraType;originalCameraSubject=u.CameraSubject;originalMouseBehavior=tf.MouseBehavior;local k=F.Character and F.Character:FindFirstChild(M[1][M[3]])and F.Character.HumanoidRootPart.CFrame;if k then local of=CFrame.new(u.CFrame.Position,u.CFrame.Position+k.LookVector);x[1][x[3]]=of;else x[1][x[3]]=CFrame.new(u.CFrame.Position,u.CFrame.Position+Vector3.new(0,0,-1.0));end;freeCamSpeed=50;freeCamBoostMultiplier=3;freeCamMouseSensitivity=0.003;freeCamVelocity=Vector3.new(0,0,0);freeCamAcceleration=150;freeCamDeceleration=10;if F.Character and F.Character:FindFirstChild("Humanoid")then originalWalkSpeed=F.Character.Humanoid.WalkSpeed;originalJumpPower=F.Character.Humanoid.JumpPower;originalPlatformStand=F.Character.Humanoid.PlatformStand;F.Character.Humanoid.PlatformStand=true;F.Character.Humanoid.WalkSpeed=0;F.Character.Humanoid.JumpPower=0;end;u.CameraType=Enum.CameraType.Scriptable;u.CFrame=x[1][x[3]];end;local k=Q.RenderStepped:Wait();local Q=Vector3.new(0,0,0);local of=freeCamSpeed;local Uf=a[1][a[3]]:GetAttribute(

-- [frag 0320 @ offset 2901226] (2594 bytes)
);if Uf and tf.MouseBehavior~=Enum.MouseBehavior.LockCenter then tf.MouseBehavior=Enum.MouseBehavior.LockCenter;elseif not Uf and tf.MouseBehavior==Enum.MouseBehavior.LockCenter then tf.MouseBehavior=originalMouseBehavior;end;if tf:IsKeyDown(Enum.KeyCode.LeftShift)then of=of*freeCamBoostMultiplier;end;if tf:IsKeyDown(Enum.KeyCode.W)then Q=Q+x[1][x[3]].LookVector;end;if tf:IsKeyDown(Enum.KeyCode.S)then Q=Q-x[1][x[3]].LookVector;end;if tf:IsKeyDown(Enum.KeyCode.A)then Q=Q-x[1][x[3]].RightVector;end;if tf:IsKeyDown(Enum.KeyCode.D)then Q=Q+x[1][x[3]].RightVector;end;if tf:IsKeyDown(Enum.KeyCode.E)or tf:IsKeyDown(Enum.KeyCode.Space)then Q=Q+Vector3.new(0,1,0);end;if tf:IsKeyDown(Enum.KeyCode.Q)or tf:IsKeyDown(Enum.KeyCode.LeftControl)then Q=Q-Vector3.new(0,1,0);end;if Q.Magnitude>0 then Q=Q.Unit;local df=Q*of;freeCamVelocity=freeCamVelocity:Lerp(df,freeCamAcceleration*k);else freeCamVelocity=freeCamVelocity:Lerp(Vector3.new(0,0,0),freeCamDeceleration*k);end;x[1][x[3]]=x[1][x[3]]+(freeCamVelocity*k);if Uf then local Q=tf:GetMouseDelta();local k=-Q.Y*freeCamMouseSensitivity;local of=-Q.X*freeCamMouseSensitivity;x[1][x[3]]=x[1][x[3]]*CFrame.Angles(k,0,0);x[1][x[3]]=x[1][x[3]]*CFrame.fromAxisAngle(Vector3.new(0,1,0),of);end;u.CFrame=x[1][x[3]];end;if not B[1][B[3]]then flyActive=flyActive or false;if not flyKeyConnection then flyKeyConnection=tf.InputBegan:Connect(function(x,B)if not B and x.KeyCode==Enum.KeyCode[Kf]then flyActive=not flyActive;end;end);end;if flyActive then local x=F.Character;if x and x:FindFirstChild(M[1][M[3]])then local B=x.HumanoidRootPart;B.Velocity=Vector3.new(0,2,0);if tf:IsKeyDown(Enum.KeyCode.W)then B.CFrame=B.CFrame+(lf.CFrame.LookVector*ef);elseif tf:IsKeyDown(Enum.KeyCode.S)then B.CFrame=B.CFrame+(-lf.CFrame.LookVector*ef);elseif tf:IsKeyDown(Enum.KeyCode.A)then B.CFrame=B.CFrame+(-lf.CFrame.RightVector*ef);elseif tf:IsKeyDown(Enum.KeyCode.D)then B.CFrame=B.CFrame+(lf.CFrame.RightVector*ef);end;end;end;end;if r.Toggle["tweaker mode"]:getState()then local x=F.Character;if x and x:FindFirstChild(M[1][M[3]])then local M=x.HumanoidRootPart;W[1][W[3]]=r.Slider["Fly Smoothing"]:getValue();local x=Vector3.new(0,2,0);if tf:IsKeyDown(Enum.KeyCode.W)then x=x+(lf.CFrame.LookVector*ef);end;if tf:IsKeyDown(Enum.KeyCode.S)then x=x+(-lf.CFrame.LookVector*ef);end;if tf:IsKeyDown(Enum.KeyCode.A)then x=x+(-lf.CFrame.RightVector*ef);end;if tf:IsKeyDown(Enum.KeyCode.D)then x=x+(lf.CFrame.RightVector*ef);end;S[1][S[3]]=S[1][S[3]]:lerp(x,W[1][W[3]]);M.Velocity=S[1][S[3]];end;end;if r.Toggle["Ambient Enabled"]:getState()then n.Ambient=r.ColorPicker[

-- [frag 0321 @ offset 2903955] (142 bytes)
]:getColor();c.Color=r.ColorPicker["Atmosphere Color"]:getColor();c.Decay=r.ColorPicker["Atmosphere Decay Color"]:getColor();c.Glare=r.Slider[

-- [frag 0322 @ offset 2904216] (29 bytes)
]:getValue();c.Haze=r.Slider[

-- [frag 0323 @ offset 2904281] (32 bytes)
]:getValue();c.Density=r.Slider[

-- [frag 0324 @ offset 2904365] (585 bytes)
]:getValue();end;if r.Toggle["Fullbright"]:getState()then n.Ambient=Color3.new(1,1,1);n.OutdoorAmbient=Color3.new(1,1,1);n.Brightness=2;end;if r.Toggle["No Fog"]:getState()then n.FogStart=0;n.FogEnd=9e9;c.Density=0;end;if cf[1][cf[3]]then local c=cf[1][cf[3]];local n=r.Toggle["FOV Lock Center"]:getState();local M=r.Toggle["FOV Effects"]:getState();if n then c.Position=Vector2.new(u.ViewportSize.X/2,u.ViewportSize.Y/2);else c.Position=Vector2.new(bf.X+s.X,bf.Y+s.Y);end;c.Visible=I[1][I[3]]and nf[1][nf[3]];c.Color=r.ColorPicker["FOV Outline Color"]:getColor();c.Thickness=r.Slider[

-- [frag 0325 @ offset 2905116] (37 bytes)
]:getValue();c.Transparency=r.Slider[

-- [frag 0326 @ offset 2905237] (458 bytes)
]:getValue();c.Filled=false;c.NumSides=128;c.ZIndex=1;if M then local n=tick();local M=r.Slider["Effect Speed"]:getValue();local x=r.Slider["Effect Intensity"]:getValue();local B=math.sin(n*M)*x+(1-x);if tf:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or a[1][a[3]]:GetAttribute("Aiming")then c.Thickness=r.Slider["FOV Outline Thickness"]:getValue()+0.5;c.Transparency=r.Slider["FOV Outline Transparency"]:getValue()*0.3;else c.Transparency=r.Slider[

-- [frag 0327 @ offset 2905909] (35 bytes)
]:getValue()*B;end;end;if r.Toggle[

-- [frag 0328 @ offset 2905985] (174 bytes)
]:getState()then local n=r.Slider["FOV Size"]:getValue();local M=(tf:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or a[1][a[3]]:GetAttribute("Aiming"))and(n*r.Slider[

-- [frag 0329 @ offset 2906218] (109 bytes)
]:getValue())or n;local n=Zf[1][Zf[3]]+(M-Zf[1][Zf[3]])*r.Slider["Adjust Speed"]:getValue();local M=r.Slider[

-- [frag 0330 @ offset 2906380] (30 bytes)
]:getValue();local x=r.Slider[

-- [frag 0331 @ offset 2906463] (58 bytes)
]:getValue();c.Radius=n+(M/2)+(x/2);else local n=r.Slider[

-- [frag 0332 @ offset 2906564] (30 bytes)
]:getValue();local M=r.Slider[

-- [frag 0333 @ offset 2906635] (471 bytes)
]:getValue();c.Radius=r.Slider["FOV Size"]:getValue()+(n/2)+(M/2);end;end;if J[1][J[3]]then local c=J[1][J[3]];local n=r.Toggle["FOV Lock Center"]:getState();local M=r.Toggle["FOV Effects"]:getState();if n then c.Position=Vector2.new(u.ViewportSize.X/2,u.ViewportSize.Y/2);else c.Position=Vector2.new(bf.X+s.X,bf.Y+s.Y);end;c.Visible=nf[1][nf[3]];c.Color=Xf;c.Thickness=Mf;c.Transparency=wf;c.Filled=Rf;c.NumSides=128;c.ZIndex=2;if M then local n=tick();local M=r.Slider[

-- [frag 0334 @ offset 2907199] (525 bytes)
]:getValue();local x=r.Slider["Effect Intensity"]:getValue();local B=math.sin(n*M)*x+(1-x);local Q=math.sin(n*M*0.7)*x+(1-x);if tf:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or a[1][a[3]]:GetAttribute("Aiming")then c.Color=Xf:Lerp(Color3.new(1,1,1),0.5);c.Thickness=Mf+1;c.Transparency=wf*0.3;else c.Color=Xf:Lerp(Color3.new(1,1,1),Q*0.3);c.Transparency=wf*B;end;end;if r.Toggle["FOV Auto Adjust"]:getState()then local n=i;local M=(tf:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or a[1][a[3]]:GetAttribute(

-- [frag 0335 @ offset 2907861] (70 bytes)
]:getValue())or n;Zf[1][Zf[3]]=Zf[1][Zf[3]]+(M-Zf[1][Zf[3]])*r.Slider[

-- [frag 0336 @ offset 2907965] (372 bytes)
]:getValue();c.Radius=Zf[1][Zf[3]];else Zf[1][Zf[3]]=i;c.Radius=Zf[1][Zf[3]];end;end;if P[1][P[3]]then local i=P[1][P[3]];local c=r.Toggle["FOV Effects"]:getState();i.Visible=pf[1][pf[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if J[1][J[3]]and nf[1][nf[3]]then local n=J[1][J[3]];i.Position=Vector2.new(n.Position.X,n.Position.Y+n.Radius+8);local n=r.ColorPicker[

-- [frag 0337 @ offset 2908390] (126 bytes)
]:getColor();i.Color=n:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if c then local c=tick();local M=r.Slider[

-- [frag 0338 @ offset 2908624] (207 bytes)
]:getValue();local J=math.sin(c*M*0.8)*x+(1-x);i.Color=n:Lerp(Color3.new(1,1,1),J);end;else i.Position=Vector2.new(bf.X+s.X,bf.Y+s.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text=

-- [frag 0339 @ offset 2908851] (447 bytes)
;end;if r.Toggle["Better Movement"]:getState()and not UserIsPoor then local i=F.Character;local c=i and i:FindFirstChild("MovementHandler");if c then c.Disabled=r.Toggle["Better Movement"]:getState()and not UserIsPoor;end;end;if r.Toggle["Instant Respawn"]:getState()and Cf.Health<=0 and U:Cooldown("respawn_cooldown",5)and not UserIsPoor then e.Respawn:FireServer();end;local i=os.clock();if i-y[1][y[3]]>=5 then y[1][y[3]]=i;b();end;if r.Toggle[

-- [frag 0340 @ offset 2909502] (247 bytes)
]:getState()then local b=zf();local c=b and K.Skin[b];local y=T();if b and c and y and g(c)and(jf.SkinId~=b or jf.SkinModel~=y.ViewModel)then m(b);end;if b and A[1][A[3]].Skin~=b and(X[1][X[3]]~=b or i-ff[1][ff[3]]>=5)then L();end;end;if r.Toggle[

-- [frag 0341 @ offset 2909857] (99 bytes)
]:getState()then local L=w();local b=V();local c=T();local y=D();local n=L and b and string.format(

-- [frag 0342 @ offset 2909981] (338 bytes)
,L,b);if L and b and n and c and y and C(y)==C(b)and(jf.CharmKey~=n or jf.CharmModel~=c.ViewModel)then j(L,b);end;if L and b and(type(A[1][A[3]].Charm)~="table"or A[1][A[3]].Charm[b]~=L)and(h[1][h[3]]~=n or i-R[1][R[3]]>=5)then yf();end;end;if O.Flags.Toggle["Unlock All"]:getState()then l:SetAttribute("Level",100);end;if O.Flags.Toggle[

-- [frag 0343 @ offset 2910383] (32 bytes)
]:getState()then l:SetAttribute(

-- [frag 0344 @ offset 2910422] (77 bytes)
,math.huge);end;if O.Flags.Toggle["Inf Stash"]:getState()then l:SetAttribute(

-- [frag 0345 @ offset 2910531] (674 bytes)
,math.huge);end;if O.Flags.Toggle["Inf Bounty"]:getState()then l:SetAttribute("Bounty",math.huge);end;if O.Flags.Toggle["Inf Valuables"]:getState()then l:SetAttribute("Valuables",math.huge);end;if r.Toggle["No Downed"]:getState()and a[1][a[3]]and not UserIsPoor then getrenv()._G.CharacterStates.Downed=false;end;if r.Toggle["No Block Slowdown"]:getState()and a[1][a[3]]then getrenv()._G.CharacterStates.ServerBlocking=nil;end;if r.Toggle["No Item Use Slowdown"]:getState()and a[1][a[3]]then getrenv()._G.CharacterStates.UsingItem=nil;end;if r.Toggle["No Reload Slowdown"]:getState()and a[1][a[3]]then getrenv()._G.CharacterStates.ReloadingMovementSpeed=nil;end;if r.Toggle[

-- [frag 0346 @ offset 2911407] (100 bytes)
]:getState()and a[1][a[3]]then getrenv()._G.CharacterStates.AimingMovementSpeed=nil;end;if r.Toggle[

-- [frag 0347 @ offset 2911526] (108 bytes)
]:getState()and a[1][a[3]]then p.LocalPlayer.Character:SetAttribute("OverWeightCapacity",0);end;if r.Toggle[

-- [frag 0348 @ offset 2911724] (68 bytes)
]:getState()and a[1][a[3]]then p.LocalPlayer.Character:SetAttribute(

-- [frag 0349 @ offset 2911924] (81 bytes)
]:getState()then local i=r.Slider["Recoil Dampener"]:getValue();local j=r.Slider[

-- [frag 0350 @ offset 2912066] (30 bytes)
]:getValue();local L=r.Slider[

-- [frag 0351 @ offset 2912134] (114 bytes)
]:getValue();local b=1-(i/100);local c=j/100;local y=L/100;for n,X in pairs(z.Main.Springs)do if n=="Recoil"or n==

-- [frag 0352 @ offset 2912717] (25 bytes)
]:getValue();if r.Toggle[

-- [frag 0353 @ offset 2912780] (29 bytes)
]:getState()and table.find(i,

-- [frag 0354 @ offset 2912991] (233 bytes)
]:getValue();local L=CFrame.lookAt(u.CFrame.Position,i.Position);if j<=0 then u.CFrame=L;else local i=1/(j*10);u.CFrame=u.CFrame:Lerp(L,math.clamp(i,0,1));end;tf.MouseBehavior=Enum.MouseBehavior.LockCenter;end;end;local i=d(r.Slider[

-- [frag 0355 @ offset 2913267] (32 bytes)
]:getValue());if i and r.Toggle[

-- [frag 0356 @ offset 2913323] (122 bytes)
]:getState()and not UserIsPoor then local j=i.Parent:FindFirstChildOfClass("RayValue");if j then local i=j:FindFirstChild(

-- [frag 0357 @ offset 2913608] (41 bytes)
]:getValue();i:GetAttributeChangedSignal(

-- [frag 0358 @ offset 2913677] (430 bytes)
):Connect(function()local b=i:GetAttribute("LastSwing");if b~=j then j=b;if U:Cooldown("parry_cooldown",L)then task.delay(L,function()e.Block:InvokeServer();end);end;end;end);end;end;end;if r.Toggle["Kill Aura"]:getState()and F.Character then local i=d();if i and i.Position then local j=i.Position;local L=e.Swing:InvokeServer();if L and L.Delay then task.wait(L.Delay or 0.25);end;e.MeleeHit:FireServer(i,j);end;end;if r.Toggle[

-- [frag 0359 @ offset 2914245] (177 bytes)
]:getState()and a[1][a[3]]then local i=a[1][a[3]]:FindFirstChildOfClass("Humanoid");if i then local i=a[1][a[3]]:FindFirstChildWhichIsA("RayValue");local j=i and i:GetAttribute(

-- [frag 0360 @ offset 2914588] (38 bytes)
]:getValue());end;end;end;if r.Toggle[

-- [frag 0361 @ offset 2914652] (62 bytes)
]:getState()then local i=os.clock();if i-Z[1][Z[3]]>=r.Slider[

-- [frag 0362 @ offset 2914771] (397 bytes)
]:getValue()then Z[1][Z[3]]=i;local i=r.Dropdown["Gear To Find"]:getValue();local Z=type(i)=="table"and i or{i};local i={};for j,j in ipairs(Z)do i[#i+1]=N(j);end;local Z,j,L=false;for b,b in ipairs(p:GetPlayers())do if b~=F and b.Character then local p=b.Character:FindFirstChild("CurrentGear");if p then local o=H(p);if#o>0 then local z=nil;for c,c in ipairs(i)do if c=="operator gear"and(o[1]==

-- [frag 0363 @ offset 2916850] (135 bytes)
,j,L),"maxy",20);else v[1][v[3]]:Notify(nil,"No gear found","maxy",5);end;end;end;if r.Toggle["Mod Detector"]:getState()and U:Cooldown(

-- [frag 0364 @ offset 2917085] (121 bytes)
,r.Slider["Mod Check Interval"]and r.Slider["Mod Check Interval"]:getValue())and not UserIsPoor then G();end;if r.Toggle[

-- [frag 0365 @ offset 2917295] (472 bytes)
]:getState()and U:Cooldown("equip_cooldown",0.2)and not UserIsPoor then for i,i in pairs(l.Backpack:GetChildren())do if i:GetAttribute("Gear")then local Z={[1]=i};e.EquipGear:FireServer(unpack(Z));end;end;end;if r.Toggle["Farm Scourge"]:getState()or r.Toggle["Start Loot Farm"]:getState()then local i=tick();local Z=i-Lf.startTime;r.TextBox["Time Elapsed:"]:updateText({text=q(Z)});if i-Lf.lastCashUpdate>=1 then local j=Z/3600;local Z=0;Lf.lastCashUpdate=i;t();r.TextBox[

-- [frag 0366 @ offset 2918338] (73 bytes)
and Z.Toggle["Infinite Stamina"]:getState()then return 100;end;end;if p==

-- [frag 0367 @ offset 2918502] (100 bytes)
and Z.Toggle["Infinite Stamina"]:getState()then return;end;if i.Name=="MinigameMistake"and Z.Toggle[

-- [frag 0368 @ offset 2918697] (60 bytes)
]:getState()then return;end;if i.Name=="Damage"and Z.Toggle[

-- [frag 0369 @ offset 2918804] (39 bytes)
]:getState()then return;end;if i.Name==

-- [frag 0370 @ offset 2918965] (227 bytes)
and Z.Toggle["Spoof State"]:getState()then j[1]=Vector3.new(0,0,0);j[2]=Vector3.new(0,0,0);j[3]=Vector3.new(0,0,-1.0);j[4]={Sliding=false,Crouching=true,Sprinting=true,Aiming=false,Input="Keyboard",Parkour=false};end;end;if p==

-- [frag 0371 @ offset 2919392] (747 bytes)
))and Z.Toggle["Instant Bullets"]:getState()then j[2]=j[2]*9e9;end;if(L:find("HitboxCaster"))and Z.Toggle["Extended Melee Reach"]:getState()then j[2]=j[2]*1000;end;end;if p=="SetStateEnabled"and j[1]==Enum.HumanoidStateType.Jumping and Z.Toggle["No Jump Cooldown"]:getState()then return t[1][t[3]](i,j[1],true);end;return t[1][t[3]](i,unpack(j));end;end,vh=bit32.bor,KX=function(i,i,Z)i[0X33]=nil;i[0x34]=nil;Z=32;return Z;end,uh=bit32.countrz,q=function(i)local Z=i[10];local t=i[6];local j=i[9];local p=i[3];local L=i[11];local b=i[8];local f=i[2];local l=i[1];local o=i[5];local z=i[12];local c=i[7];local y=i[4];local n=i[0];return function()local i=o();if not i then return;end;local o=p(i);local i,p,X=c(o);if t[1][t[3]]then z[1][z[3]]:Set((

-- [frag 0372 @ offset 2998383] (76 bytes)
]:getValue();local d=j.ColorPicker["FOV Color"]:getColor();local G=j.Slider[

-- [frag 0373 @ offset 2998530] (72 bytes)
]:getValue();local x=j.Toggle["FOV Filled"]:getState();local J=j.Slider[

-- [frag 0374 @ offset 2998699] (109 bytes)
]:getValue();local B=j.Keybind["Fly"]:getKeybind();local F=j.Slider["Fly Speed"]:getValue();local Q=j.Toggle[

-- [frag 0375 @ offset 2998855] (65 bytes)
]:getState();if Q then e();else n();end;z();C();y:Update();if B==

-- [frag 0376 @ offset 2998943] (517 bytes)
;end;if U:IsKeyDown(Enum.KeyCode[B])then local z=Z.Character;local y=z.HumanoidRootPart;y.Velocity=Vector3.new(0,0,0);if U:IsKeyDown(Enum.KeyCode.W)then y.CFrame=y.CFrame+(c.CFrame.LookVector*F);elseif U:IsKeyDown(Enum.KeyCode.S)then y.CFrame=y.CFrame+(-c.CFrame.LookVector*F);elseif U:IsKeyDown(Enum.KeyCode.A)then y.CFrame=y.CFrame+(-c.CFrame.RightVector*F);elseif U:IsKeyDown(Enum.KeyCode.D)then y.CFrame=y.CFrame+(c.CFrame.RightVector*F);end;end;if j.Toggle["Infinite Ammo"]:getState()then local z=Z:GetAttribute(

-- [frag 0377 @ offset 2999627] (171 bytes)
]:getState()then if Z.PlayerGui.Killed and Z.PlayerGui.Killed:FindFirstChild("RespawnVisual")and tick()-l[1][l[3]]>=0.5 then l[1][l[3]]=tick();local l={[1]=Z:GetAttribute(

-- [frag 0378 @ offset 2999881] (52 bytes)
};game:GetService("ReplicatedStorage"):WaitForChild(

-- [frag 0379 @ offset 3000070] (51 bytes)
]and j.Toggle["Anti AFK"]:getState()and t:Cooldown(

-- [frag 0380 @ offset 3000307] (292 bytes)
]:getState();local l=j.Toggle["FOV Effects"]:getState();if t then Z.Position=Vector2.new(c.ViewportSize.X/2,c.ViewportSize.Y/2);else Z.Position=Vector2.new(p.X+X.X,p.Y+X.Y);end;Z.Visible=R[1][R[3]];Z.Color=d;Z.Thickness=G;Z.Transparency=J;Z.Filled=x;if l then local t=tick();local l=j.Slider[

-- [frag 0381 @ offset 3000665] (30 bytes)
]:getValue();local z=j.Slider[

-- [frag 0382 @ offset 3000745] (471 bytes)
]:getValue();local c=math.sin(t*l)*z+(1-z);local y=math.sin(t*l*0.7)*z+(1-z);if(U:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or K[1][K[3]]:GetAttribute("Aiming"))then Z.Color=d:Lerp(Color3.new(1,1,1),0.5);Z.Thickness=G+1;Z.Transparency=J*0.3;else Z.Color=d:Lerp(Color3.new(1,1,1),y*0.3);Z.Transparency=J*c;end;end;if j.Toggle["FOV Auto Adjust"]:getState()then local t=i;local l=(U:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or K[1][K[3]]:GetAttribute(

-- [frag 0383 @ offset 3001258] (470 bytes)
))and(t*j.Slider["Adjust Size"]:getValue())or t;b[1][b[3]]=b[1][b[3]]+(l-b[1][b[3]])*j.Slider["Adjust Speed"]:getValue();Z.Radius=b[1][b[3]];else b[1][b[3]]=i;Z.Radius=b[1][b[3]];end;end;if w[1][w[3]]then local i=w[1][w[3]];local Z=j.Toggle["FOV Effects"]:getState();i.Visible=o[1][o[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if M[1][M[3]]and R[1][R[3]]then local t=M[1][M[3]];i.Position=Vector2.new(t.Position.X,t.Position.Y+t.Radius+8);local t=j.ColorPicker[

-- [frag 0384 @ offset 3001803] (126 bytes)
]:getColor();i.Color=t:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if Z then local Z=tick();local b=j.Slider[

-- [frag 0385 @ offset 3001963] (30 bytes)
]:getValue();local l=j.Slider[

-- [frag 0386 @ offset 3002040] (397 bytes)
]:getValue();local o=math.sin(Z*b*0.8)*l+(1-l);i.Color=t:Lerp(Color3.new(1,1,1),o);end;else i.Position=Vector2.new(p.X+X.X,p.Y+X.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text="Max Hub";end;if j.Toggle["Mod Detector"]:getState()and tick()-L[1][L[3]]>=2 and not UserIsPoor then f();end;end;end,y=function()return function()for i,i in pairs(getgc(true))do if typeof(i)==

-- [frag 0387 @ offset 3003372] (1595 bytes)
]:getState()and not UserIsPoor then local t=L.Character;local L=t and t:FindFirstChild(K[1][K[3]]);if L and L.AssemblyMass<math.huge and not t:FindFirstChildWhichIsA("ForceField")then local t=L.CFrame;local K=L.Velocity;L.Velocity=Vector3.new(math.random(-9000.0,9000),math.random(-3000.0,3000),math.random(-9000.0,9000));L.CFrame=L.CFrame*CFrame.Angles(0,0.0001,0);z.RenderStepped:Wait();L.Velocity=K;L.CFrame=t;end;end;if R and R.Humanoid then local t=R.HumanoidRootPart;local L=c:IsKeyDown(Enum.KeyCode.Space);local z=C()or R.Humanoid.MoveDirection.Magnitude>0.05;if t then local c=Vector3.new(t.AssemblyLinearVelocity.X,0,t.AssemblyLinearVelocity.Z);if R.IsJumping and c.Magnitude>0.05 then n[R]=c;end;if b.Toggle["No Landing Slow"]:getState()then local c=R.LastLandTick or 0;if c>0 and not R.IsJumping and Z[R]~=c then local K=n[R];if K and K.Magnitude>0 then local n=t.AssemblyLinearVelocity;t.AssemblyLinearVelocity=Vector3.new(K.X,n.Y,K.Z);R.GlobalVelocity=K;end;Z[R]=c;end;end;if b.Toggle["Instant Stop"]:getState()and not R.IsJumping and not R.IsClimbing then if not C()and R.Humanoid.MoveDirection.Magnitude<=0.05 then local Z=t.AssemblyLinearVelocity;local c=Vector3.new(Z.X,0,Z.Z);local n=c:Lerp(Vector3.new(0,0,0),math.clamp(i*24,0,1));if n.Magnitude<=0.05 then n=Vector3.new(0,0,0);end;t.AssemblyLinearVelocity=Vector3.new(n.X,Z.Y,n.Z);R.GlobalVelocity=n;R.CanceledInertia=true;R:SetTargetMoveDirection(Vector3.new(0,0,0));else R.CanceledInertia=false;end;elseif not R.IsJumping then R.CanceledInertia=false;end;elseif not R.IsJumping then R.CanceledInertia=false;end;if b.Toggle[

-- [frag 0388 @ offset 3005087] (604 bytes)
]:getState()then local Z=R.LastLandTick or 0;if Z>0 and tick()-Z<=0.2 then local Z=R.DefaultCameraOffset or Vector3.new(0,-0.15,0);if R.IsCrouching then Z=(R.CrouchCameraOffset or Vector3.new(0,-1.4,0))+Z;end;R.Humanoid.CameraOffset=Z;end;end;if b.Toggle["Bunny Hop"]:getState()and L then local Z=not b.Toggle["Only While Moving"]:getState()or z;if Z then local Z=R:CheckGroundContact();R.IsBhopAttempt=Z;if Z then local Z=b.Slider["Jump Delay"]:getValue()or 0;local t=tick();if t-w[1][w[3]]>=Z then w[1][w[3]]=t;o.jump();end;end;else R.IsBhopAttempt=false;end;else R.IsBhopAttempt=false;end;if b.Toggle[

-- [frag 0389 @ offset 3005779] (435 bytes)
]:getState()and R.IsJumping then if not b.Toggle["Strafe On Jump"]:getState()or L then local Z=l(R);if Z then local t=b.Slider["Strafe Smoothing"]:getValue()or 1;local L=1/math.max(t,1);local t=R.TargetMoveDirection or Vector3.new(0,0,0);if t.Magnitude>0 then Z=t:Lerp(Z,L);if Z.Magnitude>0 then Z=Z.Unit;end;end;R:SetTargetMoveDirection(Z);end;end;end;end;if not X or not M then j.hideAll();p[1][p[3]]=nil;return;end;f(X);if b.Toggle[

-- [frag 0390 @ offset 3006299] (316 bytes)
]:getState()then local Z=y[1][y[3]]();if not Z or not Z.Identifier then j.hideAll();p[1][p[3]]=nil;return;end;if p[1][p[3]]~=Z.Identifier then p[1][p[3]]=Z.Identifier;j.displayMag=Z.Rounds or 0;end;local t=pcall(function()local L=Z.Rounds or 0;local f=Z.Properties and Z.Properties.Rounds or 1;local Z=i;if b.Toggle[

-- [frag 0391 @ offset 3006703] (201 bytes)
]:getState()then local i=L-j.displayMag;j.displayMag=j.displayMag+i*math.min(Z*15,1);else j.displayMag=L;end;local i=math.clamp(j.displayMag/f,0,1);local l=math.clamp(L/f,0,1);local o=X:FindFirstChild(

-- [frag 0392 @ offset 3007105] (181 bytes)
);if z then break;end;end;end;end;if not z then j.hideAll();return;end;local o=U:WorldToViewportPoint(z.Position);local z=b.Slider["Magazine Bar Width"]:getValue();local c=b.Slider[

-- [frag 0393 @ offset 3007384] (30 bytes)
]:getValue();local y=b.Slider[

-- [frag 0394 @ offset 3007487] (145 bytes)
]:getValue();local n=math.floor(o.X-z/2);local M=math.floor(o.Y-y);local y=b.ColorPicker["Magazine Full Color"]:getColor();local R=b.ColorPicker[

-- [frag 0395 @ offset 3007718] (35 bytes)
]:getColor();local w=b.ColorPicker[

-- [frag 0396 @ offset 3007796] (193 bytes)
]:getColor();local K=b.ColorPicker["Magazine Outline Color"]:getColor();local e;if l>0.5 then e=j.lerpColor(R,y,(l-0.5)*2);else e=j.lerpColor(w,R,l*2);end;j.pulseTime=j.pulseTime+Z;if b.Toggle[

-- [frag 0397 @ offset 3008041] (312 bytes)
]:getState()and l<0.25 then local Z=math.sin(j.pulseTime*8)*0.5+0.5;j.lowAmmoGlow.Position=Vector2.new(n-3,M-3);j.lowAmmoGlow.Size=Vector2.new(z+6,c+6);j.lowAmmoGlow.Transparency=Z*0.3;j.lowAmmoGlow.Visible=true;e=j.lerpColor(e,Color3.fromRGB(255,255,255),Z*0.3);else j.lowAmmoGlow.Visible=false;end;if b.Toggle[

-- [frag 0398 @ offset 3008385] (932 bytes)
]:getState()then j.shadow.Position=Vector2.new(n+2,M+2);j.shadow.Size=Vector2.new(z,c);j.shadow.Visible=true;else j.shadow.Visible=false;end;j.outline.Size=Vector2.new(z+2,c+2);j.outline.Position=Vector2.new(n-1,M-1);j.outline.Color=K;j.outline.Visible=true;j.innerOutline.Size=Vector2.new(z,c);j.innerOutline.Position=Vector2.new(n,M);j.innerOutline.Visible=true;j.emptyBar.Size=Vector2.new(z,c);j.emptyBar.Position=Vector2.new(n,M);j.emptyBar.Visible=true;local Z=math.max(math.floor(z*i),0);j.fillBar.Size=Vector2.new(Z,c);j.fillBar.Position=Vector2.new(n,M);j.fillBar.Color=e;j.fillBar.Visible=true;j.leftCap.Size=Vector2.new(2,c);j.leftCap.Position=Vector2.new(n,M);j.leftCap.Color=e;j.leftCap.Visible=Z>0;j.rightCap.Size=Vector2.new(2,c);j.rightCap.Position=Vector2.new(n+z-2,M);j.rightCap.Visible=true;j.text.Position=Vector2.new(math.floor(o.X),M-16);j.text.Text=string.format("%d / %d",L,f);j.text.Visible=true;if b.Toggle[

-- [frag 0399 @ offset 3009365] (1294 bytes)
]:getState()then j.weaponName.Position=Vector2.new(math.floor(o.X),M+c+8);j.weaponName.Text=X.Name;j.weaponName.Visible=true;else j.weaponName.Visible=false;end;j.lastMag=L;end);if not t then j.hideAll();end;else j.hideAll();p[1][p[3]]=nil;end;end;end,Ys=bit32.bnot,OX=function(i,Z,t,j,p,L,b,f)j=f[0B1_10000]();b=f[48]();L=nil;local l;Z=(nil);p=0b111111;while true do if p<0X49 and p>18 then L,p=i:GX(L,f,p);continue;elseif p<0B111111 then p,l=i:VX(p,l,f);continue;else if not(p>63)then else Z=i:aX(l,Z);break;end;end;end;t=((l-Z)/0X8);return L,t,Z,b,j,p;end,HX=function(i,i,Z,t)i=t[0X2d]();Z=87;return i,Z;end,AX=function(i,i,Z,t,j)(j)[i+0B1]=(Z);j[i+0x2]=t;end,Xh=function(i,Z,t,j,p)local L,b;p[0X32]=({});local f=p[45]()-9573;p[0Xf]=p[0X2_3_](f);j=nil;Z=nil;for l=0x2,0B11110101,0b11_10110 do L,Z,j,b=i:gh(f,Z,l,j,p);if L==14238 then break;else if L==-0X2 then return t,Z,-0X2,j,b;else if L~=-1 then else return t,Z,-0B1__,j;end;end;end;end;t=p[0X23](Z);return t,Z,nil,j;end,E=function(i)local Z=i[15];local t=i[9];local j=i[8];local p=i[0];local L=i[2];local b=i[1];local f=i[13];local l=i[6];local o=i[14];local z=i[4];local c=i[3];local y=i[7];local n=i[16];local X=i[10];local M=i[12];local R=i[11];local w=i[5];return function()p[1][p[3]]=b.Character;local i=b.PlayerGui:FindFirstChild(

-- [frag 0400 @ offset 3010846] (250 bytes)
]:getState()then y();local y=false;local U=tick();while tick()-U<5 do local U=l();if U then y=true;break;end;task.wait(0.1);end;if not y then if i and not InMenu(b)then f:FireServer("SelfDamage",math.huge,{ignoreForceField=true});end;end;if L.Toggle[

-- [frag 0401 @ offset 3011150] (35 bytes)
]:getState()and e.Health<=L.Slider[

-- [frag 0402 @ offset 3011231] (57 bytes)
]:getValue()then if i and not InMenu(b)then f:FireServer(

-- [frag 0403 @ offset 3011601] (782 bytes)
]:getValue()then X[1][X[3]]=nil;j[1][j[3]]=0;return;end;local f=i:FindFirstChild(t[1][t[3]]);local i=(f.Position-K.Position).Magnitude;if b.Character and b.Character:FindFirstChild(t[1][t[3]])then o(b.Character.HumanoidRootPart.Position,c[1][c[3]]);end;if i<=c[1][c[3]]then local i=R.getSessionDataRoduxStoreForPlayer(z:FindFirstChild(z.LocalPlayer.Name))and R.getSessionDataRoduxStoreForPlayer(z:FindFirstChild(z.LocalPlayer.Name)):getState();local t=-L.Slider["Underground Distance"]:getValue();local b=L.Slider["Behind Distance"]:getValue();if L.Toggle["Move Away If Low"]:getState()and e.Health<=L.Slider["Health To Move At"]:getValue()then t=50;b=-20.0;elseif L.Toggle["Move Away If Parried"]:getState()and i and i.parry and i.parry.isParried then t=50;b=-20.0;end;if L.Toggle[

-- [frag 0404 @ offset 3012571] (29 bytes)
]:getState()and not(L.Toggle[

-- [frag 0405 @ offset 3012726] (30 bytes)
]:getValue())and not(L.Toggle[

-- [frag 0406 @ offset 3012806] (3150 bytes)
]:getState()and i and i.parry and i.parry.isParried)then w:moveto(f.CFrame,L.Slider["Tween Speed"]:getValue(),t,b);else local i=f.CFrame*CFrame.new(0,t,b);local t=TweenInfo.new((p[1][p[3]].HumanoidRootPart.Position-i.Position).Magnitude/L.Slider["Tween Speed"]:getValue(),Enum.EasingStyle.Sine);local L=M:Create(p[1][p[3]].HumanoidRootPart,t,{CFrame=i});local i=Instance.new("BodyVelocity");i.Velocity=Vector3.new(0,0,0);i.MaxForce=Vector3.new(math.huge,math.huge,math.huge);i.Parent=p[1][p[3]].HumanoidRootPart;L:Play();L.Completed:Connect(function()i:Destroy();end);end;end;else X[1][X[3]]=nil;j[1][j[3]]=0;end;else Z(2,function()n.spawnCharacter(true);end);end;end;end;end,ci=function(i,Z,t,j)(t)[0b10__0111]=(function()local p,L;p,L=i:mi(t);if p~=-0B10 then else return L;end;end);if not j[0x11E3]then(j)[0x4dE6]=-0xaBBc+((i.Fh((i.uh((i.vh((i.kh(j[15288])),j[7733]))))+j[0X431C],(j[0X3C16])))<i.ts[4]and i.ts[1]or j[6672]);Z=(-0x9DC+(i.Sh((i.sh((i.Fh((i.Fh((i.th(j[0X35a_a]-i.ts[0x1],j[26881],j[0X33C5])),(j[7733]))),(Z))),(j[0X3c16]))))));(j)[0x11e3]=Z;else Z=i:si(Z,j);end;return Z;end,Ti=function(i,i,Z)Z=i[0x25]();return Z;end,Ri=function(i,i)i[0B10]=(nil);end,Ns=function(i)local Z=i[32];local t=i[17];local j=i[4];local p=i[1];local L=i[12];local b=i[21];local f=i[24];local l=i[31];local o=i[8];local z=i[19];local c=i[13];local y=i[23];local n=i[7];local X=i[9];local M=i[14];local R=i[0];local w=i[15];local K=i[29];local e=i[5];local U=i[20];local C=i[22];local d=i[3];local G=i[34];local x=i[28];local J=i[16];local B=i[10];local F=i[2];local Q=i[26];local V=i[27];local u=i[18];local E=i[25];local s=i[6];local I=i[33];local v=i[11];local W=i[30];return function()if p.Character and p.Character:FindFirstChild(C[1][C[3]])then local i=p.Character.HumanoidRootPart;local H=p.Character:WaitForChild("Humanoid");local m,q=V:WorldToScreenPoint(i.Position);local P=(V.CFrame.Position-i.Position).Magnitude/3.5714285714;if q and P<=F.Flags.Slider["Max ESP Distance"]:getValue()and F.Flags.Toggle["ESP Enabled"]:getState()then local q=i.Size.Y;local i=(q*V.ViewportSize.Y)/(m.Z*2);local V,q=3*i,4.5*i;if d.FadeOut.OnDistance then X:FadeOutOnDist(n,P);X:FadeOutOnDist(G,P);X:FadeOutOnDist(j,P);X:FadeOutOnDist(s,P);X:FadeOutOnDist(y,P);X:FadeOutOnDist(M,P);X:FadeOutOnDist(R,P);X:FadeOutOnDist(z,P);X:FadeOutOnDist(f,P);X:FadeOutOnDist(x,P);X:FadeOutOnDist(K,P);X:FadeOutOnDist(B,P);X:FadeOutOnDist(Z,P);X:FadeOutOnDist(v,P);X:FadeOutOnDist(J,P);X:FadeOutOnDist(e,P);X:FadeOutOnDist(U,P);if l[1][l[3]]and L[1][L[3]]then X:FadeOutOnDist(l[1][l[3]],P);X:FadeOutOnDist(L[1][L[3]],P);end;X:FadeOutOnDist(b,P);X:FadeOutOnDist(t,P);end;local i=u.LocalPlayer;if d.TeamCheck and(i.Team==p.Team and p.Team)then o();return;end;if p.Character and p.Character:FindFirstChild(C[1][C[3]])and p.Character:FindFirstChild("Humanoid")then do table.insert(w.visibleTargets,{Character=p.Character,distance=P,isVisible=true});local t,b=w:GetHighlight(p.Character,P,true);l[1][l[3]]=t;L[1][L[3]]=b;if t then t.Adornee=P<=200 and p.Character or nil;t.Enabled=F.Flags.Toggle["Chams Enabled"]:getState()and d.Drawing.Chams.Enabled and P<=200;t.FillColor=c.ColorPicker[

-- [frag 0407 @ offset 3016157] (42 bytes)
]:getColor();t.OutlineColor=c.ColorPicker[

-- [frag 0408 @ offset 3016259] (25 bytes)
]:getColor();if c.Toggle[

-- [frag 0409 @ offset 3016319] (266 bytes)
]:getState()then local L=math.atan(math.sin(tick()*2))*2/math.pi;t.FillTransparency=c.Slider["Thermal Fill Transparency"]:getValue()*L*0.01;t.OutlineTransparency=c.Slider["Outline Transparency"]:getValue()*L*0.01;end;if d.Drawing.Chams.VisibleCheck then t.DepthMode=

-- [frag 0410 @ offset 3016694] (129 bytes)
;else t.DepthMode="AlwaysOnTop";end;local t=p.Character:FindFirstChild("ItemRoot",true);if t and b then b.Adornee=F.Flags.Toggle[

-- [frag 0411 @ offset 3016902] (68 bytes)
]:getState()and P<=200 and t.Parent or nil;b.Enabled=F.Flags.Toggle[

-- [frag 0412 @ offset 3017007] (963 bytes)
]:getState()and P<=200;b.FillColor=F.Flags.ColorPicker["Weapons Color"]:getColor();b.OutlineColor=d.Drawing.Chams.OutlineRGB;if d.Drawing.Chams.VisibleCheck then b.DepthMode="Occluded";else b.DepthMode="AlwaysOnTop";end;end;end;end;do x.Visible=F.Flags.Toggle["Boxes Corner"]:getState();x.Position=UDim2.new(0,m.X-V/2,0,m.Y-q/2);x.Size=UDim2.new(0,V/5,0,1);K.Visible=F.Flags.Toggle["Boxes Corner"]:getState();K.Position=UDim2.new(0,m.X-V/2,0,m.Y-q/2);K.Size=UDim2.new(0,1,0,q/5);B.Visible=F.Flags.Toggle["Boxes Corner"]:getState();B.Position=UDim2.new(0,m.X-V/2,0,m.Y+q/2);B.Size=UDim2.new(0,1,0,q/5);B.AnchorPoint=Vector2.new(0,5);Z.Visible=F.Flags.Toggle["Boxes Corner"]:getState();Z.Position=UDim2.new(0,m.X-V/2,0,m.Y+q/2);Z.Size=UDim2.new(0,V/5,0,1);Z.AnchorPoint=Vector2.new(0,1);v.Visible=F.Flags.Toggle["Boxes Corner"]:getState();v.Position=UDim2.new(0,m.X+V/2,0,m.Y-q/2);v.Size=UDim2.new(0,V/5,0,1);v.AnchorPoint=Vector2.new(1,0);J.Visible=F.Flags.Toggle[

-- [frag 0413 @ offset 3018166] (548 bytes)
]:getState();J.Position=UDim2.new(0,m.X+V/2-1,0,m.Y-q/2);J.Size=UDim2.new(0,1,0,q/5);J.AnchorPoint=Vector2.new(0,0);e.Visible=F.Flags.Toggle["Boxes Corner"]:getState();e.Position=UDim2.new(0,m.X+V/2,0,m.Y+q/2);e.Size=UDim2.new(0,1,0,q/5);e.AnchorPoint=Vector2.new(1,1);U.Visible=F.Flags.Toggle["Boxes Corner"]:getState();U.Position=UDim2.new(0,m.X+V/2,0,m.Y+q/2);U.Size=UDim2.new(0,V/5,0,1);U.AnchorPoint=Vector2.new(1,1);end;do n.Position=UDim2.new(0,m.X-V/2,0,m.Y-q/2);n.Size=UDim2.new(0,V,0,q);n.Visible=d.Drawing.Boxes.Full.Enabled;if c.Toggle[

-- [frag 0414 @ offset 3018798] (823 bytes)
]:getState()then n.BackgroundColor3=Color3.fromRGB(255,255,255);if c.Toggle["Boxes Gradient Enabled"]:getState()then n.BackgroundTransparency=c.Slider["Boxes Filled Transparency"]:getValue();else n.BackgroundTransparency=1;end;n.BorderSizePixel=1;else n.BackgroundTransparency=1;end;E[1][E[3]]=E[1][E[3]]+(tick()-Q[1][Q[3]])*300*math.cos(math.pi/4*tick()-math.pi/2);if c.Toggle["Boxes Animated"]:getState()then W.Rotation=E[1][E[3]];I.Rotation=E[1][E[3]];else W.Rotation=-45.0;I.Rotation=-45.0;end;Q[1][Q[3]]=tick();end;do local Z=H.Health/H.MaxHealth;M.Visible=c.Toggle["Healthbar Enabled"]:getState();M.Position=UDim2.new(0,m.X-V/2-6,0,m.Y-q/2+q*(1-Z));M.Size=UDim2.new(0,2.5,0,q*Z);R.Visible=c.Toggle["Healthbar Enabled"]:getState();R.Position=UDim2.new(0,m.X-V/2-6,0,m.Y-q/2);R.Size=UDim2.new(0,2.5,0,q);do if c.Toggle[

-- [frag 0415 @ offset 3019785] (182 bytes)
]:getState()then local t=math.floor(H.Health/H.MaxHealth*100);z.Position=UDim2.new(0,m.X-V/2-6,0,m.Y-q/2+q*(1-t/100)+3);z.Text=tostring(t);z.Visible=H.Health<H.MaxHealth;if c.Toggle[

-- [frag 0416 @ offset 3020018] (271 bytes)
]:getState()then local t=Z>=0.75 and Color3.fromRGB(0,255,0)or Z>=0.5 and Color3.fromRGB(255,255,0)or Z>=0.25 and Color3.fromRGB(255,170,0)or Color3.fromRGB(255,0,0);z.TextColor3=t;else z.TextColor3=d.Drawing.Healthbar.HealthTextRGB;end;end;end;end;do j.Visible=c.Toggle[

-- [frag 0417 @ offset 3020325] (24 bytes)
]:getState();if p.type==

-- [frag 0418 @ offset 3020417] (67 bytes)
]:getState()and i:IsFriendsWith(p.UserId)then j.Text=string.format(

-- [frag 0419 @ offset 3020604] (744 bytes)
,Color3.fromRGB(0,255,0).R*255,Color3.fromRGB(0,255,0).G*255,Color3.fromRGB(0,255,0).B*255,p.Name);else j.Text=string.format("(<font color="rgb(%d, %d, %d)">%s</font>) %s",p.type=="Player"and 255 or 0,0,p.type=="Player"and 0 or 255,p.type=="Player"and"E"or"N",p.Name);end;j.Position=UDim2.new(0,m.X,0,m.Y-q/2-9);end;do if F.Flags.Toggle["Distance Check"]:getState()then if F.Flags.Dropdown["Distance Text Position"]:getValue()=="Bottom"then y.Position=UDim2.new(0,m.X,0,m.Y+q/2+18);f.Position=UDim2.new(0,m.X-21,0,m.Y+q/2+15);s.Position=UDim2.new(0,m.X,0,m.Y+q/2+7);s.Text=string.format("%d meters",math.floor(P));s.Visible=true;else y.Position=UDim2.new(0,m.X,0,m.Y+q/2+8);f.Position=UDim2.new(0,m.X-21,0,m.Y+q/2+5);s.Visible=false;if p.type==

-- [frag 0420 @ offset 3021611] (19 bytes)
and F.Flags.Toggle[

-- [frag 0421 @ offset 3022205] (212 bytes)
and 0 or 255,p.type=='Player'and'E'or'N',p.Name,math.floor(P));end;j.Visible=F.Flags.Toggle['Names Enabled']:getState();end;end;end;do local i=p.Character:FindFirstChildWhichIsA('RayValue');y.Text=i and i.Name or

-- [frag 0422 @ offset 3022251] (52 bytes)
,p.Name,math.floor(P));end;j.Visible=F.Flags.Toggle[

-- [frag 0423 @ offset 3022351] (71 bytes)
]:getState();end;end;end;do local i=p.Character:FindFirstChildWhichIsA(

-- [frag 0424 @ offset 3022480] (521 bytes)
;y.Visible=c.Toggle['Weapons Text']:getState();end;else o();end;else o();end;else o();end;end;end,WX=function(i,i,Z)Z=i[27989];return Z;end,ii=function(i,Z,t)t=(-0X1C__0+((i.Uh((i.Sh(Z[26881]+Z[0X1dC2],i.ts[0B111]))-Z[7806]+Z[22235],(Z[17533])))+Z[0x3Cb]));Z[0X33C5]=t;return t;end,FX=function(i,Z,t,j,p,L)if t>0x1d then i:tX(j,p,Z,L);return j,25189,t;else if not(t<0B10110_00)then else t=88;j=#L[0B10];end;end;return j,nil,t;end,UX=function(i)return;end,z=function(i)local Z=i[0];return function(i,...)return Z[1][Z[3]](

-- [frag 0425 @ offset 3022528] (1762 bytes)
]:getState();end;else o();end;else o();end;else o();end;end;end,WX=function(i,i,Z)Z=i[27989];return Z;end,ii=function(i,Z,t)t=(-0X1C__0+((i.Uh((i.Sh(Z[26881]+Z[0X1dC2],i.ts[0B111]))-Z[7806]+Z[22235],(Z[17533])))+Z[0x3Cb]));Z[0X33C5]=t;return t;end,FX=function(i,Z,t,j,p,L)if t>0x1d then i:tX(j,p,Z,L);return j,25189,t;else if not(t<0B10110_00)then else t=88;j=#L[0B10];end;end;return j,nil,t;end,UX=function(i)return;end,z=function(i)local Z=i[0];return function(i,...)return Z[1][Z[3]]("_",...);end;end,Ei=function(i,Z,t,j)(Z)[0B11]=(4503599627370496);if not t[971]then j=(-2401247457+(i.th((i.ih(t[17180]+i.ts[0X00__3]-i.ts[0B100]>i.ts[3]and i.ts[0x8]or i.ts[6]))-j,i.ts[2])));(t)[0X3cb__]=(j);else j=t[0x3CB];end;return j;end,fh=function(i,i,Z)Z=i[0B101000]();return Z;end,jh=function(i,Z,t,j,p)if not(j>0x9A)then Z=i:xh(Z,t);else if j~=0x0Ad then Z=i:Lh(t,Z);else Z=true;end;end;p=0X4c;return Z,p;end,zh=function(i,Z,t,j,p,L,b)local f;while true do f,t=i:eX(L,j,t);if f~=43317 then else break;end;end;Z=(function()local L,f,l,o,z;z,o,L,l,f=i:Xh(o,z,l,j);if L==-0X2 then return f;else if L==-0X1 then return;end;end;j[2]=j[0X23](o*0X3);for f=0X1,o do(z)[f]=j[57]();end;for f=0X1,#j[0B10],0b11 do(j[0X2][f])[j[0X2][f+0X1]]=(z[j[0B10][f+0B010_]]);end;o=(nil);for f=0B1010000,332,89 do if f==0XA9 then o=i:Nh(z,o,j);continue;elseif f==0X50 then if not(l)then else(j[46])[3]=j[0B1_111];j[0X2E][0X4]=(z);end;else if f==0X102 then j[0x2]=(nil);break;end;end;end;L=0XD;while true do if L==0b1101 then(j)[50]=(nil);L=(0X8);continue;else if L==0B1000 then return o;end;end;end;end);b=function(...)return(...)();end;p=Z();return Z,b,p,t;end,xs=function(i)local Z=i[1];local t=i[0];local j=i[3];local p=i[4];local L=i[2];return function()if t.esp then for i,i in next,j(

-- [frag 0426 @ offset 3024307] (310 bytes)
):GetChildren()do if not L(i)or i==p then continue;end;local b=L(i);local i=b:FindFirstChild("Esp");if i then if not t.espT and Z(b)then i:Destroy();continue;end;i.FillColor=(not Z(b)and t.espcolor)or t.espTcolor;i.OutlineColor=(not Z(b)and t.espcolor)or t.espTcolor;continue;end;if t.espT then i=Instance.new(

-- [frag 0427 @ offset 3024407] (451 bytes)
);if i then if not t.espT and Z(b)then i:Destroy();continue;end;i.FillColor=(not Z(b)and t.espcolor)or t.espTcolor;i.OutlineColor=(not Z(b)and t.espcolor)or t.espTcolor;continue;end;if t.espT then i=Instance.new('Highlight',b);i.Name='Esp';i.FillColor=(not Z(b)and t.espcolor)or t.espTcolor;i.OutlineColor=(not Z(b)and t.espcolor)or t.espTcolor;i.FillTransparency=0.7;i.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop;elseif not Z(b)then i=Instance.new(

-- [frag 0428 @ offset 3024666] (234 bytes)
;i.FillColor=(not Z(b)and t.espcolor)or t.espTcolor;i.OutlineColor=(not Z(b)and t.espcolor)or t.espTcolor;i.FillTransparency=0.7;i.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop;elseif not Z(b)then i=Instance.new("Highlight",b);i.Name=

-- [frag 0429 @ offset 3025445] (396 bytes)
)then i.shotrate=0.037;end;end;end;end,G=function(i)local Z=i[15];local t=i[7];local j=i[2];local p=i[5];local L=i[11];local b=i[13];local f=i[8];local l=i[6];local o=i[12];local z=i[10];local c=i[4];local y=i[1];local n=i[0];local X=i[9];local M=i[14];local R=i[3];return function()local i=tick();local w=j.Keybind['Fly']:getKeybind();local K=j.Slider['Fly Speed']:getValue();if w=='None'then w=

-- [frag 0430 @ offset 3025768] (32 bytes)
]:getKeybind();local K=j.Slider[

-- [frag 0431 @ offset 3025830] (19 bytes)
]:getValue();if w==

-- [frag 0432 @ offset 3025856] (755 bytes)
then w="Y";end;if not flyKeyConnection then flyKeyConnection=c.InputBegan:Connect(function(e,U)if not U and e.KeyCode==Enum.KeyCode[w]then flyActive=not flyActive;end;end);end;if flyActive then local w=y.Character;if w and w:FindFirstChild(b[1][b[3]])then local b=w.HumanoidRootPart;b.Velocity=Vector3.new(0,2,0);if c:IsKeyDown(Enum.KeyCode.W)then b.CFrame=b.CFrame+(X.CFrame.LookVector*K);elseif c:IsKeyDown(Enum.KeyCode.S)then b.CFrame=b.CFrame+(-X.CFrame.LookVector*K);elseif c:IsKeyDown(Enum.KeyCode.A)then b.CFrame=b.CFrame+(-X.CFrame.RightVector*K);elseif c:IsKeyDown(Enum.KeyCode.D)then b.CFrame=b.CFrame+(X.CFrame.RightVector*K);end;end;end;if j.Toggle["Spam Keys"]:getState()and isNear then if#p.keys==0 or i-p.lastTime>=5 then p.keys={j.Keybind[

-- [frag 0433 @ offset 3025869] (651 bytes)
;end;if not flyKeyConnection then flyKeyConnection=c.InputBegan:Connect(function(e,U)if not U and e.KeyCode==Enum.KeyCode[w]then flyActive=not flyActive;end;end);end;if flyActive then local w=y.Character;if w and w:FindFirstChild(b[1][b[3]])then local b=w.HumanoidRootPart;b.Velocity=Vector3.new(0,2,0);if c:IsKeyDown(Enum.KeyCode.W)then b.CFrame=b.CFrame+(X.CFrame.LookVector*K);elseif c:IsKeyDown(Enum.KeyCode.S)then b.CFrame=b.CFrame+(-X.CFrame.LookVector*K);elseif c:IsKeyDown(Enum.KeyCode.A)then b.CFrame=b.CFrame+(-X.CFrame.RightVector*K);elseif c:IsKeyDown(Enum.KeyCode.D)then b.CFrame=b.CFrame+(X.CFrame.RightVector*K);end;end;end;if j.Toggle[

-- [frag 0434 @ offset 3026544] (115 bytes)
]:getState()and isNear then if#p.keys==0 or i-p.lastTime>=5 then p.keys={j.Keybind['Key 1']:getKeybind(),j.Keybind[

-- [frag 0435 @ offset 3026637] (89 bytes)
]:getKeybind(),j.Keybind["Key 2"]:getKeybind(),j.Keybind["Key 3"]:getKeybind(),j.Keybind[

-- [frag 0436 @ offset 3026672] (25 bytes)
]:getKeybind(),j.Keybind[

-- [frag 0437 @ offset 3026714] (57 bytes)
]:getKeybind(),j.Keybind['Key 4']:getKeybind(),j.Keybind[

-- [frag 0438 @ offset 3026758] (204 bytes)
]:getKeybind(),j.Keybind["Key 5"]:getKeybind(),j.Keybind["Key 6"]:getKeybind(),j.Keybind["Key 7"]:getKeybind(),j.Keybind["Key 8"]:getKeybind()};local b={};for c,c in ipairs(p.keys)do if c and c~=""and c~=

-- [frag 0439 @ offset 3026919] (67 bytes)
]:getKeybind()};local b={};for c,c in ipairs(p.keys)do if c and c~=

-- [frag 0440 @ offset 3027351] (395 bytes)
);end);end);end;end;p.currentKeyIndex=p.currentKeyIndex+1;if p.currentKeyIndex>#p.keys then p.currentKeyIndex=1;end;p.lastKeyTime=i;end;end;if j.Toggle["No Ragdoll"]:getState()then z.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false);z.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false);for p,p in pairs(z:GetDescendants())do if p.Name=="RagdollBallSocket"or p.Name==

-- [frag 0441 @ offset 3027529] (201 bytes)
]:getState()then z.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false);z.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false);for p,p in pairs(z:GetDescendants())do if p.Name==

-- [frag 0442 @ offset 3027832] (175 bytes)
then p:Destroy();end;if p:IsA("Motor6D")then p.Enabled=true;end;end;end;if j.Toggle["Auto Upgrade"]:getState()and i-R.upgradeStats>=2 then R.upgradeStats=i;local p=j.Dropdown[

-- [frag 0443 @ offset 3027972] (174 bytes)
]:getState()and i-R.upgradeStats>=2 then R.upgradeStats=i;local p=j.Dropdown['Stats To Upgrade']:getValue();local b=j.Slider['Upgrade Amount']:getValue();if f then local z={[

-- [frag 0444 @ offset 3028093] (30 bytes)
]:getValue();local b=j.Slider[

-- [frag 0445 @ offset 3028151] (47 bytes)
]:getValue();if f then local z={["Special"]=0,[

-- [frag 0446 @ offset 3028260] (1086 bytes)
]=0,['Attack']=0};if typeof(p)=='table'then for c,c in ipairs(p)do if z[c]~=nil then z[c]=b;end;end;else if z[p]~=nil then z[p]=b;end;end;spawn(function()pcall(function()o.ApplyStats:InvokeServer(f,z);end);end);end;end;if j.Toggle['Auto Select Trait']:getState()and i-R.traitSelect>=1 then R.traitSelect=i;local p=y.PlayerGui:FindFirstChild('UI');local b=p and p.Gameplay and p.Gameplay.TraitHands;local f=j.Dropdown['Traits']:getValue();if y.PlayerGui.UI.Gameplay.TraitHandPrompt.Visible then firesignal(y.PlayerGui.UI.Gameplay.TraitHandPrompt.MouseButton1Click);end;local function o(z)if typeof(f)=='table'then for c,c in ipairs(f)do if c==z then return true;end;end;return false;end;return f==z;end;if p and p.Gameplay and p.Gameplay.UpgradeHandPrompt and p.Gameplay.UpgradeHandPrompt.Visible then firesignal(p.Gameplay.UpgradeHandPrompt.MouseButton1Click);elseif b and b.Visible then if b.ShowAll.Visible and b.ShowAll.Active then firesignal(b.ShowAll.MouseButton1Click);wait(0.1);end;if b.Holder then local p=false;for f,f in pairs(b.Holder:GetChildren())do local z=f:GetAttribute(

-- [frag 0447 @ offset 3028557] (91 bytes)
]:getState()and i-R.traitSelect>=1 then R.traitSelect=i;local p=y.PlayerGui:FindFirstChild(

-- [frag 0448 @ offset 3028756] (176 bytes)
]:getValue();if y.PlayerGui.UI.Gameplay.TraitHandPrompt.Visible then firesignal(y.PlayerGui.UI.Gameplay.TraitHandPrompt.MouseButton1Click);end;local function o(z)if typeof(f)==

-- [frag 0449 @ offset 3030278] (969 bytes)
,scaleX=0.100,sizeY=100});end;end;end;end;if j.Toggle["Auto Upgrades Tower"]and j.Toggle["Auto Upgrades Tower"]:getState()and i-R.boundlessUpgrade>=0.5 then R.traitSelect=i;local p=y.PlayerGui:FindFirstChild("UI");local b=p and p.Gameplay and p.Gameplay.BoundlessTowerHands;local f=j.Dropdown["Card Upgrades"]:getValue();if y.PlayerGui.UI.Gameplay.TraitHandPrompt.Visible then firesignal(y.PlayerGui.UI.Gameplay.TraitHandPrompt.MouseButton1Click);end;local function o(z)if typeof(f)=="table"then for c,c in ipairs(f)do if c==z then return true;end;end;return false;end;return f==z;end;if p and p.Gameplay and p.Gameplay.UpgradeHandPrompt and p.Gameplay.UpgradeHandPrompt.Visible then firesignal(p.Gameplay.UpgradeHandPrompt.MouseButton1Click);elseif b and b.Visible then if b.ShowAll.Visible and b.ShowAll.Active then firesignal(b.ShowAll.MouseButton1Click);wait(0.1);end;if b.Holder then local p=false;for f,f in pairs(b.Holder:GetChildren())do local z=f:GetAttribute(

-- [frag 0450 @ offset 3030459] (98 bytes)
]:getState()and i-R.boundlessUpgrade>=0.5 then R.traitSelect=i;local p=y.PlayerGui:FindFirstChild(

-- [frag 0451 @ offset 3031938] (774 bytes)
then firesignal(y.PlayerGui.UI.Prompt.Frame.Buttons.Button.MouseButton1Click);end;n:notify({title='Auto Select Upgrades',text='No matching traits found, discarded all',scaleX=0.100,sizeY=100});end;end;end;end;if j.Toggle['Auto Redeem Playtime']:getState()and i-R.redeemPlaytime>=5 then R.redeemPlaytime=i;spawn(function()pcall(function()local p=L:GetPlaytimeRewardInfo():expect();for b,b in pairs(p.Rewards)do if not table.find(p.ClaimedRewards,b)then L:ClaimPlaytimeReward(b):expect();end;end;end);end);end;if i-l.lastCashUpdate>=1 then l.lastCashUpdate=i;M();local p=i-l.startTime;j.TextBox['Time Elapsed:']:updateText({text=Z(p)});j.TextBox['UShards Earned:']:updateText({text=t(l.shardsEarned)});j.TextBox['UCoins Earned:']:updateText({text=t(l.coinsEarned)});j.TextBox[

-- [frag 0452 @ offset 3032315] (350 bytes)
]:getState()and i-R.redeemPlaytime>=5 then R.redeemPlaytime=i;spawn(function()pcall(function()local p=L:GetPlaytimeRewardInfo():expect();for b,b in pairs(p.Rewards)do if not table.find(p.ClaimedRewards,b)then L:ClaimPlaytimeReward(b):expect();end;end;end);end);end;if i-l.lastCashUpdate>=1 then l.lastCashUpdate=i;M();local p=i-l.startTime;j.TextBox[

-- [frag 0453 @ offset 3032856] (228 bytes)
]:updateText({text=t(l.coinsEarned)});j.TextBox["UTokens Earned:"]:updateText({text=t(l.tokensEarned)});end;if j.Toggle["Auto Shrine"]and j.Toggle["Auto Shrine"]:getState()and game:GetService("Workspace").Effects:FindFirstChild(

-- [frag 0454 @ offset 3033076] (32 bytes)
]:getState()and game:GetService(

-- [frag 0455 @ offset 3033123] (784 bytes)
).Effects:FindFirstChild('InsanitySigil')then workspace.CurrentCamera.CFrame=CFrame.lookAt(workspace.CurrentCamera.CFrame.Position,game:GetService('Workspace').Effects.InsanitySigil.Position);end;end;end,SX=function(i,i,Z,t)(i)[t]=(t+Z);end,_X=function(i,i,Z)i=Z%8;return i;end,DX=function(i,Z,t,j,p,L,b,f,l,o,z)local c;f=o[0x23](Z);l=o[0x23](Z);for Z=39,307,0x77 do c=i:nX(b,t,Z,j,z);if c~=0xd72__f__ then else break;end;end;(b)[9]=(L);p=nil;return p,f,l;end,ni=function(i,Z,t,j)(Z)[0X0C]=0X0;if not j[23763]then t=(-4206993627+(i.ih((i.th(i.ts[5]-i.ts[0B10_00]))-j[0X644]+i.ts[0X05]+i.ts[0X1])));j[0X5Cd__3]=(t);else t=(j[23763]);end;return t;end,N=function(i)local Z=i[4];local t=i[0];local j=i[5];local p=i[2];local L=i[3];local b=i[1];return function()p();b:Update();if j.Toggle[

-- [frag 0456 @ offset 3033182] (107 bytes)
)then workspace.CurrentCamera.CFrame=CFrame.lookAt(workspace.CurrentCamera.CFrame.Position,game:GetService(

-- [frag 0457 @ offset 3033313] (1343 bytes)
).Effects.InsanitySigil.Position);end;end;end,SX=function(i,i,Z,t)(i)[t]=(t+Z);end,_X=function(i,i,Z)i=Z%8;return i;end,DX=function(i,Z,t,j,p,L,b,f,l,o,z)local c;f=o[0x23](Z);l=o[0x23](Z);for Z=39,307,0x77 do c=i:nX(b,t,Z,j,z);if c~=0xd72__f__ then else break;end;end;(b)[9]=(L);p=nil;return p,f,l;end,ni=function(i,Z,t,j)(Z)[0X0C]=0X0;if not j[23763]then t=(-4206993627+(i.ih((i.th(i.ts[5]-i.ts[0B10_00]))-j[0X644]+i.ts[0X05]+i.ts[0X1])));j[0X5Cd__3]=(t);else t=(j[23763]);end;return t;end,N=function(i)local Z=i[4];local t=i[0];local j=i[5];local p=i[2];local L=i[3];local b=i[1];return function()p();b:Update();if j.Toggle["Desync"]:getState()and not UserIsPoor then local i=t and t:FindFirstChild(L[1][L[3]]);if i and i.AssemblyMass<math.huge and not t:FindFirstChildWhichIsA("ForceField")then local t=i.CFrame;local j=i.Velocity;i.Velocity=Vector3.new(math.random(-900000.0,900000),math.random(-300000.0,300000),math.random(-900000.0,900000));i.CFrame=i.CFrame*CFrame.Angles(0,0.0001,0);Z.RenderStepped:Wait();i.Velocity=j;i.CFrame=t;end;end;end;end,As=function(i)local Z=i[5];local t=i[0];local j=i[6];local p=i[11];local L=i[12];local b=i[13];local f=i[1];local l=i[8];local o=i[3];local z=i[4];local c=i[7];local y=i[9];local n=i[14];local X=i[10];local M=i[2];return function(i)local R=y[1][y[3]]and y[1][y[3]]:FindFirstChildWhichIsA(

-- [frag 0458 @ offset 3033949] (146 bytes)
]:getState()and not UserIsPoor then local i=t and t:FindFirstChild(L[1][L[3]]);if i and i.AssemblyMass<math.huge and not t:FindFirstChildWhichIsA(

-- [frag 0459 @ offset 3034123] (594 bytes)
)then local t=i.CFrame;local j=i.Velocity;i.Velocity=Vector3.new(math.random(-900000.0,900000),math.random(-300000.0,300000),math.random(-900000.0,900000));i.CFrame=i.CFrame*CFrame.Angles(0,0.0001,0);Z.RenderStepped:Wait();i.Velocity=j;i.CFrame=t;end;end;end;end,As=function(i)local Z=i[5];local t=i[0];local j=i[6];local p=i[11];local L=i[12];local b=i[13];local f=i[1];local l=i[8];local o=i[3];local z=i[4];local c=i[7];local y=i[9];local n=i[14];local X=i[10];local M=i[2];return function(i)local R=y[1][y[3]]and y[1][y[3]]:FindFirstChildWhichIsA('RayValue');local w=j and j:FindFirstChild(

-- [frag 0460 @ offset 3034695] (898 bytes)
);local w=j and j:FindFirstChild("GeneralViewModel");local K=j and j:FindFirstChild("ViewModel");local e=tick();if e-p[1][p[3]]>0.1 then p[1][p[3]]=e;local p=y[1][y[3]]and y[1][y[3]]:FindFirstChildOfClass("Humanoid");z[1][z[3]]=y[1][y[3]]and y[1][y[3]].Parent and p and p.Health>0;if Z[1][Z[3]]and not z[1][z[3]]then f.emptyBar.Visible=false;f.fillBar.Visible=false;f.text.Visible=false;f.outline.Visible=false;for p,p in pairs(M[1][M[3]])do if p and p.Parent then p:Destroy();end;end;M[1][M[3]]={};end;Z[1][Z[3]]=z[1][z[3]];end;if not z[1][z[3]]then return;end;if t.Toggle["Auto Open/Bash Doors"]:getState()then local Z=l.LocalPlayer.Character;local p=Z and Z:FindFirstChild(b[1][b[3]]);if p then local b=n.CastRay(p.Position,p.CFrame.LookVector*6,{["CanCollide"]=false});if b and b.Instance then local l=b.Instance:FindFirstAncestorWhichIsA("Model");if l and l.PrimaryPart and not l:GetAttribute(

-- [frag 0461 @ offset 3035404] (155 bytes)
]:getState()then local Z=l.LocalPlayer.Character;local p=Z and Z:FindFirstChild(b[1][b[3]]);if p then local b=n.CastRay(p.Position,p.CFrame.LookVector*6,{[

-- [frag 0462 @ offset 3035742] (298 bytes)
)and l:HasTag("Doors")and Z:GetAttribute("Sprinting")then local Z=l.PrimaryPart.CFrame.RightVector:Dot((p.Position-l.PrimaryPart.Position).Unit)>0;L:WaitForChild("Events").Player.Bash:FireServer(l,Z);end;end;end;end;if t.Toggle["Rainbow Gun"]:getState()then c[1][c[3]]=(c[1][c[3]]+i*X.Flags.Slider[

-- [frag 0463 @ offset 3035823] (110 bytes)
)then local Z=l.PrimaryPart.CFrame.RightVector:Dot((p.Position-l.PrimaryPart.Position).Unit)>0;L:WaitForChild(

-- [frag 0464 @ offset 3036039] (565 bytes)
]:getState()then c[1][c[3]]=(c[1][c[3]]+i*X.Flags.Slider['Rainbow Speed']:getValue())%1;end;if not R or not w or not K then f.emptyBar.Visible=false;f.fillBar.Visible=false;f.text.Visible=false;f.outline.Visible=false;return;end;local Z=R:FindFirstChild('GunStatus');if not Z then f.emptyBar.Visible=false;f.fillBar.Visible=false;f.text.Visible=false;f.outline.Visible=false;return;end;if t.Toggle['Viewmodel Enabled']:getState()then if K~=o[1][o[3]]then o[1][o[3]]=K;for p in pairs(M[1][M[3]])do if not p.Parent then M[1][M[3]][p]=nil;end;end;end;local p=t.Toggle[

-- [frag 0465 @ offset 3036136] (182 bytes)
]:getValue())%1;end;if not R or not w or not K then f.emptyBar.Visible=false;f.fillBar.Visible=false;f.text.Visible=false;f.outline.Visible=false;return;end;local Z=R:FindFirstChild(

-- [frag 0466 @ offset 3036510] (241 bytes)
]:getState()then if K~=o[1][o[3]]then o[1][o[3]]=K;for p in pairs(M[1][M[3]])do if not p.Parent then M[1][M[3]][p]=nil;end;end;end;local p=t.Toggle["Guns"]:getState();local L=p and t.Toggle["Rainbow Gun"]:getState();local b=p and t.Dropdown[

-- [frag 0467 @ offset 3036672] (36 bytes)
]:getState();local L=p and t.Toggle[

-- [frag 0468 @ offset 3036732] (148 bytes)
]:getState();local b=p and t.Dropdown['Material']:getValue();local l=p and not L and t.ColorPicker['Gun Color']:getColor();local o=p and t.Dropdown[

-- [frag 0469 @ offset 3036789] (51 bytes)
]:getValue();local l=p and not L and t.ColorPicker[

-- [frag 0470 @ offset 3036861] (125 bytes)
]:getColor();local o=p and t.Dropdown["Texture"]:getValue();pcall(function()for z,z in ipairs(K:GetDescendants())do if z:IsA(

-- [frag 0471 @ offset 3036921] (136 bytes)
]:getValue();pcall(function()for z,z in ipairs(K:GetDescendants())do if z:IsA('MeshPart')then if p then local p=z:FindFirstChildOfClass(

-- [frag 0472 @ offset 3037397] (167 bytes)
;z.Material=Enum.Material.Plastic;end;end;end;end);end;if t.Toggle['Magazine Visuals']:getState()and j and K and Z then local p=pcall(function()local L=Z:GetAttribute(

-- [frag 0473 @ offset 3037498] (121 bytes)
]:getState()and j and K and Z then local p=pcall(function()local L=Z:GetAttribute("Magazine")or 0;local b=Z:GetAttribute(

-- [frag 0474 @ offset 3037609] (497 bytes)
)or 0;local b=Z:GetAttribute('MagazineCapacity')or 0;if b==0 then f.hideAll();return;end;local Z=i;if t.Toggle['Smooth Ammo Transition']:getState()then local i=L-f.displayMag;f.displayMag=f.displayMag+i*math.min(Z*15,1);else f.displayMag=L;end;local i=f.displayMag/b;local l=L/b;local o=K:FindFirstChild('Mag');if not o then f.hideAll();return;end;local z,c=j:WorldToViewportPoint(o.Position);if not c then f.hideAll();return;end;local j=t.Slider['Magazine Bar Width']:getValue();local o=t.Slider[

-- [frag 0475 @ offset 3037811] (169 bytes)
]:getState()then local i=L-f.displayMag;f.displayMag=f.displayMag+i*math.min(Z*15,1);else f.displayMag=L;end;local i=f.displayMag/b;local l=L/b;local o=K:FindFirstChild(

-- [frag 0476 @ offset 3038177] (311 bytes)
]:getValue();local o=t.Slider["Magazine Bar Height"]:getValue();local c=t.Slider["Magazine Bar Vertical Offset"]:getValue();local y=math.floor(z.X-j/2);local n=math.floor(z.Y-c);local c=t.ColorPicker["Magazine Full Color"]:getColor();local X=t.ColorPicker["Magazine Mid Color"]:getColor();local M=t.ColorPicker[

-- [frag 0477 @ offset 3038262] (30 bytes)
]:getValue();local c=t.Slider[

-- [frag 0478 @ offset 3038399] (89 bytes)
]:getValue();local y=math.floor(z.X-j/2);local n=math.floor(z.Y-c);local c=t.ColorPicker[

-- [frag 0479 @ offset 3038534] (35 bytes)
]:getColor();local X=t.ColorPicker[

-- [frag 0480 @ offset 3038617] (90 bytes)
]:getColor();local M=t.ColorPicker['Magazine Low Color']:getColor();local R=t.ColorPicker[

-- [frag 0481 @ offset 3038703] (1449 bytes)
]:getColor();local R=t.ColorPicker["Magazine Outline Color"]:getColor();local w;if l>0.5 then local K=(l-0.5)*2;w=f.lerpColor(X,c,K);else local c=l*2;w=f.lerpColor(M,X,c);end;f.pulseTime=f.pulseTime+Z;if t.Toggle["Low Ammo Pulse"]:getState()and l<0.25 then local Z=math.sin(f.pulseTime*8)*0.5+0.5;local l=Z*0.3;f.lowAmmoGlow.Position=Vector2.new(y-3,n-3);f.lowAmmoGlow.Size=Vector2.new(j+6,o+6);f.lowAmmoGlow.Transparency=l;f.lowAmmoGlow.Visible=true;w=f.lerpColor(w,Color3.fromRGB(255,255,255),Z*0.3);else f.lowAmmoGlow.Visible=false;end;if t.Toggle["Show Shadow"]:getState()then f.shadow.Position=Vector2.new(y+2,n+2);f.shadow.Size=Vector2.new(j,o);f.shadow.Visible=true;else f.shadow.Visible=false;end;f.outline.Size=Vector2.new(j+2,o+2);f.outline.Position=Vector2.new(y-1,n-1);f.outline.Color=R;f.outline.Visible=true;f.innerOutline.Size=Vector2.new(j,o);f.innerOutline.Position=Vector2.new(y,n);f.innerOutline.Visible=true;f.emptyBar.Size=Vector2.new(j,o);f.emptyBar.Position=Vector2.new(y,n);f.emptyBar.Visible=true;local Z=math.max(math.floor(j*i),0);f.fillBar.Size=Vector2.new(Z,o);f.fillBar.Position=Vector2.new(y,n);f.fillBar.Color=w;f.fillBar.Visible=true;f.leftCap.Size=Vector2.new(2,o);f.leftCap.Position=Vector2.new(y,n);f.leftCap.Color=w;f.leftCap.Visible=Z>0;f.rightCap.Size=Vector2.new(2,o);f.rightCap.Position=Vector2.new(y+j-2,n);f.rightCap.Visible=true;f.text.Position=Vector2.new(math.floor(z.X),n-16);f.text.Text=string.format(

-- [frag 0482 @ offset 3038810] (154 bytes)
]:getColor();local w;if l>0.5 then local K=(l-0.5)*2;w=f.lerpColor(X,c,K);else local c=l*2;w=f.lerpColor(M,X,c);end;f.pulseTime=f.pulseTime+Z;if t.Toggle[

-- [frag 0483 @ offset 3038995] (322 bytes)
]:getState()and l<0.25 then local Z=math.sin(f.pulseTime*8)*0.5+0.5;local l=Z*0.3;f.lowAmmoGlow.Position=Vector2.new(y-3,n-3);f.lowAmmoGlow.Size=Vector2.new(j+6,o+6);f.lowAmmoGlow.Transparency=l;f.lowAmmoGlow.Visible=true;w=f.lerpColor(w,Color3.fromRGB(255,255,255),Z*0.3);else f.lowAmmoGlow.Visible=false;end;if t.Toggle[

-- [frag 0484 @ offset 3039359] (1471 bytes)
]:getState()then f.shadow.Position=Vector2.new(y+2,n+2);f.shadow.Size=Vector2.new(j,o);f.shadow.Visible=true;else f.shadow.Visible=false;end;f.outline.Size=Vector2.new(j+2,o+2);f.outline.Position=Vector2.new(y-1,n-1);f.outline.Color=R;f.outline.Visible=true;f.innerOutline.Size=Vector2.new(j,o);f.innerOutline.Position=Vector2.new(y,n);f.innerOutline.Visible=true;f.emptyBar.Size=Vector2.new(j,o);f.emptyBar.Position=Vector2.new(y,n);f.emptyBar.Visible=true;local Z=math.max(math.floor(j*i),0);f.fillBar.Size=Vector2.new(Z,o);f.fillBar.Position=Vector2.new(y,n);f.fillBar.Color=w;f.fillBar.Visible=true;f.leftCap.Size=Vector2.new(2,o);f.leftCap.Position=Vector2.new(y,n);f.leftCap.Color=w;f.leftCap.Visible=Z>0;f.rightCap.Size=Vector2.new(2,o);f.rightCap.Position=Vector2.new(y+j-2,n);f.rightCap.Visible=true;f.text.Position=Vector2.new(math.floor(z.X),n-16);f.text.Text=string.format('%d / %d',L,b);f.text.Visible=true;f.lastMag=L;end);if not p then f.hideAll();end;else f.hideAll();end;end;end,t=function(i)local Z=i[4];local t=i[5];local j=i[2];local p=i[0];local L=i[3];local b=i[1];return function()do p[1][p[3]].ChildAdded:Connect(function(i)i:WaitForChild('Humanoid');t:UpdateViewmodel(i);task.wait(0.1);end);end;do Z.CharacterAdded:Connect(function()j.CurrentData=nil;task.wait(2);j:New();repeat task.wait();until Z.Character and Z.Character:FindFirstChildOfClass('Humanoid');j:RunCharacterFunctions();end);end;do while not(b.AiZones and b.AiZones:FindFirstChild(

-- [frag 0485 @ offset 3040773] (557 bytes)
);j:RunCharacterFunctions();end);end;do while not(b.AiZones and b.AiZones:FindFirstChild("OutpostLandmines"))do task.wait(0.3);end;b.AiZones.OutpostLandmines.ChildAdded:Connect(function(i)if L.Flags.Toggle["No outpost landmines"]:getState()then i:Destroy();end;end);end;end;end,es=string,Ui=function(i,i)return i;end,kh=bit32.countlz,P=function(i)local Z=i[0];local t=i[1];return function()if Z.AutoBlocker.Toggle then t();end;if Z.nostun then for i,i in pairs(workspace.Live[game.Players.LocalPlayer.Name]:GetChildren())do if i:IsA("BoolValue")and i.Name==

-- [frag 0486 @ offset 3040907] (99 bytes)
))do task.wait(0.3);end;b.AiZones.OutpostLandmines.ChildAdded:Connect(function(i)if L.Flags.Toggle[

-- [frag 0487 @ offset 3041061] (305 bytes)
]:getState()then i:Destroy();end;end);end;end;end,es=string,Ui=function(i,i)return i;end,kh=bit32.countlz,P=function(i)local Z=i[0];local t=i[1];return function()if Z.AutoBlocker.Toggle then t();end;if Z.nostun then for i,i in pairs(workspace.Live[game.Players.LocalPlayer.Name]:GetChildren())do if i:IsA(

-- [frag 0488 @ offset 3041435] (1582 bytes)
then i:Destroy();end;i:SetAttribute("MoveCooldown",false);i:SetAttribute("Ragdolled",false);i:SetAttribute("CanRagdollDash",true);end;end;end;end,H=function(i)local Z=i[4];local t=i[10];local j=i[13];local p=i[2];local L=i[0];local b=i[12];local f=i[16];local l=i[18];local o=i[5];local z=i[9];local c=i[8];local y=i[17];local n=i[11];local X=i[3];local M=i[14];local R=i[19];local w=i[1];local K=i[7];local e=i[6];local U=i[15];return function()local i=game.Players.LocalPlayer.Character;if p.NoAnimations then for C,C in pairs(i.Humanoid:GetPlayingAnimationTracks())do C:Stop();end;end;if p.InstantCharge then local C=l(w);if C and C:FindFirstChild("ChargeProgressClient")then C.ChargeProgressClient.Value=1;end;end;if p.NoRagdoll then U();end;if p.AutoEquip then coroutine.wrap(R)();end;if p.fovcircle then local l=p.fovcircle;l.Position=Vector2.new(K.X+X.X,K.Y+X.Y);l.Visible=p.Aimbot_Draw_FOV;l.Radius=p.Aimbot_FOV_Radius;l.Color=p.Aimbot_FOV_Color;l.Thickness=1.5;l.Filled=false;l.Transparency=1;end;if p.Colorson then local l=b();t.Adornee=l;t.FillTransparency=0;t.FillColor=p.Targeted_Highlight_Color;end;if p.WhitelistFriends and tick()>j[1][j[3]]+1 then j[1][j[3]]=tick();for t,t in ipairs(n:GetPlayers())do if not w:IsFriendsWith(t.UserId)or t==w then continue;end;if not table.find(p.Whitelisted,t.Name)then y(p.Whitelisted,t.Name);end;if L[1][L[3]]then L[1][L[3]]:Clear();L[1][L[3]]:Add(o());L[1][L[3]]:Set(p.Whitelisted);end;end;end;if p.HeadExpander then for t,t in pairs(n:GetPlayers())do if t==w then continue;end;local j=t.Character and t.Character:FindFirstChild(

-- [frag 0489 @ offset 3041627] (528 bytes)
,true);end;end;end;end,H=function(i)local Z=i[4];local t=i[10];local j=i[13];local p=i[2];local L=i[0];local b=i[12];local f=i[16];local l=i[18];local o=i[5];local z=i[9];local c=i[8];local y=i[17];local n=i[11];local X=i[3];local M=i[14];local R=i[19];local w=i[1];local K=i[7];local e=i[6];local U=i[15];return function()local i=game.Players.LocalPlayer.Character;if p.NoAnimations then for C,C in pairs(i.Humanoid:GetPlayingAnimationTracks())do C:Stop();end;end;if p.InstantCharge then local C=l(w);if C and C:FindFirstChild(

-- [frag 0490 @ offset 3042213] (4170 bytes)
)then C.ChargeProgressClient.Value=1;end;end;if p.NoRagdoll then U();end;if p.AutoEquip then coroutine.wrap(R)();end;if p.fovcircle then local l=p.fovcircle;l.Position=Vector2.new(K.X+X.X,K.Y+X.Y);l.Visible=p.Aimbot_Draw_FOV;l.Radius=p.Aimbot_FOV_Radius;l.Color=p.Aimbot_FOV_Color;l.Thickness=1.5;l.Filled=false;l.Transparency=1;end;if p.Colorson then local l=b();t.Adornee=l;t.FillTransparency=0;t.FillColor=p.Targeted_Highlight_Color;end;if p.WhitelistFriends and tick()>j[1][j[3]]+1 then j[1][j[3]]=tick();for t,t in ipairs(n:GetPlayers())do if not w:IsFriendsWith(t.UserId)or t==w then continue;end;if not table.find(p.Whitelisted,t.Name)then y(p.Whitelisted,t.Name);end;if L[1][L[3]]then L[1][L[3]]:Clear();L[1][L[3]]:Add(o());L[1][L[3]]:Set(p.Whitelisted);end;end;end;if p.HeadExpander then for t,t in pairs(n:GetPlayers())do if t==w then continue;end;local j=t.Character and t.Character:FindFirstChild('Head');if j then j.Size=Vector3.new(p.HeadAmount,p.HeadAmount,p.HeadAmount);j.CanCollide=false;j.Transparency=0.4;end;end;end;if p.TorsoExpander then for t,t in pairs(n:GetPlayers())do if t==w then continue;end;local j=t.Character and t.Character:FindFirstChild(c[1][c[3]]);if j then j.Size=Vector3.new(p.TorsoAmount,p.TorsoAmount,p.TorsoAmount);j.CanCollide=false;j.Transparency=0.4;end;end;end;if p.Fly then local t=i and i:FindFirstChild(c[1][c[3]]);t.Velocity=Vector3.new(0,0,0);if f:IsKeyDown(Enum.KeyCode.W)then t.CFrame=t.CFrame+(e.CFrame.LookVector*0.8);end;if f:IsKeyDown(Enum.KeyCode.S)then t.CFrame=t.CFrame+(-e.CFrame.LookVector*0.8);end;if f:IsKeyDown(Enum.KeyCode.A)then t.CFrame=t.CFrame+(-e.CFrame.RightVector*0.8);end;if f:IsKeyDown(Enum.KeyCode.D)then t.CFrame=t.CFrame+(e.CFrame.RightVector*0.8);end;end;if p.AimbotLocked and M[1][M[3]]then Z[1][Z[3]]=true;if Z[1][Z[3]]and z[1][z[3]]~=nil then local i=z[1][z[3]].HumanoidRootPart.CFrame+(z[1][z[3]].HumanoidRootPart.Velocity*p.AimbotPrediction+Vector3.new(0,0,0));workspace.CurrentCamera.CFrame=CFrame.lookAt(workspace.CurrentCamera.CFrame.Position,i.Position);f.MouseBehavior=Enum.MouseBehavior.LockCenter;end;end;end;end,Mi=function(i,Z,t,j)(j)[39]=nil;j[0X28]=(nil);(j)[0x29]=(nil);j[0B101010]=(nil);t=0X22;repeat if t>0B11001 and t<0b100100 then j[0X26]=function()local p,L;p,L=i:Ci(j);if p==-0X2 then return L;end;end;if not Z[0X5b94]then t=-3085181646+((i.Fh((i.Sh(Z[0X3BB8]-Z[0x1a1__0]+Z[1710])),(Z[17533])))-Z[0X1A__10]+i.ts[2]);(Z)[23444]=(t);else t=Z[0X5b94];end;elseif t<0x2_2 then t=i:ci(t,j,Z);continue;elseif t>0x33_ then j[42]=i.ls;break;elseif t<51 and t>0B100010 then j[0B101000]=function()local p=j[0X12](j[0B11101],j[12]);j[0b0_01_100]=(j[12]+0X4);return p;end;if not(not Z[0xC0d])then t=Z[0xc0D];else t=i:bi(t,Z);end;else if t>0X24_ and t<0B11_10110 then j[0B0101001]=function()local p=j[17](j[0X1D],j[12]);for L=0b1010_110,0B10110010,0B1011100 do if L==0XB2 then return p;else if L==0B1010110 then(j)[0X00C]=(j[12]+0b100);end;end;end;end;if not Z[18887]then t=i:pi(t,Z);else t=Z[0X49C7];end;end;end;until false;return t;end,Kh=function(i,Z,t,j)for p=0X00_7D,0x166,0x7D do if p>0X7d then break;else if not(p<0Xfa)then else if not(j>0xdC)then Z=t[0X27]();else Z=i:oh(Z,t,j);end;end;end;end;return Z;end,bX=function(i,i,Z,t,j)t[Z+1]=(i);j=21;return j;end,Vh=function(i,Z,t,j)(j[0B101110])[20]=i.ji;if not(not t[0X779d])then Z=(t[0x77__9d]);else(t)[0X1458]=(0X22C02b22+(((i.kh((i.kh(t[11755]))))+t[24977]-t[0X01dC2]<=t[17180]and i.ts[0B111]or t[0X5cD3])-i.ts[0b10_1]));t[0XBD7]=(-0B10110+((i.Ch((i.Uh(t[0x4Af3]-i.ts[0X4],(t[0X1e35])))-t[0X4Af3],(t[4704])))-t[0X2DBC]~=t[0x4aF3]and t[0x1E35]or t[18887]));Z=0X30CE1eCe+((i.uh(t[0X6b62_]+t[11708]))-i.ts[0B110]+Z+i.ts[0X1]-t[19383]);(t)[0x779D]=(Z);end;return Z;end,X=function(i)local Z=i[17];local t=i[25];local j=i[0];local p=i[2];local L=i[13];local b=i[9];local f=i[20];local l=i[26];local o=i[7];local z=i[1];local c=i[6];local y=i[19];local n=i[10];local X=i[4];local M=i[3];local R=i[15];local w=i[21];local K=i[8];local e=i[5];local U=i[16];local C=i[24];local d=i[14];local G=i[22];local x=i[23];local J=i[18];local B=i[11];local F=i[12];return function()local i=z.Slider['FOV Size']:getValue();local Q=z.ColorPicker[

-- [frag 0491 @ offset 3043128] (3210 bytes)
);if j then j.Size=Vector3.new(p.HeadAmount,p.HeadAmount,p.HeadAmount);j.CanCollide=false;j.Transparency=0.4;end;end;end;if p.TorsoExpander then for t,t in pairs(n:GetPlayers())do if t==w then continue;end;local j=t.Character and t.Character:FindFirstChild(c[1][c[3]]);if j then j.Size=Vector3.new(p.TorsoAmount,p.TorsoAmount,p.TorsoAmount);j.CanCollide=false;j.Transparency=0.4;end;end;end;if p.Fly then local t=i and i:FindFirstChild(c[1][c[3]]);t.Velocity=Vector3.new(0,0,0);if f:IsKeyDown(Enum.KeyCode.W)then t.CFrame=t.CFrame+(e.CFrame.LookVector*0.8);end;if f:IsKeyDown(Enum.KeyCode.S)then t.CFrame=t.CFrame+(-e.CFrame.LookVector*0.8);end;if f:IsKeyDown(Enum.KeyCode.A)then t.CFrame=t.CFrame+(-e.CFrame.RightVector*0.8);end;if f:IsKeyDown(Enum.KeyCode.D)then t.CFrame=t.CFrame+(e.CFrame.RightVector*0.8);end;end;if p.AimbotLocked and M[1][M[3]]then Z[1][Z[3]]=true;if Z[1][Z[3]]and z[1][z[3]]~=nil then local i=z[1][z[3]].HumanoidRootPart.CFrame+(z[1][z[3]].HumanoidRootPart.Velocity*p.AimbotPrediction+Vector3.new(0,0,0));workspace.CurrentCamera.CFrame=CFrame.lookAt(workspace.CurrentCamera.CFrame.Position,i.Position);f.MouseBehavior=Enum.MouseBehavior.LockCenter;end;end;end;end,Mi=function(i,Z,t,j)(j)[39]=nil;j[0X28]=(nil);(j)[0x29]=(nil);j[0B101010]=(nil);t=0X22;repeat if t>0B11001 and t<0b100100 then j[0X26]=function()local p,L;p,L=i:Ci(j);if p==-0X2 then return L;end;end;if not Z[0X5b94]then t=-3085181646+((i.Fh((i.Sh(Z[0X3BB8]-Z[0x1a1__0]+Z[1710])),(Z[17533])))-Z[0X1A__10]+i.ts[2]);(Z)[23444]=(t);else t=Z[0X5b94];end;elseif t<0x2_2 then t=i:ci(t,j,Z);continue;elseif t>0x33_ then j[42]=i.ls;break;elseif t<51 and t>0B100010 then j[0B101000]=function()local p=j[0X12](j[0B11101],j[12]);j[0b0_01_100]=(j[12]+0X4);return p;end;if not(not Z[0xC0d])then t=Z[0xc0D];else t=i:bi(t,Z);end;else if t>0X24_ and t<0B11_10110 then j[0B0101001]=function()local p=j[17](j[0X1D],j[12]);for L=0b1010_110,0B10110010,0B1011100 do if L==0XB2 then return p;else if L==0B1010110 then(j)[0X00C]=(j[12]+0b100);end;end;end;end;if not Z[18887]then t=i:pi(t,Z);else t=Z[0X49C7];end;end;end;until false;return t;end,Kh=function(i,Z,t,j)for p=0X00_7D,0x166,0x7D do if p>0X7d then break;else if not(p<0Xfa)then else if not(j>0xdC)then Z=t[0X27]();else Z=i:oh(Z,t,j);end;end;end;end;return Z;end,bX=function(i,i,Z,t,j)t[Z+1]=(i);j=21;return j;end,Vh=function(i,Z,t,j)(j[0B101110])[20]=i.ji;if not(not t[0X779d])then Z=(t[0x77__9d]);else(t)[0X1458]=(0X22C02b22+(((i.kh((i.kh(t[11755]))))+t[24977]-t[0X01dC2]<=t[17180]and i.ts[0B111]or t[0X5cD3])-i.ts[0b10_1]));t[0XBD7]=(-0B10110+((i.Ch((i.Uh(t[0x4Af3]-i.ts[0X4],(t[0X1e35])))-t[0X4Af3],(t[4704])))-t[0X2DBC]~=t[0x4aF3]and t[0x1E35]or t[18887]));Z=0X30CE1eCe+((i.uh(t[0X6b62_]+t[11708]))-i.ts[0B110]+Z+i.ts[0X1]-t[19383]);(t)[0x779D]=(Z);end;return Z;end,X=function(i)local Z=i[17];local t=i[25];local j=i[0];local p=i[2];local L=i[13];local b=i[9];local f=i[20];local l=i[26];local o=i[7];local z=i[1];local c=i[6];local y=i[19];local n=i[10];local X=i[4];local M=i[3];local R=i[15];local w=i[21];local K=i[8];local e=i[5];local U=i[16];local C=i[24];local d=i[14];local G=i[22];local x=i[23];local J=i[18];local B=i[11];local F=i[12];return function()local i=z.Slider[

-- [frag 0492 @ offset 3046374] (76 bytes)
]:getValue();local Q=z.ColorPicker["FOV Color"]:getColor();local V=z.Slider[

-- [frag 0493 @ offset 3046432] (167 bytes)
]:getColor();local V=z.Slider['FOV Thickness']:getValue();local u=z.Toggle['FOV Filled']:getState();local E=z.Slider['FOV Transparency']:getValue();local s=z.Dropdown[

-- [frag 0494 @ offset 3046492] (30 bytes)
]:getValue();local u=z.Toggle[

-- [frag 0495 @ offset 3046548] (30 bytes)
]:getState();local E=z.Slider[

-- [frag 0496 @ offset 3046630] (74 bytes)
]:getValue();local s=z.Dropdown["Spectate Player"]:getValue();if z.Toggle[

-- [frag 0497 @ offset 3046709] (232 bytes)
]:getValue();if z.Toggle['Spectate']:getState()then if s then local I=t:FindFirstChild(s);if I and I.Character and I.Character:FindFirstChild(Z[1][Z[3]])then l[1][l[3]]=I;M.CameraSubject=I.Character.Humanoid;end;end;end;if z.Toggle[

-- [frag 0498 @ offset 3046768] (305 bytes)
]:getState()then if s then local I=t:FindFirstChild(s);if I and I.Character and I.Character:FindFirstChild(Z[1][Z[3]])then l[1][l[3]]=I;M.CameraSubject=I.Character.Humanoid;end;end;end;if z.Toggle["Ambient Enabled"]:getState()then y.Ambient=z.ColorPicker["Ambient Color"]:getColor();b.Color=z.ColorPicker[

-- [frag 0499 @ offset 3046989] (41 bytes)
]:getState()then y.Ambient=z.ColorPicker[

-- [frag 0500 @ offset 3047077] (88 bytes)
]:getColor();b.Color=z.ColorPicker['Atmosphere Color']:getColor();b.Decay=z.ColorPicker[

-- [frag 0501 @ offset 3047157] (89 bytes)
]:getColor();b.Decay=z.ColorPicker["Atmosphere Decay Color"]:getColor();b.Glare=z.Slider[

-- [frag 0502 @ offset 3047268] (126 bytes)
]:getColor();b.Glare=z.Slider['Atmosphere Glare']:getValue();b.Haze=z.Slider['Atmosphere Haze']:getValue();b.Density=z.Slider[

-- [frag 0503 @ offset 3047338] (29 bytes)
]:getValue();b.Haze=z.Slider[

-- [frag 0504 @ offset 3047398] (170 bytes)
]:getValue();b.Density=z.Slider["Atmosphere Density"]:getValue();end;if U[1][U[3]]then local t=U[1][U[3]];local b=z.Toggle["FOV Lock Center"]:getState();local l=z.Toggle[

-- [frag 0505 @ offset 3047484] (71 bytes)
]:getValue();end;if U[1][U[3]]then local t=U[1][U[3]];local b=z.Toggle[

-- [frag 0506 @ offset 3047606] (287 bytes)
]:getState();local l=z.Toggle['FOV Effects']:getState();if b then t.Position=Vector2.new(M.ViewportSize.X/2,M.ViewportSize.Y/2);else t.Position=Vector2.new(X.X+c.X,X.Y+c.Y);end;t.Visible=C[1][C[3]]and J[1][J[3]];t.Color=z.ColorPicker['FOV Outline Color']:getColor();t.Thickness=z.Slider[

-- [frag 0507 @ offset 3047663] (191 bytes)
]:getState();if b then t.Position=Vector2.new(M.ViewportSize.X/2,M.ViewportSize.Y/2);else t.Position=Vector2.new(X.X+c.X,X.Y+c.Y);end;t.Visible=C[1][C[3]]and J[1][J[3]];t.Color=z.ColorPicker[

-- [frag 0508 @ offset 3047899] (94 bytes)
]:getColor();t.Thickness=z.Slider["FOV Outline Thickness"]:getValue();t.Transparency=z.Slider[

-- [frag 0509 @ offset 3047980] (203 bytes)
]:getValue();t.Transparency=z.Slider['FOV Outline Transparency']:getValue();t.Filled=false;t.NumSides=128;t.ZIndex=1;if l then local b=tick();local l=z.Slider['Effect Speed']:getValue();local y=z.Slider[

-- [frag 0510 @ offset 3048090] (96 bytes)
]:getValue();t.Filled=false;t.NumSides=128;t.ZIndex=1;if l then local b=tick();local l=z.Slider[

-- [frag 0511 @ offset 3048219] (167 bytes)
]:getValue();local y=z.Slider["Effect Intensity"]:getValue();local U=math.sin(b*l)*y+(1-y);if p:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or d:GetAttribute(

-- [frag 0512 @ offset 3048297] (154 bytes)
]:getValue();local U=math.sin(b*l)*y+(1-y);if p:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or d:GetAttribute('Aiming')then t.Thickness=z.Slider[

-- [frag 0513 @ offset 3048427] (275 bytes)
)then t.Thickness=z.Slider["FOV Outline Thickness"]:getValue()+0.5;t.Transparency=z.Slider["FOV Outline Transparency"]:getValue()*0.3;else t.Transparency=z.Slider["FOV Outline Transparency"]:getValue()*U;end;end;if z.Toggle["FOV Auto Adjust"]:getState()then local b=z.Slider[

-- [frag 0514 @ offset 3048522] (41 bytes)
]:getValue()+0.5;t.Transparency=z.Slider[

-- [frag 0515 @ offset 3048632] (46 bytes)
]:getValue()*0.3;else t.Transparency=z.Slider[

-- [frag 0516 @ offset 3048739] (35 bytes)
]:getValue()*U;end;end;if z.Toggle[

-- [frag 0517 @ offset 3048817] (139 bytes)
]:getState()then local b=z.Slider['FOV Size']:getValue();local l=(p:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or d:GetAttribute(

-- [frag 0518 @ offset 3048877] (120 bytes)
]:getValue();local l=(p:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or d:GetAttribute("Aiming"))and(b*z.Slider[

-- [frag 0519 @ offset 3048989] (91 bytes)
))and(b*z.Slider['Adjust Size']:getValue())or b;local b=e[1][e[3]]+(l-e[1][e[3]])*z.Slider[

-- [frag 0520 @ offset 3049035] (105 bytes)
]:getValue())or b;local b=e[1][e[3]]+(l-e[1][e[3]])*z.Slider["Adjust Speed"]:getValue();local l=z.Slider[

-- [frag 0521 @ offset 3049127] (75 bytes)
]:getValue();local l=z.Slider['FOV Thickness']:getValue();local y=z.Slider[

-- [frag 0522 @ offset 3049190] (111 bytes)
]:getValue();local y=z.Slider["FOV Outline Thickness"]:getValue();t.Radius=b+(l/2)+(y/2);else local b=z.Slider[

-- [frag 0523 @ offset 3049281] (103 bytes)
]:getValue();t.Radius=b+(l/2)+(y/2);else local b=z.Slider['FOV Thickness']:getValue();local l=z.Slider[

-- [frag 0524 @ offset 3049365] (228 bytes)
]:getValue();local l=z.Slider["FOV Outline Thickness"]:getValue();t.Radius=z.Slider["FOV Size"]:getValue()+(b/2)+(l/2);end;end;if o[1][o[3]]then local t=o[1][o[3]];local b=z.Toggle["FOV Lock Center"]:getState();local l=z.Toggle[

-- [frag 0525 @ offset 3049458] (31 bytes)
]:getValue();t.Radius=z.Slider[

-- [frag 0526 @ offset 3049515] (87 bytes)
]:getValue()+(b/2)+(l/2);end;end;if o[1][o[3]]then local t=o[1][o[3]];local b=z.Toggle[

-- [frag 0527 @ offset 3049650] (318 bytes)
]:getState();local l=z.Toggle['FOV Effects']:getState();if b then t.Position=Vector2.new(M.ViewportSize.X/2,M.ViewportSize.Y/2);else t.Position=Vector2.new(X.X+c.X,X.Y+c.Y);end;t.Visible=J[1][J[3]];t.Color=Q;t.Thickness=V;t.Transparency=E;t.Filled=u;t.NumSides=128;t.ZIndex=2;if l then local b=tick();local l=z.Slider[

-- [frag 0528 @ offset 3049712] (319 bytes)
]:getState();if b then t.Position=Vector2.new(M.ViewportSize.X/2,M.ViewportSize.Y/2);else t.Position=Vector2.new(X.X+c.X,X.Y+c.Y);end;t.Visible=J[1][J[3]];t.Color=Q;t.Thickness=V;t.Transparency=E;t.Filled=u;t.NumSides=128;t.ZIndex=2;if l then local b=tick();local l=z.Slider["Effect Speed"]:getValue();local y=z.Slider[

-- [frag 0529 @ offset 3050026] (201 bytes)
]:getValue();local y=z.Slider['Effect Intensity']:getValue();local U=math.sin(b*l)*y+(1-y);local C=math.sin(b*l*0.7)*y+(1-y);if p:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or d:GetAttribute(

-- [frag 0530 @ offset 3050103] (1067 bytes)
]:getValue();local U=math.sin(b*l)*y+(1-y);local C=math.sin(b*l*0.7)*y+(1-y);if p:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or d:GetAttribute("Aiming")then t.Color=Q:Lerp(Color3.new(1,1,1),0.5);t.Thickness=V+1;t.Transparency=E*0.3;else t.Color=Q:Lerp(Color3.new(1,1,1),C*0.3);t.Transparency=E*U;end;end;if z.Toggle["FOV Auto Adjust"]:getState()then local b=i;local l=(p:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or d:GetAttribute("Aiming"))and(b*z.Slider["Adjust Size"]:getValue())or b;e[1][e[3]]=e[1][e[3]]+(l-e[1][e[3]])*z.Slider["Adjust Speed"]:getValue();t.Radius=e[1][e[3]];else e[1][e[3]]=i;t.Radius=e[1][e[3]];end;end;if L[1][L[3]]then local i=L[1][L[3]];local t=z.Toggle["FOV Effects"]:getState();i.Visible=G[1][G[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if o[1][o[3]]and J[1][J[3]]then local L=o[1][o[3]];i.Position=Vector2.new(L.Position.X,L.Position.Y+L.Radius+8);local L=z.ColorPicker["FOV Color"]:getColor();i.Color=L:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if t then local t=tick();local b=z.Slider[

-- [frag 0531 @ offset 3050465] (109 bytes)
]:getState()then local b=i;local l=(p:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or d:GetAttribute(

-- [frag 0532 @ offset 3050650] (64 bytes)
]:getValue())or b;e[1][e[3]]=e[1][e[3]]+(l-e[1][e[3]])*z.Slider[

-- [frag 0533 @ offset 3050758] (133 bytes)
]:getValue();t.Radius=e[1][e[3]];else e[1][e[3]]=i;t.Radius=e[1][e[3]];end;end;if L[1][L[3]]then local i=L[1][L[3]];local t=z.Toggle[

-- [frag 0534 @ offset 3050943] (216 bytes)
]:getState();i.Visible=G[1][G[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if o[1][o[3]]and J[1][J[3]]then local L=o[1][o[3]];i.Position=Vector2.new(L.Position.X,L.Position.Y+L.Radius+8);local L=z.ColorPicker[

-- [frag 0535 @ offset 3051180] (170 bytes)
]:getColor();i.Color=L:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if t then local t=tick();local b=z.Slider['Effect Speed']:getValue();local l=z.Slider[

-- [frag 0536 @ offset 3051341] (253 bytes)
]:getValue();local l=z.Slider["Effect Intensity"]:getValue();local o=math.sin(t*b*0.8)*l+(1-l);i.Color=L:Lerp(Color3.new(1,1,1),o);end;else i.Position=Vector2.new(X.X+c.X,X.Y+c.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text=

-- [frag 0537 @ offset 3051418] (348 bytes)
]:getValue();local o=math.sin(t*b*0.8)*l+(1-l);i.Color=L:Lerp(Color3.new(1,1,1),o);end;else i.Position=Vector2.new(X.X+c.X,X.Y+c.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text='Max Hub';end;if F[1][F[3]]>0.1 and z.Toggle['Instant Reload']:getState()then local i=K.Events.GNX_R;local t=B.Character:FindFirstChildOfClass(

-- [frag 0538 @ offset 3051720] (220 bytes)
]:getState()then local i=K.Events.GNX_R;local t=B.Character:FindFirstChildOfClass("Tool");i:FireServer(tick(),"KLWE89U0",t);i:FireServer(tick(),"KLWE89U0",t);F[1][F[3]]=tick();end;local i=K.CharStats[B.Name];if z.Toggle[

-- [frag 0539 @ offset 3051898] (971 bytes)
,t);F[1][F[3]]=tick();end;local i=K.CharStats[B.Name];if z.Toggle['No Ragdoll']:getState()then i.RagdollTime.Value=0;i.Grabbed.Value=false;i.RagdollTime.RagdollSwitch2.Value=false;i.RagdollTime.RagdollTime2.Value=0;i.RagdollTime.SRagdolled.Value=false;i.Downed.Value=false;i.Handcuffed.Value=false;i.Grabbed.Value=false;i.RagdollTime.RagdollSwitch.Value=false;i.RagdollTime.SRagdolled.Value=false;j:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true);j:SetStateEnabled(Enum.HumanoidStateType.Swimming,true);j:SetStateEnabled(Enum.HumanoidStateType.Running,true);j:SetStateEnabled(Enum.HumanoidStateType.Jumping,true);j:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true);j:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true);j:SetStateEnabled(Enum.HumanoidStateType.Freefall,true);j:SetStateEnabled(Enum.HumanoidStateType.Landed,true);j:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false);for t,t in next,d:GetChildren()do if t:FindFirstChild(t.Name..

-- [frag 0540 @ offset 3052006] (1039 bytes)
]:getState()then i.RagdollTime.Value=0;i.Grabbed.Value=false;i.RagdollTime.RagdollSwitch2.Value=false;i.RagdollTime.RagdollTime2.Value=0;i.RagdollTime.SRagdolled.Value=false;i.Downed.Value=false;i.Handcuffed.Value=false;i.Grabbed.Value=false;i.RagdollTime.RagdollSwitch.Value=false;i.RagdollTime.SRagdolled.Value=false;j:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true);j:SetStateEnabled(Enum.HumanoidStateType.Swimming,true);j:SetStateEnabled(Enum.HumanoidStateType.Running,true);j:SetStateEnabled(Enum.HumanoidStateType.Jumping,true);j:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true);j:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true);j:SetStateEnabled(Enum.HumanoidStateType.Freefall,true);j:SetStateEnabled(Enum.HumanoidStateType.Landed,true);j:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false);for t,t in next,d:GetChildren()do if t:FindFirstChild(t.Name.."Collider")then t:FindFirstChild(t.Name.."Collider").CanCollide=false;end;end;end;if i:FindFirstChild("AccelerationModifier")and i:FindFirstChild(

-- [frag 0541 @ offset 3053071] (340 bytes)
)and i:FindFirstChild('AccelerationModifier2')then if z.Toggle['No Inertia']:getState()then i.AccelerationModifier.Value=9e9;i.AccelerationModifier2.Value=9e9;else i.AccelerationModifier.Value=1;i.AccelerationModifier2.Value=1;end;if z.Toggle['No Shoot Slowdown']:getState()then for i,i in pairs(w)do i.WS=18;end;end;end;local i=z.Dropdown[

-- [frag 0542 @ offset 3053216] (168 bytes)
]:getState()then i.AccelerationModifier.Value=9e9;i.AccelerationModifier2.Value=9e9;else i.AccelerationModifier.Value=1;i.AccelerationModifier2.Value=1;end;if z.Toggle[

-- [frag 0543 @ offset 3053437] (120 bytes)
]:getState()then for i,i in pairs(w)do i.WS=18;end;end;end;local i=z.Dropdown["Aim Modes"]:getValue();if d:GetAttribute(

-- [frag 0544 @ offset 3053542] (53 bytes)
]:getValue();if d:GetAttribute('Aiming')and z.Toggle[

-- [frag 0545 @ offset 3053589] (56 bytes)
)and z.Toggle["Aim Enabled"]:getState()and table.find(i,

-- [frag 0546 @ offset 3053619] (60 bytes)
]:getState()and table.find(i,'Aimbot')then local i=z.Toggle[

-- [frag 0547 @ offset 3053681] (61 bytes)
)then local i=z.Toggle["FOV Enabled"]:getState()and(z.Slider[

-- [frag 0548 @ offset 3053729] (2845 bytes)
]:getState()and(z.Slider['FOV Size']:getValue()*1.25)or 2560;local t=x:GetTarget();if t then local j,L=M:WorldToViewportPoint(t.Position);local b=p:GetMouseLocation();local l=(Vector2.new(j.X,j.Y)-b).Magnitude;if l<=i and L then local i=t.Parent;if i and i:FindFirstChild(Z[1][Z[3]])then local Z=i.HumanoidRootPart.CFrame+(i.HumanoidRootPart.Velocity*0);local i=M.CFrame.Position;local t=TweenInfo.new(z.Slider['Aimbot Smoothing']:getValue(),Enum.EasingStyle.Sine,Enum.EasingDirection.Out);local j={CFrame=CFrame.lookAt(i,Z.Position)};local i=R:Create(M,t,j);i:Play();p.MouseBehavior=Enum.MouseBehavior.LockCenter;end;end;end;end;if z.Toggle['Mod Detector']:getState()and tick()-f[1][f[3]]>=2 and not UserIsPoor then n();end;end;end,ss=string.sub,_=function(i)local Z=i[2];local t=i[4];local j=i[1];local p=i[0];local L=i[3];return function()L();if p.Visuals.Bubble then j.Size=Vector3.new(p.AutoBlocker.Range*2,p.AutoBlocker.Range*2,p.AutoBlocker.Range*2);j.CFrame=t.Character.HumanoidRootPart.CFrame;end;if p.Visuals.RainbowTitle then Z();end;end;end,_i=function(i,Z,t,j,p)local L;(Z)[0X11]=nil;j=43;repeat L,j=i:ai(j,t,p,Z);if L~=51451 then else break;end;until false;Z[0X12]=(nil);Z[19]=nil;Z[0B10100]=(nil);Z[21]=nil;j=(0B101010);repeat if j<=1 then Z[0X13]=(p.readf32);if not t[13738]then j=(-1780851836+(i.Sh((i.sh(t[0X1Dc2]-i.ts[0x4],(t[0X1E35])))+t[0X6aE]+t[0x447_D]+i.ts[3])));t[13738]=(j);else j=i:Oi(j,t);end;else if j~=0x0__06c then Z[0X12__]=p.readu32;if not(not t[15288])then j=t[0x3bB8];else(t)[0X4bB7_]=-2483027850+(i.ih((i.Ch((i.ih((i.vh(t[9775]+i.ts[4],t[0X431C],j))))+i.ts[0B110],(t[7733])))));j=-0X6A713FFF+(i.Ch(t[17533]+i.ts[5]-t[0X1_a10]-i.ts[0x4]+i.ts[6]+i.ts[0X7],(t[15382])));(t)[0X3b__b8]=j;end;else(Z)[0B1__0100]=p[i.bs];(Z)[0X15]=p.writeu32;break;end;end;until false;return j;end,ws=function(i)local Z=i[1];local t=i[16];local j=i[40];local p=i[30];local L=i[47];local b=i[8];local f=i[18];local l=i[51];local o=i[14];local z=i[50];local c=i[56];local y=i[26];local n=i[6];local X=i[44];local M=i[38];local R=i[37];local w=i[21];local K=i[62];local e=i[60];local U=i[20];local C=i[41];local d=i[9];local G=i[17];local x=i[52];local J=i[0];local B=i[53];local F=i[10];local Q=i[28];local V=i[27];local u=i[4];local E=i[33];local s=i[61];local I=i[49];local v=i[36];local W=i[42];local H=i[48];local m=i[45];local q=i[35];local P=i[63];local O=i[57];local r=i[39];local T=i[32];local Y=i[2];local A=i[15];local k=i[43];local h=i[12];local N=i[7];local D=i[3];local S=i[54];local g=i[11];local a=i[13];local Zf=i[31];local tf=i[46];local jf=i[5];local pf=i[58];local Lf=i[22];local bf=i[29];local ff=i[59];local lf=i[23];local of=i[55];local zf=i[34];local cf=i[25];local yf=i[19];local nf=i[24];return function()local i=N.Slider['FOV Size']:getValue();local Xf=N.ColorPicker['FOV Color']:getColor();local Mf=N.Slider[

-- [frag 0549 @ offset 3053788] (376 bytes)
]:getValue()*1.25)or 2560;local t=x:GetTarget();if t then local j,L=M:WorldToViewportPoint(t.Position);local b=p:GetMouseLocation();local l=(Vector2.new(j.X,j.Y)-b).Magnitude;if l<=i and L then local i=t.Parent;if i and i:FindFirstChild(Z[1][Z[3]])then local Z=i.HumanoidRootPart.CFrame+(i.HumanoidRootPart.Velocity*0);local i=M.CFrame.Position;local t=TweenInfo.new(z.Slider[

-- [frag 0550 @ offset 3054198] (213 bytes)
]:getValue(),Enum.EasingStyle.Sine,Enum.EasingDirection.Out);local j={CFrame=CFrame.lookAt(i,Z.Position)};local i=R:Create(M,t,j);i:Play();p.MouseBehavior=Enum.MouseBehavior.LockCenter;end;end;end;end;if z.Toggle[

-- [frag 0551 @ offset 3054444] (2101 bytes)
]:getState()and tick()-f[1][f[3]]>=2 and not UserIsPoor then n();end;end;end,ss=string.sub,_=function(i)local Z=i[2];local t=i[4];local j=i[1];local p=i[0];local L=i[3];return function()L();if p.Visuals.Bubble then j.Size=Vector3.new(p.AutoBlocker.Range*2,p.AutoBlocker.Range*2,p.AutoBlocker.Range*2);j.CFrame=t.Character.HumanoidRootPart.CFrame;end;if p.Visuals.RainbowTitle then Z();end;end;end,_i=function(i,Z,t,j,p)local L;(Z)[0X11]=nil;j=43;repeat L,j=i:ai(j,t,p,Z);if L~=51451 then else break;end;until false;Z[0X12]=(nil);Z[19]=nil;Z[0B10100]=(nil);Z[21]=nil;j=(0B101010);repeat if j<=1 then Z[0X13]=(p.readf32);if not t[13738]then j=(-1780851836+(i.Sh((i.sh(t[0X1Dc2]-i.ts[0x4],(t[0X1E35])))+t[0X6aE]+t[0x447_D]+i.ts[3])));t[13738]=(j);else j=i:Oi(j,t);end;else if j~=0x0__06c then Z[0X12__]=p.readu32;if not(not t[15288])then j=t[0x3bB8];else(t)[0X4bB7_]=-2483027850+(i.ih((i.Ch((i.ih((i.vh(t[9775]+i.ts[4],t[0X431C],j))))+i.ts[0B110],(t[7733])))));j=-0X6A713FFF+(i.Ch(t[17533]+i.ts[5]-t[0X1_a10]-i.ts[0x4]+i.ts[6]+i.ts[0X7],(t[15382])));(t)[0X3b__b8]=j;end;else(Z)[0B1__0100]=p[i.bs];(Z)[0X15]=p.writeu32;break;end;end;until false;return j;end,ws=function(i)local Z=i[1];local t=i[16];local j=i[40];local p=i[30];local L=i[47];local b=i[8];local f=i[18];local l=i[51];local o=i[14];local z=i[50];local c=i[56];local y=i[26];local n=i[6];local X=i[44];local M=i[38];local R=i[37];local w=i[21];local K=i[62];local e=i[60];local U=i[20];local C=i[41];local d=i[9];local G=i[17];local x=i[52];local J=i[0];local B=i[53];local F=i[10];local Q=i[28];local V=i[27];local u=i[4];local E=i[33];local s=i[61];local I=i[49];local v=i[36];local W=i[42];local H=i[48];local m=i[45];local q=i[35];local P=i[63];local O=i[57];local r=i[39];local T=i[32];local Y=i[2];local A=i[15];local k=i[43];local h=i[12];local N=i[7];local D=i[3];local S=i[54];local g=i[11];local a=i[13];local Zf=i[31];local tf=i[46];local jf=i[5];local pf=i[58];local Lf=i[22];local bf=i[29];local ff=i[59];local lf=i[23];local of=i[55];local zf=i[34];local cf=i[25];local yf=i[19];local nf=i[24];return function()local i=N.Slider[

-- [frag 0552 @ offset 3056572] (36 bytes)
]:getValue();local Xf=N.ColorPicker[

-- [frag 0553 @ offset 3056634] (77 bytes)
]:getColor();local Mf=N.Slider["FOV Thickness"]:getValue();local Rf=N.Toggle[

-- [frag 0554 @ offset 3056693] (162 bytes)
]:getValue();local Rf=N.Toggle['FOV Filled']:getState();local wf=N.Slider['FOV Transparency']:getValue();local Kf=N.Keybind['Fly']:getKeybind();local ef=N.Slider[

-- [frag 0555 @ offset 3056748] (31 bytes)
]:getState();local wf=N.Slider[

-- [frag 0556 @ offset 3056817] (32 bytes)
]:getValue();local Kf=N.Keybind[

-- [frag 0557 @ offset 3056858] (140 bytes)
]:getKeybind();local ef=N.Slider["Fly Speed"]:getValue();local Uf=N.Dropdown["Spectate Player"]:getValue();local Cf=J[1][J[3]]:WaitForChild(

-- [frag 0558 @ offset 3056922] (33 bytes)
]:getValue();local Uf=N.Dropdown[

-- [frag 0559 @ offset 3056981] (3518 bytes)
]:getValue();local Cf=J[1][J[3]]:WaitForChild('Humanoid');if Kf=='None'then Kf='Y';end;if N.Toggle['Spectate']:getState()then if Uf then local df=lf:FindFirstChild(Uf);if df and df.Character and df.Character:FindFirstChild(p[1][p[3]])then U[1][U[3]]=df;u.CameraSubject=df.Character.Humanoid;end;end;end;if N.Toggle['Free Cam']:getState()then if not a[1][a[3]]then a[1][a[3]]=true;K[1][K[3]]=u.CameraType;originalCameraSubject=u.CameraSubject;originalMouseBehavior=b.MouseBehavior;local K=Y.Character and Y.Character:FindFirstChild(p[1][p[3]])and Y.Character.HumanoidRootPart.CFrame;if K then local U=CFrame.new(u.CFrame.Position,u.CFrame.Position+K.LookVector);F[1][F[3]]=U;else F[1][F[3]]=CFrame.new(u.CFrame.Position,u.CFrame.Position+Vector3.new(0,0,-1.0));end;freeCamSpeed=50;freeCamBoostMultiplier=3;freeCamMouseSensitivity=0.003;freeCamVelocity=Vector3.new(0,0,0);freeCamAcceleration=150;freeCamDeceleration=10;if Y.Character and Y.Character:FindFirstChild('Humanoid')then originalWalkSpeed=Y.Character.Humanoid.WalkSpeed;originalJumpPower=Y.Character.Humanoid.JumpPower;originalPlatformStand=Y.Character.Humanoid.PlatformStand;Y.Character.Humanoid.PlatformStand=true;Y.Character.Humanoid.WalkSpeed=0;Y.Character.Humanoid.JumpPower=0;end;u.CameraType=Enum.CameraType.Scriptable;u.CFrame=F[1][F[3]];end;local K=z.RenderStepped:Wait();local z=Vector3.new(0,0,0);local U=freeCamSpeed;local Uf=J[1][J[3]]:GetAttribute('Aiming');if Uf and b.MouseBehavior~=Enum.MouseBehavior.LockCenter then b.MouseBehavior=Enum.MouseBehavior.LockCenter;elseif not Uf and b.MouseBehavior==Enum.MouseBehavior.LockCenter then b.MouseBehavior=originalMouseBehavior;end;if b:IsKeyDown(Enum.KeyCode.LeftShift)then U=U*freeCamBoostMultiplier;end;if b:IsKeyDown(Enum.KeyCode.W)then z=z+F[1][F[3]].LookVector;end;if b:IsKeyDown(Enum.KeyCode.S)then z=z-F[1][F[3]].LookVector;end;if b:IsKeyDown(Enum.KeyCode.A)then z=z-F[1][F[3]].RightVector;end;if b:IsKeyDown(Enum.KeyCode.D)then z=z+F[1][F[3]].RightVector;end;if b:IsKeyDown(Enum.KeyCode.E)or b:IsKeyDown(Enum.KeyCode.Space)then z=z+Vector3.new(0,1,0);end;if b:IsKeyDown(Enum.KeyCode.Q)or b:IsKeyDown(Enum.KeyCode.LeftControl)then z=z-Vector3.new(0,1,0);end;if z.Magnitude>0 then z=z.Unit;local df=z*U;freeCamVelocity=freeCamVelocity:Lerp(df,freeCamAcceleration*K);else freeCamVelocity=freeCamVelocity:Lerp(Vector3.new(0,0,0),freeCamDeceleration*K);end;F[1][F[3]]=F[1][F[3]]+(freeCamVelocity*K);if Uf then local z=b:GetMouseDelta();local K=-z.Y*freeCamMouseSensitivity;local U=-z.X*freeCamMouseSensitivity;F[1][F[3]]=F[1][F[3]]*CFrame.Angles(K,0,0);F[1][F[3]]=F[1][F[3]]*CFrame.fromAxisAngle(Vector3.new(0,1,0),U);end;u.CFrame=F[1][F[3]];end;if not a[1][a[3]]then flyActive=flyActive or false;if not flyKeyConnection then flyKeyConnection=b.InputBegan:Connect(function(z,K)if not K and z.KeyCode==Enum.KeyCode[Kf]then flyActive=not flyActive;end;end);end;if flyActive then local z=Y.Character;if z and z:FindFirstChild(p[1][p[3]])then local K=z.HumanoidRootPart;K.Velocity=Vector3.new(0,2,0);if b:IsKeyDown(Enum.KeyCode.W)then K.CFrame=K.CFrame+(yf.CFrame.LookVector*ef);elseif b:IsKeyDown(Enum.KeyCode.S)then K.CFrame=K.CFrame+(-yf.CFrame.LookVector*ef);elseif b:IsKeyDown(Enum.KeyCode.A)then K.CFrame=K.CFrame+(-yf.CFrame.RightVector*ef);elseif b:IsKeyDown(Enum.KeyCode.D)then K.CFrame=K.CFrame+(yf.CFrame.RightVector*ef);end;end;end;end;if N.Toggle['tweaker mode']:getState()then local z=Y.Character;if z and z:FindFirstChild(p[1][p[3]])then local p=z.HumanoidRootPart;C[1][C[3]]=N.Slider[

-- [frag 0560 @ offset 3057133] (206 bytes)
]:getState()then if Uf then local df=lf:FindFirstChild(Uf);if df and df.Character and df.Character:FindFirstChild(p[1][p[3]])then U[1][U[3]]=df;u.CameraSubject=df.Character.Humanoid;end;end;end;if N.Toggle[

-- [frag 0561 @ offset 3057362] (638 bytes)
]:getState()then if not a[1][a[3]]then a[1][a[3]]=true;K[1][K[3]]=u.CameraType;originalCameraSubject=u.CameraSubject;originalMouseBehavior=b.MouseBehavior;local K=Y.Character and Y.Character:FindFirstChild(p[1][p[3]])and Y.Character.HumanoidRootPart.CFrame;if K then local U=CFrame.new(u.CFrame.Position,u.CFrame.Position+K.LookVector);F[1][F[3]]=U;else F[1][F[3]]=CFrame.new(u.CFrame.Position,u.CFrame.Position+Vector3.new(0,0,-1.0));end;freeCamSpeed=50;freeCamBoostMultiplier=3;freeCamMouseSensitivity=0.003;freeCamVelocity=Vector3.new(0,0,0);freeCamAcceleration=150;freeCamDeceleration=10;if Y.Character and Y.Character:FindFirstChild(

-- [frag 0562 @ offset 3058023] (447 bytes)
)then originalWalkSpeed=Y.Character.Humanoid.WalkSpeed;originalJumpPower=Y.Character.Humanoid.JumpPower;originalPlatformStand=Y.Character.Humanoid.PlatformStand;Y.Character.Humanoid.PlatformStand=true;Y.Character.Humanoid.WalkSpeed=0;Y.Character.Humanoid.JumpPower=0;end;u.CameraType=Enum.CameraType.Scriptable;u.CFrame=F[1][F[3]];end;local K=z.RenderStepped:Wait();local z=Vector3.new(0,0,0);local U=freeCamSpeed;local Uf=J[1][J[3]]:GetAttribute(

-- [frag 0563 @ offset 3058483] (1950 bytes)
);if Uf and b.MouseBehavior~=Enum.MouseBehavior.LockCenter then b.MouseBehavior=Enum.MouseBehavior.LockCenter;elseif not Uf and b.MouseBehavior==Enum.MouseBehavior.LockCenter then b.MouseBehavior=originalMouseBehavior;end;if b:IsKeyDown(Enum.KeyCode.LeftShift)then U=U*freeCamBoostMultiplier;end;if b:IsKeyDown(Enum.KeyCode.W)then z=z+F[1][F[3]].LookVector;end;if b:IsKeyDown(Enum.KeyCode.S)then z=z-F[1][F[3]].LookVector;end;if b:IsKeyDown(Enum.KeyCode.A)then z=z-F[1][F[3]].RightVector;end;if b:IsKeyDown(Enum.KeyCode.D)then z=z+F[1][F[3]].RightVector;end;if b:IsKeyDown(Enum.KeyCode.E)or b:IsKeyDown(Enum.KeyCode.Space)then z=z+Vector3.new(0,1,0);end;if b:IsKeyDown(Enum.KeyCode.Q)or b:IsKeyDown(Enum.KeyCode.LeftControl)then z=z-Vector3.new(0,1,0);end;if z.Magnitude>0 then z=z.Unit;local df=z*U;freeCamVelocity=freeCamVelocity:Lerp(df,freeCamAcceleration*K);else freeCamVelocity=freeCamVelocity:Lerp(Vector3.new(0,0,0),freeCamDeceleration*K);end;F[1][F[3]]=F[1][F[3]]+(freeCamVelocity*K);if Uf then local z=b:GetMouseDelta();local K=-z.Y*freeCamMouseSensitivity;local U=-z.X*freeCamMouseSensitivity;F[1][F[3]]=F[1][F[3]]*CFrame.Angles(K,0,0);F[1][F[3]]=F[1][F[3]]*CFrame.fromAxisAngle(Vector3.new(0,1,0),U);end;u.CFrame=F[1][F[3]];end;if not a[1][a[3]]then flyActive=flyActive or false;if not flyKeyConnection then flyKeyConnection=b.InputBegan:Connect(function(z,K)if not K and z.KeyCode==Enum.KeyCode[Kf]then flyActive=not flyActive;end;end);end;if flyActive then local z=Y.Character;if z and z:FindFirstChild(p[1][p[3]])then local K=z.HumanoidRootPart;K.Velocity=Vector3.new(0,2,0);if b:IsKeyDown(Enum.KeyCode.W)then K.CFrame=K.CFrame+(yf.CFrame.LookVector*ef);elseif b:IsKeyDown(Enum.KeyCode.S)then K.CFrame=K.CFrame+(-yf.CFrame.LookVector*ef);elseif b:IsKeyDown(Enum.KeyCode.A)then K.CFrame=K.CFrame+(-yf.CFrame.RightVector*ef);elseif b:IsKeyDown(Enum.KeyCode.D)then K.CFrame=K.CFrame+(yf.CFrame.RightVector*ef);end;end;end;end;if N.Toggle[

-- [frag 0564 @ offset 3060463] (602 bytes)
]:getState()then local z=Y.Character;if z and z:FindFirstChild(p[1][p[3]])then local p=z.HumanoidRootPart;C[1][C[3]]=N.Slider["Fly Smoothing"]:getValue();local z=Vector3.new(0,2,0);if b:IsKeyDown(Enum.KeyCode.W)then z=z+(yf.CFrame.LookVector*ef);end;if b:IsKeyDown(Enum.KeyCode.S)then z=z+(-yf.CFrame.LookVector*ef);end;if b:IsKeyDown(Enum.KeyCode.A)then z=z+(-yf.CFrame.RightVector*ef);end;if b:IsKeyDown(Enum.KeyCode.D)then z=z+(yf.CFrame.RightVector*ef);end;o[1][o[3]]=o[1][o[3]]:lerp(z,C[1][C[3]]);p.Velocity=o[1][o[3]];end;end;if N.Toggle["Ambient Enabled"]:getState()then A.Ambient=N.ColorPicker[

-- [frag 0565 @ offset 3060613] (403 bytes)
]:getValue();local z=Vector3.new(0,2,0);if b:IsKeyDown(Enum.KeyCode.W)then z=z+(yf.CFrame.LookVector*ef);end;if b:IsKeyDown(Enum.KeyCode.S)then z=z+(-yf.CFrame.LookVector*ef);end;if b:IsKeyDown(Enum.KeyCode.A)then z=z+(-yf.CFrame.RightVector*ef);end;if b:IsKeyDown(Enum.KeyCode.D)then z=z+(yf.CFrame.RightVector*ef);end;o[1][o[3]]=o[1][o[3]]:lerp(z,C[1][C[3]]);p.Velocity=o[1][o[3]];end;end;if N.Toggle[

-- [frag 0566 @ offset 3061069] (92 bytes)
]:getState()then A.Ambient=N.ColorPicker['Ambient Color']:getColor();jf.Color=N.ColorPicker[

-- [frag 0567 @ offset 3061150] (90 bytes)
]:getColor();jf.Color=N.ColorPicker["Atmosphere Color"]:getColor();jf.Decay=N.ColorPicker[

-- [frag 0568 @ offset 3061232] (91 bytes)
]:getColor();jf.Decay=N.ColorPicker['Atmosphere Decay Color']:getColor();jf.Glare=N.Slider[

-- [frag 0569 @ offset 3061313] (79 bytes)
]:getColor();jf.Glare=N.Slider["Atmosphere Glare"]:getValue();jf.Haze=N.Slider[

-- [frag 0570 @ offset 3061394] (129 bytes)
]:getValue();jf.Haze=N.Slider['Atmosphere Haze']:getValue();jf.Density=N.Slider['Atmosphere Density']:getValue();end;if N.Toggle[

-- [frag 0571 @ offset 3061467] (33 bytes)
]:getValue();jf.Density=N.Slider[

-- [frag 0572 @ offset 3061554] (278 bytes)
]:getValue();end;if N.Toggle["Fullbright"]:getState()then A.Ambient=Color3.new(1,1,1);A.OutdoorAmbient=Color3.new(1,1,1);A.Brightness=2;end;if N.Toggle["No Fog"]:getState()then A.FogStart=0;A.FogEnd=9e9;jf.Density=0;end;if of[1][of[3]]then local p=of[1][of[3]];local o=N.Toggle[

-- [frag 0573 @ offset 3061619] (111 bytes)
]:getState()then A.Ambient=Color3.new(1,1,1);A.OutdoorAmbient=Color3.new(1,1,1);A.Brightness=2;end;if N.Toggle[

-- [frag 0574 @ offset 3061754] (165 bytes)
]:getState()then A.FogStart=0;A.FogEnd=9e9;jf.Density=0;end;if of[1][of[3]]then local p=of[1][of[3]];local o=N.Toggle['FOV Lock Center']:getState();local z=N.Toggle[

-- [frag 0575 @ offset 3061909] (234 bytes)
]:getState();local z=N.Toggle["FOV Effects"]:getState();if o then p.Position=Vector2.new(u.ViewportSize.X/2,u.ViewportSize.Y/2);else p.Position=Vector2.new(g.X+D.X,g.Y+D.Y);end;p.Visible=M[1][M[3]]and r[1][r[3]];p.Color=N.ColorPicker[

-- [frag 0576 @ offset 3061977] (304 bytes)
]:getState();if o then p.Position=Vector2.new(u.ViewportSize.X/2,u.ViewportSize.Y/2);else p.Position=Vector2.new(g.X+D.X,g.Y+D.Y);end;p.Visible=M[1][M[3]]and r[1][r[3]];p.Color=N.ColorPicker['FOV Outline Color']:getColor();p.Thickness=N.Slider['FOV Outline Thickness']:getValue();p.Transparency=N.Slider[

-- [frag 0577 @ offset 3062215] (34 bytes)
]:getColor();p.Thickness=N.Slider[

-- [frag 0578 @ offset 3062303] (159 bytes)
]:getValue();p.Transparency=N.Slider["FOV Outline Transparency"]:getValue();p.Filled=false;p.NumSides=128;p.ZIndex=1;if z then local o=tick();local z=N.Slider[

-- [frag 0579 @ offset 3062397] (140 bytes)
]:getValue();p.Filled=false;p.NumSides=128;p.ZIndex=1;if z then local o=tick();local z=N.Slider['Effect Speed']:getValue();local M=N.Slider[

-- [frag 0580 @ offset 3062515] (176 bytes)
]:getValue();local M=N.Slider["Effect Intensity"]:getValue();local K=math.sin(o*z)*M+(1-M);if b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or J[1][J[3]]:GetAttribute(

-- [frag 0581 @ offset 3062601] (163 bytes)
]:getValue();local K=math.sin(o*z)*M+(1-M);if b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or J[1][J[3]]:GetAttribute('Aiming')then p.Thickness=N.Slider[

-- [frag 0582 @ offset 3062749] (163 bytes)
)then p.Thickness=N.Slider["FOV Outline Thickness"]:getValue()+0.5;p.Transparency=N.Slider["FOV Outline Transparency"]:getValue()*0.3;else p.Transparency=N.Slider[

-- [frag 0583 @ offset 3062834] (41 bytes)
]:getValue()+0.5;p.Transparency=N.Slider[

-- [frag 0584 @ offset 3062937] (107 bytes)
]:getValue()*0.3;else p.Transparency=N.Slider['FOV Outline Transparency']:getValue()*K;end;end;if N.Toggle[

-- [frag 0585 @ offset 3063049] (200 bytes)
]:getValue()*K;end;end;if N.Toggle["FOV Auto Adjust"]:getState()then local o=N.Slider["FOV Size"]:getValue();local z=(b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or J[1][J[3]]:GetAttribute(

-- [frag 0586 @ offset 3063125] (34 bytes)
]:getState()then local o=N.Slider[

-- [frag 0587 @ offset 3063176] (129 bytes)
]:getValue();local z=(b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or J[1][J[3]]:GetAttribute('Aiming'))and(o*N.Slider[

-- [frag 0588 @ offset 3063294] (91 bytes)
))and(o*N.Slider["Adjust Size"]:getValue())or o;local o=h[1][h[3]]+(z-h[1][h[3]])*N.Slider[

-- [frag 0589 @ offset 3063342] (105 bytes)
]:getValue())or o;local o=h[1][h[3]]+(z-h[1][h[3]])*N.Slider['Adjust Speed']:getValue();local z=N.Slider[

-- [frag 0590 @ offset 3063438] (75 bytes)
]:getValue();local z=N.Slider["FOV Thickness"]:getValue();local M=N.Slider[

-- [frag 0591 @ offset 3063502] (156 bytes)
]:getValue();local M=N.Slider['FOV Outline Thickness']:getValue();p.Radius=o+(z/2)+(M/2);else local o=N.Slider['FOV Thickness']:getValue();local z=N.Slider[

-- [frag 0592 @ offset 3063592] (58 bytes)
]:getValue();p.Radius=o+(z/2)+(M/2);else local o=N.Slider[

-- [frag 0593 @ offset 3063698] (181 bytes)
]:getValue();local z=N.Slider["FOV Outline Thickness"]:getValue();p.Radius=N.Slider["FOV Size"]:getValue()+(o/2)+(z/2);end;end;if Q[1][Q[3]]then local p=Q[1][Q[3]];local o=N.Toggle[

-- [frag 0594 @ offset 3063786] (31 bytes)
]:getValue();p.Radius=N.Slider[

-- [frag 0595 @ offset 3063836] (426 bytes)
]:getValue()+(o/2)+(z/2);end;end;if Q[1][Q[3]]then local p=Q[1][Q[3]];local o=N.Toggle['FOV Lock Center']:getState();local z=N.Toggle['FOV Effects']:getState();if o then p.Position=Vector2.new(u.ViewportSize.X/2,u.ViewportSize.Y/2);else p.Position=Vector2.new(g.X+D.X,g.Y+D.Y);end;p.Visible=r[1][r[3]];p.Color=Xf;p.Thickness=Mf;p.Transparency=wf;p.Filled=Rf;p.NumSides=128;p.ZIndex=2;if z then local o=tick();local z=N.Slider[

-- [frag 0596 @ offset 3063964] (30 bytes)
]:getState();local z=N.Toggle[

-- [frag 0597 @ offset 3064028] (323 bytes)
]:getState();if o then p.Position=Vector2.new(u.ViewportSize.X/2,u.ViewportSize.Y/2);else p.Position=Vector2.new(g.X+D.X,g.Y+D.Y);end;p.Visible=r[1][r[3]];p.Color=Xf;p.Thickness=Mf;p.Transparency=wf;p.Filled=Rf;p.NumSides=128;p.ZIndex=2;if z then local o=tick();local z=N.Slider["Effect Speed"]:getValue();local M=N.Slider[

-- [frag 0598 @ offset 3064340] (210 bytes)
]:getValue();local M=N.Slider['Effect Intensity']:getValue();local K=math.sin(o*z)*M+(1-M);local U=math.sin(o*z*0.7)*M+(1-M);if b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or J[1][J[3]]:GetAttribute(

-- [frag 0599 @ offset 3064406] (500 bytes)
]:getValue();local K=math.sin(o*z)*M+(1-M);local U=math.sin(o*z*0.7)*M+(1-M);if b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or J[1][J[3]]:GetAttribute("Aiming")then p.Color=Xf:Lerp(Color3.new(1,1,1),0.5);p.Thickness=Mf+1;p.Transparency=wf*0.3;else p.Color=Xf:Lerp(Color3.new(1,1,1),U*0.3);p.Transparency=wf*K;end;end;if N.Toggle["FOV Auto Adjust"]:getState()then local o=i;local z=(b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or J[1][J[3]]:GetAttribute("Aiming"))and(o*N.Slider[

-- [frag 0600 @ offset 3064791] (118 bytes)
]:getState()then local o=i;local z=(b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or J[1][J[3]]:GetAttribute(

-- [frag 0601 @ offset 3064925] (241 bytes)
))and(o*N.Slider['Adjust Size']:getValue())or o;h[1][h[3]]=h[1][h[3]]+(z-h[1][h[3]])*N.Slider['Adjust Speed']:getValue();p.Radius=h[1][h[3]];else h[1][h[3]]=i;p.Radius=h[1][h[3]];end;end;if I[1][I[3]]then local i=I[1][I[3]];local p=N.Toggle[

-- [frag 0602 @ offset 3064980] (64 bytes)
]:getValue())or o;h[1][h[3]]=h[1][h[3]]+(z-h[1][h[3]])*N.Slider[

-- [frag 0603 @ offset 3065084] (364 bytes)
]:getValue();p.Radius=h[1][h[3]];else h[1][h[3]]=i;p.Radius=h[1][h[3]];end;end;if I[1][I[3]]then local i=I[1][I[3]];local p=N.Toggle["FOV Effects"]:getState();i.Visible=zf[1][zf[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if Q[1][Q[3]]and r[1][r[3]]then local o=Q[1][Q[3]];i.Position=Vector2.new(o.Position.X,o.Position.Y+o.Radius+8);local o=N.ColorPicker[

-- [frag 0604 @ offset 3065246] (399 bytes)
]:getState();i.Visible=zf[1][zf[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if Q[1][Q[3]]and r[1][r[3]]then local o=Q[1][Q[3]];i.Position=Vector2.new(o.Position.X,o.Position.Y+o.Radius+8);local o=N.ColorPicker['FOV Color']:getColor();i.Color=o:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if p then local p=tick();local z=N.Slider['Effect Speed']:getValue();local M=N.Slider[

-- [frag 0605 @ offset 3065483] (126 bytes)
]:getColor();i.Color=o:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if p then local p=tick();local z=N.Slider[

-- [frag 0606 @ offset 3065644] (253 bytes)
]:getValue();local M=N.Slider["Effect Intensity"]:getValue();local K=math.sin(p*z*0.8)*M+(1-M);i.Color=o:Lerp(Color3.new(1,1,1),K);end;else i.Position=Vector2.new(g.X+D.X,g.Y+D.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text=

-- [frag 0607 @ offset 3065718] (231 bytes)
]:getValue();local K=math.sin(p*z*0.8)*M+(1-M);i.Color=o:Lerp(Color3.new(1,1,1),K);end;else i.Position=Vector2.new(g.X+D.X,g.Y+D.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text='Max Hub';end;if N.Toggle[

-- [frag 0608 @ offset 3065941] (121 bytes)
;end;if N.Toggle["Better Movement"]:getState()and not UserIsPoor then local i=Y.Character;local p=i and i:FindFirstChild(

-- [frag 0609 @ offset 3065994] (136 bytes)
]:getState()and not UserIsPoor then local i=Y.Character;local p=i and i:FindFirstChild('MovementHandler');if p then p.Disabled=N.Toggle[

-- [frag 0610 @ offset 3066120] (100 bytes)
);if p then p.Disabled=N.Toggle["Better Movement"]:getState()and not UserIsPoor;end;end;if N.Toggle[

-- [frag 0611 @ offset 3066202] (261 bytes)
]:getState()and not UserIsPoor;end;end;if N.Toggle['Instant Respawn']:getState()and Cf.Health<=0 and t:Cooldown('respawn_cooldown',5)and not UserIsPoor then cf.Respawn:FireServer();end;local i=os.clock();if i-f[1][f[3]]>=5 then f[1][f[3]]=i;e();end;if N.Toggle[

-- [frag 0612 @ offset 3066291] (44 bytes)
]:getState()and Cf.Health<=0 and t:Cooldown(

-- [frag 0613 @ offset 3066371] (423 bytes)
,5)and not UserIsPoor then cf.Respawn:FireServer();end;local i=os.clock();if i-f[1][f[3]]>=5 then f[1][f[3]]=i;e();end;if N.Toggle["Auto Apply Skin"]and N.Toggle["Auto Apply Skin"]:getState()then local p=G();local f=p and w.Skin[p];local o=bf();if p and f and o and W(f)and(T.SkinId~=p or T.SkinModel~=o.ViewModel)then ff(p);end;if p and H[1][H[3]].Skin~=p and(R[1][R[3]]~=p or i-x[1][x[3]]>=5)then Z();end;end;if N.Toggle[

-- [frag 0614 @ offset 3066599] (555 bytes)
]:getState()then local p=G();local f=p and w.Skin[p];local o=bf();if p and f and o and W(f)and(T.SkinId~=p or T.SkinModel~=o.ViewModel)then ff(p);end;if p and H[1][H[3]].Skin~=p and(R[1][R[3]]~=p or i-x[1][x[3]]>=5)then Z();end;end;if N.Toggle['Auto Apply Charm']and N.Toggle['Auto Apply Charm']:getState()then local Z=c();local p=E();local f=bf();local o=k();local z=Z and p and string.format('%s::%s',Z,p);if Z and p and z and f and o and tf(o)==tf(p)and(T.CharmKey~=z or T.CharmModel~=f.ViewModel)then B(Z,p);end;if Z and p and(type(H[1][H[3]].Charm)~=

-- [frag 0615 @ offset 3066944] (100 bytes)
]:getState()then local Z=c();local p=E();local f=bf();local o=k();local z=Z and p and string.format(

-- [frag 0616 @ offset 3067067] (304 bytes)
,Z,p);if Z and p and z and f and o and tf(o)==tf(p)and(T.CharmKey~=z or T.CharmModel~=f.ViewModel)then B(Z,p);end;if Z and p and(type(H[1][H[3]].Charm)~="table"or H[1][H[3]].Charm[p]~=Z)and(Zf[1][Zf[3]]~=z or i-S[1][S[3]]>=5)then l();end;end;if j.Flags.Toggle["Unlock All"]:getState()then y:SetAttribute(

-- [frag 0617 @ offset 3067240] (100 bytes)
or H[1][H[3]].Charm[p]~=Z)and(Zf[1][Zf[3]]~=z or i-S[1][S[3]]>=5)then l();end;end;if j.Flags.Toggle[

-- [frag 0618 @ offset 3067375] (67 bytes)
]:getState()then y:SetAttribute('Level',100);end;if j.Flags.Toggle[

-- [frag 0619 @ offset 3067416] (153 bytes)
,100);end;if j.Flags.Toggle["Inf Cash"]:getState()then y:SetAttribute("Cash",math.huge);end;if j.Flags.Toggle["Inf Stash"]:getState()then y:SetAttribute(

-- [frag 0620 @ offset 3067474] (32 bytes)
]:getState()then y:SetAttribute(

-- [frag 0621 @ offset 3067518] (34 bytes)
,math.huge);end;if j.Flags.Toggle[

-- [frag 0622 @ offset 3067576] (116 bytes)
]:getState()then y:SetAttribute('Bank',math.huge);end;if j.Flags.Toggle['Inf Bounty']:getState()then y:SetAttribute(

-- [frag 0623 @ offset 3067682] (74 bytes)
]:getState()then y:SetAttribute("Bounty",math.huge);end;if j.Flags.Toggle[

-- [frag 0624 @ offset 3067739] (81 bytes)
,math.huge);end;if j.Flags.Toggle['Inf Valuables']:getState()then y:SetAttribute(

-- [frag 0625 @ offset 3067807] (304 bytes)
]:getState()then y:SetAttribute("Valuables",math.huge);end;if N.Toggle["No Downed"]:getState()and J[1][J[3]]and not UserIsPoor then getrenv()._G.CharacterStates.Downed=false;end;if N.Toggle["No Block Slowdown"]:getState()and J[1][J[3]]then getrenv()._G.CharacterStates.ServerBlocking=nil;end;if N.Toggle[

-- [frag 0626 @ offset 3067933] (108 bytes)
]:getState()and J[1][J[3]]and not UserIsPoor then getrenv()._G.CharacterStates.Downed=false;end;if N.Toggle[

-- [frag 0627 @ offset 3068083] (330 bytes)
]:getState()and J[1][J[3]]then getrenv()._G.CharacterStates.ServerBlocking=nil;end;if N.Toggle['No Item Use Slowdown']:getState()and J[1][J[3]]then getrenv()._G.CharacterStates.UsingItem=nil;end;if N.Toggle['No Reload Slowdown']:getState()and J[1][J[3]]then getrenv()._G.CharacterStates.ReloadingMovementSpeed=nil;end;if N.Toggle[

-- [frag 0628 @ offset 3068240] (90 bytes)
]:getState()and J[1][J[3]]then getrenv()._G.CharacterStates.UsingItem=nil;end;if N.Toggle[

-- [frag 0629 @ offset 3068378] (223 bytes)
]:getState()and J[1][J[3]]then getrenv()._G.CharacterStates.ReloadingMovementSpeed=nil;end;if N.Toggle["No Aiming Slowdown"]:getState()and J[1][J[3]]then getrenv()._G.CharacterStates.AimingMovementSpeed=nil;end;if N.Toggle[

-- [frag 0630 @ offset 3068552] (180 bytes)
]:getState()and J[1][J[3]]then getrenv()._G.CharacterStates.AimingMovementSpeed=nil;end;if N.Toggle['No Weight']:getState()and J[1][J[3]]then lf.LocalPlayer.Character:SetAttribute(

-- [frag 0631 @ offset 3068682] (289 bytes)
]:getState()and J[1][J[3]]then lf.LocalPlayer.Character:SetAttribute("OverWeightCapacity",0);end;if N.Toggle["Character Rotate"]:getState()and J[1][J[3]]then lf.LocalPlayer.Character:SetAttribute("RotateChar",true);lf.LocalPlayer.Character:SetAttribute("AutoRotate",false);end;if N.Toggle[

-- [frag 0632 @ offset 3068870] (69 bytes)
]:getState()and J[1][J[3]]then lf.LocalPlayer.Character:SetAttribute(

-- [frag 0633 @ offset 3069048] (69 bytes)
,false);end;if N.Toggle['No Recoil']:getState()then local i=N.Slider[

-- [frag 0634 @ offset 3069104] (81 bytes)
]:getState()then local i=N.Slider["Recoil Dampener"]:getValue();local Z=N.Slider[

-- [frag 0635 @ offset 3069182] (79 bytes)
]:getValue();local Z=N.Slider['Horizontal Recoil']:getValue();local j=N.Slider[

-- [frag 0636 @ offset 3069244] (147 bytes)
]:getValue();local j=N.Slider["Vertical Recoil"]:getValue();local p=1-(i/100);local f=Z/100;local l=j/100;for o,z in pairs(X.Main.Springs)do if o==

-- [frag 0637 @ offset 3069311] (114 bytes)
]:getValue();local p=1-(i/100);local f=Z/100;local l=j/100;for o,z in pairs(X.Main.Springs)do if o=='Recoil'or o==

-- [frag 0638 @ offset 3069507] (436 bytes)
or o=="WeaponKick"then if not Lf[o]then Lf[o]={Damper=z.Damper,Speed=z.Speed};end;z.Position=q(z.Position,p,f,l);local p=math.max(i,100-Z,100-j)/100;if p>0 then z.Damper=math.clamp(p,0.1,0.99);else z.Damper=Lf[o].Damper;end;end;end;else for i,Z in pairs(X.Main.Springs)do if Lf[i]then Z.Damper=Lf[i].Damper;Z.Speed=Lf[i].Speed;end;end;end;local i=N.Dropdown["Aim Modes"]:getValue();if N.Toggle["Aim Enabled"]:getState()and table.find(i,

-- [frag 0639 @ offset 3069901] (25 bytes)
]:getValue();if N.Toggle[

-- [frag 0640 @ offset 3069954] (154 bytes)
]:getState()and table.find(i,'Aimbot')and b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then local i=P();if i and i.Parent then local Z=N.Slider[

-- [frag 0641 @ offset 3070010] (416 bytes)
)and b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then local i=P();if i and i.Parent then local Z=N.Slider["Aimbot Smoothing"]:getValue();local j=CFrame.lookAt(u.CFrame.Position,i.Position);if Z<=0 then u.CFrame=j;else local i=1/(Z*10);u.CFrame=u.CFrame:Lerp(j,math.clamp(i,0,1));end;b.MouseBehavior=Enum.MouseBehavior.LockCenter;end;end;local i=n(N.Slider["Detection Range"]:getValue());if i and N.Toggle[

-- [frag 0642 @ offset 3070170] (232 bytes)
]:getValue();local j=CFrame.lookAt(u.CFrame.Position,i.Position);if Z<=0 then u.CFrame=j;else local i=1/(Z*10);u.CFrame=u.CFrame:Lerp(j,math.clamp(i,0,1));end;b.MouseBehavior=Enum.MouseBehavior.LockCenter;end;end;local i=n(N.Slider[

-- [frag 0643 @ offset 3070439] (214 bytes)
]:getValue());if i and N.Toggle['Auto Parry']:getState()and not UserIsPoor then local Z=i.Parent:FindFirstChildOfClass('RayValue');if Z then local i=Z:FindFirstChild('MeleeStatus');if i then local Z=i:GetAttribute(

-- [frag 0644 @ offset 3070499] (75 bytes)
]:getState()and not UserIsPoor then local Z=i.Parent:FindFirstChildOfClass(

-- [frag 0645 @ offset 3070661] (176 bytes)
);if i then local Z=i:GetAttribute("LastSwing");local j=N.Slider["Parry Cooldown"]:getValue();i:GetAttributeChangedSignal("LastSwing"):Connect(function()local p=i:GetAttribute(

-- [frag 0646 @ offset 3070864] (695 bytes)
):Connect(function()local p=i:GetAttribute('LastSwing');if p~=Z then Z=p;if t:Cooldown('parry_cooldown',j)then task.delay(j,function()cf.Block:InvokeServer();end);end;end;end);end;end;end;if N.Toggle['Kill Aura']:getState()and Y.Character then local i=n();if i and i.Position then local Z=i.Position;local j=cf.Swing:InvokeServer();if j and j.Delay then task.wait(j.Delay or 0.25);end;cf.MeleeHit:FireServer(i,Z);end;end;if N.Toggle['Modified Melee Walkspeed']:getState()and J[1][J[3]]then local i=J[1][J[3]]:FindFirstChildOfClass('Humanoid');if i then local i=J[1][J[3]]:FindFirstChildWhichIsA('RayValue');local Z=i and i:GetAttribute('Walkspeed');if Z then i:SetAttribute('Walkspeed',N.Slider[

-- [frag 0647 @ offset 3071109] (222 bytes)
]:getState()and Y.Character then local i=n();if i and i.Position then local Z=i.Position;local j=cf.Swing:InvokeServer();if j and j.Delay then task.wait(j.Delay or 0.25);end;cf.MeleeHit:FireServer(i,Z);end;end;if N.Toggle[

-- [frag 0648 @ offset 3071400] (72 bytes)
]:getState()and J[1][J[3]]then local i=J[1][J[3]]:FindFirstChildOfClass(

-- [frag 0649 @ offset 3071681] (65 bytes)
,N.Slider["Melee Walkspeed"]:getValue());end;end;end;if N.Toggle[

-- [frag 0650 @ offset 3071712] (111 bytes)
]:getValue());end;end;end;if N.Toggle['Find Gear']:getState()then local i=os.clock();if i-m[1][m[3]]>=N.Slider[

-- [frag 0651 @ offset 3071778] (137 bytes)
]:getState()then local i=os.clock();if i-m[1][m[3]]>=N.Slider["Check Interval (Seconds)"]:getValue()then m[1][m[3]]=i;local i=N.Dropdown[

-- [frag 0652 @ offset 3071893] (93 bytes)
]:getValue()then m[1][m[3]]=i;local i=N.Dropdown['Gear To Find']:getValue();local Z=type(i)==

-- [frag 0653 @ offset 3071979] (473 bytes)
]:getValue();local Z=type(i)=="table"and i or{i};local i={};for j,j in ipairs(Z)do i[#i+1]=d(j);end;local Z,j,p=false;for b,b in ipairs(lf:GetPlayers())do if b~=Y and b.Character then local f=b.Character:FindFirstChild("CurrentGear");if f then local l=pf(f);if#l>0 then local o=nil;for z,z in ipairs(i)do if z=="operator gear"and(l[1]=="OperatorKit"or table.find(l,"Operator Leggings")or table.find(l,"Operator Helmet")or table.find(l,"Operator Helmet Mk2")or table.find(l,

-- [frag 0654 @ offset 3074078] (69 bytes)
,5);end;end;end;if N.Toggle["Mod Detector"]:getState()and t:Cooldown(

-- [frag 0655 @ offset 3074143] (48 bytes)
]:getState()and t:Cooldown('mod_check',N.Slider[

-- [frag 0656 @ offset 3074257] (135 bytes)
]and N.Slider['Mod Check Interval']:getValue())and not UserIsPoor then L();end;if N.Toggle['Auto Equip Gear']:getState()and t:Cooldown(

-- [frag 0657 @ offset 3074333] (57 bytes)
]:getValue())and not UserIsPoor then L();end;if N.Toggle[

-- [frag 0658 @ offset 3074450] (222 bytes)
]:getState()and t:Cooldown("equip_cooldown",0.2)and not UserIsPoor then for i,i in pairs(y.Backpack:GetChildren())do if i:GetAttribute("Gear")then local Z={[1]=i};cf.EquipGear:FireServer(unpack(Z));end;end;end;if N.Toggle[

-- [frag 0659 @ offset 3074626] (119 bytes)
)then local Z={[1]=i};cf.EquipGear:FireServer(unpack(Z));end;end;end;if N.Toggle['Farm Scourge']:getState()or N.Toggle[

-- [frag 0660 @ offset 3074740] (237 bytes)
]:getState()or N.Toggle["Start Loot Farm"]:getState()then local i=tick();local Z=i-nf.startTime;N.TextBox["Time Elapsed:"]:updateText({text=s(Z)});if i-nf.lastCashUpdate>=1 then local t=Z/3600;local Z=0;nf.lastCashUpdate=i;O();N.TextBox[

-- [frag 0661 @ offset 3074826] (65 bytes)
]:getState()then local i=tick();local Z=i-nf.startTime;N.TextBox[

-- [frag 0662 @ offset 3075235] (551 bytes)
});end;end;end;end,p=function(i)local Z=i[5];local t=i[21];local j=i[4];local p=i[9];local L=i[10];local b=i[0];local f=i[11];local l=i[13];local o=i[14];local z=i[20];local c=i[8];local y=i[17];local n=i[3];local X=i[18];local M=i[22];local R=i[1];local w=i[19];local K=i[2];local e=i[12];local U=i[6];local C=i[7];local d=i[16];local G=i[15];return function()local i=b.Slider["FOV Size"]:getValue();local x=b.ColorPicker["FOV Color"]:getColor();local J=b.Slider["FOV Thickness"]:getValue();local B=b.Toggle["FOV Filled"]:getState();local F=b.Slider[

-- [frag 0663 @ offset 3075634] (35 bytes)
]:getValue();local x=b.ColorPicker[

-- [frag 0664 @ offset 3075691] (30 bytes)
]:getColor();local J=b.Slider[

-- [frag 0665 @ offset 3075750] (30 bytes)
]:getValue();local B=b.Toggle[

-- [frag 0666 @ offset 3075807] (402 bytes)
]:getState();local F=b.Slider['FOV Transparency']:getValue();local Q=b.Keybind['Fly']:getKeybind();local V=b.Slider['Fly Speed']:getValue();if not L then flyActive=flyActive or false;if not flyKeyConnection then flyKeyConnection=d:NewConnection(n.InputBegan,function(L)if L.KeyCode==Enum.KeyCode[Q]then flyActive=not flyActive;end;end);end;if flyActive then local L=workspace.characters:FindFirstChild(

-- [frag 0667 @ offset 3075879] (31 bytes)
]:getValue();local Q=b.Keybind[

-- [frag 0668 @ offset 3075919] (32 bytes)
]:getKeybind();local V=b.Slider[

-- [frag 0669 @ offset 3075970] (961 bytes)
]:getValue();if not L then flyActive=flyActive or false;if not flyKeyConnection then flyKeyConnection=d:NewConnection(n.InputBegan,function(L)if L.KeyCode==Enum.KeyCode[Q]then flyActive=not flyActive;end;end);end;if flyActive then local L=workspace.characters:FindFirstChild("StarterCharacter");if L and L:FindFirstChild("humanoid_root_part")then local d=L.humanoid_root_part;pcall(function()d.AssemblyLinearVelocity=Vector3.new(0,0,0);end);local L=Vector3.new(0,0,0);if n:IsKeyDown(Enum.KeyCode.W)then L=L+l.CFrame.LookVector;elseif n:IsKeyDown(Enum.KeyCode.S)then L=L-l.CFrame.LookVector;end;if n:IsKeyDown(Enum.KeyCode.A)then L=L-l.CFrame.RightVector;elseif n:IsKeyDown(Enum.KeyCode.D)then L=L+l.CFrame.RightVector;end;if n:IsKeyDown(Enum.KeyCode.Space)then L=L+Vector3.new(0,1,0);elseif n:IsKeyDown(Enum.KeyCode.LeftShift)then L=L+Vector3.new(0,-1.0,0);end;if L.Magnitude>0 then d.CFrame=d.CFrame+(L.Unit*V);end;end;end;end;local L,l=t();local t=b.Dropdown[

-- [frag 0670 @ offset 3076399] (661 bytes)
)then local d=L.humanoid_root_part;pcall(function()d.AssemblyLinearVelocity=Vector3.new(0,0,0);end);local L=Vector3.new(0,0,0);if n:IsKeyDown(Enum.KeyCode.W)then L=L+l.CFrame.LookVector;elseif n:IsKeyDown(Enum.KeyCode.S)then L=L-l.CFrame.LookVector;end;if n:IsKeyDown(Enum.KeyCode.A)then L=L-l.CFrame.RightVector;elseif n:IsKeyDown(Enum.KeyCode.D)then L=L+l.CFrame.RightVector;end;if n:IsKeyDown(Enum.KeyCode.Space)then L=L+Vector3.new(0,1,0);elseif n:IsKeyDown(Enum.KeyCode.LeftShift)then L=L+Vector3.new(0,-1.0,0);end;if L.Magnitude>0 then d.CFrame=d.CFrame+(L.Unit*V);end;end;end;end;local L,l=t();local t=b.Dropdown['FOV Shape']:getValue();local d=type(t)==

-- [frag 0671 @ offset 3077037] (213 bytes)
]:getValue();local d=type(t)=="table"and t[1]or t;if e[1][e[3]]then local t=e[1][e[3]];local e=b.Toggle["FOV Effects"]:getState();t.Position=L;t.Visible=y[1][y[3]]and Z[1][Z[3]]and d~="Star";t.Color=b.ColorPicker[

-- [frag 0672 @ offset 3077189] (67 bytes)
]:getState();t.Position=L;t.Visible=y[1][y[3]]and Z[1][Z[3]]and d~=

-- [frag 0673 @ offset 3077268] (136 bytes)
;t.Color=b.ColorPicker['FOV Outline Color']:getColor();t.Thickness=b.Slider['FOV Outline Thickness']:getValue();t.Transparency=b.Slider[

-- [frag 0674 @ offset 3077347] (34 bytes)
]:getColor();t.Thickness=b.Slider[

-- [frag 0675 @ offset 3077434] (203 bytes)
]:getValue();t.Transparency=b.Slider["FOV Outline Transparency"]:getValue();t.Filled=false;t.NumSides=128;t.ZIndex=1;if e then local e=tick();local Q=b.Slider["Effect Speed"]:getValue();local V=b.Slider[

-- [frag 0676 @ offset 3077546] (96 bytes)
]:getValue();t.Filled=false;t.NumSides=128;t.ZIndex=1;if e then local e=tick();local Q=b.Slider[

-- [frag 0677 @ offset 3077676] (273 bytes)
]:getValue();local V=b.Slider['Effect Intensity']:getValue();local u=math.sin(e*Q)*V+(1-V);if n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or(C and C:GetAttribute('Aiming'))then t.Thickness=b.Slider['FOV Outline Thickness']:getValue()+0.5;t.Transparency=b.Slider[

-- [frag 0678 @ offset 3077753] (125 bytes)
]:getValue();local u=math.sin(e*Q)*V+(1-V);if n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or(C and C:GetAttribute(

-- [frag 0679 @ offset 3077970] (225 bytes)
]:getValue()+0.5;t.Transparency=b.Slider["FOV Outline Transparency"]:getValue()*0.3;else t.Transparency=b.Slider["FOV Outline Transparency"]:getValue()*u;end;end;if b.Toggle["FOV Auto Adjust"]:getState()then local e=b.Slider[

-- [frag 0680 @ offset 3078087] (46 bytes)
]:getValue()*0.3;else t.Transparency=b.Slider[

-- [frag 0681 @ offset 3078207] (35 bytes)
]:getValue()*u;end;end;if b.Toggle[

-- [frag 0682 @ offset 3078278] (171 bytes)
]:getState()then local e=b.Slider['FOV Size']:getValue();local Q=(n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or(C and C:GetAttribute('Aiming')))and(e*b.Slider[

-- [frag 0683 @ offset 3078332] (101 bytes)
]:getValue();local Q=(n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or(C and C:GetAttribute(

-- [frag 0684 @ offset 3078452] (92 bytes)
)))and(e*b.Slider["Adjust Size"]:getValue())or e;local e=f[1][f[3]]+(Q-f[1][f[3]])*b.Slider[

-- [frag 0685 @ offset 3078519] (105 bytes)
]:getValue())or e;local e=f[1][f[3]]+(Q-f[1][f[3]])*b.Slider['Adjust Speed']:getValue();local Q=b.Slider[

-- [frag 0686 @ offset 3078621] (160 bytes)
]:getValue();local Q=b.Slider["FOV Thickness"]:getValue();local V=b.Slider["FOV Outline Thickness"]:getValue();t.Radius=(e+(Q/2)+(V/2))*l;else local e=b.Slider[

-- [frag 0687 @ offset 3078681] (30 bytes)
]:getValue();local V=b.Slider[

-- [frag 0688 @ offset 3078760] (107 bytes)
]:getValue();t.Radius=(e+(Q/2)+(V/2))*l;else local e=b.Slider['FOV Thickness']:getValue();local Q=b.Slider[

-- [frag 0689 @ offset 3078858] (251 bytes)
]:getValue();local Q=b.Slider["FOV Outline Thickness"]:getValue();t.Radius=(b.Slider["FOV Size"]:getValue()+(e/2)+(Q/2))*l;end;end;if o[1][o[3]]then local t=o[1][o[3]];local e=b.Toggle["FOV Effects"]:getState();t.Position=L;t.Visible=Z[1][Z[3]]and d~=

-- [frag 0690 @ offset 3078932] (32 bytes)
]:getValue();t.Radius=(b.Slider[

-- [frag 0691 @ offset 3078982] (90 bytes)
]:getValue()+(e/2)+(Q/2))*l;end;end;if o[1][o[3]]then local t=o[1][o[3]];local e=b.Toggle[

-- [frag 0692 @ offset 3079108] (733 bytes)
]:getState();t.Position=L;t.Visible=Z[1][Z[3]]and d~='Star';t.Color=x;t.Thickness=J;t.Transparency=F;t.Filled=B;t.NumSides=128;t.ZIndex=2;if e then local e=tick();local B=b.Slider['Effect Speed']:getValue();local Q=b.Slider['Effect Intensity']:getValue();local V=math.sin(e*B)*Q+(1-Q);local u=math.sin(e*B*0.7)*Q+(1-Q);if n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or(C and C:GetAttribute('Aiming'))then t.Color=x:Lerp(Color3.new(1,1,1),0.5);t.Thickness=J+1;t.Transparency=F*0.3;else t.Color=x:Lerp(Color3.new(1,1,1),u*0.3);t.Transparency=F*V;end;end;if b.Toggle['FOV Auto Adjust']:getState()then local e=i;local B=(n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or(C and C:GetAttribute('Aiming')))and(e*b.Slider[

-- [frag 0693 @ offset 3079321] (30 bytes)
]:getValue();local Q=b.Slider[

-- [frag 0694 @ offset 3079387] (159 bytes)
]:getValue();local V=math.sin(e*B)*Q+(1-Q);local u=math.sin(e*B*0.7)*Q+(1-Q);if n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or(C and C:GetAttribute(

-- [frag 0695 @ offset 3079770] (115 bytes)
]:getState()then local e=i;local B=(n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or(C and C:GetAttribute(

-- [frag 0696 @ offset 3079916] (95 bytes)
)))and(e*b.Slider["Adjust Size"]:getValue())or e;f[1][f[3]]=f[1][f[3]]+(B-f[1][f[3]])*b.Slider[

-- [frag 0697 @ offset 3079958] (175 bytes)
]:getValue())or e;f[1][f[3]]=f[1][f[3]]+(B-f[1][f[3]])*b.Slider['Adjust Speed']:getValue();t.Radius=f[1][f[3]]*l;else f[1][f[3]]=i;t.Radius=f[1][f[3]]*l;end;end;do local i=d==

-- [frag 0698 @ offset 3080058] (407 bytes)
]:getValue();t.Radius=f[1][f[3]]*l;else f[1][f[3]]=i;t.Radius=f[1][f[3]]*l;end;end;do local i=d=="Star"and Z[1][Z[3]];if#K==0 then for t=1,10 do K[t]=Drawing.new("Line");K[t].Visible=false;R[t]=Drawing.new("Line");R[t].Visible=false;end;end;if i then local i=f[1][f[3]];local t,f=L.X,L.Y;local L=i*0.38;local l=x;local e=J;local d=F;if b.Toggle["FOV Effects"]:getState()then local B=tick();local Q=b.Slider[

-- [frag 0699 @ offset 3080452] (439 bytes)
]:getState()then local B=tick();local Q=b.Slider['Effect Speed']:getValue();local V=b.Slider['Effect Intensity']:getValue();local u=math.sin(B*Q)*V+(1-V);local E=math.sin(B*Q*0.7)*V+(1-V);if n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or(C and C:GetAttribute('Aiming'))then l=x:Lerp(Color3.new(1,1,1),0.5);e=J+1;d=F*0.3;else l=x:Lerp(Color3.new(1,1,1),E*0.3);d=F*u;end;end;local C=y[1][y[3]]and Z[1][Z[3]];local y=b.ColorPicker[

-- [frag 0700 @ offset 3080596] (159 bytes)
]:getValue();local u=math.sin(B*Q)*V+(1-V);local E=math.sin(B*Q*0.7)*V+(1-V);if n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)or(C and C:GetAttribute(

-- [frag 0701 @ offset 3080784] (210 bytes)
))then l=x:Lerp(Color3.new(1,1,1),0.5);e=J+1;d=F*0.3;else l=x:Lerp(Color3.new(1,1,1),E*0.3);d=F*u;end;end;local C=y[1][y[3]]and Z[1][Z[3]];local y=b.ColorPicker["FOV Outline Color"]:getColor();local x=b.Slider[

-- [frag 0702 @ offset 3080990] (983 bytes)
]:getColor();local x=b.Slider['FOV Outline Thickness']:getValue();local J=b.Slider['FOV Outline Transparency']:getValue();for B=0,9 do local F=(B*math.pi/5)-math.pi/2;local Q=(B%2==0)and i or L;local V=(B+1)%10;local u=(V*math.pi/5)-math.pi/2;local E=(V%2==0)and i or L;local i=Vector2.new(t+Q*math.cos(F),f+Q*math.sin(F));local L=Vector2.new(t+E*math.cos(u),f+E*math.sin(u));local t=B+1;R[t].From=i;R[t].To=L;R[t].Color=y;R[t].Thickness=x+e;R[t].Transparency=J;R[t].Visible=C;R[t].ZIndex=1;K[t].From=i;K[t].To=L;K[t].Color=l;K[t].Thickness=e;K[t].Transparency=d;K[t].Visible=true;K[t].ZIndex=2;end;else for i=1,#K do if K[i]then K[i].Visible=false;end;if R[i]then R[i].Visible=false;end;end;end;end;if X[1][X[3]]then local i=X[1][X[3]];local t=b.Toggle['FOV Effects']:getState();i.Visible=z[1][z[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if o[1][o[3]]and Z[1][Z[3]]then local Z=o[1][o[3]];i.Position=Vector2.new(Z.Position.X,Z.Position.Y+Z.Radius+8);local Z=b.ColorPicker[

-- [frag 0703 @ offset 3081071] (30 bytes)
]:getValue();local J=b.Slider[

-- [frag 0704 @ offset 3081156] (645 bytes)
]:getValue();for B=0,9 do local F=(B*math.pi/5)-math.pi/2;local Q=(B%2==0)and i or L;local V=(B+1)%10;local u=(V*math.pi/5)-math.pi/2;local E=(V%2==0)and i or L;local i=Vector2.new(t+Q*math.cos(F),f+Q*math.sin(F));local L=Vector2.new(t+E*math.cos(u),f+E*math.sin(u));local t=B+1;R[t].From=i;R[t].To=L;R[t].Color=y;R[t].Thickness=x+e;R[t].Transparency=J;R[t].Visible=C;R[t].ZIndex=1;K[t].From=i;K[t].To=L;K[t].Color=l;K[t].Thickness=e;K[t].Transparency=d;K[t].Visible=true;K[t].ZIndex=2;end;else for i=1,#K do if K[i]then K[i].Visible=false;end;if R[i]then R[i].Visible=false;end;end;end;end;if X[1][X[3]]then local i=X[1][X[3]];local t=b.Toggle[

-- [frag 0705 @ offset 3081833] (353 bytes)
]:getState();i.Visible=z[1][z[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if o[1][o[3]]and Z[1][Z[3]]then local Z=o[1][o[3]];i.Position=Vector2.new(Z.Position.X,Z.Position.Y+Z.Radius+8);local Z=b.ColorPicker["FOV Color"]:getColor();i.Color=Z:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if t then local t=tick();local L=b.Slider[

-- [frag 0706 @ offset 3082081] (170 bytes)
]:getColor();i.Color=Z:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if t then local t=tick();local L=b.Slider['Effect Speed']:getValue();local f=b.Slider[

-- [frag 0707 @ offset 3082230] (385 bytes)
]:getValue();local f=b.Slider["Effect Intensity"]:getValue();local l=math.sin(t*L*0.8)*f+(1-f);i.Color=Z:Lerp(Color3.new(1,1,1),l);end;else i.Position=Vector2.new(p.X+c.X,p.Y+c.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text="Max Hub";end;local i=tick();if i>=w[1][w[3]]then w[1][w[3]]=i+0.08;pcall(M);end;if j then pcall(j.Update,j);end;local i=b.Dropdown[

-- [frag 0708 @ offset 3082315] (205 bytes)
]:getValue();local l=math.sin(t*L*0.8)*f+(1-f);i.Color=Z:Lerp(Color3.new(1,1,1),l);end;else i.Position=Vector2.new(p.X+c.X,p.Y+c.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text=

-- [frag 0709 @ offset 3082537] (159 bytes)
;end;local i=tick();if i>=w[1][w[3]]then w[1][w[3]]=i+0.08;pcall(M);end;if j then pcall(j.Update,j);end;local i=b.Dropdown['Aim Modes']:getValue();if b.Toggle[

-- [frag 0710 @ offset 3082680] (192 bytes)
]:getValue();if b.Toggle["Aim Enabled"]:getState()and table.find(i,"Aimbot")and n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then local i=G();if i and i.Parent then local Z=b.Slider[

-- [frag 0711 @ offset 3082776] (652 bytes)
)and n:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then local i=G();if i and i.Parent then local Z=b.Slider['Aimbot Smoothing']:getValue();local t=CFrame.lookAt(U.CFrame.Position,i.Position);if Z<=0 then U.CFrame=t;else local i=1/(Z*10);U.CFrame=U.CFrame:Lerp(t,math.clamp(i,0,1));end;n.MouseBehavior=Enum.MouseBehavior.LockCenter;end;end;end;end,Bi=unpack,MX=function(i,i,Z,t)(i)[t+0X2]=(Z);end,c=function(i)local Z=i[8];local t=i[13];local j=i[14];local p=i[12];local L=i[2];local b=i[9];local f=i[3];local l=i[11];local o=i[7];local z=i[1];local c=i[0];local y=i[6];local n=i[4];local X=i[5];local M=i[10];return function()local i=c.Slider[

-- [frag 0712 @ offset 3082938] (694 bytes)
]:getValue();local t=CFrame.lookAt(U.CFrame.Position,i.Position);if Z<=0 then U.CFrame=t;else local i=1/(Z*10);U.CFrame=U.CFrame:Lerp(t,math.clamp(i,0,1));end;n.MouseBehavior=Enum.MouseBehavior.LockCenter;end;end;end;end,Bi=unpack,MX=function(i,i,Z,t)(i)[t+0X2]=(Z);end,c=function(i)local Z=i[8];local t=i[13];local j=i[14];local p=i[12];local L=i[2];local b=i[9];local f=i[3];local l=i[11];local o=i[7];local z=i[1];local c=i[0];local y=i[6];local n=i[4];local X=i[5];local M=i[10];return function()local i=c.Slider["FOV Transparency"]:getValue();local R=c.Slider["FOV Size"]:getValue();local w=c.ColorPicker["FOV Color"]:getColor();local K=c.Toggle["FOV Filled"]:getState();local e=c.Keybind[

-- [frag 0713 @ offset 3083498] (30 bytes)
]:getValue();local R=c.Slider[

-- [frag 0714 @ offset 3083544] (35 bytes)
]:getValue();local w=c.ColorPicker[

-- [frag 0715 @ offset 3083605] (30 bytes)
]:getColor();local K=c.Toggle[

-- [frag 0716 @ offset 3083667] (68 bytes)
]:getState();local e=c.Keybind['Fly']:getKeybind();local U=c.Slider[

-- [frag 0717 @ offset 3083706] (62 bytes)
]:getKeybind();local U=c.Slider["Fly Speed"]:getValue();if e==

-- [frag 0718 @ offset 3083768] (1246 bytes)
]:getValue();if e=='None'then e='Y';end;if X:IsKeyDown(Enum.KeyCode[e])then local e=l.Character;local l=e.HumanoidRootPart;l.Velocity=Vector3.new(0,0,0);if X:IsKeyDown(Enum.KeyCode.W)then l.CFrame=l.CFrame+(f.CFrame.LookVector*U);elseif X:IsKeyDown(Enum.KeyCode.S)then l.CFrame=l.CFrame+(-f.CFrame.LookVector*U);elseif X:IsKeyDown(Enum.KeyCode.A)then l.CFrame=l.CFrame+(-f.CFrame.RightVector*U);elseif X:IsKeyDown(Enum.KeyCode.D)then l.CFrame=l.CFrame+(f.CFrame.RightVector*U);end;end;if c.Toggle['No Stun']:getState()then for l,l in pairs(game.Players.LocalPlayer.Character:GetChildren())do if l:IsA('Accessory')then l:Destroy();end;end;end;if Z.AutoBlock then p();end;if b[1][b[3]]then local Z=b[1][b[3]];Z.Position=Vector2.new(y.X+z.X,y.Y+z.Y);Z.Visible=FOV_Drawing;Z.Color=w;Z.Thickness=1.5;Z.Filled=K;Z.Transparency=i;if c.Toggle['FOV Auto Adjust']:getState()then local i=R;local p=X:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)and(i*1.55)or i;n[1][n[3]]=n[1][n[3]]+(p-n[1][n[3]])*t;Z.Radius=n[1][n[3]];else n[1][n[3]]=R;Z.Radius=n[1][n[3]];end;end;if M[1][M[3]]then local i=M[1][M[3]];i.Visible=Watermark_Drawing;i.Center=true;i.Outline=true;i.Transparency=0.7;if b[1][b[3]]and FOV_Drawing then local Z=b[1][b[3]];local t=c.Toggle[

-- [frag 0719 @ offset 3083812] (462 bytes)
;end;if X:IsKeyDown(Enum.KeyCode[e])then local e=l.Character;local l=e.HumanoidRootPart;l.Velocity=Vector3.new(0,0,0);if X:IsKeyDown(Enum.KeyCode.W)then l.CFrame=l.CFrame+(f.CFrame.LookVector*U);elseif X:IsKeyDown(Enum.KeyCode.S)then l.CFrame=l.CFrame+(-f.CFrame.LookVector*U);elseif X:IsKeyDown(Enum.KeyCode.A)then l.CFrame=l.CFrame+(-f.CFrame.RightVector*U);elseif X:IsKeyDown(Enum.KeyCode.D)then l.CFrame=l.CFrame+(f.CFrame.RightVector*U);end;end;if c.Toggle[

-- [frag 0720 @ offset 3084287] (95 bytes)
]:getState()then for l,l in pairs(game.Players.LocalPlayer.Character:GetChildren())do if l:IsA(

-- [frag 0721 @ offset 3084666] (628 bytes)
]:getState()then local i=R;local p=X:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)and(i*1.55)or i;n[1][n[3]]=n[1][n[3]]+(p-n[1][n[3]])*t;Z.Radius=n[1][n[3]];else n[1][n[3]]=R;Z.Radius=n[1][n[3]];end;end;if M[1][M[3]]then local i=M[1][M[3]];i.Visible=Watermark_Drawing;i.Center=true;i.Outline=true;i.Transparency=0.7;if b[1][b[3]]and FOV_Drawing then local Z=b[1][b[3]];local t=c.Toggle["FOV Lock Center"]:getState();if t then Z.Position=Vector2.new(f.ViewportSize.X/2,f.ViewportSize.Y/2);else Z.Position=Vector2.new(y.X+z.X,y.Y+z.Y);end;i.Position=Vector2.new(Z.Position.X,Z.Position.Y+Z.Radius+5);local Z=c.ColorPicker[

-- [frag 0722 @ offset 3085105] (427 bytes)
]:getState();if t then Z.Position=Vector2.new(f.ViewportSize.X/2,f.ViewportSize.Y/2);else Z.Position=Vector2.new(y.X+z.X,y.Y+z.Y);end;i.Position=Vector2.new(Z.Position.X,Z.Position.Y+Z.Radius+5);local Z=c.ColorPicker['FOV Color']:getColor();i.Color=Z:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);else i.Position=Vector2.new(y.X+z.X,y.Y+z.Y);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text=

-- [frag 0723 @ offset 3085350] (1968 bytes)
]:getColor();i.Color=Z:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);else i.Position=Vector2.new(y.X+z.X,y.Y+z.Y);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text="Max Hub";end;if X:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)and c.Toggle["Lock On"]:getState()then local i=c.Toggle["FOV Enabled"]:getState()and(c.Slider["FOV Size"]:getValue()*1.25)or 2560;local Z=o();if Z then local t,p=f:WorldToViewportPoint(Z.Position);local b=X:GetMouseLocation();local l=(Vector2.new(t.X,t.Y)-b).Magnitude;if l<=i and p then local i=Z.Parent;if i and i:FindFirstChild(j[1][j[3]])then local Z=i.HumanoidRootPart.CFrame+(i.HumanoidRootPart.Velocity*0);local i=f.CFrame.Position;local t=TweenInfo.new(c.Slider["Lock On Smoothing"]:getValue(),Enum.EasingStyle.Sine,Enum.EasingDirection.Out);local j={CFrame=CFrame.lookAt(i,Z.Position)};local i=L:Create(f,t,j);i:Play();X.MouseBehavior=Enum.MouseBehavior.LockCenter;end;end;end;end;end;end,oX=function(i,Z,t,j)(Z)[0x30]=(nil);Z[0X31]=nil;t=0X24;repeat if t<=0B1__10_011 then if t==0B100100 then t=i:LX(Z,j,t);continue;else(Z)[0B101111]=({});if not(not j[0X2DBc])then t=j[11708];else t=i:xX(t,j);end;end;else if not(t>=0X76)then i:QX(Z);break;else(Z)[48]=(function()local p;for L=49,196,0b1010__00 do if not(L>=89)then p=Z[0X2d]();if p>=Z[0x3]then return(i:jX(p,Z));end;else return p;end;end;end);if not j[27989]then t=0B1011101+(i.th((j[3085]<j[0X7C7A]and j[23763]or j[0X5B94])-i.ts[0X9]+j[0x6901]+i.ts[0b1000__]-j[0X4de6],i.ts[0x008],j[23763]));(j)[0X6_d55]=(t);else t=i:WX(j,t);end;end;end;until false;(Z)[50]=i.ks;return t;end,vX=function(i,i,Z,t,j)(Z)[i]=j[0xF][t];end,D=function(i)local Z=i[1];local t=i[3];local j=i[2];local p=i[4];local L=i[5];local b=i[0];return function()if Z.Toggle["Start Farm"]:getState()and Z.Dropdown["To Farm"]:getValue()=="Boundless Tower"then if Z.Toggle["Auto Sell"]and Z.Toggle["Auto Sell"]:getState()and game:GetService("Workspace").NPC:FindFirstChild(

-- [frag 0724 @ offset 3085663] (34 bytes)
]:getState()then local i=c.Toggle[

-- [frag 0725 @ offset 3085723] (25 bytes)
]:getState()and(c.Slider[

-- [frag 0726 @ offset 3085768] (366 bytes)
]:getValue()*1.25)or 2560;local Z=o();if Z then local t,p=f:WorldToViewportPoint(Z.Position);local b=X:GetMouseLocation();local l=(Vector2.new(t.X,t.Y)-b).Magnitude;if l<=i and p then local i=Z.Parent;if i and i:FindFirstChild(j[1][j[3]])then local Z=i.HumanoidRootPart.CFrame+(i.HumanoidRootPart.Velocity*0);local i=f.CFrame.Position;local t=TweenInfo.new(c.Slider[

-- [frag 0727 @ offset 3086182] (1012 bytes)
]:getValue(),Enum.EasingStyle.Sine,Enum.EasingDirection.Out);local j={CFrame=CFrame.lookAt(i,Z.Position)};local i=L:Create(f,t,j);i:Play();X.MouseBehavior=Enum.MouseBehavior.LockCenter;end;end;end;end;end;end,oX=function(i,Z,t,j)(Z)[0x30]=(nil);Z[0X31]=nil;t=0X24;repeat if t<=0B1__10_011 then if t==0B100100 then t=i:LX(Z,j,t);continue;else(Z)[0B101111]=({});if not(not j[0X2DBc])then t=j[11708];else t=i:xX(t,j);end;end;else if not(t>=0X76)then i:QX(Z);break;else(Z)[48]=(function()local p;for L=49,196,0b1010__00 do if not(L>=89)then p=Z[0X2d]();if p>=Z[0x3]then return(i:jX(p,Z));end;else return p;end;end;end);if not j[27989]then t=0B1011101+(i.th((j[3085]<j[0X7C7A]and j[23763]or j[0X5B94])-i.ts[0X9]+j[0x6901]+i.ts[0b1000__]-j[0X4de6],i.ts[0x008],j[23763]));(j)[0X6_d55]=(t);else t=i:WX(j,t);end;end;end;until false;(Z)[50]=i.ks;return t;end,vX=function(i,i,Z,t,j)(Z)[i]=j[0xF][t];end,D=function(i)local Z=i[1];local t=i[3];local j=i[2];local p=i[4];local L=i[5];local b=i[0];return function()if Z.Toggle[

-- [frag 0728 @ offset 3087216] (27 bytes)
]:getState()and Z.Dropdown[

-- [frag 0729 @ offset 3087452] (237 bytes)
).NPC:FindFirstChild('Black Market')then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(b.BoundlessPos);local i=0;for f,f in ipairs(j.backpack:GetChildren())do i=i+1;end;if i>1 then movement:moveto(game:GetService(

-- [frag 0730 @ offset 3087499] (682 bytes)
)then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(b.BoundlessPos);local i=0;for f,f in ipairs(j.backpack:GetChildren())do i=i+1;end;if i>1 then movement:moveto(game:GetService("Workspace").NPC["Black Market"].HumanoidRootPart.CFrame,math.huge,0,-5.0);notifyOnce("selling","Auto Selling",10);end;end;for i,i in pairs(L:GetChildren())do if i:GetAttribute("NPC")and i:FindFirstChild(p[1][p[3]])and i.Humanoid.Health>0 then if Z.Toggle["TP Safe When Low"]and Z.Toggle["TP Safe When Low"]:getState()and game.Players.LocalPlayer.Character.Humanoid.Health<=200 then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(b.BoundlessPos);notifyOnce(

-- [frag 0731 @ offset 3088115] (285 bytes)
]:getState()and game.Players.LocalPlayer.Character.Humanoid.Health<=200 then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(b.BoundlessPos);notifyOnce('waiting','Health is low teleporting to safe spot',15);else movement:moveto(i.HumanoidRootPart.CFrame,Z.Slider[

-- [frag 0732 @ offset 3088428] (95 bytes)
,15);else movement:moveto(i.HumanoidRootPart.CFrame,Z.Slider["Farm Speed"]:getValue(),Z.Slider[

-- [frag 0733 @ offset 3088507] (59 bytes)
]:getValue(),Z.Slider['Height Offset']:getValue(),Z.Slider[

-- [frag 0734 @ offset 3088569] (151 bytes)
]:getValue(),Z.Slider["Behind Offset"]:getValue(),Z.Slider["Farm Angle"]:getValue(),true);end;break;end;end;if Z.Toggle["Auto Skip Waves"]and Z.Toggle[

-- [frag 0735 @ offset 3088623] (22 bytes)
]:getValue(),Z.Slider[

-- [frag 0736 @ offset 3088668] (49 bytes)
]:getValue(),true);end;break;end;end;if Z.Toggle[

-- [frag 0737 @ offset 3088753] (99 bytes)
]and Z.Toggle['Auto Skip Waves']:getState()then local i={[1]={['Action']='BoundlessTowerSkipVote',[

-- [frag 0738 @ offset 3088808] (32 bytes)
]:getState()then local i={[1]={[

-- [frag 0739 @ offset 3089420] (123 bytes)
and Z.Toggle['Infinite Stamina']:getState()then return 100;end;end;if p=='FireServer'then if i.Name=='Stamina'and Z.Toggle[

-- [frag 0740 @ offset 3089477] (42 bytes)
]:getState()then return 100;end;end;if p==

-- [frag 0741 @ offset 3089585] (236 bytes)
and Z.Toggle["Infinite Stamina"]:getState()then return;end;if i.Name=="MinigameMistake"and Z.Toggle["Unlimited Lockpicks"]:getState()then return;end;if i.Name=="Damage"and Z.Toggle["No Fall Damage"]:getState()then return;end;if i.Name==

-- [frag 0742 @ offset 3089876] (61 bytes)
]:getState()then return;end;if i.Name=='Ragdoll'and Z.Toggle[

-- [frag 0743 @ offset 3089940] (64 bytes)
and Z.Toggle["No Ragdoll"]:getState()then return;end;if i.Name==

-- [frag 0744 @ offset 3089995] (66 bytes)
]:getState()then return;end;if i.Name=='UpdateStates'and Z.Toggle[

-- [frag 0745 @ offset 3090080] (321 bytes)
and Z.Toggle["Spoof State"]:getState()then j[1]=Vector3.new(0,0,0);j[2]=Vector3.new(0,0,0);j[3]=Vector3.new(0,0,-1.0);j[4]={Sliding=false,Crouching=true,Sprinting=true,Aiming=false,Input="Keyboard",Parkour=false};end;end;if p=="Raycast"and debug.traceback()then local L=debug.traceback();if(L:find("ActiveCast")or L:find(

-- [frag 0746 @ offset 3090115] (161 bytes)
]:getState()then j[1]=Vector3.new(0,0,0);j[2]=Vector3.new(0,0,0);j[3]=Vector3.new(0,0,-1.0);j[4]={Sliding=false,Crouching=true,Sprinting=true,Aiming=false,Input=

-- [frag 0747 @ offset 3090443] (199 bytes)
)or L:find('CanRayPierce'))and Z.Toggle['Instant Bullets']:getState()then j[2]=j[2]*9e9;end;if(L:find('HitboxCaster'))and Z.Toggle['Extended Melee Reach']:getState()then j[2]=j[2]*1000;end;end;if p==

-- [frag 0748 @ offset 3090544] (45 bytes)
]:getState()then j[2]=j[2]*9e9;end;if(L:find(

-- [frag 0749 @ offset 3090689] (117 bytes)
]:getState()then j[2]=j[2]*1000;end;end;if p=="SetStateEnabled"and j[1]==Enum.HumanoidStateType.Jumping and Z.Toggle[

-- [frag 0750 @ offset 3090781] (484 bytes)
and j[1]==Enum.HumanoidStateType.Jumping and Z.Toggle['No Jump Cooldown']:getState()then return t[1][t[3]](i,j[1],true);end;return t[1][t[3]](i,unpack(j));end;end,ys=function(i)local Z=i[6];local t=i[0];local j=i[2];local p=i[7];local L=i[1];local b=i[3];local f=i[5];local l=i[4];return function()if p('anti_afk_refresh',5)then disableIdledConnections();end;local i=l.Dropdown['Aim Modes']:getValue();local p=f:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);if p and l.Toggle[

-- [frag 0751 @ offset 3090871] (231 bytes)
]:getState()then return t[1][t[3]](i,j[1],true);end;return t[1][t[3]](i,unpack(j));end;end,ys=function(i)local Z=i[6];local t=i[0];local j=i[2];local p=i[7];local L=i[1];local b=i[3];local f=i[5];local l=i[4];return function()if p(

-- [frag 0752 @ offset 3091242] (266 bytes)
]:getValue();local p=f:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);if p and l.Toggle["Aim Enabled"]:getState()and table.find(i,"Aimbot")then local i=tick();local p=nil;if j[1][j[3]]and j[1][j[3]].Parent then local o=j[1][j[3]].Parent:FindFirstChildOfClass(

-- [frag 0753 @ offset 3091583] (665 bytes)
);local z=not l.Toggle["Visible Check"]:getState()or Z:IsVisible(j[1][j[3]]);if o and o.Health>0 and z then local o,z=t:WorldToViewportPoint(j[1][j[3]].Position);local c=l.Toggle["FOV Enabled"]:getState()and l.Slider["FOV Size"]:getValue()or 2560;if z then local z=l.Toggle["FOV Lock Center"]:getState()and Vector2.new(t.ViewportSize.X/2,t.ViewportSize.Y/2)or f:GetMouseLocation();local y=(z-Vector2.new(o.X,o.Y)).Magnitude;if y<=c then p=j[1][j[3]];end;end;end;end;if not p then p=Z:GetTarget();if p then j[1][j[3]]=p;b[1][b[3]]=i;L[1][L[3]]=0;end;end;if p then local o=i-b[1][b[3]];L[1][L[3]]=math.min(L[1][L[3]]+0.08,1);local i=p.Position+Vector3.new(0,l.Slider[

-- [frag 0754 @ offset 3091642] (141 bytes)
]:getState()or Z:IsVisible(j[1][j[3]]);if o and o.Health>0 and z then local o,z=t:WorldToViewportPoint(j[1][j[3]].Position);local c=l.Toggle[

-- [frag 0755 @ offset 3091801] (25 bytes)
]:getState()and l.Slider[

-- [frag 0756 @ offset 3091845] (47 bytes)
]:getValue()or 2560;if z then local z=l.Toggle[

-- [frag 0757 @ offset 3091939] (1311 bytes)
]:getState()and Vector2.new(t.ViewportSize.X/2,t.ViewportSize.Y/2)or f:GetMouseLocation();local y=(z-Vector2.new(o.X,o.Y)).Magnitude;if y<=c then p=j[1][j[3]];end;end;end;end;if not p then p=Z:GetTarget();if p then j[1][j[3]]=p;b[1][b[3]]=i;L[1][L[3]]=0;end;end;if p then local o=i-b[1][b[3]];L[1][L[3]]=math.min(L[1][L[3]]+0.08,1);local i=p.Position+Vector3.new(0,l.Slider['Aimbot Offset']:getValue(),0);local p,z=t:WorldToViewportPoint(i);if z then local t=f:GetMouseLocation();local f=p.X-t.X;local z=p.Y-t.Y;local t=math.sqrt(f*f+z*z);local p=l.Slider['Aimbot Smoothing']:getValue();local f=math.clamp(t/150,0.4,1);local t=0.3+(0.7*L[1][L[3]]);local z=p*f*t;if o<0.1 then z=z*0.5;end;local t=l.Dropdown['Aimbot Move Methods']:getValue();if t=='camera'then Z:cameraMouseMove(i);else Z:smoothMouseMove(i,z);end;else j[1][j[3]]=nil;b[1][b[3]]=0;L[1][L[3]]=0;end;end;else j[1][j[3]]=nil;b[1][b[3]]=0;L[1][L[3]]=0;end;end;end,sX=function(i,Z,t,j,p,L,b)local f;if L<=0x5B then t[2][p+1]=(j);return 0XbFAa;else f=i:mX(p,b,L,t,Z);if f~=24837 then else return 27393;end;end;return nil;end,yh=function(i,i,Z)Z=i[53]();return Z;end,Ws=function(i)local Z=i[2];local t=i[1];local j=i[0];return function()local i=j.Character or j.CharacterAdded:Wait();local p=i:FindFirstChildWhichIsA('Tool')or j.Backpack:FindFirstChild(

-- [frag 0758 @ offset 3092358] (167 bytes)
]:getValue(),0);local p,z=t:WorldToViewportPoint(i);if z then local t=f:GetMouseLocation();local f=p.X-t.X;local z=p.Y-t.Y;local t=math.sqrt(f*f+z*z);local p=l.Slider[

-- [frag 0759 @ offset 3092564] (133 bytes)
]:getValue();local f=math.clamp(t/150,0.4,1);local t=0.3+(0.7*L[1][L[3]]);local z=p*f*t;if o<0.1 then z=z*0.5;end;local t=l.Dropdown[

-- [frag 0760 @ offset 3092753] (19 bytes)
]:getValue();if t==

-- [frag 0761 @ offset 3093517] (1286 bytes)
);lureLabel:updateText({text=i and tostring(math.round(i.Value))or'Waiting For Player'});end;if Z.Toggle['No Shake Fail']:getState()then local i=t:FindFirstChild('shakeui');if i and i:FindFirstChild('safezone')and i.safezone:FindFirstChild('button')then local Z=i.safezone.button;Z.Transparency=1;Z.Size=UDim2.new(5,0,5,0);end;end;end;end,fs=function(i)local Z=i[38];local t=i[34];local j=i[12];local p=i[55];local L=i[42];local b=i[21];local f=i[14];local l=i[30];local o=i[8];local z=i[37];local c=i[58];local y=i[56];local n=i[4];local X=i[2];local M=i[57];local R=i[29];local w=i[52];local K=i[5];local e=i[32];local U=i[7];local C=i[15];local d=i[0];local G=i[51];local x=i[28];local J=i[23];local B=i[40];local F=i[17];local Q=i[26];local V=i[53];local u=i[11];local E=i[50];local s=i[9];local I=i[60];local v=i[48];local W=i[63];local H=i[39];local m=i[49];local q=i[33];local P=i[44];local O=i[3];local r=i[13];local T=i[46];local Y=i[19];local A=i[27];local k=i[1];local h=i[59];local N=i[47];local D=i[22];local S=i[6];local g=i[31];local a=i[10];local Zf=i[41];local tf=i[24];local jf=i[18];local pf=i[45];local Lf=i[25];local bf=i[16];local ff=i[62];local lf=i[20];local of=i[35];local zf=i[43];local cf=i[54];local yf=i[61];local nf=i[36];return function()local i=O.Slider[

-- [frag 0762 @ offset 3093680] (42 bytes)
]:getState()then local i=t:FindFirstChild(

-- [frag 0763 @ offset 3093829] (1265 bytes)
)then local Z=i.safezone.button;Z.Transparency=1;Z.Size=UDim2.new(5,0,5,0);end;end;end;end,fs=function(i)local Z=i[38];local t=i[34];local j=i[12];local p=i[55];local L=i[42];local b=i[21];local f=i[14];local l=i[30];local o=i[8];local z=i[37];local c=i[58];local y=i[56];local n=i[4];local X=i[2];local M=i[57];local R=i[29];local w=i[52];local K=i[5];local e=i[32];local U=i[7];local C=i[15];local d=i[0];local G=i[51];local x=i[28];local J=i[23];local B=i[40];local F=i[17];local Q=i[26];local V=i[53];local u=i[11];local E=i[50];local s=i[9];local I=i[60];local v=i[48];local W=i[63];local H=i[39];local m=i[49];local q=i[33];local P=i[44];local O=i[3];local r=i[13];local T=i[46];local Y=i[19];local A=i[27];local k=i[1];local h=i[59];local N=i[47];local D=i[22];local S=i[6];local g=i[31];local a=i[10];local Zf=i[41];local tf=i[24];local jf=i[18];local pf=i[45];local Lf=i[25];local bf=i[16];local ff=i[62];local lf=i[20];local of=i[35];local zf=i[43];local cf=i[54];local yf=i[61];local nf=i[36];return function()local i=O.Slider["FOV Size"]:getValue();local Xf=O.ColorPicker["FOV Color"]:getColor();local Mf=O.Slider["FOV Thickness"]:getValue();local Rf=O.Toggle["FOV Filled"]:getState();local wf=O.Slider["FOV Transparency"]:getValue();local Kf=O.Keybind[

-- [frag 0764 @ offset 3094890] (36 bytes)
]:getValue();local Xf=O.ColorPicker[

-- [frag 0765 @ offset 3094951] (31 bytes)
]:getColor();local Mf=O.Slider[

-- [frag 0766 @ offset 3095025] (31 bytes)
]:getValue();local Rf=O.Toggle[

-- [frag 0767 @ offset 3095086] (31 bytes)
]:getState();local wf=O.Slider[

-- [frag 0768 @ offset 3095163] (70 bytes)
]:getValue();local Kf=O.Keybind['Fly']:getKeybind();local ef=O.Slider[

-- [frag 0769 @ offset 3095207] (77 bytes)
]:getKeybind();local ef=O.Slider["Fly Speed"]:getValue();local Uf=O.Dropdown[

-- [frag 0770 @ offset 3095264] (335 bytes)
]:getValue();local Uf=O.Dropdown['Spectate Player']:getValue();if Kf=='None'then Kf='Y';end;y();W:Update();if O.Toggle['Custom Walkspeed']:getState()then local y=getrenv()._G;if y.core_checkers and y.core_checkers.base_speed then y.core_checkers.base_speed=O.Slider['Walkspeed']and O.Slider['Walkspeed']:getValue();end;end;if O.Toggle[

-- [frag 0771 @ offset 3095335] (20 bytes)
]:getValue();if Kf==

-- [frag 0772 @ offset 3095447] (129 bytes)
]:getState()then local y=getrenv()._G;if y.core_checkers and y.core_checkers.base_speed then y.core_checkers.base_speed=O.Slider[

-- [frag 0773 @ offset 3095642] (3369 bytes)
]:getValue();end;end;if O.Toggle["Spectate"]:getState()then if Uf then local y=c:FindFirstChild(Uf);if y and y.Character and y.Character:FindFirstChild(nf[1][nf[3]])then ff[1][ff[3]]=y;q.CameraSubject=y.Character.Humanoid;end;end;end;if O.Toggle["Free Cam"]:getState()then if not r[1][r[3]]then r[1][r[3]]=true;p[1][p[3]]=q.CameraType;originalCameraSubject=q.CameraSubject;originalMouseBehavior=S.MouseBehavior;local p=j.Character and j.Character:FindFirstChild(nf[1][nf[3]])and j.Character.HumanoidRootPart.CFrame;if p then local y=CFrame.new(q.CFrame.Position,q.CFrame.Position+p.LookVector);a[1][a[3]]=y;else a[1][a[3]]=CFrame.new(q.CFrame.Position,q.CFrame.Position+Vector3.new(0,0,-1.0));end;freeCamSpeed=50;freeCamBoostMultiplier=3;freeCamMouseSensitivity=0.003;freeCamVelocity=Vector3.new(0,0,0);freeCamAcceleration=150;freeCamDeceleration=10;if j.Character and j.Character:FindFirstChild("Humanoid")then originalWalkSpeed=j.Character.Humanoid.WalkSpeed;originalJumpPower=j.Character.Humanoid.JumpPower;originalPlatformStand=j.Character.Humanoid.PlatformStand;j.Character.Humanoid.PlatformStand=true;j.Character.Humanoid.WalkSpeed=0;j.Character.Humanoid.JumpPower=0;end;q.CameraType=Enum.CameraType.Scriptable;q.CFrame=a[1][a[3]];end;local p=G.RenderStepped:Wait();local y=Vector3.new(0,0,0);local G=freeCamSpeed;local W=S:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);if W and S.MouseBehavior~=Enum.MouseBehavior.LockCenter then S.MouseBehavior=Enum.MouseBehavior.LockCenter;elseif not W and S.MouseBehavior==Enum.MouseBehavior.LockCenter then S.MouseBehavior=originalMouseBehavior;end;if S:IsKeyDown(Enum.KeyCode.LeftShift)then G=G*freeCamBoostMultiplier;end;if S:IsKeyDown(Enum.KeyCode.W)then y=y+a[1][a[3]].LookVector;end;if S:IsKeyDown(Enum.KeyCode.S)then y=y-a[1][a[3]].LookVector;end;if S:IsKeyDown(Enum.KeyCode.A)then y=y-a[1][a[3]].RightVector;end;if S:IsKeyDown(Enum.KeyCode.D)then y=y+a[1][a[3]].RightVector;end;if S:IsKeyDown(Enum.KeyCode.E)or S:IsKeyDown(Enum.KeyCode.Space)then y=y+Vector3.new(0,1,0);end;if S:IsKeyDown(Enum.KeyCode.Q)or S:IsKeyDown(Enum.KeyCode.LeftControl)then y=y-Vector3.new(0,1,0);end;if y.Magnitude>0 then y=y.Unit;local ff=y*G;freeCamVelocity=freeCamVelocity:Lerp(ff,freeCamAcceleration*p);else freeCamVelocity=freeCamVelocity:Lerp(Vector3.new(0,0,0),freeCamDeceleration*p);end;a[1][a[3]]=a[1][a[3]]+(freeCamVelocity*p);if W then local p=S:GetMouseDelta();local y=-p.Y*freeCamMouseSensitivity;local G=-p.X*freeCamMouseSensitivity;a[1][a[3]]=a[1][a[3]]*CFrame.Angles(y,0,0);a[1][a[3]]=a[1][a[3]]*CFrame.fromAxisAngle(Vector3.new(0,1,0),G);end;q.CFrame=a[1][a[3]];end;if not r[1][r[3]]then flyActive=flyActive or false;if not flyKeyConnection then flyKeyConnection=S.InputBegan:Connect(function(p,y)if not y and p.KeyCode==Enum.KeyCode[Kf]then flyActive=not flyActive;end;end);end;if flyActive then local p=j.Character;if p and p:FindFirstChild(nf[1][nf[3]])then local y=p.HumanoidRootPart;y.Velocity=Vector3.new(0,2,0);if S:IsKeyDown(Enum.KeyCode.W)then y.CFrame=y.CFrame+(s.CFrame.LookVector*ef);elseif S:IsKeyDown(Enum.KeyCode.S)then y.CFrame=y.CFrame+(-s.CFrame.LookVector*ef);elseif S:IsKeyDown(Enum.KeyCode.A)then y.CFrame=y.CFrame+(-s.CFrame.RightVector*ef);elseif S:IsKeyDown(Enum.KeyCode.D)then y.CFrame=y.CFrame+(s.CFrame.RightVector*ef);end;end;end;end;if z[1][z[3]]then local p=z[1][z[3]];local z=O.Toggle[

-- [frag 0774 @ offset 3095706] (203 bytes)
]:getState()then if Uf then local y=c:FindFirstChild(Uf);if y and y.Character and y.Character:FindFirstChild(nf[1][nf[3]])then ff[1][ff[3]]=y;q.CameraSubject=y.Character.Humanoid;end;end;end;if O.Toggle[

-- [frag 0775 @ offset 3095928] (640 bytes)
]:getState()then if not r[1][r[3]]then r[1][r[3]]=true;p[1][p[3]]=q.CameraType;originalCameraSubject=q.CameraSubject;originalMouseBehavior=S.MouseBehavior;local p=j.Character and j.Character:FindFirstChild(nf[1][nf[3]])and j.Character.HumanoidRootPart.CFrame;if p then local y=CFrame.new(q.CFrame.Position,q.CFrame.Position+p.LookVector);a[1][a[3]]=y;else a[1][a[3]]=CFrame.new(q.CFrame.Position,q.CFrame.Position+Vector3.new(0,0,-1.0));end;freeCamSpeed=50;freeCamBoostMultiplier=3;freeCamMouseSensitivity=0.003;freeCamVelocity=Vector3.new(0,0,0);freeCamAcceleration=150;freeCamDeceleration=10;if j.Character and j.Character:FindFirstChild(

-- [frag 0776 @ offset 3096588] (2716 bytes)
)then originalWalkSpeed=j.Character.Humanoid.WalkSpeed;originalJumpPower=j.Character.Humanoid.JumpPower;originalPlatformStand=j.Character.Humanoid.PlatformStand;j.Character.Humanoid.PlatformStand=true;j.Character.Humanoid.WalkSpeed=0;j.Character.Humanoid.JumpPower=0;end;q.CameraType=Enum.CameraType.Scriptable;q.CFrame=a[1][a[3]];end;local p=G.RenderStepped:Wait();local y=Vector3.new(0,0,0);local G=freeCamSpeed;local W=S:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);if W and S.MouseBehavior~=Enum.MouseBehavior.LockCenter then S.MouseBehavior=Enum.MouseBehavior.LockCenter;elseif not W and S.MouseBehavior==Enum.MouseBehavior.LockCenter then S.MouseBehavior=originalMouseBehavior;end;if S:IsKeyDown(Enum.KeyCode.LeftShift)then G=G*freeCamBoostMultiplier;end;if S:IsKeyDown(Enum.KeyCode.W)then y=y+a[1][a[3]].LookVector;end;if S:IsKeyDown(Enum.KeyCode.S)then y=y-a[1][a[3]].LookVector;end;if S:IsKeyDown(Enum.KeyCode.A)then y=y-a[1][a[3]].RightVector;end;if S:IsKeyDown(Enum.KeyCode.D)then y=y+a[1][a[3]].RightVector;end;if S:IsKeyDown(Enum.KeyCode.E)or S:IsKeyDown(Enum.KeyCode.Space)then y=y+Vector3.new(0,1,0);end;if S:IsKeyDown(Enum.KeyCode.Q)or S:IsKeyDown(Enum.KeyCode.LeftControl)then y=y-Vector3.new(0,1,0);end;if y.Magnitude>0 then y=y.Unit;local ff=y*G;freeCamVelocity=freeCamVelocity:Lerp(ff,freeCamAcceleration*p);else freeCamVelocity=freeCamVelocity:Lerp(Vector3.new(0,0,0),freeCamDeceleration*p);end;a[1][a[3]]=a[1][a[3]]+(freeCamVelocity*p);if W then local p=S:GetMouseDelta();local y=-p.Y*freeCamMouseSensitivity;local G=-p.X*freeCamMouseSensitivity;a[1][a[3]]=a[1][a[3]]*CFrame.Angles(y,0,0);a[1][a[3]]=a[1][a[3]]*CFrame.fromAxisAngle(Vector3.new(0,1,0),G);end;q.CFrame=a[1][a[3]];end;if not r[1][r[3]]then flyActive=flyActive or false;if not flyKeyConnection then flyKeyConnection=S.InputBegan:Connect(function(p,y)if not y and p.KeyCode==Enum.KeyCode[Kf]then flyActive=not flyActive;end;end);end;if flyActive then local p=j.Character;if p and p:FindFirstChild(nf[1][nf[3]])then local y=p.HumanoidRootPart;y.Velocity=Vector3.new(0,2,0);if S:IsKeyDown(Enum.KeyCode.W)then y.CFrame=y.CFrame+(s.CFrame.LookVector*ef);elseif S:IsKeyDown(Enum.KeyCode.S)then y.CFrame=y.CFrame+(-s.CFrame.LookVector*ef);elseif S:IsKeyDown(Enum.KeyCode.A)then y.CFrame=y.CFrame+(-s.CFrame.RightVector*ef);elseif S:IsKeyDown(Enum.KeyCode.D)then y.CFrame=y.CFrame+(s.CFrame.RightVector*ef);end;end;end;end;if z[1][z[3]]then local p=z[1][z[3]];local z=O.Toggle['FOV Lock Center']:getState();local y=O.Toggle['FOV Effects']:getState();if z then p.Position=Vector2.new(q.ViewportSize.X/2,q.ViewportSize.Y/2);else p.Position=Vector2.new(b.X+R.X,b.Y+R.Y);end;p.Visible=m[1][m[3]]and zf[1][zf[3]];p.Color=O.ColorPicker[

-- [frag 0777 @ offset 3099089] (30 bytes)
]:getState();local y=O.Toggle[

-- [frag 0778 @ offset 3099150] (681 bytes)
]:getState();if z then p.Position=Vector2.new(q.ViewportSize.X/2,q.ViewportSize.Y/2);else p.Position=Vector2.new(b.X+R.X,b.Y+R.Y);end;p.Visible=m[1][m[3]]and zf[1][zf[3]];p.Color=O.ColorPicker["FOV Outline Color"]:getColor();p.Thickness=O.Slider["FOV Outline Thickness"]:getValue();p.Transparency=O.Slider["FOV Outline Transparency"]:getValue();p.Filled=false;p.NumSides=128;p.ZIndex=1;if y then local z=tick();local y=O.Slider["Effect Speed"]:getValue();local G=O.Slider["Effect Intensity"]:getValue();local s=math.sin(z*y)*G+(1-G);if S:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then p.Thickness=O.Slider["FOV Outline Thickness"]:getValue()+0.5;p.Transparency=O.Slider[

-- [frag 0779 @ offset 3099394] (34 bytes)
]:getColor();p.Thickness=O.Slider[

-- [frag 0780 @ offset 3099488] (37 bytes)
]:getValue();p.Transparency=O.Slider[

-- [frag 0781 @ offset 3099601] (96 bytes)
]:getValue();p.Filled=false;p.NumSides=128;p.ZIndex=1;if y then local z=tick();local y=O.Slider[

-- [frag 0782 @ offset 3099730] (30 bytes)
]:getValue();local G=O.Slider[

-- [frag 0783 @ offset 3099802] (127 bytes)
]:getValue();local s=math.sin(z*y)*G+(1-G);if S:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then p.Thickness=O.Slider[

-- [frag 0784 @ offset 3099978] (113 bytes)
]:getValue()+0.5;p.Transparency=O.Slider['FOV Outline Transparency']:getValue()*0.3;else p.Transparency=O.Slider[

-- [frag 0785 @ offset 3100093] (158 bytes)
]:getValue()*0.3;else p.Transparency=O.Slider["FOV Outline Transparency"]:getValue()*s;end;end;if O.Toggle["FOV Auto Adjust"]:getState()then local z=O.Slider[

-- [frag 0786 @ offset 3100190] (35 bytes)
]:getValue()*s;end;end;if O.Toggle[

-- [frag 0787 @ offset 3100272] (137 bytes)
]:getState()then local z=O.Slider['FOV Size']:getValue();local y=(S:IsMouseButtonPressed(Enum.UserInputType.MouseButton2))and(z*O.Slider[

-- [frag 0788 @ offset 3100337] (211 bytes)
]:getValue();local y=(S:IsMouseButtonPressed(Enum.UserInputType.MouseButton2))and(z*O.Slider["Adjust Size"]:getValue())or z;local z=F[1][F[3]]+(y-F[1][F[3]])*O.Slider["Adjust Speed"]:getValue();local y=O.Slider[

-- [frag 0789 @ offset 3100461] (61 bytes)
]:getValue())or z;local z=F[1][F[3]]+(y-F[1][F[3]])*O.Slider[

-- [frag 0790 @ offset 3100552] (75 bytes)
]:getValue();local y=O.Slider['FOV Thickness']:getValue();local G=O.Slider[

-- [frag 0791 @ offset 3100611] (354 bytes)
]:getValue();local G=O.Slider["FOV Outline Thickness"]:getValue();p.Radius=z+(y/2)+(G/2);else local z=O.Slider["FOV Thickness"]:getValue();local y=O.Slider["FOV Outline Thickness"]:getValue();p.Radius=O.Slider["FOV Size"]:getValue()+(z/2)+(y/2);end;end;if l[1][l[3]]then local p=l[1][l[3]];local z=O.Toggle["FOV Lock Center"]:getState();local y=O.Toggle[

-- [frag 0792 @ offset 3100703] (58 bytes)
]:getValue();p.Radius=z+(y/2)+(G/2);else local z=O.Slider[

-- [frag 0793 @ offset 3100793] (30 bytes)
]:getValue();local y=O.Slider[

-- [frag 0794 @ offset 3100893] (31 bytes)
]:getValue();p.Radius=O.Slider[

-- [frag 0795 @ offset 3100949] (87 bytes)
]:getValue()+(z/2)+(y/2);end;end;if l[1][l[3]]then local p=l[1][l[3]];local z=O.Toggle[

-- [frag 0796 @ offset 3101091] (368 bytes)
]:getState();local y=O.Toggle['FOV Effects']:getState();if z then p.Position=Vector2.new(q.ViewportSize.X/2,q.ViewportSize.Y/2);else p.Position=Vector2.new(b.X+R.X,b.Y+R.Y);end;p.Visible=zf[1][zf[3]];p.Color=Xf;p.Thickness=Mf;p.Transparency=wf;p.Filled=Rf;p.NumSides=128;p.ZIndex=2;if y then local z=tick();local y=O.Slider['Effect Speed']:getValue();local G=O.Slider[

-- [frag 0797 @ offset 3101147] (281 bytes)
]:getState();if z then p.Position=Vector2.new(q.ViewportSize.X/2,q.ViewportSize.Y/2);else p.Position=Vector2.new(b.X+R.X,b.Y+R.Y);end;p.Visible=zf[1][zf[3]];p.Color=Xf;p.Thickness=Mf;p.Transparency=wf;p.Filled=Rf;p.NumSides=128;p.ZIndex=2;if y then local z=tick();local y=O.Slider[

-- [frag 0798 @ offset 3101462] (1070 bytes)
]:getValue();local G=O.Slider["Effect Intensity"]:getValue();local s=math.sin(z*y)*G+(1-G);local W=math.sin(z*y*0.7)*G+(1-G);if S:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then p.Color=Xf:Lerp(Color3.new(1,1,1),0.5);p.Thickness=Mf+1;p.Transparency=wf*0.3;else p.Color=Xf:Lerp(Color3.new(1,1,1),W*0.3);p.Transparency=wf*s;end;end;if O.Toggle["FOV Auto Adjust"]:getState()then local z=i;local y=(S:IsMouseButtonPressed(Enum.UserInputType.MouseButton2))and(z*O.Slider["Adjust Size"]:getValue())or z;F[1][F[3]]=F[1][F[3]]+(y-F[1][F[3]])*O.Slider["Adjust Speed"]:getValue();p.Radius=F[1][F[3]];else F[1][F[3]]=i;p.Radius=F[1][F[3]];end;end;if h[1][h[3]]then local i=h[1][h[3]];local p=O.Toggle["FOV Effects"]:getState();i.Visible=yf[1][yf[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if l[1][l[3]]and zf[1][zf[3]]then local z=l[1][l[3]];i.Position=Vector2.new(z.Position.X,z.Position.Y+z.Radius+8);local l=O.ColorPicker["FOV Color"]:getColor();i.Color=l:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if p then local p=tick();local z=O.Slider[

-- [frag 0799 @ offset 3101541] (304 bytes)
]:getValue();local s=math.sin(z*y)*G+(1-G);local W=math.sin(z*y*0.7)*G+(1-G);if S:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then p.Color=Xf:Lerp(Color3.new(1,1,1),0.5);p.Thickness=Mf+1;p.Transparency=wf*0.3;else p.Color=Xf:Lerp(Color3.new(1,1,1),W*0.3);p.Transparency=wf*s;end;end;if O.Toggle[

-- [frag 0800 @ offset 3101893] (107 bytes)
]:getState()then local z=i;local y=(S:IsMouseButtonPressed(Enum.UserInputType.MouseButton2))and(z*O.Slider[

-- [frag 0801 @ offset 3102026] (64 bytes)
]:getValue())or z;F[1][F[3]]=F[1][F[3]]+(y-F[1][F[3]])*O.Slider[

-- [frag 0802 @ offset 3102125] (133 bytes)
]:getValue();p.Radius=F[1][F[3]];else F[1][F[3]]=i;p.Radius=F[1][F[3]];end;end;if h[1][h[3]]then local i=h[1][h[3]];local p=O.Toggle[

-- [frag 0803 @ offset 3102286] (220 bytes)
]:getState();i.Visible=yf[1][yf[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if l[1][l[3]]and zf[1][zf[3]]then local z=l[1][l[3]];i.Position=Vector2.new(z.Position.X,z.Position.Y+z.Radius+8);local l=O.ColorPicker[

-- [frag 0804 @ offset 3102524] (393 bytes)
]:getColor();i.Color=l:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if p then local p=tick();local z=O.Slider['Effect Speed']:getValue();local y=O.Slider['Effect Intensity']:getValue();local G=math.sin(p*z*0.8)*y+(1-y);i.Color=l:Lerp(Color3.new(1,1,1),G);end;else i.Position=Vector2.new(b.X+R.X,b.Y+R.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text=

-- [frag 0805 @ offset 3102757] (231 bytes)
]:getValue();local G=math.sin(p*z*0.8)*y+(1-y);i.Color=l:Lerp(Color3.new(1,1,1),G);end;else i.Position=Vector2.new(b.X+R.X,b.Y+R.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text="Max Hub";end;if O.Toggle[

-- [frag 0806 @ offset 3102984] (331 bytes)
;end;if O.Toggle['Fullbright']and O.Toggle['Fullbright']:getState()then k.Brightness=2;k.ClockTime=14;k.FogEnd=100000;k.GlobalShadows=false;k.OutdoorAmbient=Color3.fromRGB(128,128,128);k.Ambient=Color3.fromRGB(178,178,178);end;if O.Toggle['No Fog']and O.Toggle['No Fog']:getState()then k.FogEnd=100000;k.FogStart=0;end;if O.Toggle[

-- [frag 0807 @ offset 3103087] (184 bytes)
]:getState()then k.Brightness=2;k.ClockTime=14;k.FogEnd=100000;k.GlobalShadows=false;k.OutdoorAmbient=Color3.fromRGB(128,128,128);k.Ambient=Color3.fromRGB(178,178,178);end;if O.Toggle[

-- [frag 0808 @ offset 3103320] (206 bytes)
]:getState()then k.FogEnd=100000;k.FogStart=0;end;if O.Toggle["Remove Shadows"]and O.Toggle["Remove Shadows"]:getState()then k.GlobalShadows=false;end;if O.Slider["Ambient Brightness"]then local i=O.Slider[

-- [frag 0809 @ offset 3103487] (55 bytes)
]:getState()then k.GlobalShadows=false;end;if O.Slider[

-- [frag 0810 @ offset 3103602] (229 bytes)
]then local i=O.Slider['Ambient Brightness']:getValue();if i>0 then k.Ambient=Color3.fromRGB(i*25.5,i*25.5,i*25.5);k.OutdoorAmbient=Color3.fromRGB(i*25.5,i*25.5,i*25.5);end;end;if O.Slider['Time of Day']then k.ClockTime=O.Slider[

-- [frag 0811 @ offset 3103693] (146 bytes)
]:getValue();if i>0 then k.Ambient=Color3.fromRGB(i*25.5,i*25.5,i*25.5);k.OutdoorAmbient=Color3.fromRGB(i*25.5,i*25.5,i*25.5);end;end;if O.Slider[

-- [frag 0812 @ offset 3103872] (69 bytes)
]then k.ClockTime=O.Slider["Time of Day"]:getValue();end;if O.Toggle[

-- [frag 0813 @ offset 3103936] (254 bytes)
]:getValue();end;if O.Toggle['Rainbow Sky']and O.Toggle['Rainbow Sky']:getState()then local i=tick()%5/5;k.Ambient=Color3.fromHSV(i,1,1);k.OutdoorAmbient=Color3.fromHSV(i,1,1);end;if j.Character and j.Character:FindFirstChild('Humanoid')then if O.Slider[

-- [frag 0814 @ offset 3104046] (157 bytes)
]:getState()then local i=tick()%5/5;k.Ambient=Color3.fromHSV(i,1,1);k.OutdoorAmbient=Color3.fromHSV(i,1,1);end;if j.Character and j.Character:FindFirstChild(

-- [frag 0815 @ offset 3104229] (292 bytes)
)then if O.Slider["Jump Power"]then j.Character.Humanoid.JumpPower=O.Slider["Jump Power"]:getValue();end;end;if O.Toggle["Ambient Enabled"]:getState()then k.Ambient=O.ColorPicker["Ambient Color"]:getColor();if K then K.Color=O.ColorPicker["Atmosphere Color"]:getColor();K.Decay=O.ColorPicker[

-- [frag 0816 @ offset 3104283] (46 bytes)
]then j.Character.Humanoid.JumpPower=O.Slider[

-- [frag 0817 @ offset 3104361] (33 bytes)
]:getValue();end;end;if O.Toggle[

-- [frag 0818 @ offset 3104436] (41 bytes)
]:getState()then k.Ambient=O.ColorPicker[

-- [frag 0819 @ offset 3104510] (45 bytes)
]:getColor();if K then K.Color=O.ColorPicker[

-- [frag 0820 @ offset 3104595] (136 bytes)
]:getColor();K.Decay=O.ColorPicker['Atmosphere Decay Color']:getColor();K.Glare=O.Slider['Atmosphere Glare']:getValue();K.Haze=O.Slider[

-- [frag 0821 @ offset 3104688] (30 bytes)
]:getColor();K.Glare=O.Slider[

-- [frag 0822 @ offset 3104754] (131 bytes)
]:getValue();K.Haze=O.Slider["Atmosphere Haze"]:getValue();K.Density=O.Slider["Atmosphere Density"]:getValue();end;end;if O.Toggle[

-- [frag 0823 @ offset 3104824] (32 bytes)
]:getValue();K.Density=O.Slider[

-- [frag 0824 @ offset 3104923] (200 bytes)
]:getValue();end;end;if O.Toggle['Free Charge Control']and O.Toggle['Free Charge Control']:getState()then if not n[1][n[3]]then n[1][n[3]]=true;N[1][N[3]]={};for i,i in next,getgc(true)do if type(i)==

-- [frag 0825 @ offset 3105090] (131 bytes)
]:getState()then if not n[1][n[3]]then n[1][n[3]]=true;N[1][N[3]]={};for i,i in next,getgc(true)do if type(i)=="table"and rawget(i,

-- [frag 0826 @ offset 3106641] (156 bytes)
]and O.Toggle['Instant Run']:getState()then g[1][g[3]]=true;if not H[1][H[3]]then H[1][H[3]]=true;cf[1][cf[3]]={};for i,i in next,getgc(true)do if type(i)==

-- [frag 0827 @ offset 3106682] (327 bytes)
]:getState()then g[1][g[3]]=true;if not H[1][H[3]]then H[1][H[3]]=true;cf[1][cf[3]]={};for i,i in next,getgc(true)do if type(i)=="table"and rawget(i,"sprint_fullspeed_time")~=nil and rawget(i,"base_walkspeed")~=nil then table.insert(cf[1][cf[3]],i);end;end;end;for i=#cf[1][cf[3]],1,-1.0 do local p=cf[1][cf[3]][i];if type(p)~=

-- [frag 0828 @ offset 3108141] (329 bytes)
,p.sprint_fullspeed_time);end;end);end;end;g[1][g[3]]=false;H[1][H[3]]=false;of[1][of[3]]=false;cf[1][cf[3]]={};P[1][P[3]]={};Zf[1][Zf[3]]={};end;if O.Toggle['No Utility Cooldown']and O.Toggle['No Utility Cooldown']:getState()then if not lf[1][lf[3]]then lf[1][lf[3]]=true;T[1][T[3]]={};for i,i in next,getgc(true)do if type(i)==

-- [frag 0829 @ offset 3108429] (173 bytes)
]:getState()then if not lf[1][lf[3]]then lf[1][lf[3]]=true;T[1][T[3]]={};for i,i in next,getgc(true)do if type(i)=="table"and rawget(i,"equipment_ticker")~=nil and rawget(i,

-- [frag 0830 @ offset 3112432] (331 bytes)
]and O.Toggle['Infinite Sharpness']:getState()then o[1][o[3]]=true;if not D[1][D[3]]then D[1][D[3]]=true;pf[1][pf[3]]={};Z[1][Z[3]]={};for i,i in next,getgc(true)do if type(i)=='table'then local p=rawget(i,'tooltype');local b=rawget(i,'animations');local l=rawget(i,'name');local z=type(l)=='string'and string.lower(l)or nil;if p==

-- [frag 0831 @ offset 3112515] (143 bytes)
]:getState()then o[1][o[3]]=true;if not D[1][D[3]]then D[1][D[3]]=true;pf[1][pf[3]]={};Z[1][Z[3]]={};for i,i in next,getgc(true)do if type(i)==

-- [frag 0832 @ offset 3119148] (398 bytes)
,p.heavy_strength);end;end);end;end;for i,p in next,e[1][e[3]]do if i and i.Parent then pcall(function()i.Value=p;end);end;end;o[1][o[3]]=false;D[1][D[3]]=false;pf[1][pf[3]]={};Z[1][Z[3]]={};A[1][A[3]]={};e[1][e[3]]={};end;if O.Toggle['No Spread']and O.Toggle['No Spread']:getState()then J[1][J[3]]=true;if not w[1][w[3]]then w[1][w[3]]=true;v[1][v[3]]={};for i,i in next,getgc(true)do if type(i)==

-- [frag 0833 @ offset 3119450] (177 bytes)
]:getState()then J[1][J[3]]=true;if not w[1][w[3]]then w[1][w[3]]=true;v[1][v[3]]={};for i,i in next,getgc(true)do if type(i)=="table"and rawget(i,"accuracy")~=nil and rawget(i,

-- [frag 0834 @ offset 3121230] (114 bytes)
]and O.Toggle['Quick Reload']:getState()then Lf[1][Lf[3]]=true;local i=O.Slider['Quick Reload Speed']and O.Slider[

-- [frag 0835 @ offset 3121297] (52 bytes)
]:getState()then Lf[1][Lf[3]]=true;local i=O.Slider[

-- [frag 0836 @ offset 3121382] (223 bytes)
]and O.Slider["Quick Reload Speed"]:getValue()or 0.05;i=math.max(0.01,i);if not jf[1][jf[3]]then jf[1][jf[3]]=true;t[1][t[3]]={};for Z,Z in next,getgc(true)do if type(Z)=="table"and rawget(Z,"animations")~=nil and rawget(Z,

-- [frag 0837 @ offset 3121456] (137 bytes)
]:getValue()or 0.05;i=math.max(0.01,i);if not jf[1][jf[3]]then jf[1][jf[3]]=true;t[1][t[3]]={};for Z,Z in next,getgc(true)do if type(Z)==

-- [frag 0838 @ offset 3124075] (362 bytes)
,Z.cycle);end;if Z.cycle_rest~=nil then rawset(i,"cycle_rest",Z.cycle_rest);end;end);end;end;Lf[1][Lf[3]]=false;jf[1][jf[3]]=false;t[1][t[3]]={};Q[1][Q[3]]={};end;if O.Toggle["Instant Aim"]and O.Toggle["Instant Aim"]:getState()then I[1][I[3]]=true;if not X[1][X[3]]then X[1][X[3]]=true;U[1][U[3]]={};for i,i in next,getgc(true)do if type(i)=="table"and rawget(i,

-- [frag 0839 @ offset 3124339] (127 bytes)
]:getState()then I[1][I[3]]=true;if not X[1][X[3]]then X[1][X[3]]=true;U[1][U[3]]={};for i,i in next,getgc(true)do if type(i)==

-- [frag 0840 @ offset 3125687] (284 bytes)
]and O.Toggle['No Pickaxe Hit Cooldown']:getState()then V[1][V[3]]=true;if not f[1][f[3]]then f[1][f[3]]=true;bf[1][bf[3]]={};for i,i in next,getgc(true)do if type(i)=='table'and rawget(i,'fire_rate')~=nil then local Z=rawget(i,'name');local t=rawget(i,'animations');local p=rawget(i,

-- [frag 0841 @ offset 3125760] (129 bytes)
]:getState()then V[1][V[3]]=true;if not f[1][f[3]]then f[1][f[3]]=true;bf[1][bf[3]]={};for i,i in next,getgc(true)do if type(i)==

-- [frag 0842 @ offset 3128421] (648 bytes)
,Z.reload_start);end;if Z.reload_empty~=nil then rawset(i,'reload_empty',Z.reload_empty);end;if Z.reload_loop~=nil then rawset(i,'reload_loop',Z.reload_loop);end;if Z.reload_loop_after~=nil then rawset(i,'reload_loop_after',Z.reload_loop_after);end;if Z.reload_end~=nil then rawset(i,'reload_end',Z.reload_end);end;end);end;end;V[1][V[3]]=false;f[1][f[3]]=false;bf[1][bf[3]]={};d[1][d[3]]={};end;if O.Toggle['Hitbox Extender']:getState()then for i,i in ipairs(c:GetPlayers())do if i~=j then if L.Flags.Toggle['Enable Whitelist']:getState()and table.find(Y[1][Y[3]],i.Name)then return;end;pcall(function()i.Character.Torso.Size=Vector3.new(O.Slider[

-- [frag 0843 @ offset 3128984] (84 bytes)
]:getState()then for i,i in ipairs(c:GetPlayers())do if i~=j then if L.Flags.Toggle[

-- [frag 0844 @ offset 3129112] (156 bytes)
]:getState()and table.find(Y[1][Y[3]],i.Name)then return;end;pcall(function()i.Character.Torso.Size=Vector3.new(O.Slider["Hitbox Size"]:getValue(),O.Slider[

-- [frag 0845 @ offset 3129267] (57 bytes)
]:getValue(),O.Slider['Hitbox Size']:getValue(),O.Slider[

-- [frag 0846 @ offset 3129310] (89 bytes)
]:getValue(),O.Slider["Hitbox Size"]:getValue());i.Character.Torso.Transparency=O.Slider[

-- [frag 0847 @ offset 3129355] (132 bytes)
]:getValue());i.Character.Torso.Transparency=O.Slider['Hitbox Transparency']:getValue();i.Character.Torso.BrickColor=BrickColor.new(

-- [frag 0848 @ offset 3129464] (91 bytes)
]:getValue();i.Character.Torso.BrickColor=BrickColor.new("Red");i.Character.Torso.Material=

-- [frag 0849 @ offset 3129541] (2654 bytes)
);i.Character.Torso.Material='Neon';i.Character.Torso.CanCollide=false;i.Character.Torso.Massless=true;end);end;end;end;end;end,gh=function(i,Z,t,j,p,L)if j==0B10 then p=(L[0x2_5]()~=0);L[0B100]=(p);elseif j==238 then t=(L[0x2d]()-71534);return 0X379e,t,p;else if j~=0X78 then else for j=0X1_,Z,0X1 do local b,f,l;b,l,f=i:YX(l,b,f);while true do if l>26 then if l>=103 then if L[0X38]==p then for o=0b111100,219,0b001_001000 do if o>0X3C then return-0b10,t,p,-L[0x18];else if o<132 then while L[0b101111]do return-2,t,p,L[0x1e]>=-0X4;end;continue;end;end;end;else if f>0X8b then if not(f<=0Xd0)then b=i:Kh(b,L,f);else local o=0x61;repeat if o==76 then break;else if o~=97 then else b,o=i:jh(b,L,f,o);continue;end;end;until false;end;else if not(f>0X6__7)then if f>0X28 then b=i:Eh(f,L,b);else b=(false);end;else local o=(0X26);while true do if o<77 then b,o=i:Hh(L,o,f,b);else if o>38 then break;end;end;end;end;end;end;l=0X1A;continue;else l=(0B1100111);f=L[0X25]();end;else break;end;end;if L[0X27]==Z then return-0B1,t,p;else if Z==L[0X38]then return-0B10,t,p,(i:rh());else if not(p)then L[0XF][j]=(b);else L[15][j]={b,(L[0B101__100](b))};end;end;end;end;end;end;return nil,t,p;end,Hh=function(i,Z,t,j,p)t=(0b1001101);if j<=0X6E then p=i:fh(Z,p);else p=i:Bh(p,j,Z);end;return p,t;end,Oh=function(i,Z,t)t=-4294954967+((i.sh((Z[0X6901]>Z[0XBD7]and Z[0X2dbC]or Z[0x1__260__])-Z[18887]-Z[0x2__62F]-Z[971],(Z[0X5B94])))+Z[7618]);Z[16652]=(t);return t;end,Ii=function(i,i,Z,t,j)i,t=Z[0X28](),Z[0x28]();j=(0x5f);return i,t,j;end,Fi=function(i,...)return(...)[...];end,xi=bit32.band,oh=function(i,Z,t,j)for p=0X1F,0X2C,0b01101 do if not(p>=0X2_C)then if j==0X0EF then Z=t[0B110011]();else Z=i:Qh(t,Z);end;else i:Wh();end;end;return Z;end,GX=function(i,i,Z,t)t=0B10010_;i=Z[0x30]();return i,t;end,hh=function(i,Z,t,j,p,L,b)local f;while true do if p<0B1001_10_1 and p>58 then(b[0b101110])[19]=(i.vs.bxor);if not j[0X41_0C]then p=i:Oh(j,p);else p=(j[16652]);end;elseif p>0b100110 and p<0x48 then f=i:_h(t,b);return{i.Bi(f)},p,t;elseif p<38 then p,t=i:dh(p,Z,L,j,b,t);elseif p>0X7 and p<0B1__11010 then(b[46])[0Xa]=i.Ki;if not(not j[0X374__A])then p=j[14154];else p=(-3538870+((i.Uh((i.Fh((i.kh(j[0X447D])),(j[23444])))-j[0x1dc__2]-j[0X624f],(j[0X13b6])))+j[3031]));(j)[0X374A]=(p);end;continue;else if p>0X48 then p=i:Ah(b,p,j);continue;end;end;end;return nil,p,t;end,Fs=function(...)(...)[...]=nil;end,k=function(i)local Z=i[2];local t=i[0];local j=i[1];return function()local i=j.Character;local j=i and i:FindFirstChild(Z[1][Z[3]]);if t.Toggle['Impossible Hit']:getState()and not UserIsPoor then if j and j.AssemblyMass<1000 and not i:FindFirstChildWhichIsA(

-- [frag 0850 @ offset 3132117] (169 bytes)
]:getState()and not UserIsPoor then if j and j.AssemblyMass<1000 and not i:FindFirstChildWhichIsA("ForceField")then local i=j.CFrame;local Z=j.Velocity;local p=t.Slider[

-- [frag 0851 @ offset 3132253] (801 bytes)
)then local i=j.CFrame;local Z=j.Velocity;local p=t.Slider['Horizontal Speed']:getValue();local L=t.Slider['Vertical Speed']:getValue();local b=t.Slider['Rotation Speed']:getValue()/100;j.Velocity=Vector3.new(math.random(-p,p),math.random(-L,L),math.random(-p,p));j.CFrame=j.CFrame*CFrame.Angles(0,b,0);task.defer(function()if j and j.Parent then j.Velocity=Z;j.CFrame=i;end;end);end;end;end;end,Rs=function(i)local Z=i[7];local t=i[6];local j=i[11];local p=i[5];local L=i[3];local b=i[2];local f=i[18];local l=i[20];local o=i[15];local z=i[1];local c=i[19];local y=i[9];local n=i[17];local X=i[0];local M=i[16];local R=i[4];local w=i[14];local K=i[8];local e=i[10];local U=i[12];local C=i[22];local d=i[21];local G=i[13];return function()local i=L.Slider['FOV Size']:getValue();local x=L.ColorPicker[

-- [frag 0852 @ offset 3132360] (30 bytes)
]:getValue();local L=t.Slider[

-- [frag 0853 @ offset 3132428] (30 bytes)
]:getValue();local b=t.Slider[

-- [frag 0854 @ offset 3132495] (587 bytes)
]:getValue()/100;j.Velocity=Vector3.new(math.random(-p,p),math.random(-L,L),math.random(-p,p));j.CFrame=j.CFrame*CFrame.Angles(0,b,0);task.defer(function()if j and j.Parent then j.Velocity=Z;j.CFrame=i;end;end);end;end;end;end,Rs=function(i)local Z=i[7];local t=i[6];local j=i[11];local p=i[5];local L=i[3];local b=i[2];local f=i[18];local l=i[20];local o=i[15];local z=i[1];local c=i[19];local y=i[9];local n=i[17];local X=i[0];local M=i[16];local R=i[4];local w=i[14];local K=i[8];local e=i[10];local U=i[12];local C=i[22];local d=i[21];local G=i[13];return function()local i=L.Slider[

-- [frag 0855 @ offset 3133104] (118 bytes)
]:getValue();local x=L.ColorPicker["FOV Color"]:getColor();local J=L.Toggle["FOV Filled"]:getState();local B=L.Slider[

-- [frag 0856 @ offset 3133158] (30 bytes)
]:getColor();local J=L.Toggle[

-- [frag 0857 @ offset 3133216] (79 bytes)
]:getState();local B=L.Slider['FOV Transparency']:getValue();local F=L.Keybind[

-- [frag 0858 @ offset 3133292] (68 bytes)
]:getValue();local F=L.Keybind["Fly"]:getKeybind();local Q=L.Slider[

-- [frag 0859 @ offset 3133335] (166 bytes)
]:getKeybind();local Q=L.Slider['Fly Speed']:getValue();local V=L.Toggle['Always Sprint']:getState();local u=L.Toggle['Infinite Stamina']:getState();local E=L.Toggle[

-- [frag 0860 @ offset 3133387] (30 bytes)
]:getValue();local V=L.Toggle[

-- [frag 0861 @ offset 3133455] (30 bytes)
]:getState();local u=L.Toggle[

-- [frag 0862 @ offset 3133536] (76 bytes)
]:getState();local E=L.Toggle["Modify Stamina"]:getState();local s=L.Slider[

-- [frag 0863 @ offset 3133597] (130 bytes)
]:getState();local s=L.Slider['Block Distance']:getValue();local I=L.Toggle['Auto Complete Minigame']:getState();local v=L.Slider[

-- [frag 0864 @ offset 3133670] (30 bytes)
]:getValue();local I=L.Toggle[

-- [frag 0865 @ offset 3133751] (179 bytes)
]:getState();local v=L.Slider["Completion Speed"]:getValue();local W=L.Toggle["Auto 1x Popups"]:getState();local H=L.Slider["Popups Completion Speed"]:getValue();local m=L.Toggle[

-- [frag 0866 @ offset 3133827] (30 bytes)
]:getValue();local W=L.Toggle[

-- [frag 0867 @ offset 3133894] (30 bytes)
]:getState();local H=L.Slider[

-- [frag 0868 @ offset 3133987] (314 bytes)
]:getValue();local m=L.Toggle['No John Doe']:getState();local q=L.Toggle['Auto Block Projectiles']:getState();local P=L.Toggle['Auto Eat Pizza']:getState();local O=L.Toggle['Modify Walkspeed']:getState();if u or E then if u then e.SprintingModule.StaminaCap=0/0;end;if E then e.SprintingModule.StaminaCap=L.Slider[

-- [frag 0869 @ offset 3134053] (30 bytes)
]:getState();local q=L.Toggle[

-- [frag 0870 @ offset 3134132] (30 bytes)
]:getState();local P=L.Toggle[

-- [frag 0871 @ offset 3134214] (30 bytes)
]:getState();local O=L.Toggle[

-- [frag 0872 @ offset 3134299] (324 bytes)
]:getState();if u or E then if u then e.SprintingModule.StaminaCap=0/0;end;if E then e.SprintingModule.StaminaCap=L.Slider["Stamina"]:getValue();end;end;if V then e.SprintingModule.CanSprint=true;end;if m then for e,e in pairs(game.Players:GetPlayers())do if e==game.Players.LocalPlayer then continue;end;if game:GetService(

-- [frag 0873 @ offset 3134447] (239 bytes)
]:getValue();end;end;if V then e.SprintingModule.CanSprint=true;end;if m then for e,e in pairs(game.Players:GetPlayers())do if e==game.Players.LocalPlayer then continue;end;if game:GetService('Workspace').Map.Ingame:FindFirstChild(e.Name..

-- [frag 0874 @ offset 3134676] (67 bytes)
).Map.Ingame:FindFirstChild(e.Name.."Shadows")then game:GetService(

-- [frag 0875 @ offset 3134727] (69 bytes)
)then game:GetService('Workspace').Map.Ingame:FindFirstChild(e.Name..

-- [frag 0876 @ offset 3134778] (119 bytes)
).Map.Ingame:FindFirstChild(e.Name.."Shadows"):Destroy();end;if game:GetService("Workspace").Map.Ingame:FindFirstChild(

-- [frag 0877 @ offset 3134829] (35 bytes)
):Destroy();end;if game:GetService(

-- [frag 0878 @ offset 3134898] (57 bytes)
).Map.Ingame:FindFirstChild('Spike')then game:GetService(

-- [frag 0879 @ offset 3134939] (61 bytes)
)then game:GetService("Workspace").Map.Ingame:FindFirstChild(

-- [frag 0880 @ offset 3134981] (265 bytes)
).Map.Ingame:FindFirstChild('Spike'):Destroy();end;if Z:FindFirstChild('JohnDoe')and Z:FindFirstChild('JohnDoe'):FindFirstChild('JohnDoeTrail')then Z.JohnDoe.JohnDoeTrail:Destroy();end;end;end;if O then if X.Character.Humanoid then f[1][f[3]].Humanoid:SetAttribute(

-- [frag 0881 @ offset 3135171] (144 bytes)
)then Z.JohnDoe.JohnDoeTrail:Destroy();end;end;end;if O then if X.Character.Humanoid then f[1][f[3]].Humanoid:SetAttribute("BaseSpeed",L.Slider[

-- [frag 0882 @ offset 3135310] (230 bytes)
,L.Slider['WalkSpeed']:getValue());end;end;if P then if game:GetService('Workspace').Map.Ingame:FindFirstChild('Pizza')then for Z,Z in pairs(game:GetService('Workspace').Map.Ingame:GetChildren())do if Z:IsA('MeshPart')and Z.Name==

-- [frag 0883 @ offset 3135360] (51 bytes)
]:getValue());end;end;if P then if game:GetService(

-- [frag 0884 @ offset 3135486] (39 bytes)
)then for Z,Z in pairs(game:GetService(

-- [frag 0885 @ offset 3135607] (312 bytes)
)and Z.Name=="Pizza"then local f=Z:FindFirstChildOfClass("TouchTransmitter");if f then firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,Z,0);wait();firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,Z,1);end;end;end;end;end;if W and X.PlayerGui.TemporaryUI:FindFirstChild(

-- [frag 0886 @ offset 3135721] (1325 bytes)
);if f then firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,Z,0);wait();firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,Z,1);end;end;end;end;end;if W and X.PlayerGui.TemporaryUI:FindFirstChild('1x1x1x1Popup')then local Z=tick();if Z-U[1][U[3]]>=H then firesignal(X.PlayerGui.TemporaryUI['1x1x1x1Popup'].MouseButton1Click);U[1][U[3]]=Z;end;end;if b:IsKeyDown(Enum.KeyCode[F])then local Z=X.Character;local f=Z.HumanoidRootPart;f.Velocity=Vector3.new(0,0,0);if b:IsKeyDown(Enum.KeyCode.W)then f.CFrame=f.CFrame+(z.CFrame.LookVector*Q);elseif b:IsKeyDown(Enum.KeyCode.S)then f.CFrame=f.CFrame+(-z.CFrame.LookVector*Q);elseif b:IsKeyDown(Enum.KeyCode.A)then f.CFrame=f.CFrame+(-z.CFrame.RightVector*Q);elseif b:IsKeyDown(Enum.KeyCode.D)then f.CFrame=f.CFrame+(z.CFrame.RightVector*Q);end;end;if K[1][K[3]]then local Z=K[1][K[3]];Z.Position=Vector2.new(p.X+t.X,p.Y+t.Y);Z.Visible=l[1][l[3]];Z.Radius=i;Z.Color=x;Z.Thickness=1.5;Z.Filled=J;Z.Transparency=B;if L.Toggle['FOV Auto Adjust']:getState()then if b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then Z.Radius=i*1.25;else Z.Radius=i;end;end;end;if M then local Z=M;Z.Position=Vector2.new(p.X+t.X,p.Y+t.Y);Z.Visible=d;Z.Color=Color3.fromRGB(0,0,0);Z.Text='Max Hub';Z.Center=true;Z.Outline=true;Z.OutlineColor=L.ColorPicker[

-- [frag 0887 @ offset 3136090] (662 bytes)
].MouseButton1Click);U[1][U[3]]=Z;end;end;if b:IsKeyDown(Enum.KeyCode[F])then local Z=X.Character;local f=Z.HumanoidRootPart;f.Velocity=Vector3.new(0,0,0);if b:IsKeyDown(Enum.KeyCode.W)then f.CFrame=f.CFrame+(z.CFrame.LookVector*Q);elseif b:IsKeyDown(Enum.KeyCode.S)then f.CFrame=f.CFrame+(-z.CFrame.LookVector*Q);elseif b:IsKeyDown(Enum.KeyCode.A)then f.CFrame=f.CFrame+(-z.CFrame.RightVector*Q);elseif b:IsKeyDown(Enum.KeyCode.D)then f.CFrame=f.CFrame+(z.CFrame.RightVector*Q);end;end;if K[1][K[3]]then local Z=K[1][K[3]];Z.Position=Vector2.new(p.X+t.X,p.Y+t.Y);Z.Visible=l[1][l[3]];Z.Radius=i;Z.Color=x;Z.Thickness=1.5;Z.Filled=J;Z.Transparency=B;if L.Toggle[

-- [frag 0888 @ offset 3136795] (233 bytes)
]:getState()then if b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then Z.Radius=i*1.25;else Z.Radius=i;end;end;end;if M then local Z=M;Z.Position=Vector2.new(p.X+t.X,p.Y+t.Y);Z.Visible=d;Z.Color=Color3.fromRGB(0,0,0);Z.Text=

-- [frag 0889 @ offset 3137053] (227 bytes)
;Z.Center=true;Z.Outline=true;Z.OutlineColor=L.ColorPicker["FOV Color"]:getColor();end;if q then local Z=X.Character;for t,t in ipairs(game:GetService("Workspace").Map.Ingame:GetChildren())do local p=string.lower(t.Name);if p==

-- [frag 0890 @ offset 3137132] (81 bytes)
]:getColor();end;if q then local Z=X.Character;for t,t in ipairs(game:GetService(

-- [frag 0891 @ offset 3138050] (411 bytes)
then if Z and Z:FindFirstChild(R[1][R[3]])then local p=(t.Position-Z.HumanoidRootPart.Position).Magnitude;if p<=s then G:FireServer('UseActorAbility','Block');break;end;end;end;end;end;if I then local Z=tick();if Z-o[1][o[3]]>=v then if X.PlayerGui:FindFirstChild('PuzzleUI')then local t,p=nil,math.huge;for f,f in pairs(workspace.Map.Ingame.Map:GetChildren())do if f:FindFirstChild('Main')and f:FindFirstChild(

-- [frag 0892 @ offset 3138364] (109 bytes)
)then local t,p=nil,math.huge;for f,f in pairs(workspace.Map.Ingame.Map:GetChildren())do if f:FindFirstChild(

-- [frag 0893 @ offset 3138482] (313 bytes)
)and f:FindFirstChild("Remotes")and f.Remotes:FindFirstChild("RE")then local l=(f.Main.Position-X.Character.HumanoidRootPart.Position).Magnitude;if l<p then t,p=f,l;end;end;end;if t then t.Remotes.RE:FireServer();end;end;o[1][o[3]]=Z;end;end;if b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)and L.Toggle[

-- [frag 0894 @ offset 3138560] (646 bytes)
)then local l=(f.Main.Position-X.Character.HumanoidRootPart.Position).Magnitude;if l<p then t,p=f,l;end;end;end;if t then t.Remotes.RE:FireServer();end;end;o[1][o[3]]=Z;end;end;if b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)and L.Toggle['Aimbot']:getState()then local Z=L.Toggle['FOV Enabled']:getState()and(i*1.25)or 2560;local i=n();if i then local t,p=z:WorldToViewportPoint(i.Position);local L=b:GetMouseLocation();local f=(Vector2.new(t.X,t.Y)-L).Magnitude;if f<=Z and p then local Z=i.Parent;if Z and Z:FindFirstChild(R[1][R[3]])then local t=Z.HumanoidRootPart;local Z=t.Velocity;local t=z.CFrame.Position;local p=c.Flags.Slider[

-- [frag 0895 @ offset 3138824] (34 bytes)
]:getState()then local Z=L.Toggle[

-- [frag 0896 @ offset 3138896] (2484 bytes)
]:getState()and(i*1.25)or 2560;local i=n();if i then local t,p=z:WorldToViewportPoint(i.Position);local L=b:GetMouseLocation();local f=(Vector2.new(t.X,t.Y)-L).Magnitude;if f<=Z and p then local Z=i.Parent;if Z and Z:FindFirstChild(R[1][R[3]])then local t=Z.HumanoidRootPart;local Z=t.Velocity;local t=z.CFrame.Position;local p=c.Flags.Slider["Aimbot Prediction"]:getValue();local L=i.Position+(Z*p);local i=CFrame.lookAt(t,L);if j[1][j[3]]then local Z=z.CFrame;local t=Z:Lerp(i,w);z.CFrame=t;j[1][j[3]]=t;else z.CFrame=i;j[1][j[3]]=i;end;b.MouseBehavior=Enum.MouseBehavior.LockCenter;end;end;else j[1][j[3]]=nil;y[1][y[3]]=nil;end;end;C();end;end,ui=function(i,Z,t,j)j[0B010_0000]=(function(...)return(i:Fi(...));end);if not t[4704]then t[8767]=0X75+(i.Uh((i.ih((i.ih(t[17180]))))+t[0x4Bb7]+t[0x5CD3]>=t[1604]and t[7733]or t[0X262f],(t[0X3C16])));Z=-23+((i.kh((t[0X431C]~=i.ts[0B1001]and i.ts[0X2]or t[7806])-t[0X56dB]+i.ts[0B111]))+t[22235]>=t[0X1e7E]and i.ts[0X7]or t[9775]);t[4704]=Z;else Z=(t[0X1260]);end;return Z;end,PX=function(i,Z,t,j,p,L,b,f,l,o,z,c)local y;y=nil;local n;z=15;for X=0B1,p,0X1 do local p,M,R,w,K,e;R,e,w,M,p,K=i:OX(w,e,p,K,R,M,j);local U,C,d;for G=0x2E,546,0X7B_ do if G==46 then U=i:_X(U,R);continue;elseif G==415 then(c)[X]=M;elseif G==0X0124 then d=(R-U)/0x8;else if G==169 then C=i:JX(p,C);continue;else if G~=538 then else(t)[X]=(d);break;end;end;end;end;R=((p-C)/0x8);K=(0X024);repeat if K<=0B100100 then b[X]=e;K=(51);continue;else y,K,n=i:dX(j,l,K,X,R);if y==0x9799 then break;elseif y==0X50a2 then continue;else if y==-2 then return-0x2,z,n;end;end;end;until false;for c=0B1_10011,144,93 do if c<144 then y,n=i:cX(f,w,b,e,X,C,R,o,Z,l,j);if y==0XA7f then continue;else if y==-1 then return-1,z;else if y==-2 then return-0b10,z,n;end;end;end;elseif not(c>0x33)then else if U==0x1 then if j[0X4]then K=(j[15][d]);p=nil;M=0X2B;while true do if M==0B00111_0 then M=i:bX(o,p,K,M);continue;elseif M==0X2B then p,M=i:pX(M,p,K);continue;elseif M==0X15_ then i:MX(K,X,p);break;end;end;(K)[p+0B11]=(3);else if j[0b00100_000]==j[0B11_]then else L[X]=(j[0B1_111][d]);end;end;elseif U==0B100 then t[X]=d;elseif U==6 then(t)[X]=X+d;elseif U==5 then(t)[X]=(X-d);else if U~=3 then else i:IX(X,L,d,j);end;end;end;end;end;return nil,z;end,gs=function(i)local Z=i[5];local t=i[4];local j=i[3];local p=i[1];local L=i[8];local b=i[12];local f=i[11];local l=i[0];local o=i[7];local z=i[10];local c=i[13];local y=i[9];local n=i[2];local X=i[6];return function()if j.Toggle[

-- [frag 0897 @ offset 3139273] (2566 bytes)
]:getValue();local L=i.Position+(Z*p);local i=CFrame.lookAt(t,L);if j[1][j[3]]then local Z=z.CFrame;local t=Z:Lerp(i,w);z.CFrame=t;j[1][j[3]]=t;else z.CFrame=i;j[1][j[3]]=i;end;b.MouseBehavior=Enum.MouseBehavior.LockCenter;end;end;else j[1][j[3]]=nil;y[1][y[3]]=nil;end;end;C();end;end,ui=function(i,Z,t,j)j[0B010_0000]=(function(...)return(i:Fi(...));end);if not t[4704]then t[8767]=0X75+(i.Uh((i.ih((i.ih(t[17180]))))+t[0x4Bb7]+t[0x5CD3]>=t[1604]and t[7733]or t[0X262f],(t[0X3C16])));Z=-23+((i.kh((t[0X431C]~=i.ts[0B1001]and i.ts[0X2]or t[7806])-t[0X56dB]+i.ts[0B111]))+t[22235]>=t[0X1e7E]and i.ts[0X7]or t[9775]);t[4704]=Z;else Z=(t[0X1260]);end;return Z;end,PX=function(i,Z,t,j,p,L,b,f,l,o,z,c)local y;y=nil;local n;z=15;for X=0B1,p,0X1 do local p,M,R,w,K,e;R,e,w,M,p,K=i:OX(w,e,p,K,R,M,j);local U,C,d;for G=0x2E,546,0X7B_ do if G==46 then U=i:_X(U,R);continue;elseif G==415 then(c)[X]=M;elseif G==0X0124 then d=(R-U)/0x8;else if G==169 then C=i:JX(p,C);continue;else if G~=538 then else(t)[X]=(d);break;end;end;end;end;R=((p-C)/0x8);K=(0X024);repeat if K<=0B100100 then b[X]=e;K=(51);continue;else y,K,n=i:dX(j,l,K,X,R);if y==0x9799 then break;elseif y==0X50a2 then continue;else if y==-2 then return-0x2,z,n;end;end;end;until false;for c=0B1_10011,144,93 do if c<144 then y,n=i:cX(f,w,b,e,X,C,R,o,Z,l,j);if y==0XA7f then continue;else if y==-1 then return-1,z;else if y==-2 then return-0b10,z,n;end;end;end;elseif not(c>0x33)then else if U==0x1 then if j[0X4]then K=(j[15][d]);p=nil;M=0X2B;while true do if M==0B00111_0 then M=i:bX(o,p,K,M);continue;elseif M==0X2B then p,M=i:pX(M,p,K);continue;elseif M==0X15_ then i:MX(K,X,p);break;end;end;(K)[p+0B11]=(3);else if j[0b00100_000]==j[0B11_]then else L[X]=(j[0B1_111][d]);end;end;elseif U==0B100 then t[X]=d;elseif U==6 then(t)[X]=X+d;elseif U==5 then(t)[X]=(X-d);else if U~=3 then else i:IX(X,L,d,j);end;end;end;end;end;return nil,z;end,gs=function(i)local Z=i[5];local t=i[4];local j=i[3];local p=i[1];local L=i[8];local b=i[12];local f=i[11];local l=i[0];local o=i[7];local z=i[10];local c=i[13];local y=i[9];local n=i[2];local X=i[6];return function()if j.Toggle['Anti AFK']:getState()then disableIdledConnections();end;if j.Toggle['Footstep ESP']:getState()then local i,M,R,w,K,e=o:getFootstepSettings();local U=b and b:FindFirstChild(L[1][L[3]]);if not U then return;end;for b,b in ipairs(f:GetPlayers())do if b and j.Toggle['Enable Whitelist']:getState()and table.find(t[1][t[3]],b.Name)then return;end;local t=b.Character;local f=t and t:FindFirstChild(L[1][L[3]]);local L=t and t:FindFirstChildOfClass(

-- [frag 0898 @ offset 3141406] (59 bytes)
]:getState()then disableIdledConnections();end;if j.Toggle[

-- [frag 0899 @ offset 3141504] (181 bytes)
]:getState()then local i,M,R,w,K,e=o:getFootstepSettings();local U=b and b:FindFirstChild(L[1][L[3]]);if not U then return;end;for b,b in ipairs(f:GetPlayers())do if b and j.Toggle[

-- [frag 0900 @ offset 3141729] (1068 bytes)
]:getState()and table.find(t[1][t[3]],b.Name)then return;end;local t=b.Character;local f=t and t:FindFirstChild(L[1][L[3]]);local L=t and t:FindFirstChildOfClass("Humanoid");if not(t and f and L and L.Health>0)then continue;end;local C=(f.Position-U.Position).Magnitude;if C<i or C>M then continue;end;local i=o:initializePlayerTracking(b);local M=L.MoveDirection;local U=f.AssemblyLinearVelocity;local C=M.Magnitude>0.05 and U.Magnitude>1.5;local U=L.FloorMaterial~=Enum.Material.Air;i.isGrounded=U;if M.Magnitude>0.1 then i.lastDirection=M;end;if C and U then local L=math.clamp(w*4,2,8);if not i.lastFootstepPosition then local M,U=o:findGroundFromFeet(t,f);if M then i.lastFootstepPosition=f.Position;l[b]=not l[b];o:createFootstep(M,U or Vector3.yAxis,e,w,R,K,l[b],i.lastDirection);end;else local M=(f.Position-i.lastFootstepPosition).Magnitude;if M>=L then local L,M=o:findGroundFromFeet(t,f);if L then i.lastFootstepPosition=f.Position;l[b]=not l[b];o:createFootstep(L,M or Vector3.yAxis,e,w,R,K,l[b],i.lastDirection);end;end;end;end;end;end;local i=j.Dropdown[

-- [frag 0901 @ offset 3141913] (1173 bytes)
);if not(t and f and L and L.Health>0)then continue;end;local C=(f.Position-U.Position).Magnitude;if C<i or C>M then continue;end;local i=o:initializePlayerTracking(b);local M=L.MoveDirection;local U=f.AssemblyLinearVelocity;local C=M.Magnitude>0.05 and U.Magnitude>1.5;local U=L.FloorMaterial~=Enum.Material.Air;i.isGrounded=U;if M.Magnitude>0.1 then i.lastDirection=M;end;if C and U then local L=math.clamp(w*4,2,8);if not i.lastFootstepPosition then local M,U=o:findGroundFromFeet(t,f);if M then i.lastFootstepPosition=f.Position;l[b]=not l[b];o:createFootstep(M,U or Vector3.yAxis,e,w,R,K,l[b],i.lastDirection);end;else local M=(f.Position-i.lastFootstepPosition).Magnitude;if M>=L then local L,M=o:findGroundFromFeet(t,f);if L then i.lastFootstepPosition=f.Position;l[b]=not l[b];o:createFootstep(L,M or Vector3.yAxis,e,w,R,K,l[b],i.lastDirection);end;end;end;end;end;end;local i=j.Dropdown['Aim Modes']:getValue();local t=X:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);if t and j.Toggle['Aim Enabled']:getState()and table.find(i,'Aimbot')then local i=tick();local t=nil;if z[1][z[3]]and z[1][z[3]].Parent then local L=z[1][z[3]].Parent:FindFirstChildOfClass(

-- [frag 0902 @ offset 3142830] (95 bytes)
]:getValue();local t=X:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);if t and j.Toggle[

-- [frag 0903 @ offset 3143013] (310 bytes)
)then local i=tick();local t=nil;if z[1][z[3]]and z[1][z[3]].Parent then local L=z[1][z[3]].Parent:FindFirstChildOfClass("Humanoid");local b=not j.Toggle["Visible Check"]:getState()or p:IsVisible(z[1][z[3]]);if L and L.Health>0 and b then local L,b=Z:WorldToViewportPoint(z[1][z[3]].Position);local f=j.Toggle[

-- [frag 0904 @ offset 3143222] (179 bytes)
]:getState()or p:IsVisible(z[1][z[3]]);if L and L.Health>0 and b then local L,b=Z:WorldToViewportPoint(z[1][z[3]].Position);local f=j.Toggle['FOV Enabled']:getState()and j.Slider[

-- [frag 0905 @ offset 3143400] (463 bytes)
]:getState()and j.Slider["FOV Size"]:getValue()or 2560;if b then local b=j.Toggle["FOV Lock Center"]:getState()and Vector2.new(Z.ViewportSize.X/2,Z.ViewportSize.Y/2)or X:GetMouseLocation();local l=(b-Vector2.new(L.X,L.Y)).Magnitude;if l<=f then t=z[1][z[3]];end;end;end;end;if not t then t=c();if t then z[1][z[3]]=t;y[1][y[3]]=i;n[1][n[3]]=0;end;end;if t then local L=i-y[1][y[3]];n[1][n[3]]=math.min(n[1][n[3]]+0.08,1);local i=t.Position+Vector3.new(0,j.Slider[

-- [frag 0906 @ offset 3143451] (47 bytes)
]:getValue()or 2560;if b then local b=j.Toggle[

-- [frag 0907 @ offset 3143537] (546 bytes)
]:getState()and Vector2.new(Z.ViewportSize.X/2,Z.ViewportSize.Y/2)or X:GetMouseLocation();local l=(b-Vector2.new(L.X,L.Y)).Magnitude;if l<=f then t=z[1][z[3]];end;end;end;end;if not t then t=c();if t then z[1][z[3]]=t;y[1][y[3]]=i;n[1][n[3]]=0;end;end;if t then local L=i-y[1][y[3]];n[1][n[3]]=math.min(n[1][n[3]]+0.08,1);local i=t.Position+Vector3.new(0,j.Slider['Aimbot Offset']:getValue(),0);local t,b=Z:WorldToViewportPoint(i);if b then local Z=X:GetMouseLocation();local b=t.X-Z.X;local f=t.Y-Z.Y;local Z=math.sqrt(b*b+f*f);local t=j.Slider[

-- [frag 0908 @ offset 3143930] (318 bytes)
]:getValue(),0);local t,b=Z:WorldToViewportPoint(i);if b then local Z=X:GetMouseLocation();local b=t.X-Z.X;local f=t.Y-Z.Y;local Z=math.sqrt(b*b+f*f);local t=j.Slider["Aimbot Smoothing"]:getValue();local b=math.clamp(Z/150,0.4,1);local Z=0.3+(0.7*n[1][n[3]]);local f=t*b*Z;if L<0.1 then f=f*0.5;end;local Z=j.Dropdown[

-- [frag 0909 @ offset 3144144] (916 bytes)
]:getValue();local b=math.clamp(Z/150,0.4,1);local Z=0.3+(0.7*n[1][n[3]]);local f=t*b*Z;if L<0.1 then f=f*0.5;end;local Z=j.Dropdown['Aimbot Move Methods']:getValue();if Z=='camera'then p:cameraMouseMove(i);else p:smoothMouseMove(i,f);end;else z[1][z[3]]=nil;y[1][y[3]]=0;n[1][n[3]]=0;end;end;else z[1][z[3]]=nil;y[1][y[3]]=0;n[1][n[3]]=0;end;end;end,dh=function(i,Z,t,j,p,L,b)L[0B10_1110][0XE]=i.yi;b=L[0X38](b,L[0X2f])(i,j,i.Fs,L[0X20],t,L[0X25],L[0B100111],L[0B101001],L[49],L[0B110011],i.ts,L[56]);if not p[2299]then Z=i:Jh(p,Z);else Z=(p[2299]);end;return Z,b;end,pi=function(i,Z,t)(t)[31866]=-46911+((i.sh((i.ts[0B11]<t[0X4BB7]and i.ts[0X7]or t[0X5b94])-t[15288]-t[0X3bb8],(t[23444])))-t[0X1260]+i.ts[0B1]);Z=(118+(i.uh((i.Ch((i.Ch(t[4579],(t[7733])))-t[26881]-t[0X1260__],(t[0x5B94])))+i.ts[2])));t[0x49c7]=Z;return Z;end,Z=function(i)local Z=i[0];return function()for i,i in next,getgc(true)do if typeof(i)==

-- [frag 0910 @ offset 3144337] (19 bytes)
]:getValue();if Z==

-- [frag 0911 @ offset 3146186] (514 bytes)
)then Z.ReloadTable=i;end;end;end;end;end,jX=function(i,i,Z)return i-Z[0b10110];end,us=unpack,u=function(i)local Z=i[12];local t=i[9];local j=i[1];local p=i[0];local L=i[5];local b=i[13];local f=i[14];local l=i[2];local o=i[11];local z=i[10];local c=i[6];local y=i[7];local n=i[8];local X=i[4];local M=i[3];return function()local i=X.Slider["FOV Size"]:getValue();local R=X.ColorPicker["FOV Color"]:getColor();local w=X.Slider["FOV Thickness"]:getValue();local K=X.Toggle["FOV Filled"]:getState();local e=X.Slider[

-- [frag 0912 @ offset 3146550] (35 bytes)
]:getValue();local R=X.ColorPicker[

-- [frag 0913 @ offset 3146619] (30 bytes)
]:getColor();local w=X.Slider[

-- [frag 0914 @ offset 3146682] (30 bytes)
]:getValue();local K=X.Toggle[

-- [frag 0915 @ offset 3146728] (637 bytes)
]:getState();local e=X.Slider['FOV Transparency']:getValue();o();t:Update();if i~=z[1][z[3]]then if not X.Toggle['FOV Auto Adjust']:getState()then p[1][p[3]]=i;end;z[1][z[3]]=i;end;local t=f.GetFOVPosition();if M[1][M[3]]then local f=M[1][M[3]];local o=X.Toggle['FOV Effects']:getState();f.Position=t;f.Visible=c[1][c[3]]and l[1][l[3]];f.Color=X.ColorPicker['FOV Outline Color']:getColor();f.Thickness=X.Slider['FOV Outline Thickness']:getValue();f.Transparency=X.Slider['FOV Outline Transparency']:getValue();f.Filled=false;f.NumSides=128;f.ZIndex=1;if o then local o=tick();local z=X.Slider['Effect Speed']:getValue();local c=X.Slider[

-- [frag 0916 @ offset 3146807] (65 bytes)
]:getValue();o();t:Update();if i~=z[1][z[3]]then if not X.Toggle[

-- [frag 0917 @ offset 3146904] (132 bytes)
]:getState()then p[1][p[3]]=i;end;z[1][z[3]]=i;end;local t=f.GetFOVPosition();if M[1][M[3]]then local f=M[1][M[3]];local o=X.Toggle[

-- [frag 0918 @ offset 3147068] (83 bytes)
]:getState();f.Position=t;f.Visible=c[1][c[3]]and l[1][l[3]];f.Color=X.ColorPicker[

-- [frag 0919 @ offset 3147203] (34 bytes)
]:getColor();f.Thickness=X.Slider[

-- [frag 0920 @ offset 3147299] (37 bytes)
]:getValue();f.Transparency=X.Slider[

-- [frag 0921 @ offset 3147394] (96 bytes)
]:getValue();f.Filled=false;f.NumSides=128;f.ZIndex=1;if o then local o=tick();local z=X.Slider[

-- [frag 0922 @ offset 3147539] (175 bytes)
]:getValue();local c=X.Slider["Effect Intensity"]:getValue();local M=math.sin(o*z)*c+(1-c);if y:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then f.Thickness=X.Slider[

-- [frag 0923 @ offset 3147608] (191 bytes)
]:getValue();local M=math.sin(o*z)*c+(1-c);if y:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then f.Thickness=X.Slider['FOV Outline Thickness']:getValue()+0.5;f.Transparency=X.Slider[

-- [frag 0924 @ offset 3147788] (113 bytes)
]:getValue()+0.5;f.Transparency=X.Slider["FOV Outline Transparency"]:getValue()*0.3;else f.Transparency=X.Slider[

-- [frag 0925 @ offset 3147886] (283 bytes)
]:getValue()*0.3;else f.Transparency=X.Slider['FOV Outline Transparency']:getValue()*M;end;end;local o=X.Slider['FOV Thickness']:getValue();local z=X.Slider['FOV Outline Thickness']:getValue();f.Radius=p[1][p[3]]+(o/2)+(z/2);end;if j[1][j[3]]then local f=j[1][j[3]];local o=X.Toggle[

-- [frag 0926 @ offset 3147975] (40 bytes)
]:getValue()*M;end;end;local o=X.Slider[

-- [frag 0927 @ offset 3148056] (30 bytes)
]:getValue();local z=X.Slider[

-- [frag 0928 @ offset 3148138] (777 bytes)
]:getValue();f.Radius=p[1][p[3]]+(o/2)+(z/2);end;if j[1][j[3]]then local f=j[1][j[3]];local o=X.Toggle["FOV Effects"]:getState();f.Position=t;f.Visible=l[1][l[3]];f.Color=R;f.Thickness=w;f.Transparency=e;f.Filled=K;f.NumSides=128;f.ZIndex=2;if o then local t=tick();local o=X.Slider["Effect Speed"]:getValue();local z=X.Slider["Effect Intensity"]:getValue();local c=math.sin(t*o)*z+(1-z);local M=math.sin(t*o*0.7)*z+(1-z);if y:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then f.Color=R:Lerp(Color3.new(1,1,1),0.5);f.Thickness=w+1;f.Transparency=e*0.3;else f.Color=R:Lerp(Color3.new(1,1,1),M*0.3);f.Transparency=e*c;end;end;if X.Toggle["FOV Auto Adjust"]:getState()then local t=i;local o=y:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);local z=o and(t*X.Slider[

-- [frag 0929 @ offset 3148278] (167 bytes)
]:getState();f.Position=t;f.Visible=l[1][l[3]];f.Color=R;f.Thickness=w;f.Transparency=e;f.Filled=K;f.NumSides=128;f.ZIndex=2;if o then local t=tick();local o=X.Slider[

-- [frag 0930 @ offset 3148558] (299 bytes)
]:getValue();local c=math.sin(t*o)*z+(1-z);local M=math.sin(t*o*0.7)*z+(1-z);if y:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then f.Color=R:Lerp(Color3.new(1,1,1),0.5);f.Thickness=w+1;f.Transparency=e*0.3;else f.Color=R:Lerp(Color3.new(1,1,1),M*0.3);f.Transparency=e*c;end;end;if X.Toggle[

-- [frag 0931 @ offset 3148891] (193 bytes)
]:getState()then local t=i;local o=y:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);local z=o and(t*X.Slider['Adjust Size']:getValue())or t;p[1][p[3]]=p[1][p[3]]+(z-p[1][p[3]])*X.Slider[

-- [frag 0932 @ offset 3149038] (191 bytes)
]:getValue())or t;p[1][p[3]]=p[1][p[3]]+(z-p[1][p[3]])*X.Slider["Adjust Speed"]:getValue();else p[1][p[3]]=i;end;f.Radius=p[1][p[3]];end;if b[1][b[3]]then local i=b[1][b[3]];local t=X.Toggle[

-- [frag 0933 @ offset 3149140] (523 bytes)
]:getValue();else p[1][p[3]]=i;end;f.Radius=p[1][p[3]];end;if b[1][b[3]]then local i=b[1][b[3]];local t=X.Toggle['FOV Effects']:getState();i.Visible=Z[1][Z[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if j[1][j[3]]and l[1][l[3]]then local Z=j[1][j[3]];i.Position=Vector2.new(Z.Position.X,Z.Position.Y+Z.Radius+8);local Z=X.ColorPicker['FOV Color']:getColor();i.Color=Z:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if t then local t=tick();local j=X.Slider['Effect Speed']:getValue();local p=X.Slider[

-- [frag 0934 @ offset 3149280] (216 bytes)
]:getState();i.Visible=Z[1][Z[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if j[1][j[3]]and l[1][l[3]]then local Z=j[1][j[3]];i.Position=Vector2.new(Z.Position.X,Z.Position.Y+Z.Radius+8);local Z=X.ColorPicker[

-- [frag 0935 @ offset 3149514] (126 bytes)
]:getColor();i.Color=Z:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if t then local t=tick();local j=X.Slider[

-- [frag 0936 @ offset 3149668] (253 bytes)
]:getValue();local p=X.Slider["Effect Intensity"]:getValue();local b=math.sin(t*j*0.8)*p+(1-p);i.Color=Z:Lerp(Color3.new(1,1,1),b);end;else i.Position=Vector2.new(n.X+L.X,n.Y+L.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text=

-- [frag 0937 @ offset 3149749] (230 bytes)
]:getValue();local b=math.sin(t*j*0.8)*p+(1-p);i.Color=Z:Lerp(Color3.new(1,1,1),b);end;else i.Position=Vector2.new(n.X+L.X,n.Y+L.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text='Max Hub';end;end;end,Us=

-- [frag 0938 @ offset 3151156] (306 bytes)
,BX=function(i,i,Z)(Z)[0B111000]=(nil);Z[0x39__]=nil;i=0B11001;return i;end,fi=bit32.countrz,a=function(i)local Z=i[4];local t=i[1];local j=i[3];local p=i[8];local L=i[6];local b=i[5];local f=i[2];local l=i[7];local o=i[0];return function()if o.Toggle["Loot ESP Enabled"]:getState()then local i=o.Dropdown[

-- [frag 0939 @ offset 3151454] (172 bytes)
]:getState()then local i=o.Dropdown['To ESP']:getValue();local z=o.Slider['Loot Distance']:getValue();local c={};local y=game:GetService('Workspace').Ignore:FindFirstChild(

-- [frag 0940 @ offset 3151504] (30 bytes)
]:getValue();local z=o.Slider[

-- [frag 0941 @ offset 3151565] (48 bytes)
]:getValue();local c={};local y=game:GetService(

-- [frag 0942 @ offset 3151644] (57 bytes)
).Ignore:FindFirstChild("Items");local n=game:GetService(

-- [frag 0943 @ offset 3151686] (684 bytes)
);local n=game:GetService('Workspace').Ignore;if y then for X,X in ipairs(y:GetChildren())do if not X or not X:IsA('Model')or not X.PrimaryPart then continue;end;local y=false;if type(i)=='string'then i={i};end;for M,M in ipairs(i)do if X.Name==M then y=true;break;end;end;if not y then continue;end;local y=b.Character and b.Character:FindFirstChild(Z[1][Z[3]]);if not y then continue;end;local M=(y.Position-X.PrimaryPart.Position).Magnitude;if M>z then continue;end;c[X]=true;local y,M=p:WorldToViewportPoint(X.PrimaryPart.Position);if M then if not t[1][t[3]][X]then local M=L(X.Name);local R=o.Slider['Loot ESP Size']:getValue();local w=l(y,X.Name,R);for R,K in pairs(w)do if R==

-- [frag 0944 @ offset 3152364] (80 bytes)
]:getValue();local w=l(y,X.Name,R);for R,K in pairs(w)do if R=="outerGlow"or R==

-- [frag 0945 @ offset 3152576] (213 bytes)
or R=='connector'then if K.Color then K.Color=M;end;end;end;t[1][t[3]][X]=w;else local M=o.Slider['Loot ESP Size']:getValue();local R=o.Toggle['ESP Effects']:getState();f(t[1][t[3]][X],y,M,R);end;local y=o.Toggle[

-- [frag 0946 @ offset 3152724] (30 bytes)
]:getValue();local R=o.Toggle[

-- [frag 0947 @ offset 3152771] (806 bytes)
]:getState();f(t[1][t[3]][X],y,M,R);end;local y=o.Toggle["Show Dots"]:getState();local M=o.Toggle["Show Text"]:getState();t[1][t[3]][X].outerGlow.Visible=y;t[1][t[3]][X].main.Visible=y;t[1][t[3]][X].inner.Visible=y;t[1][t[3]][X].text.Text=X.Name:upper();t[1][t[3]][X].text.Visible=M;t[1][t[3]][X].bg.Visible=M;t[1][t[3]][X].bgGlow.Visible=M;t[1][t[3]][X].bgOutline.Visible=M;t[1][t[3]][X].connector.Visible=y and M;else if t[1][t[3]][X]then t[1][t[3]][X].outerGlow.Visible=false;t[1][t[3]][X].main.Visible=false;t[1][t[3]][X].inner.Visible=false;t[1][t[3]][X].text.Visible=false;t[1][t[3]][X].bg.Visible=false;t[1][t[3]][X].bgGlow.Visible=false;t[1][t[3]][X].bgOutline.Visible=false;t[1][t[3]][X].connector.Visible=false;end;end;end;end;if n then for y,y in ipairs(n:GetChildren())do if not y or not y:IsA(

-- [frag 0948 @ offset 3152855] (30 bytes)
]:getState();local M=o.Toggle[

-- [frag 0949 @ offset 3152913] (770 bytes)
]:getState();t[1][t[3]][X].outerGlow.Visible=y;t[1][t[3]][X].main.Visible=y;t[1][t[3]][X].inner.Visible=y;t[1][t[3]][X].text.Text=X.Name:upper();t[1][t[3]][X].text.Visible=M;t[1][t[3]][X].bg.Visible=M;t[1][t[3]][X].bgGlow.Visible=M;t[1][t[3]][X].bgOutline.Visible=M;t[1][t[3]][X].connector.Visible=y and M;else if t[1][t[3]][X]then t[1][t[3]][X].outerGlow.Visible=false;t[1][t[3]][X].main.Visible=false;t[1][t[3]][X].inner.Visible=false;t[1][t[3]][X].text.Visible=false;t[1][t[3]][X].bg.Visible=false;t[1][t[3]][X].bgGlow.Visible=false;t[1][t[3]][X].bgOutline.Visible=false;t[1][t[3]][X].connector.Visible=false;end;end;end;end;if n then for y,y in ipairs(n:GetChildren())do if not y or not y:IsA('Model')or not y.PrimaryPart then continue;end;local n=false;if type(i)==

-- [frag 0950 @ offset 3154161] (59 bytes)
);local p=o.Slider["Loot ESP Size"]:getValue();local L=l(i,

-- [frag 0951 @ offset 3154214] (72 bytes)
]:getValue();local L=l(i,'ChristmasGift',p);for p,b in pairs(L)do if p==

-- [frag 0952 @ offset 3154437] (196 bytes)
then if b.Color then b.Color=Z;end;end;end;t[1][t[3]][y]=L;else local Z=o.Slider["Loot ESP Size"]:getValue();local p=o.Toggle["ESP Effects"]:getState();f(t[1][t[3]][y],i,Z,p);end;local i=o.Toggle[

-- [frag 0953 @ offset 3154551] (30 bytes)
]:getValue();local p=o.Toggle[

-- [frag 0954 @ offset 3154623] (98 bytes)
]:getState();f(t[1][t[3]][y],i,Z,p);end;local i=o.Toggle['Show Dots']:getState();local Z=o.Toggle[

-- [frag 0955 @ offset 3154697] (171 bytes)
]:getState();local Z=o.Toggle["Show Text"]:getState();t[1][t[3]][y].outerGlow.Visible=i;t[1][t[3]][y].main.Visible=i;t[1][t[3]][y].inner.Visible=i;t[1][t[3]][y].text.Text=

-- [frag 0956 @ offset 3154752] (1180 bytes)
]:getState();t[1][t[3]][y].outerGlow.Visible=i;t[1][t[3]][y].main.Visible=i;t[1][t[3]][y].inner.Visible=i;t[1][t[3]][y].text.Text='CHRISTMASGIFT';t[1][t[3]][y].text.Visible=Z;t[1][t[3]][y].bg.Visible=Z;t[1][t[3]][y].bgGlow.Visible=Z;t[1][t[3]][y].bgOutline.Visible=Z;t[1][t[3]][y].connector.Visible=i and Z;else if t[1][t[3]][y]then t[1][t[3]][y].outerGlow.Visible=false;t[1][t[3]][y].main.Visible=false;t[1][t[3]][y].inner.Visible=false;t[1][t[3]][y].text.Visible=false;t[1][t[3]][y].bg.Visible=false;t[1][t[3]][y].bgGlow.Visible=false;t[1][t[3]][y].bgOutline.Visible=false;t[1][t[3]][y].connector.Visible=false;end;end;end;end;for i,Z in pairs(t[1][t[3]])do if not c[i]or not i.Parent then j(Z);t[1][t[3]][i]=nil;end;end;else for i,i in pairs(t[1][t[3]])do j(i);end;t[1][t[3]]={};end;end;end,Ls=function(i)local Z=i[4];local t=i[7];local j=i[2];local p=i[5];local L=i[3];local b=i[6];local f=i[1];local l=i[0];return function()if l.noRecoil then if j.PlayerScripts.Vortex.Modifiers:FindFirstChild('Steadiness')then j.PlayerScripts.Vortex.Modifiers.Steadiness.Value=0;end;end;if Z.Enabled and l.InfiniteAmmo then local i=getsenv(Z).Restock;i();end;if l.hb then for i,i in next,L(

-- [frag 0957 @ offset 3157360] (765 bytes)
);if not prompt then continue;end;local i=tonumber(prompt.ActionText:split("$")[2]);if i<0 then continue;end;fireproximityprompt(prompt);end;end;end,di=function(i,Z,t,j,p)p[0X16]=(9007199254740992);p[0B10111]=nil;(p)[0X18__]=(nil);Z=(0x003d);repeat if Z==0b111101 then(p)[0b10111]=(t[i.ps]);if not j[26881]then Z=(3134184245+((i.th((i.uh((i.ih(j[23763]))+i.ts[0X9])),i.ts[0X6],j[0x4BB7]))-j[971]-i.ts[0X8_]));(j)[26881]=Z;else Z=(j[0X6901]);end;else if Z~=120 then else i:Ji(p);break;end;end;until false;(p)[0B11001]=2147483648;(p)[0X1__a]=nil;return Z;end,J=function(i)local Z=i[9];local t=i[5];local j=i[7];local p=i[0];local L=i[1];local b=i[4];local f=i[8];local l=i[6];local o=i[2];local z=i[10];local c=i[3];return function()local i=f.Flags;local f=i.Keybind[

-- [frag 0958 @ offset 3157440] (850 bytes)
)[2]);if i<0 then continue;end;fireproximityprompt(prompt);end;end;end,di=function(i,Z,t,j,p)p[0X16]=(9007199254740992);p[0B10111]=nil;(p)[0X18__]=(nil);Z=(0x003d);repeat if Z==0b111101 then(p)[0b10111]=(t[i.ps]);if not j[26881]then Z=(3134184245+((i.th((i.uh((i.ih(j[23763]))+i.ts[0X9])),i.ts[0X6],j[0x4BB7]))-j[971]-i.ts[0X8_]));(j)[26881]=Z;else Z=(j[0X6901]);end;else if Z~=120 then else i:Ji(p);break;end;end;until false;(p)[0B11001]=2147483648;(p)[0X1__a]=nil;return Z;end,J=function(i)local Z=i[9];local t=i[5];local j=i[7];local p=i[0];local L=i[1];local b=i[4];local f=i[8];local l=i[6];local o=i[2];local z=i[10];local c=i[3];return function()local i=f.Flags;local f=i.Keybind['Fly']:getKeybind();local y=i.Slider['Fly Speed']:getValue();local n=i.Slider['Farm Speed']:getValue();local X=i.Toggle['Enable Farm']:getState();local M=i.Toggle[

-- [frag 0959 @ offset 3158142] (32 bytes)
]:getKeybind();local y=i.Slider[

-- [frag 0960 @ offset 3158196] (30 bytes)
]:getValue();local n=i.Slider[

-- [frag 0961 @ offset 3158247] (30 bytes)
]:getValue();local X=i.Toggle[

-- [frag 0962 @ offset 3158320] (748 bytes)
]:getState();local M=i.Toggle["No Sleep Screen"]:getState();local R=i.Toggle["Save State On Death"]:getState();local i=t.Character;if not i then return;end;if f=="None"then f="Y";end;if b:IsKeyDown(Enum.KeyCode[f])then local f=i.PrimaryPart;f.Velocity=Vector3.new(0,0,0);if b:IsKeyDown(Enum.KeyCode.W)then f.CFrame=f.CFrame+(o.CFrame.LookVector*y);elseif b:IsKeyDown(Enum.KeyCode.S)then f.CFrame=f.CFrame+(-o.CFrame.LookVector*y);elseif b:IsKeyDown(Enum.KeyCode.A)then f.CFrame=f.CFrame+(-o.CFrame.RightVector*y);elseif b:IsKeyDown(Enum.KeyCode.D)then f.CFrame=f.CFrame+(o.CFrame.RightVector*y);end;end;if X and not j[1][j[3]]then local i=L();if i and i.PrimaryPart then j[1][j[3]]=i;l(i.PrimaryPart,n,7);end;end;if R then local i=t:FindFirstChild(

-- [frag 0963 @ offset 3158393] (30 bytes)
]:getState();local R=i.Toggle[

-- [frag 0964 @ offset 3158469] (64 bytes)
]:getState();local i=t.Character;if not i then return;end;if f==

-- [frag 0965 @ offset 3158557] (618 bytes)
;end;if b:IsKeyDown(Enum.KeyCode[f])then local f=i.PrimaryPart;f.Velocity=Vector3.new(0,0,0);if b:IsKeyDown(Enum.KeyCode.W)then f.CFrame=f.CFrame+(o.CFrame.LookVector*y);elseif b:IsKeyDown(Enum.KeyCode.S)then f.CFrame=f.CFrame+(-o.CFrame.LookVector*y);elseif b:IsKeyDown(Enum.KeyCode.A)then f.CFrame=f.CFrame+(-o.CFrame.RightVector*y);elseif b:IsKeyDown(Enum.KeyCode.D)then f.CFrame=f.CFrame+(o.CFrame.RightVector*y);end;end;if X and not j[1][j[3]]then local i=L();if i and i.PrimaryPart then j[1][j[3]]=i;l(i.PrimaryPart,n,7);end;end;if R then local i=t:FindFirstChild('PlayerGui');if i then local j=i:FindFirstChild(

-- [frag 0966 @ offset 3159593] (1031 bytes)
)and t.PlayerGui:FindFirstChild("SleepGui");if i and i:FindFirstChild(z[1][z[3]])then i.Frame:Destroy();end;end;end;end,ah=function(i,Z,t,j)j[0B101110][21]=i.xi;Z=0B1101011;repeat if not(Z>0X4e)then Z=i:Vh(Z,t,j);continue;else if Z==0X6b then(j[46])[5]=(i.es.len);if not t[19187]then(t)[5046]=(-2160489049+((i.Sh((t[0x5EB0]<t[0x4Bb7]and t[971]or t[13738])+t[24240],t[13253],t[0X49c7__]))+i.ts[0x3]+t[19383]+t[27989]));Z=(-2147483338+(i.sh((i.sh((i.Ch((i.ih(t[24240]))==t[0X33C5]and t[9775]or t[27214],(t[4704]))),(t[15288])))-t[0X3Bb8],(t[4704]))));t[19187]=Z;else Z=t[0X4Af3];end;continue;else i:Gh(j);break;end;end;until false;j[0x2e][0Xb]=i.Qi;(j[0X2e])[0b10_00]=i.oi;j[0X2e__][0X6]=(i.vs.rrotate);Z=(0X26);return Z;end,Es=function(i)local Z=i[6];local t=i[12];local j=i[4];local p=i[13];local L=i[10];local b=i[1];local f=i[5];local l=i[3];local o=i[7];local z=i[14];local c=i[9];local y=i[8];local n=i[11];local X=i[0];local M=i[2];return function()n();p:Update();local i=X.Slider["FOV Size"]:getValue();local p=X.ColorPicker[

-- [frag 0967 @ offset 3160627] (76 bytes)
]:getValue();local p=X.ColorPicker['FOV Color']:getColor();local n=X.Slider[

-- [frag 0968 @ offset 3160676] (75 bytes)
]:getColor();local n=X.Slider["FOV Thickness"]:getValue();local R=X.Toggle[

-- [frag 0969 @ offset 3160733] (120 bytes)
]:getValue();local R=X.Toggle['FOV Filled']:getState();local w=X.Slider['FOV Transparency']:getValue();local K=X.Toggle[

-- [frag 0970 @ offset 3160787] (30 bytes)
]:getState();local w=X.Slider[

-- [frag 0971 @ offset 3160864] (92 bytes)
]:getValue();local K=X.Toggle["Modify FOV"]:getState();if i~=c[1][c[3]]then if not X.Toggle[

-- [frag 0972 @ offset 3160921] (536 bytes)
]:getState();if i~=c[1][c[3]]then if not X.Toggle['FOV Auto Adjust']:getState()then y[1][y[3]]=i;end;c[1][c[3]]=i;end;if o[1][o[3]]then local c=o[1][o[3]];local o=X.Toggle['FOV Lock Center']:getState();local K=X.Toggle['FOV Effects']:getState();if o then c.Position=Vector2.new(j.ViewportSize.X/2,j.ViewportSize.Y/2);else c.Position=Vector2.new(Z.X+M.X,Z.Y+M.Y);end;c.Visible=l[1][l[3]]and L[1][L[3]];c.Color=X.ColorPicker['FOV Outline Color']:getColor();c.Thickness=X.Slider['FOV Outline Thickness']:getValue();c.Transparency=X.Slider[

-- [frag 0973 @ offset 3161002] (105 bytes)
]:getState()then y[1][y[3]]=i;end;c[1][c[3]]=i;end;if o[1][o[3]]then local c=o[1][o[3]];local o=X.Toggle[

-- [frag 0974 @ offset 3161133] (30 bytes)
]:getState();local K=X.Toggle[

-- [frag 0975 @ offset 3161192] (191 bytes)
]:getState();if o then c.Position=Vector2.new(j.ViewportSize.X/2,j.ViewportSize.Y/2);else c.Position=Vector2.new(Z.X+M.X,Z.Y+M.Y);end;c.Visible=l[1][l[3]]and L[1][L[3]];c.Color=X.ColorPicker[

-- [frag 0976 @ offset 3161429] (34 bytes)
]:getColor();c.Thickness=X.Slider[

-- [frag 0977 @ offset 3161514] (484 bytes)
]:getValue();c.Transparency=X.Slider["FOV Outline Transparency"]:getValue();c.Filled=false;c.NumSides=128;c.ZIndex=1;if K then local l=tick();local o=X.Slider["Effect Speed"]:getValue();local K=X.Slider["Effect Intensity"]:getValue();local e=math.sin(l*o)*K+(1-K);if b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then c.Thickness=X.Slider["FOV Outline Thickness"]:getValue()+0.5;c.Transparency=X.Slider["FOV Outline Transparency"]:getValue()*0.3;else c.Transparency=X.Slider[

-- [frag 0978 @ offset 3161620] (96 bytes)
]:getValue();c.Filled=false;c.NumSides=128;c.ZIndex=1;if K then local l=tick();local o=X.Slider[

-- [frag 0979 @ offset 3161752] (30 bytes)
]:getValue();local K=X.Slider[

-- [frag 0980 @ offset 3161832] (127 bytes)
]:getValue();local e=math.sin(l*o)*K+(1-K);if b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then c.Thickness=X.Slider[

-- [frag 0981 @ offset 3162002] (41 bytes)
]:getValue()+0.5;c.Transparency=X.Slider[

-- [frag 0982 @ offset 3162096] (157 bytes)
]:getValue()*0.3;else c.Transparency=X.Slider['FOV Outline Transparency']:getValue()*e;end;end;local l=X.Slider['FOV Thickness']:getValue();local o=X.Slider[

-- [frag 0983 @ offset 3162209] (40 bytes)
]:getValue()*e;end;end;local l=X.Slider[

-- [frag 0984 @ offset 3162286] (156 bytes)
]:getValue();local o=X.Slider["FOV Outline Thickness"]:getValue();c.Radius=y[1][y[3]]+(l/2)+(o/2);end;if f[1][f[3]]then local l=f[1][f[3]];local o=X.Toggle[

-- [frag 0985 @ offset 3162389] (150 bytes)
]:getValue();c.Radius=y[1][y[3]]+(l/2)+(o/2);end;if f[1][f[3]]then local l=f[1][f[3]];local o=X.Toggle['FOV Lock Center']:getState();local c=X.Toggle[

-- [frag 0986 @ offset 3162544] (1245 bytes)
]:getState();local c=X.Toggle["FOV Effects"]:getState();if o then l.Position=Vector2.new(j.ViewportSize.X/2,j.ViewportSize.Y/2);else l.Position=Vector2.new(Z.X+M.X,Z.Y+M.Y);end;l.Visible=L[1][L[3]];l.Color=p;l.Thickness=n;l.Transparency=w;l.Filled=R;l.NumSides=128;l.ZIndex=2;if c then local j=tick();local o=X.Slider["Effect Speed"]:getValue();local c=X.Slider["Effect Intensity"]:getValue();local R=math.sin(j*o)*c+(1-c);local K=math.sin(j*o*0.7)*c+(1-c);if b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then l.Color=p:Lerp(Color3.new(1,1,1),0.5);l.Thickness=n+1;l.Transparency=w*0.3;else l.Color=p:Lerp(Color3.new(1,1,1),K*0.3);l.Transparency=w*R;end;end;if X.Toggle["FOV Auto Adjust"]:getState()then local j=i;local p=b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);local b=p and(j*X.Slider["Adjust Size"]:getValue())or j;y[1][y[3]]=y[1][y[3]]+(b-y[1][y[3]])*X.Slider["Adjust Speed"]:getValue();else y[1][y[3]]=i;end;l.Radius=y[1][y[3]];end;if t[1][t[3]]then local i=t[1][t[3]];local t=X.Toggle["FOV Effects"]:getState();i.Visible=z[1][z[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if f[1][f[3]]and L[1][L[3]]then local j=f[1][f[3]];i.Position=Vector2.new(j.Position.X,j.Position.Y+j.Radius+8);local j=X.ColorPicker[

-- [frag 0987 @ offset 3162601] (275 bytes)
]:getState();if o then l.Position=Vector2.new(j.ViewportSize.X/2,j.ViewportSize.Y/2);else l.Position=Vector2.new(Z.X+M.X,Z.Y+M.Y);end;l.Visible=L[1][L[3]];l.Color=p;l.Thickness=n;l.Transparency=w;l.Filled=R;l.NumSides=128;l.ZIndex=2;if c then local j=tick();local o=X.Slider[

-- [frag 0988 @ offset 3162901] (30 bytes)
]:getValue();local c=X.Slider[

-- [frag 0989 @ offset 3162964] (299 bytes)
]:getValue();local R=math.sin(j*o)*c+(1-c);local K=math.sin(j*o*0.7)*c+(1-c);if b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then l.Color=p:Lerp(Color3.new(1,1,1),0.5);l.Thickness=n+1;l.Transparency=w*0.3;else l.Color=p:Lerp(Color3.new(1,1,1),K*0.3);l.Transparency=w*R;end;end;if X.Toggle[

-- [frag 0990 @ offset 3163310] (116 bytes)
]:getState()then local j=i;local p=b:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);local b=p and(j*X.Slider[

-- [frag 0991 @ offset 3163464] (64 bytes)
]:getValue())or j;y[1][y[3]]=y[1][y[3]]+(b-y[1][y[3]])*X.Slider[

-- [frag 0992 @ offset 3163572] (113 bytes)
]:getValue();else y[1][y[3]]=i;end;l.Radius=y[1][y[3]];end;if t[1][t[3]]then local i=t[1][t[3]];local t=X.Toggle[

-- [frag 0993 @ offset 3163720] (353 bytes)
]:getState();i.Visible=z[1][z[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if f[1][f[3]]and L[1][L[3]]then local j=f[1][f[3]];i.Position=Vector2.new(j.Position.X,j.Position.Y+j.Radius+8);local j=X.ColorPicker['FOV Color']:getColor();i.Color=j:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if t then local t=tick();local p=X.Slider[

-- [frag 0994 @ offset 3163958] (393 bytes)
]:getColor();i.Color=j:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if t then local t=tick();local p=X.Slider["Effect Speed"]:getValue();local L=X.Slider["Effect Intensity"]:getValue();local b=math.sin(t*p*0.8)*L+(1-L);i.Color=j:Lerp(Color3.new(1,1,1),b);end;else i.Position=Vector2.new(Z.X+M.X,Z.Y+M.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text=

-- [frag 0995 @ offset 3164115] (30 bytes)
]:getValue();local L=X.Slider[

-- [frag 0996 @ offset 3164185] (478 bytes)
]:getValue();local b=math.sin(t*p*0.8)*L+(1-L);i.Color=j:Lerp(Color3.new(1,1,1),b);end;else i.Position=Vector2.new(Z.X+M.X,Z.Y+M.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text='Max Hub';end;end;end,js=function(i)local Z=i[2];local t=i[6];local j=i[3];local p=i[1];local L=i[4];local b=i[0];local f=i[7];local l=i[5];return function()local i=b.Character or b.CharacterAdded:Wait();local o=i:FindFirstChildWhichIsA('Tool')or b.Backpack:FindFirstChild(

-- [frag 0997 @ offset 3164658] (190 bytes)
)or b.Backpack:FindFirstChild("rod/client",true).Parent;local z=j.Keybind["Fly"]:getKeybind();local c=j.Slider["Fly Speed"]:getValue();local y=tick();if i then i.Humanoid.WalkSpeed=j.Slider[

-- [frag 0998 @ offset 3164763] (32 bytes)
]:getKeybind();local c=j.Slider[

-- [frag 0999 @ offset 3164826] (102 bytes)
]:getValue();local y=tick();if i then i.Humanoid.WalkSpeed=j.Slider['Walkspeed']:getValue();end;if z==

-- [frag 1000 @ offset 3164916] (36 bytes)
]:getValue();end;if z=="None"then z=

-- [frag 1001 @ offset 3164951] (720 bytes)
then z='Y';end;if not freeCamActive then flyActive=flyActive or false;if not flyKeyConnection then flyKeyConnection=Z.InputBegan:Connect(function(i,n)if not n and i.KeyCode==Enum.KeyCode[z]then flyActive=not flyActive;end;end);end;if flyActive then local i=b.Character;if i and i:FindFirstChild(l[1][l[3]])then local l=i.HumanoidRootPart;l.Velocity=Vector3.new(0,2,0);if Z:IsKeyDown(Enum.KeyCode.W)then l.CFrame=l.CFrame+(p.CFrame.LookVector*c);elseif Z:IsKeyDown(Enum.KeyCode.S)then l.CFrame=l.CFrame+(-p.CFrame.LookVector*c);elseif Z:IsKeyDown(Enum.KeyCode.A)then l.CFrame=l.CFrame+(-p.CFrame.RightVector*c);elseif Z:IsKeyDown(Enum.KeyCode.D)then l.CFrame=l.CFrame+(p.CFrame.RightVector*c);end;end;end;end;if j.Toggle[

-- [frag 1002 @ offset 3164965] (941 bytes)
;end;if not freeCamActive then flyActive=flyActive or false;if not flyKeyConnection then flyKeyConnection=Z.InputBegan:Connect(function(i,n)if not n and i.KeyCode==Enum.KeyCode[z]then flyActive=not flyActive;end;end);end;if flyActive then local i=b.Character;if i and i:FindFirstChild(l[1][l[3]])then local l=i.HumanoidRootPart;l.Velocity=Vector3.new(0,2,0);if Z:IsKeyDown(Enum.KeyCode.W)then l.CFrame=l.CFrame+(p.CFrame.LookVector*c);elseif Z:IsKeyDown(Enum.KeyCode.S)then l.CFrame=l.CFrame+(-p.CFrame.LookVector*c);elseif Z:IsKeyDown(Enum.KeyCode.A)then l.CFrame=l.CFrame+(-p.CFrame.RightVector*c);elseif Z:IsKeyDown(Enum.KeyCode.D)then l.CFrame=l.CFrame+(p.CFrame.RightVector*c);end;end;end;end;if j.Toggle["Auto Shake"]:getState()and L:FindFirstChild("shakeui")then if y-t.fishing.lastShake>=j.Slider["Shake Cooldown"]:getValue()then local i=L:FindFirstChild("shakeui");if i and i:FindFirstChild("safezone")and i.safezone:FindFirstChild(

-- [frag 1003 @ offset 3165701] (33 bytes)
]:getState()and L:FindFirstChild(

-- [frag 1004 @ offset 3165826] (42 bytes)
]:getValue()then local i=L:FindFirstChild(

-- [frag 1005 @ offset 3165941] (289 bytes)
)and i.safezone:FindFirstChild('button')then local Z=i.safezone.button;Z.Transparency=1;Z.Size=UDim2.new(5,0,5,0);f:ClickButton1(Vector2.new(9e9,9e9));end;t.fishing.lastShake=y;end;end;if j.Toggle['Big Buttons']:getState()then local i=L:FindFirstChild('shakeui');if i and i:FindFirstChild(

-- [frag 1006 @ offset 3165987] (158 bytes)
)then local Z=i.safezone.button;Z.Transparency=1;Z.Size=UDim2.new(5,0,5,0);f:ClickButton1(Vector2.new(9e9,9e9));end;t.fishing.lastShake=y;end;end;if j.Toggle[

-- [frag 1007 @ offset 3166180] (42 bytes)
]:getState()then local i=L:FindFirstChild(

-- [frag 1008 @ offset 3166295] (134 bytes)
)and i.safezone:FindFirstChild('button')then local Z=i.safezone.button;Z.Transparency=1;Z.Size=UDim2.new(5,0,5,0);end;end;if j.Toggle[

-- [frag 1009 @ offset 3166348] (240 bytes)
)then local Z=i.safezone.button;Z.Transparency=1;Z.Size=UDim2.new(5,0,5,0);end;end;if j.Toggle["Auto Cast"]:getState()and o and o.values and o.values.casted.Value==false then local i=o.events.castAsync;i:InvokeServer(100,1);end;if j.Toggle[

-- [frag 1010 @ offset 3166464] (200 bytes)
]:getState()and o and o.values and o.values.casted.Value==false then local i=o.events.castAsync;i:InvokeServer(100,1);end;if j.Toggle['Spam Place Cages']:getState()and workspace.Camera:FindFirstChild(

-- [frag 1011 @ offset 3166641] (106 bytes)
]:getState()and workspace.Camera:FindFirstChild("Cage")then if y-t.crabCages.lastCageDeployTime>=j.Slider[

-- [frag 1012 @ offset 3166701] (121 bytes)
)then if y-t.crabCages.lastCageDeployTime>=j.Slider['Place/Purchase Cooldown']:getValue()then b.Character:FindFirstChild(

-- [frag 1013 @ offset 3166826] (107 bytes)
]:getValue()then b.Character:FindFirstChild("Crab Cage").Deploy:FireServer(workspace.Camera:FindFirstChild(

-- [frag 1014 @ offset 3166892] (128 bytes)
).Deploy:FireServer(workspace.Camera:FindFirstChild('Cage').hitbox.CFrame);t.crabCages.lastCageDeployTime=y;end;end;if j.Toggle[

-- [frag 1015 @ offset 3166959] (146 bytes)
).hitbox.CFrame);t.crabCages.lastCageDeployTime=y;end;end;if j.Toggle["Auto Claim Cages"]:getState()then if y-t.crabCages.lastClaimTime>=j.Slider[

-- [frag 1016 @ offset 3167075] (294 bytes)
]:getState()then if y-t.crabCages.lastClaimTime>=j.Slider['Place/Purchase Cooldown']:getValue()then for i,i in ipairs(workspace.active:GetChildren())do if i.Name==b.Name and i:FindFirstChild('done',true)then fireproximityprompt(i.Prompt);end;end;t.crabCages.lastClaimTime=y;end;end;if j.Toggle[

-- [frag 1017 @ offset 3167185] (108 bytes)
]:getValue()then for i,i in ipairs(workspace.active:GetChildren())do if i.Name==b.Name and i:FindFirstChild(

-- [frag 1018 @ offset 3167306] (447 bytes)
,true)then fireproximityprompt(i.Prompt);end;end;t.crabCages.lastClaimTime=y;end;end;if j.Toggle["Spam Purchase Cages"]:getState()then if y-t.crabCages.lastBuyTime>=j.Slider["Place/Purchase Cooldown"]:getValue()then for i,i in workspace.world.interactables["Crab Cage"]:GetChildren()do if i:FindFirstChild("PromptTemplate")then fireproximityprompt(i:FindFirstChild("PromptTemplate"));t.crabCages.lastBuyTime=y;break;end;end;local i=L:WaitForChild(

-- [frag 1019 @ offset 3167459] (56 bytes)
]:getState()then if y-t.crabCages.lastBuyTime>=j.Slider[

-- [frag 1020 @ offset 3167579] (58 bytes)
]:getValue()then for i,i in workspace.world.interactables[

-- [frag 1021 @ offset 3167722] (43 bytes)
)then fireproximityprompt(i:FindFirstChild(

-- [frag 1022 @ offset 3167935] (205 bytes)
);if i and i:IsA("TextButton")then firesignal(i.MouseButton1Click);end;end;end;if j.Toggle["Clear Cage Effects"]:getState()then for i,i in ipairs(workspace.active:GetChildren())do local Z=i:FindFirstChild(

-- [frag 1023 @ offset 3168108] (2318 bytes)
]:getState()then for i,i in ipairs(workspace.active:GetChildren())do local Z=i:FindFirstChild('cage',true);if not Z then continue;end;Z:FindFirstChild('done'):Destroy();end;end;end;end,th=bit32.band,R=function(i)local Z=i[1];local t=i[0];return function(i)coroutine.wrap(Z)(i);coroutine.wrap(t)(i);end;end,iX=function(i,i,Z,t)t[0x2][i+0X2]=(Z);end,Ps=table.move,Eh=function(i,Z,t,j)for p=0X8,0B1110010,0X8 do if p==8 then if Z~=0B110001 then j=i:Rh(t,j);else j=t[38]();end;continue;else if p==0B001_0000 then i:Zh();break;end;end;end;return j;end,B=function()return function()for i,i in pairs(getgc(true))do if typeof(i)=='table'and rawget(i,'shotrate')then i.velocity=999.0;end;end;end;end,Ci=function(i,Z)local t,j=(116);while true do if t>67 and t<0X74 then return-0x2,(i:Ui(j));else if t<70 then t=0X46;Z[12]=(Z[0B1_100]+0X02);continue;else if t>0X46 then t=0X43;j=Z[14](Z[0x1D],Z[0Xc]);end;end;end;end;return nil;end,li=function(i,Z)local t,j,p,L,b=(0x0);repeat if t<0x32 then L,b,t=i:Ii(L,Z,b,t);continue;elseif t>0X0 and t<95 then return-0X2,b*Z[0XA]+L;else if t>0B110010 then j,b,t,p=i:qi(t,Z,L,b);if j==-0B001__0 then return-2,p;end;end;end;until false;return nil;end,m=function(i)local Z=i[0];local t=i[6];local j=i[4];local p=i[5];local L=i[1];local b=i[2];local f=i[3];return function()if L.Parent then local i,l=p:WorldToViewportPoint(L.Position);if l then j(b[L],i,{enableEffects=true,showDot=true,showText=true});else Z(b[L],false);end;else f[1][f[3]]:Delete();if b[L]then t(b[L]);b[L]=nil;end;end;end;end,Ji=function(i,i)(i)[0B0011000]=(function(Z,t,j)if Z>j then return;end;local p=(j-Z+1);if p>=0X8 then return t[Z],t[Z+0x001],t[Z+0X2],t[Z+0B11],t[Z+0X4__],t[Z+0x5],t[Z+0B110],t[Z+0B111],i[0b11__000](Z+0X8,t,j);elseif p>=0X7 then if i[0X3]~=i[6]then return t[Z],t[Z+1],t[Z+2],t[Z+0X3],t[Z+0B100],t[Z+5],t[Z+0X6],i[0X18](Z+0X07,t,j);end;elseif p>=0X6 then return t[Z],t[Z+0X1],t[Z+0x2],t[Z+0B11],t[Z+4],t[Z+0b101],i[24](Z+0x6,t,j);elseif p>=0b101 then return t[Z],t[Z+0X1],t[Z+2],t[Z+3],t[Z+0X4],i[0X18](Z+0x5,t,j);elseif p>=0x4 then return t[Z],t[Z+0X001],t[Z+0x2],t[Z+3],i[0X18](Z+0X4,t,j);elseif p>=0X3 then return t[Z],t[Z+0B1],t[Z+0B10],i[0B1100__0](Z+0X003,t,j);else if not(p>=0B10)then return t[Z],i[0x18](Z+1,t,j);else return t[Z],t[Z+0X1],i[24](Z+0X2,t,j);end;end;end);end,mh=string.gsub,cs=

-- [frag 1024 @ offset 3168805] (2110 bytes)
)then i.velocity=999.0;end;end;end;end,Ci=function(i,Z)local t,j=(116);while true do if t>67 and t<0X74 then return-0x2,(i:Ui(j));else if t<70 then t=0X46;Z[12]=(Z[0B1_100]+0X02);continue;else if t>0X46 then t=0X43;j=Z[14](Z[0x1D],Z[0Xc]);end;end;end;end;return nil;end,li=function(i,Z)local t,j,p,L,b=(0x0);repeat if t<0x32 then L,b,t=i:Ii(L,Z,b,t);continue;elseif t>0X0 and t<95 then return-0X2,b*Z[0XA]+L;else if t>0B110010 then j,b,t,p=i:qi(t,Z,L,b);if j==-0B001__0 then return-2,p;end;end;end;until false;return nil;end,m=function(i)local Z=i[0];local t=i[6];local j=i[4];local p=i[5];local L=i[1];local b=i[2];local f=i[3];return function()if L.Parent then local i,l=p:WorldToViewportPoint(L.Position);if l then j(b[L],i,{enableEffects=true,showDot=true,showText=true});else Z(b[L],false);end;else f[1][f[3]]:Delete();if b[L]then t(b[L]);b[L]=nil;end;end;end;end,Ji=function(i,i)(i)[0B0011000]=(function(Z,t,j)if Z>j then return;end;local p=(j-Z+1);if p>=0X8 then return t[Z],t[Z+0x001],t[Z+0X2],t[Z+0B11],t[Z+0X4__],t[Z+0x5],t[Z+0B110],t[Z+0B111],i[0b11__000](Z+0X8,t,j);elseif p>=0X7 then if i[0X3]~=i[6]then return t[Z],t[Z+1],t[Z+2],t[Z+0X3],t[Z+0B100],t[Z+5],t[Z+0X6],i[0X18](Z+0X07,t,j);end;elseif p>=0X6 then return t[Z],t[Z+0X1],t[Z+0x2],t[Z+0B11],t[Z+4],t[Z+0b101],i[24](Z+0x6,t,j);elseif p>=0b101 then return t[Z],t[Z+0X1],t[Z+2],t[Z+3],t[Z+0X4],i[0X18](Z+0x5,t,j);elseif p>=0x4 then return t[Z],t[Z+0X001],t[Z+0x2],t[Z+3],i[0X18](Z+0X4,t,j);elseif p>=0X3 then return t[Z],t[Z+0B1],t[Z+0B10],i[0B1100__0](Z+0X003,t,j);else if not(p>=0B10)then return t[Z],i[0x18](Z+1,t,j);else return t[Z],t[Z+0X1],i[24](Z+0X2,t,j);end;end;end);end,mh=string.gsub,cs="readi32",Q=function(i)local Z=i[11];local t=i[18];local j=i[10];local p=i[8];local L=i[5];local b=i[0];local f=i[15];local l=i[9];local o=i[4];local z=i[6];local c=i[1];local y=i[13];local n=i[2];local X=i[14];local M=i[12];local R=i[3];local w=i[7];local K=i[16];local e=i[17];return function()local i=b.Slider["FOV Size"]:getValue();local U=b.ColorPicker["FOV Color"]:getColor();local C=b.Slider["FOV Thickness"]:getValue();local d=b.Toggle[

-- [frag 1025 @ offset 3170806] (35 bytes)
]:getValue();local U=b.ColorPicker[

-- [frag 1026 @ offset 3170867] (30 bytes)
]:getColor();local C=b.Slider[

-- [frag 1027 @ offset 3170929] (72 bytes)
]:getValue();local d=b.Toggle['FOV Filled']:getState();local G=b.Slider[

-- [frag 1028 @ offset 3170986] (150 bytes)
]:getState();local G=b.Slider["FOV Transparency"]:getValue();local x=p();local p=b.Dropdown["FOV Style"]:getValue();local J=type(p)=="table"and p[1]==

-- [frag 1029 @ offset 3171053] (44 bytes)
]:getValue();local x=p();local p=b.Dropdown[

-- [frag 1030 @ offset 3171118] (30 bytes)
]:getValue();local J=type(p)==

-- [frag 1031 @ offset 3171224] (341 bytes)
;if j[1][j[3]]then local p=j[1][j[3]];p.Position=x;p.Visible=M[1][M[3]]and o[1][o[3]]and not J;p.Color=b.ColorPicker['FOV Outline Color']:getColor();p.Thickness=b.Slider['FOV Outline Thickness']:getValue();p.Transparency=b.Slider['FOV Outline Transparency']:getValue();p.Filled=false;p.NumSides=128;p.ZIndex=1;if not J then local j=b.Toggle[

-- [frag 1032 @ offset 3171387] (34 bytes)
]:getColor();p.Thickness=b.Slider[

-- [frag 1033 @ offset 3171475] (37 bytes)
]:getValue();p.Transparency=b.Slider[

-- [frag 1034 @ offset 3171566] (406 bytes)
]:getValue();p.Filled=false;p.NumSides=128;p.ZIndex=1;if not J then local j=b.Toggle["FOV Effects"]:getState();if j then local j=tick();local M=b.Slider["Effect Speed"]:getValue();local B=b.Slider["Effect Intensity"]:getValue();local F=math.sin(j*M)*B+(1-B);if R:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then p.Thickness=b.Slider["FOV Outline Thickness"]:getValue()+0.5;p.Transparency=b.Slider[

-- [frag 1035 @ offset 3171684] (55 bytes)
]:getState();if j then local j=tick();local M=b.Slider[

-- [frag 1036 @ offset 3171770] (30 bytes)
]:getValue();local B=b.Slider[

-- [frag 1037 @ offset 3171834] (127 bytes)
]:getValue();local F=math.sin(j*M)*B+(1-B);if R:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then p.Thickness=b.Slider[

-- [frag 1038 @ offset 3172021] (400 bytes)
]:getValue()+0.5;p.Transparency=b.Slider['FOV Outline Transparency']:getValue()*0.3;else p.Transparency=b.Slider['FOV Outline Transparency']:getValue()*F;end;end;if b.Toggle['FOV Auto Adjust']:getState()then local j=b.Slider['FOV Size']:getValue();local M=R:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)and(j*b.Slider['Adjust Size']:getValue())or j;local j=c[1][c[3]]+(M-c[1][c[3]])*b.Slider[

-- [frag 1039 @ offset 3172120] (46 bytes)
]:getValue()*0.3;else p.Transparency=b.Slider[

-- [frag 1040 @ offset 3172241] (35 bytes)
]:getValue()*F;end;end;if b.Toggle[

-- [frag 1041 @ offset 3172333] (34 bytes)
]:getState()then local j=b.Slider[

-- [frag 1042 @ offset 3172390] (91 bytes)
]:getValue();local M=R:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)and(j*b.Slider[

-- [frag 1043 @ offset 3172523] (594 bytes)
]:getValue())or j;local j=c[1][c[3]]+(M-c[1][c[3]])*b.Slider["Adjust Speed"]:getValue();p.Radius=j+(b.Slider["FOV Thickness"]:getValue()/2)+(b.Slider["FOV Outline Thickness"]:getValue()/2);else p.Radius=b.Slider["FOV Size"]:getValue()+(b.Slider["FOV Thickness"]:getValue()/2)+(b.Slider["FOV Outline Thickness"]:getValue()/2);end;end;end;if z[1][z[3]]then local j=z[1][z[3]];j.Position=x;j.Visible=o[1][o[3]]and not J;j.Color=U;j.Thickness=C;j.Transparency=G;j.Filled=d;j.NumSides=128;j.ZIndex=2;if not J then local p=b.Toggle["FOV Effects"]:getState();if p then local p=tick();local M=b.Slider[

-- [frag 1044 @ offset 3172627] (34 bytes)
]:getValue();p.Radius=j+(b.Slider[

-- [frag 1045 @ offset 3172688] (26 bytes)
]:getValue()/2)+(b.Slider[

-- [frag 1046 @ offset 3172752] (39 bytes)
]:getValue()/2);else p.Radius=b.Slider[

-- [frag 1047 @ offset 3172813] (23 bytes)
]:getValue()+(b.Slider[

-- [frag 1048 @ offset 3172963] (217 bytes)
]:getValue()/2);end;end;end;if z[1][z[3]]then local j=z[1][z[3]];j.Position=x;j.Visible=o[1][o[3]]and not J;j.Color=U;j.Thickness=C;j.Transparency=G;j.Filled=d;j.NumSides=128;j.ZIndex=2;if not J then local p=b.Toggle[

-- [frag 1049 @ offset 3173200] (99 bytes)
]:getState();if p then local p=tick();local M=b.Slider['Effect Speed']:getValue();local d=b.Slider[

-- [frag 1050 @ offset 3173281] (788 bytes)
]:getValue();local d=b.Slider["Effect Intensity"]:getValue();local B=math.sin(p*M)*d+(1-d);local F=math.sin(p*M*0.7)*d+(1-d);if R:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then j.Color=U:Lerp(Color3.new(1,1,1),0.5);j.Thickness=C+1;j.Transparency=G*0.3;else j.Color=U:Lerp(Color3.new(1,1,1),F*0.3);j.Transparency=G*B;end;end;if b.Toggle["FOV Auto Adjust"]:getState()then local p=i;local M=R:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)and(p*b.Slider["Adjust Size"]:getValue())or p;c[1][c[3]]=c[1][c[3]]+(M-c[1][c[3]])*b.Slider["Adjust Speed"]:getValue();j.Radius=c[1][c[3]];else c[1][c[3]]=i;j.Radius=c[1][c[3]];end;end;end;if not n[1][n[3]]then n[1][n[3]]={};end;if o[1][o[3]]and J then local j=tick();local p=b.Toggle["FOV Effects"]:getState();local M=p and b.Slider[

-- [frag 1051 @ offset 3173350] (299 bytes)
]:getValue();local B=math.sin(p*M)*d+(1-d);local F=math.sin(p*M*0.7)*d+(1-d);if R:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then j.Color=U:Lerp(Color3.new(1,1,1),0.5);j.Thickness=C+1;j.Transparency=G*0.3;else j.Color=U:Lerp(Color3.new(1,1,1),F*0.3);j.Transparency=G*B;end;end;if b.Toggle[

-- [frag 1052 @ offset 3173699] (105 bytes)
]:getState()then local p=i;local M=R:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)and(p*b.Slider[

-- [frag 1053 @ offset 3173843] (64 bytes)
]:getValue())or p;c[1][c[3]]=c[1][c[3]]+(M-c[1][c[3]])*b.Slider[

-- [frag 1054 @ offset 3173950] (179 bytes)
]:getValue();j.Radius=c[1][c[3]];else c[1][c[3]]=i;j.Radius=c[1][c[3]];end;end;end;if not n[1][n[3]]then n[1][n[3]]={};end;if o[1][o[3]]and J then local j=tick();local p=b.Toggle[

-- [frag 1055 @ offset 3174156] (90 bytes)
]:getState();local M=p and b.Slider['Effect Speed']:getValue()or 1;local d=p and b.Slider[

-- [frag 1056 @ offset 3174233] (308 bytes)
]:getValue()or 1;local d=p and b.Slider["Effect Intensity"]:getValue()or 0;local p=math.sin(j*M)*d+(1-d);local j=c[1][c[3]]*p;local M=5;local d,J=x.X,x.Y;local x=U;local U=C;if b.Toggle["FOV Auto Adjust"]:getState()then local C=i;local B=R:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)and(C*b.Slider[

-- [frag 1057 @ offset 3174332] (128 bytes)
]:getValue()or 0;local p=math.sin(j*M)*d+(1-d);local j=c[1][c[3]]*p;local M=5;local d,J=x.X,x.Y;local x=U;local U=C;if b.Toggle[

-- [frag 1058 @ offset 3174505] (1078 bytes)
]:getState()then local C=i;local B=R:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)and(C*b.Slider['Adjust Size']:getValue())or C;c[1][c[3]]=c[1][c[3]]+(B-c[1][c[3]])*b.Slider['Adjust Speed']:getValue();j=c[1][c[3]]*p;else c[1][c[3]]=i;j=c[1][c[3]]*p;end;local i=j;local c=j*0.45;local j={};for C=0,M*2-1 do local B=(math.pi/M)*C-math.pi/2;local F=C%2==0 and i or c;j[C+1]=Vector2.new(d+math.cos(B)*F,J+math.sin(B)*F);end;local i=M*2;for c=1,i do if not n[1][n[3]][c]then n[1][n[3]][c]=Drawing.new('Line');end;local M=n[1][n[3]][c];local C=j[c];local d=j[c%i+1];M.From=C;M.To=d;M.Color=x;M.Thickness=U;M.Transparency=G*p;M.Visible=true;M.ZIndex=2;end;for j=i+1,#n[1][n[3]]do n[1][n[3]][j].Visible=false;end;else if n[1][n[3]]then for i,i in pairs(n[1][n[3]])do i.Visible=false;end;end;end;if X[1][X[3]]then local i=X[1][X[3]];local j=b.Toggle['FOV Effects']:getState();i.Visible=K[1][K[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if z[1][z[3]]and o[1][o[3]]then local p=z[1][z[3]];i.Position=Vector2.new(p.Position.X,p.Position.Y+p.Radius+8);local p=b.ColorPicker[

-- [frag 1059 @ offset 3174639] (64 bytes)
]:getValue())or C;c[1][c[3]]=c[1][c[3]]+(B-c[1][c[3]])*b.Slider[

-- [frag 1060 @ offset 3174737] (308 bytes)
]:getValue();j=c[1][c[3]]*p;else c[1][c[3]]=i;j=c[1][c[3]]*p;end;local i=j;local c=j*0.45;local j={};for C=0,M*2-1 do local B=(math.pi/M)*C-math.pi/2;local F=C%2==0 and i or c;j[C+1]=Vector2.new(d+math.cos(B)*F,J+math.sin(B)*F);end;local i=M*2;for c=1,i do if not n[1][n[3]][c]then n[1][n[3]][c]=Drawing.new(

-- [frag 1061 @ offset 3175419] (353 bytes)
]:getState();i.Visible=K[1][K[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if z[1][z[3]]and o[1][o[3]]then local p=z[1][z[3]];i.Position=Vector2.new(p.Position.X,p.Position.Y+p.Radius+8);local p=b.ColorPicker["FOV Color"]:getColor();i.Color=p:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if j then local j=tick();local o=b.Slider[

-- [frag 1062 @ offset 3175656] (393 bytes)
]:getColor();i.Color=p:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if j then local j=tick();local o=b.Slider['Effect Speed']:getValue();local z=b.Slider['Effect Intensity']:getValue();local c=math.sin(j*o*0.8)*z+(1-z);i.Color=p:Lerp(Color3.new(1,1,1),c);end;else i.Position=Vector2.new(e.X+f.X,e.Y+f.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text=

-- [frag 1063 @ offset 3175817] (30 bytes)
]:getValue();local z=b.Slider[

-- [frag 1064 @ offset 3175894] (1779 bytes)
]:getValue();local c=math.sin(j*o*0.8)*z+(1-z);i.Color=p:Lerp(Color3.new(1,1,1),c);end;else i.Position=Vector2.new(e.X+f.X,e.Y+f.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text="Max Hub";end;if Z[1][Z[3]]then local i=l and l.Controller;if i and i._localActor then local Z=b.Slider["Fly Speed"]:getValue();local j=Vector3.new(0,0,0);if R:IsKeyDown(Enum.KeyCode.W)then j=j+w.CFrame.LookVector;end;if R:IsKeyDown(Enum.KeyCode.S)then j=j-w.CFrame.LookVector;end;if R:IsKeyDown(Enum.KeyCode.A)then j=j-w.CFrame.RightVector;end;if R:IsKeyDown(Enum.KeyCode.D)then j=j+w.CFrame.RightVector;end;if R:IsKeyDown(Enum.KeyCode.Space)then j=j+Vector3.new(0,1,0);end;if R:IsKeyDown(Enum.KeyCode.LeftControl)then j=j-Vector3.new(0,1,0);end;if j.Magnitude>0 then j=j.Unit*Z;end;local Z=i._position;local p=Z+j;i._position=p;i.VelocityGravity=0;i.IsGrounded=false;i._localActor.SimulatedPosition=p;end;end;if t[1][t[3]]then local i=y();local Z=b.Slider["Vehicle Fly Speed"]:getValue();if i and i.Solver then local t=i.CFrame or i.Hitbox.CFrame;if t then local j=Vector3.new(0,0,0);if R:IsKeyDown(Enum.KeyCode.W)then j=j+w.CFrame.LookVector;end;if R:IsKeyDown(Enum.KeyCode.S)then j=j-w.CFrame.LookVector;end;if R:IsKeyDown(Enum.KeyCode.A)then j=j-w.CFrame.RightVector;end;if R:IsKeyDown(Enum.KeyCode.D)then j=j+w.CFrame.RightVector;end;if R:IsKeyDown(Enum.KeyCode.Space)then j=j+Vector3.new(0,1,0);end;if R:IsKeyDown(Enum.KeyCode.LeftControl)then j=j-Vector3.new(0,1,0);end;if j.Magnitude>0 then j=j.Unit*Z;end;local Z=t.Position+j;local j=CFrame.new(Z)*t.Rotation;i.Solver:SetState(j,Vector3.new(0,0,0),Vector3.new(0,0,0));end;end;end;if b.Toggle["No Weight"]:getState()and l and L then L._weightMulti=1;if L._localActor then L._localActor.Weight=0;end;end;if b.Toggle[

-- [frag 1065 @ offset 3176244] (643 bytes)
]:getValue();local j=Vector3.new(0,0,0);if R:IsKeyDown(Enum.KeyCode.W)then j=j+w.CFrame.LookVector;end;if R:IsKeyDown(Enum.KeyCode.S)then j=j-w.CFrame.LookVector;end;if R:IsKeyDown(Enum.KeyCode.A)then j=j-w.CFrame.RightVector;end;if R:IsKeyDown(Enum.KeyCode.D)then j=j+w.CFrame.RightVector;end;if R:IsKeyDown(Enum.KeyCode.Space)then j=j+Vector3.new(0,1,0);end;if R:IsKeyDown(Enum.KeyCode.LeftControl)then j=j-Vector3.new(0,1,0);end;if j.Magnitude>0 then j=j.Unit*Z;end;local Z=i._position;local p=Z+j;i._position=p;i.VelocityGravity=0;i.IsGrounded=false;i._localActor.SimulatedPosition=p;end;end;if t[1][t[3]]then local i=y();local Z=b.Slider[

-- [frag 1066 @ offset 3176952] (675 bytes)
]:getValue();if i and i.Solver then local t=i.CFrame or i.Hitbox.CFrame;if t then local j=Vector3.new(0,0,0);if R:IsKeyDown(Enum.KeyCode.W)then j=j+w.CFrame.LookVector;end;if R:IsKeyDown(Enum.KeyCode.S)then j=j-w.CFrame.LookVector;end;if R:IsKeyDown(Enum.KeyCode.A)then j=j-w.CFrame.RightVector;end;if R:IsKeyDown(Enum.KeyCode.D)then j=j+w.CFrame.RightVector;end;if R:IsKeyDown(Enum.KeyCode.Space)then j=j+Vector3.new(0,1,0);end;if R:IsKeyDown(Enum.KeyCode.LeftControl)then j=j-Vector3.new(0,1,0);end;if j.Magnitude>0 then j=j.Unit*Z;end;local Z=t.Position+j;local j=CFrame.new(Z)*t.Rotation;i.Solver:SetState(j,Vector3.new(0,0,0),Vector3.new(0,0,0));end;end;end;if b.Toggle[

-- [frag 1067 @ offset 3177649] (302 bytes)
]:getState()and l and L then L._weightMulti=1;if L._localActor then L._localActor.Weight=0;end;end;if b.Toggle['Walkspeed Override']:getState()and l and L then L._weightMulti=b.Slider['Walkspeed']:getValue();end;if b.Toggle['Infinite Stamina']:getState()and l and L then L._exhausted=0;end;if b.Toggle[

-- [frag 1068 @ offset 3177836] (53 bytes)
]:getState()and l and L then L._weightMulti=b.Slider[

-- [frag 1069 @ offset 3177921] (29 bytes)
]:getValue();end;if b.Toggle[

-- [frag 1070 @ offset 3177985] (90 bytes)
]:getState()and l and L then L._exhausted=0;end;if b.Toggle["No Fall Damage"]and b.Toggle[

-- [frag 1071 @ offset 3178077] (271 bytes)
]and b.Toggle['No Fall Damage']:getState()and l and L and L._localActor then local i=L._localActor;i.HeightState=0;i._lastHeightState=0;i.Grounded=true;end;end;end,w=function(i)local Z=i[0];local t=i[4];local j=i[2];local p=i[3];local L=i[1];return function()if L.Toggle[

-- [frag 1072 @ offset 3178142] (988 bytes)
]:getState()and l and L and L._localActor then local i=L._localActor;i.HeightState=0;i._lastHeightState=0;i.Grounded=true;end;end;end,w=function(i)local Z=i[0];local t=i[4];local j=i[2];local p=i[3];local L=i[1];return function()if L.Toggle["No Recoil"]:getState()then j();end;if L.Toggle["Desync"]:getState()and not UserIsPoor then local i=Z[1][Z[3]]and Z[1][Z[3]]:FindFirstChild(p[1][p[3]]);if i and i.AssemblyMass<math.huge and not Z[1][Z[3]]:FindFirstChildWhichIsA("ForceField")then local Z=i.CFrame;local j=i.Velocity;i.Velocity=Vector3.new(math.random(-900000.0,900000),math.random(-300000.0,300000),math.random(-900000.0,900000));i.CFrame=i.CFrame*CFrame.Angles(0,0.0001,0);t.RenderStepped:Wait();i.Velocity=j;i.CFrame=Z;end;end;end;end,Zs=function(i)local Z=i[10];local t=i[9];local j=i[6];local p=i[8];local L=i[0];local b=i[11];local f=i[3];local l=i[7];local o=i[1];local z=i[5];local c=i[4];local y=i[2];return function()if o.Toggle["Farm Generators"]:getState()then o.Toggle[

-- [frag 1073 @ offset 3178435] (37 bytes)
]:getState()then j();end;if L.Toggle[

-- [frag 1074 @ offset 3178487] (172 bytes)
]:getState()and not UserIsPoor then local i=Z[1][Z[3]]and Z[1][Z[3]]:FindFirstChild(p[1][p[3]]);if i and i.AssemblyMass<math.huge and not Z[1][Z[3]]:FindFirstChildWhichIsA(

-- [frag 1075 @ offset 3178689] (464 bytes)
)then local Z=i.CFrame;local j=i.Velocity;i.Velocity=Vector3.new(math.random(-900000.0,900000),math.random(-300000.0,300000),math.random(-900000.0,900000));i.CFrame=i.CFrame*CFrame.Angles(0,0.0001,0);t.RenderStepped:Wait();i.Velocity=j;i.CFrame=Z;end;end;end;end,Zs=function(i)local Z=i[10];local t=i[9];local j=i[6];local p=i[8];local L=i[0];local b=i[11];local f=i[3];local l=i[7];local o=i[1];local z=i[5];local c=i[4];local y=i[2];return function()if o.Toggle[

-- [frag 1076 @ offset 3179203] (332 bytes)
]:getState()then o.Toggle['Auto Complete Minigame']:updateState({state=true});if c[1][c[3]]then t();else local i=b();if i then Z(i);else if o.Toggle['Serverhop on all completed']:getState()then f:Teleport(z);end;end;end;else j[1][j[3]]=nil;c[1][c[3]]=false;p[1][p[3]]={};end;if o.Toggle['Auto Block M1s']:getState()then if o.Toggle[

-- [frag 1077 @ offset 3179447] (110 bytes)
]:getState()then f:Teleport(z);end;end;end;else j[1][j[3]]=nil;c[1][c[3]]=false;p[1][p[3]]={};end;if o.Toggle[

-- [frag 1078 @ offset 3179612] (95 bytes)
]:getState()then if o.Toggle["Block Visual Bubble"]:getState()then y.Size=Vector3.new(o.Slider[

-- [frag 1079 @ offset 3179688] (1807 bytes)
]:getState()then y.Size=Vector3.new(o.Slider['Block Distance']:getValue()*2,o.Slider['Block Distance']:getValue()*2,o.Slider['Block Distance']:getValue()*2);y.CFrame=l.Character.HumanoidRootPart.CFrame;end;L();end;end;end,Oi=function(i,i,Z)i=(Z[0X35aa]);return i;end,Ai=function(i,i,Z,t)t[6][i]=Z(i);end,Js=function()return function()spawn(function()while task.wait()do pcall(function()if not game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BouncerTrail')then require(game.ReplicatedStorage.Modules.NetworkModule2):FireServer('Bouncing');end;end);end;end);end;end,EX=function(i,i,Z,t)i=Z[0X23](t);return i;end,nh=function(i,i,Z)Z=i[0X73_59];return Z;end,rX=function(i,Z,t,j,p,L,b)L=nil;t=(nil);p=(nil);b=(0X4D);repeat if b<0B10__011__01 then p=i:EX(p,j,t);break;else if b>72 then L=({i.ks,i.ks,nil,i.ks,nil,i.ks,i.ks,i.ks,i.ks,nil,i.ks});L[0B100]=j[0X2d]();b=(0B10010_00);t=j[0X2D]()-0x17E03;continue;end;end;until false;Z=j[0B100011](t);return b,t,p,Z,L;end,qX=function(i,Z,t,j,p,L,b,f,l,o,z,c,y,n)local X,M;if l==0X0f__ then o=c[45]();t=c[0b0100011](o);return t,l,0X691f__,o;else if l==0X70 then X,l,M=i:PX(p,Z,c,z,j,f,n,b,y,l,L);if X==-0B10 then return t,l,-0B10,o,M;else if X==-1 then return t,l,-0x01,o;end;end;elseif l==0b1110 then y[8]=b;l=(21);return t,l,45737,o;else if l==0x0015 then l=0B1110000;y[0X1]=(n);return t,l,45737,o;else if l==43 then l=(0XE);y[0X3]=j;return t,l,0Xb2_A9,o;end;end;end;end;return t,l,nil,o;end,M=function(i)local Z=i[6];local t=i[14];local j=i[17];local p=i[1];local L=i[11];local b=i[10];local f=i[9];local l=i[4];local o=i[13];local z=i[20];local c=i[8];local y=i[2];local n=i[16];local X=i[15];local M=i[12];local R=i[19];local w=i[3];local K=i[0];local e=i[18];local U=i[7];local C=i[5];return function()local i=f.Slider[

-- [frag 1080 @ offset 3179781] (24 bytes)
]:getValue()*2,o.Slider[

-- [frag 1081 @ offset 3179890] (268 bytes)
]:getValue()*2);y.CFrame=l.Character.HumanoidRootPart.CFrame;end;L();end;end;end,Oi=function(i,i,Z)i=(Z[0X35aa]);return i;end,Ai=function(i,i,Z,t)t[6][i]=Z(i);end,Js=function()return function()spawn(function()while task.wait()do pcall(function()if not game:GetService(

-- [frag 1082 @ offset 3180395] (1270 bytes)
);end;end);end;end);end;end,EX=function(i,i,Z,t)i=Z[0X23](t);return i;end,nh=function(i,i,Z)Z=i[0X73_59];return Z;end,rX=function(i,Z,t,j,p,L,b)L=nil;t=(nil);p=(nil);b=(0X4D);repeat if b<0B10__011__01 then p=i:EX(p,j,t);break;else if b>72 then L=({i.ks,i.ks,nil,i.ks,nil,i.ks,i.ks,i.ks,i.ks,nil,i.ks});L[0B100]=j[0X2d]();b=(0B10010_00);t=j[0X2D]()-0x17E03;continue;end;end;until false;Z=j[0B100011](t);return b,t,p,Z,L;end,qX=function(i,Z,t,j,p,L,b,f,l,o,z,c,y,n)local X,M;if l==0X0f__ then o=c[45]();t=c[0b0100011](o);return t,l,0X691f__,o;else if l==0X70 then X,l,M=i:PX(p,Z,c,z,j,f,n,b,y,l,L);if X==-0B10 then return t,l,-0B10,o,M;else if X==-1 then return t,l,-0x01,o;end;end;elseif l==0b1110 then y[8]=b;l=(21);return t,l,45737,o;else if l==0x0015 then l=0B1110000;y[0X1]=(n);return t,l,45737,o;else if l==43 then l=(0XE);y[0X3]=j;return t,l,0Xb2_A9,o;end;end;end;end;return t,l,nil,o;end,M=function(i)local Z=i[6];local t=i[14];local j=i[17];local p=i[1];local L=i[11];local b=i[10];local f=i[9];local l=i[4];local o=i[13];local z=i[20];local c=i[8];local y=i[2];local n=i[16];local X=i[15];local M=i[12];local R=i[19];local w=i[3];local K=i[0];local e=i[18];local U=i[7];local C=i[5];return function()local i=f.Slider["FOV Size"]:getValue();local d=f.ColorPicker[

-- [frag 1083 @ offset 3181644] (76 bytes)
]:getValue();local d=f.ColorPicker['FOV Color']:getColor();local G=f.Slider[

-- [frag 1084 @ offset 3181704] (75 bytes)
]:getColor();local G=f.Slider["FOV Thickness"]:getValue();local x=f.Toggle[

-- [frag 1085 @ offset 3181763] (72 bytes)
]:getValue();local x=f.Toggle['FOV Filled']:getState();local J=f.Slider[

-- [frag 1086 @ offset 3181825] (78 bytes)
]:getState();local J=f.Slider["FOV Transparency"]:getValue();local B=f.Toggle[

-- [frag 1087 @ offset 3181913] (77 bytes)
]:getValue();local B=f.Toggle['Hitbox Extender']:getState();local F=f.Toggle[

-- [frag 1088 @ offset 3181991] (99 bytes)
]:getState();local F=f.Toggle["Custom Kill Effects"]:getState();z();j:Update();if F and n:Cooldown(

-- [frag 1089 @ offset 3182082] (383 bytes)
]:getState();z();j:Update();if F and n:Cooldown('apply_cooldown',1)then e.customKillEffects();end;if B then for j,j in ipairs(R:GetPlayers())do if j~=M and j.Team~=M.Team then pcall(function()j.Character.UpperTorso.Size=Vector3.new(f.Slider['Hitbox Size']:getValue(),f.Slider['Hitbox Size']:getValue(),f.Slider['Hitbox Size']:getValue());j.Character.UpperTorso.Transparency=f.Slider[

-- [frag 1090 @ offset 3182169] (177 bytes)
,1)then e.customKillEffects();end;if B then for j,j in ipairs(R:GetPlayers())do if j~=M and j.Team~=M.Team then pcall(function()j.Character.UpperTorso.Size=Vector3.new(f.Slider[

-- [frag 1091 @ offset 3182395] (22 bytes)
]:getValue(),f.Slider[

-- [frag 1092 @ offset 3182493] (142 bytes)
]:getValue());j.Character.UpperTorso.Transparency=f.Slider["Hitbox Transparency"]:getValue();j.Character.UpperTorso.BrickColor=BrickColor.new(

-- [frag 1093 @ offset 3182596] (408 bytes)
]:getValue();j.Character.UpperTorso.BrickColor=BrickColor.new('Red');j.Character.UpperTorso.Material='Neon';j.Character.UpperTorso.CanCollide=false;j.Character.UpperTorso.Massless=true;end);end;end;end;if i~=o[1][o[3]]then if not f.Toggle['FOV Auto Adjust']:getState()then U[1][U[3]]=i;end;o[1][o[3]]=i;end;if L[1][L[3]]then local j=L[1][L[3]];local L=f.Toggle['FOV Lock Center']:getState();local o=f.Toggle[

-- [frag 1094 @ offset 3182669] (34 bytes)
);j.Character.UpperTorso.Material=

-- [frag 1095 @ offset 3182719] (132 bytes)
;j.Character.UpperTorso.CanCollide=false;j.Character.UpperTorso.Massless=true;end);end;end;end;if i~=o[1][o[3]]then if not f.Toggle[

-- [frag 1096 @ offset 3182881] (105 bytes)
]:getState()then U[1][U[3]]=i;end;o[1][o[3]]=i;end;if L[1][L[3]]then local j=L[1][L[3]];local L=f.Toggle[

-- [frag 1097 @ offset 3183025] (347 bytes)
]:getState();local o=f.Toggle["FOV Effects"]:getState();if L then j.Position=Vector2.new(p.ViewportSize.X/2,p.ViewportSize.Y/2);else j.Position=Vector2.new(w.X+c.X,w.Y+c.Y);end;j.Visible=C[1][C[3]]and t[1][t[3]];j.Color=f.ColorPicker["FOV Outline Color"]:getColor();j.Thickness=f.Slider["FOV Outline Thickness"]:getValue();j.Transparency=f.Slider[

-- [frag 1098 @ offset 3183101] (191 bytes)
]:getState();if L then j.Position=Vector2.new(p.ViewportSize.X/2,p.ViewportSize.Y/2);else j.Position=Vector2.new(w.X+c.X,w.Y+c.Y);end;j.Visible=C[1][C[3]]and t[1][t[3]];j.Color=f.ColorPicker[

-- [frag 1099 @ offset 3183361] (34 bytes)
]:getColor();j.Thickness=f.Slider[

-- [frag 1100 @ offset 3183439] (159 bytes)
]:getValue();j.Transparency=f.Slider['FOV Outline Transparency']:getValue();j.Filled=false;j.NumSides=128;j.ZIndex=1;if o then local L=tick();local o=f.Slider[

-- [frag 1101 @ offset 3183541] (140 bytes)
]:getValue();j.Filled=false;j.NumSides=128;j.ZIndex=1;if o then local L=tick();local o=f.Slider["Effect Speed"]:getValue();local z=f.Slider[

-- [frag 1102 @ offset 3183669] (239 bytes)
]:getValue();local z=f.Slider['Effect Intensity']:getValue();local n=math.sin(L*o)*z+(1-z);if y:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then j.Thickness=f.Slider['FOV Outline Thickness']:getValue()+0.5;j.Transparency=f.Slider[

-- [frag 1103 @ offset 3183733] (127 bytes)
]:getValue();local n=math.sin(L*o)*z+(1-z);if y:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then j.Thickness=f.Slider[

-- [frag 1104 @ offset 3183939] (113 bytes)
]:getValue()+0.5;j.Transparency=f.Slider["FOV Outline Transparency"]:getValue()*0.3;else j.Transparency=f.Slider[

-- [frag 1105 @ offset 3184030] (157 bytes)
]:getValue()*0.3;else j.Transparency=f.Slider['FOV Outline Transparency']:getValue()*n;end;end;local L=f.Slider['FOV Thickness']:getValue();local o=f.Slider[

-- [frag 1106 @ offset 3184145] (40 bytes)
]:getValue()*n;end;end;local L=f.Slider[

-- [frag 1107 @ offset 3184219] (156 bytes)
]:getValue();local o=f.Slider["FOV Outline Thickness"]:getValue();j.Radius=U[1][U[3]]+(L/2)+(o/2);end;if K[1][K[3]]then local j=K[1][K[3]];local L=f.Toggle[

-- [frag 1108 @ offset 3184296] (150 bytes)
]:getValue();j.Radius=U[1][U[3]]+(L/2)+(o/2);end;if K[1][K[3]]then local j=K[1][K[3]];local L=f.Toggle['FOV Lock Center']:getState();local o=f.Toggle[

-- [frag 1109 @ offset 3184444] (362 bytes)
]:getState();local o=f.Toggle["FOV Effects"]:getState();if L then j.Position=Vector2.new(p.ViewportSize.X/2,p.ViewportSize.Y/2);else j.Position=Vector2.new(w.X+c.X,w.Y+c.Y);end;j.Visible=t[1][t[3]];j.Color=d;j.Thickness=G;j.Transparency=J;j.Filled=x;j.NumSides=128;j.ZIndex=2;if o then local L=tick();local o=f.Slider["Effect Speed"]:getValue();local z=f.Slider[

-- [frag 1110 @ offset 3184500] (275 bytes)
]:getState();if L then j.Position=Vector2.new(p.ViewportSize.X/2,p.ViewportSize.Y/2);else j.Position=Vector2.new(w.X+c.X,w.Y+c.Y);end;j.Visible=t[1][t[3]];j.Color=d;j.Thickness=G;j.Transparency=J;j.Filled=x;j.NumSides=128;j.ZIndex=2;if o then local L=tick();local o=f.Slider[

-- [frag 1111 @ offset 3184816] (347 bytes)
]:getValue();local z=f.Slider['Effect Intensity']:getValue();local n=math.sin(L*o)*z+(1-z);local M=math.sin(L*o*0.7)*z+(1-z);if y:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then j.Color=d:Lerp(Color3.new(1,1,1),0.5);j.Thickness=G+1;j.Transparency=J*0.3;else j.Color=d:Lerp(Color3.new(1,1,1),M*0.3);j.Transparency=J*n;end;end;if f.Toggle[

-- [frag 1112 @ offset 3184889] (432 bytes)
]:getValue();local n=math.sin(L*o)*z+(1-z);local M=math.sin(L*o*0.7)*z+(1-z);if y:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then j.Color=d:Lerp(Color3.new(1,1,1),0.5);j.Thickness=G+1;j.Transparency=J*0.3;else j.Color=d:Lerp(Color3.new(1,1,1),M*0.3);j.Transparency=J*n;end;end;if f.Toggle["FOV Auto Adjust"]:getState()then local L=i;local o=y:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);local z=o and(L*f.Slider[

-- [frag 1113 @ offset 3185222] (320 bytes)
]:getState()then local L=i;local o=y:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);local z=o and(L*f.Slider['Adjust Size']:getValue())or L;U[1][U[3]]=U[1][U[3]]+(z-U[1][U[3]])*f.Slider['Adjust Speed']:getValue();else U[1][U[3]]=i;end;j.Radius=U[1][U[3]];end;if l[1][l[3]]then local i=l[1][l[3]];local j=f.Toggle[

-- [frag 1114 @ offset 3185359] (64 bytes)
]:getValue())or L;U[1][U[3]]=U[1][U[3]]+(z-U[1][U[3]])*f.Slider[

-- [frag 1115 @ offset 3185462] (342 bytes)
]:getValue();else U[1][U[3]]=i;end;j.Radius=U[1][U[3]];end;if l[1][l[3]]then local i=l[1][l[3]];local j=f.Toggle["FOV Effects"]:getState();i.Visible=X[1][X[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if K[1][K[3]]and t[1][t[3]]then local t=K[1][K[3]];i.Position=Vector2.new(t.Position.X,t.Position.Y+t.Radius+8);local t=f.ColorPicker[

-- [frag 1116 @ offset 3185601] (353 bytes)
]:getState();i.Visible=X[1][X[3]];i.Center=true;i.Outline=true;i.Transparency=0.7;if K[1][K[3]]and t[1][t[3]]then local t=K[1][K[3]];i.Position=Vector2.new(t.Position.X,t.Position.Y+t.Radius+8);local t=f.ColorPicker['FOV Color']:getColor();i.Color=t:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if j then local j=tick();local L=f.Slider[

-- [frag 1117 @ offset 3185841] (170 bytes)
]:getColor();i.Color=t:Lerp(Color3.new(1,1,1),0.6);i.OutlineColor=Color3.new(0,0,0);if j then local j=tick();local L=f.Slider["Effect Speed"]:getValue();local l=f.Slider[

-- [frag 1118 @ offset 3186000] (253 bytes)
]:getValue();local l=f.Slider['Effect Intensity']:getValue();local o=math.sin(j*L*0.8)*l+(1-l);i.Color=t:Lerp(Color3.new(1,1,1),o);end;else i.Position=Vector2.new(w.X+c.X,w.Y+c.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text=

-- [frag 1119 @ offset 3186077] (237 bytes)
]:getValue();local o=math.sin(j*L*0.8)*l+(1-l);i.Color=t:Lerp(Color3.new(1,1,1),o);end;else i.Position=Vector2.new(w.X+c.X,w.Y+c.Y+15);i.Color=Color3.new(1,1,1);i.OutlineColor=Color3.new(0,0,0);end;i.Text="Max Hub";end;local i=f.Keybind[

-- [frag 1120 @ offset 3186298] (44 bytes)
;end;local i=f.Keybind['Fly']:getKeybind()or

-- [frag 1121 @ offset 3186333] (1688 bytes)
]:getKeybind()or"Y";if y:IsKeyDown(Enum.KeyCode[i])then local i=Z[1][Z[3]]and Z[1][Z[3]].FindFirstChild(Z[1][Z[3]],b[1][b[3]]);i.Velocity=Vector3.zero;local Z=f.Slider["Fly Speed"]:getValue();if y:IsKeyDown(Enum.KeyCode.W)then i.CFrame=i.CFrame+p.CFrame.LookVector*Z;elseif y:IsKeyDown(Enum.KeyCode.S)then i.CFrame=i.CFrame+-p.CFrame.LookVector*Z;elseif y:IsKeyDown(Enum.KeyCode.A)then i.CFrame=i.CFrame+-p.CFrame.RightVector*Z;elseif y:IsKeyDown(Enum.KeyCode.D)then i.CFrame=i.CFrame+p.CFrame.RightVector*Z;end;end;end;end,Zh=function(i)end,ri=function(i,Z,t,j,p)while true do if p~=0X33 then p=i:Ei(j,t,p);else j[0B100]=i.ks;break;end;end;j[0X5]=i.vs.bxor;(j)[0b110]=nil;Z=(nil);j[0X7]=nil;return p,Z;end,Xs=function(i)local Z=i[1];local t=i[2];local j=i[0];local p=i[3];return function()while task.wait()do Z.Heartbeat:Wait();if not p.Toggle["Desync"]:getState()then Z.Heartbeat:Wait();continue;end;local i=j.Character;if not i then Z.Heartbeat:Wait();continue;end;local j=i:FindFirstChild(t[1][t[3]]);if not j then Z.Heartbeat:Wait();continue;end;local t,p=nil,0.1;t=j.Velocity;j.Velocity=Vector3.new(math.random(-1500.0,1500),math.random(-300.0,300),math.random(-1500.0,1500));Z.RenderStepped:Wait();if i and i.Parent and j and j.Parent then j.Velocity=t;end;Z.Stepped:Wait();if i and i.Parent and j and j.Parent then j.Velocity=t+Vector3.new(0,p,0);p=p*-1.0;end;end;end;end,zs=function(i)local Z=i[13];local t=i[6];local j=i[10];local p=i[1];local L=i[14];local b=i[11];local f=i[0];local l=i[3];local o=i[15];local z=i[9];local c=i[8];local y=i[2];local n=i[4];local X=i[7];local M=i[12];local R=i[5];return function()local i=X.Dropdown["Seeds To Buy"]:getValue();local w=X.Toggle[

-- [frag 1122 @ offset 3186525] (666 bytes)
]:getValue();if y:IsKeyDown(Enum.KeyCode.W)then i.CFrame=i.CFrame+p.CFrame.LookVector*Z;elseif y:IsKeyDown(Enum.KeyCode.S)then i.CFrame=i.CFrame+-p.CFrame.LookVector*Z;elseif y:IsKeyDown(Enum.KeyCode.A)then i.CFrame=i.CFrame+-p.CFrame.RightVector*Z;elseif y:IsKeyDown(Enum.KeyCode.D)then i.CFrame=i.CFrame+p.CFrame.RightVector*Z;end;end;end;end,Zh=function(i)end,ri=function(i,Z,t,j,p)while true do if p~=0X33 then p=i:Ei(j,t,p);else j[0B100]=i.ks;break;end;end;j[0X5]=i.vs.bxor;(j)[0b110]=nil;Z=(nil);j[0X7]=nil;return p,Z;end,Xs=function(i)local Z=i[1];local t=i[2];local j=i[0];local p=i[3];return function()while task.wait()do Z.Heartbeat:Wait();if not p.Toggle[

-- [frag 1123 @ offset 3187202] (791 bytes)
]:getState()then Z.Heartbeat:Wait();continue;end;local i=j.Character;if not i then Z.Heartbeat:Wait();continue;end;local j=i:FindFirstChild(t[1][t[3]]);if not j then Z.Heartbeat:Wait();continue;end;local t,p=nil,0.1;t=j.Velocity;j.Velocity=Vector3.new(math.random(-1500.0,1500),math.random(-300.0,300),math.random(-1500.0,1500));Z.RenderStepped:Wait();if i and i.Parent and j and j.Parent then j.Velocity=t;end;Z.Stepped:Wait();if i and i.Parent and j and j.Parent then j.Velocity=t+Vector3.new(0,p,0);p=p*-1.0;end;end;end;end,zs=function(i)local Z=i[13];local t=i[6];local j=i[10];local p=i[1];local L=i[14];local b=i[11];local f=i[0];local l=i[3];local o=i[15];local z=i[9];local c=i[8];local y=i[2];local n=i[4];local X=i[7];local M=i[12];local R=i[5];return function()local i=X.Dropdown[

-- [frag 1124 @ offset 3188024] (71 bytes)
]:getValue();local w=X.Toggle['Auto Sell']:getState();local K=X.Toggle[

-- [frag 1125 @ offset 3188079] (74 bytes)
]:getState();local K=X.Toggle["Auto Pickup"]:getState();local e=X.Keybind[

-- [frag 1126 @ offset 3188137] (224 bytes)
]:getState();local e=X.Keybind['Fly']:getKeybind();local U=X.Slider['Fly Speed']:getValue();local C=c.leaderstats.Sheckles.Value;local d=X.Toggle['Auto Place']:getState();local G=X.Toggle['Auto Hatch Eggs']:getState();if e==

-- [frag 1127 @ offset 3188174] (32 bytes)
]:getKeybind();local U=X.Slider[

-- [frag 1128 @ offset 3188232] (67 bytes)
]:getValue();local C=c.leaderstats.Sheckles.Value;local d=X.Toggle[

-- [frag 1129 @ offset 3188333] (30 bytes)
]:getState();local G=X.Toggle[

-- [frag 1130 @ offset 3188393] (556 bytes)
]:getState();if e=="None"then e="Y";end;if M:IsKeyDown(Enum.KeyCode[e])then y.Velocity=Vector3.new(0,0,0);if M:IsKeyDown(Enum.KeyCode.W)then y.CFrame=y.CFrame+(f.CFrame.LookVector*U);elseif M:IsKeyDown(Enum.KeyCode.S)then y.CFrame=y.CFrame+(-f.CFrame.LookVector*U);elseif M:IsKeyDown(Enum.KeyCode.A)then y.CFrame=y.CFrame+(-f.CFrame.RightVector*U);elseif M:IsKeyDown(Enum.KeyCode.D)then y.CFrame=y.CFrame+(f.CFrame.RightVector*U);end;end;if w and not p[1][p[3]]then local f=0;for M,M in ipairs(R:GetChildren())do f=f+1;end;if f>=200 then p[1][p[3]]=true;j(

-- [frag 1131 @ offset 3188439] (531 bytes)
;end;if M:IsKeyDown(Enum.KeyCode[e])then y.Velocity=Vector3.new(0,0,0);if M:IsKeyDown(Enum.KeyCode.W)then y.CFrame=y.CFrame+(f.CFrame.LookVector*U);elseif M:IsKeyDown(Enum.KeyCode.S)then y.CFrame=y.CFrame+(-f.CFrame.LookVector*U);elseif M:IsKeyDown(Enum.KeyCode.A)then y.CFrame=y.CFrame+(-f.CFrame.RightVector*U);elseif M:IsKeyDown(Enum.KeyCode.D)then y.CFrame=y.CFrame+(f.CFrame.RightVector*U);end;end;if w and not p[1][p[3]]then local f=0;for M,M in ipairs(R:GetChildren())do f=f+1;end;if f>=200 then p[1][p[3]]=true;j('selling',

-- [frag 1132 @ offset 3188978] (72 bytes)
,"MaxHub: Selling Plants",10);local f=y.CFrame;y.CFrame=game:GetService(

-- [frag 1133 @ offset 3189019] (136 bytes)
,10);local f=y.CFrame;y.CFrame=game:GetService('Workspace').NPCS.Steven.Torso.CFrame*CFrame.new(0,0,-5.0);task.wait(0.2);n:WaitForChild(

-- [frag 1134 @ offset 3189090] (377 bytes)
).NPCS.Steven.Torso.CFrame*CFrame.new(0,0,-5.0);task.wait(0.2);n:WaitForChild("Sell_Inventory"):FireServer();spawn(function()task.wait();y.CFrame=f;p[1][p[3]]=false;end);end;end;if X.Toggle["Auto Buy Seeds"]:getState()and os.clock()-o[1][o[3]]>=X.Slider["Auto Buy Cooldown"]:getValue()then o[1][o[3]]=os.clock();local f={c.PlayerGui.Seed_Shop.Frame.ScrollingFrame};if X.Toggle[

-- [frag 1135 @ offset 3189370] (48 bytes)
]:getState()and os.clock()-o[1][o[3]]>=X.Slider[

-- [frag 1136 @ offset 3189475] (473 bytes)
]:getValue()then o[1][o[3]]=os.clock();local f={c.PlayerGui.Seed_Shop.Frame.ScrollingFrame};if X.Toggle['Auto Buy Event Seeds']:getState()then table.insert(f,c.PlayerGui.HoneyEventShop_UI.Frame.ScrollingFrame);table.insert(f,c.PlayerGui.EventShop_UI.Frame.ScrollingFrame);end;for o,o in pairs(f)do for f,f in pairs(o:GetChildren())do if f:IsA(z[1][z[3]])and f:FindFirstChild('Main_Frame')then local o=f.Main_Frame.Rarity_Text.Text;local z=f.Main_Frame.Cost_Text.Text;if z~=

-- [frag 1137 @ offset 3189625] (249 bytes)
]:getState()then table.insert(f,c.PlayerGui.HoneyEventShop_UI.Frame.ScrollingFrame);table.insert(f,c.PlayerGui.EventShop_UI.Frame.ScrollingFrame);end;for o,o in pairs(f)do for f,f in pairs(o:GetChildren())do if f:IsA(z[1][z[3]])and f:FindFirstChild(

-- [frag 1138 @ offset 3190483] (282 bytes)
,'MaxHub: Selling Plants',10);local f=y.CFrame;y.CFrame=Z.NPCS.Steven.Torso.CFrame*CFrame.new(0,0,-5.0);task.wait(0.2);n:WaitForChild('Sell_Inventory'):FireServer();spawn(function()task.wait(1);y.CFrame=f;p[1][p[3]]=false;end);elseif K and i<200 and os.clock()-t[1][t[3]]>=X.Slider[

-- [frag 1139 @ offset 3190556] (109 bytes)
,10);local f=y.CFrame;y.CFrame=Z.NPCS.Steven.Torso.CFrame*CFrame.new(0,0,-5.0);task.wait(0.2);n:WaitForChild(

-- [frag 1140 @ offset 3190707] (311 bytes)
):FireServer();spawn(function()task.wait(1);y.CFrame=f;p[1][p[3]]=false;end);elseif K and i<200 and os.clock()-t[1][t[3]]>=X.Slider["Auto Pickup Cooldown"]:getValue()then t[1][t[3]]=os.clock();local i=UsersFarm();if i and i:FindFirstChild("Objects_Physical")then for t,t in pairs(i:GetDescendants())do if t:IsA(

-- [frag 1141 @ offset 3190914] (85 bytes)
]:getValue()then t[1][t[3]]=os.clock();local i=UsersFarm();if i and i:FindFirstChild(

-- [frag 1142 @ offset 3191035] (124 bytes)
)then for t,t in pairs(i:GetDescendants())do if t:IsA('ProximityPrompt')then print(t);fireproximityprompt(t);end;end;else j(

-- [frag 1143 @ offset 3191134] (62 bytes)
)then print(t);fireproximityprompt(t);end;end;else j("nofarm",

-- [frag 1144 @ offset 3191265] (195 bytes)
,30);end;end;end;if d and os.clock()-L[1][L[3]]>=X.Slider["Auto Place Cooldown"]:getValue()then L[1][L[3]]=os.clock();for i,i in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do if i:IsA(

-- [frag 1145 @ offset 3191383] (593 bytes)
]:getValue()then L[1][L[3]]=os.clock();for i,i in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do if i:IsA('Tool')and i:GetAttribute('Seed')then i.Parent=game.Players.LocalPlayer.Character;local t={[1]=UsersFarm().Plant_Locations:FindFirstChild('Can_Plant').Position,[2]=i:GetAttribute('Seed')};game:GetService('ReplicatedStorage'):WaitForChild('GameEvents'):WaitForChild('Plant_RE'):FireServer(unpack(t));wait(0.1);i.Parent=game.Players.LocalPlayer.Backpack;end;end;end;if G and os.clock()-l[1][l[3]]>=3 then l[1][l[3]]=os.clock();local i=UsersFarm().Objects_Physical:FindFirstChild(

-- [frag 1146 @ offset 3191544] (106 bytes)
)then i.Parent=game.Players.LocalPlayer.Character;local t={[1]=UsersFarm().Plant_Locations:FindFirstChild(

-- [frag 1147 @ offset 3191866] (253 bytes)
):FireServer(unpack(t));wait(0.1);i.Parent=game.Players.LocalPlayer.Backpack;end;end;end;if G and os.clock()-l[1][l[3]]>=3 then l[1][l[3]]=os.clock();local i=UsersFarm().Objects_Physical:FindFirstChild("PetEgg");if i and i:IsA("Model")then local t={[1]=

-- [frag 1148 @ offset 3192153] (267 bytes)
,[2]=i};n:WaitForChild("PetEggService"):FireServer(unpack(t));end;end;if X.Toggle["Auto Give Pollinated Plants"]:getState()then local i=Z.Interaction.UpdateItems.HoneyEvent.HoneyCombpressor.Onett.HumanoidRootPart;for Z,Z in pairs(c.Backpack:GetChildren())do if Z:IsA(

-- [frag 1149 @ offset 3192337] (179 bytes)
]:getState()then local i=Z.Interaction.UpdateItems.HoneyEvent.HoneyCombpressor.Onett.HumanoidRootPart;for Z,Z in pairs(c.Backpack:GetChildren())do if Z:IsA('Tool')and Z.Name:find(

-- [frag 1150 @ offset 3192636] (420 bytes)
,"MaxHub: No pollinated plants",30);end;end;if b[1][b[3]]then local Z=(c.Character.HumanoidRootPart.Position-i.Position).Magnitude;if Z>10 then c.Character.HumanoidRootPart.CFrame=i.CFrame*CFrame.new(0,0,-5.0);end;local i={[1]="MachineInteract"};n:WaitForChild("HoneyMachineService_RE"):FireServer(unpack(i));end;end;if X.Toggle["Pickup Collectables"]:getState()then for i,i in pairs(workspace:GetChildren())do if i:IsA(

-- [frag 1151 @ offset 3192726] (196 bytes)
,30);end;end;if b[1][b[3]]then local Z=(c.Character.HumanoidRootPart.Position-i.Position).Magnitude;if Z>10 then c.Character.HumanoidRootPart.CFrame=i.CFrame*CFrame.new(0,0,-5.0);end;local i={[1]=

-- [frag 1152 @ offset 3193159] (94 bytes)
]:getState()then for i,i in pairs(workspace:GetChildren())do if i:IsA('Model')and i.Name:find(

-- [frag 1153 @ offset 3193445] (2092 bytes)
,true);if i and i.Parent and i.Parent:IsA('BasePart')then pcall(function()firetouchinterest(c.Character.HumanoidRootPart,i.Parent,0);wait();firetouchinterest(c.Character.HumanoidRootPart,i.Parent,1);end);end;end;end;end;end;end;end,Bs=function(i)local Z=i[1];local t=i[3];local j=i[0];local p=i[2];return function()while task.wait()do Z.Heartbeat:Wait();if not t.Toggle['Impossible Hit']:getState()then Z.Heartbeat:Wait();continue;end;local i=j.Character;if not i then Z.Heartbeat:Wait();continue;end;local t=i:FindFirstChild(p[1][p[3]]);if not t then Z.Heartbeat:Wait();continue;end;local j,p=nil,0.1;j=t.Velocity;t.Velocity=Vector3.new(math.random(-1500.0,1500),math.random(-300.0,300),math.random(-1500.0,1500));Z.RenderStepped:Wait();if i and i.Parent and t and t.Parent then t.Velocity=j;end;Z.Stepped:Wait();if i and i.Parent and t and t.Parent then t.Velocity=j+Vector3.new(0,p,0);p=p*-1.0;end;end;end;end,Ts=math,Zi=function(i,Z,t,j,p)j=({});t[0X1]=nil;t[2]=(nil);p=0b100101;repeat if p<0X40 then p=i:Hi(t,j,p);continue;else if p>37 then i:Ri(t);break;end;end;until false;Z=(buffer);(t)[0X3]=nil;(t)[4]=nil;p=(0x24);return j,Z,p;end,ei=function(i,Z,t,j,p)t=(nil);for L=84,92,0X4 do if not(L>84)then continue;else if L>0X58 then t=i:Ti(j,t);else end;end;end;j=115;while true do if j==0B1110011 then j=(0X36);Z+=((t>0B1111111 and t-0B10000000__ or t)*p);continue;else p*=0X80;break;end;end;return t,p,Z;end,lX=function(i,i,Z,t)local j;Z=nil;local p=(0X3f);repeat if p<=0x12 then p=0B1001001;Z={[0X3]=j-j%0B001,[0X1]=t%0X4__};continue;else if not(p<0x49_)then i[0x3_2][t]=(Z);break;else j=t/0X4;p=(18);end;end;until false;return Z;end,j=function(i)local Z=i[2];local t=i[7];local j=i[8];local p=i[6];local L=i[5];local b=i[3];local f=i[0];local l=i[1];local o=i[4];return function()while true do if f[1][f[3]]then if p[1][p[3]]<t[1][t[3]]then p[1][p[3]]=p[1][p[3]]+1;end;local i=j[1][j[3]](p[1][p[3]]/5);o[1][o[3]]=l[1][l[3]][Z[1][Z[3]](' ',19254926001676)]..(l[1][l[3]][Z[1][Z[3]]('+',7463807195943)]:rep(i)..(l[1][l[3]][Z[1][Z[3]](')',9621020353280)]:rep(20-i)..(l[1][l[3]][Z[1][Z[3]](

-- [frag 1154 @ offset 3193501] (318 bytes)
)then pcall(function()firetouchinterest(c.Character.HumanoidRootPart,i.Parent,0);wait();firetouchinterest(c.Character.HumanoidRootPart,i.Parent,1);end);end;end;end;end;end;end;end,Bs=function(i)local Z=i[1];local t=i[3];local j=i[0];local p=i[2];return function()while task.wait()do Z.Heartbeat:Wait();if not t.Toggle[

-- [frag 1155 @ offset 3193852] (1556 bytes)
]:getState()then Z.Heartbeat:Wait();continue;end;local i=j.Character;if not i then Z.Heartbeat:Wait();continue;end;local t=i:FindFirstChild(p[1][p[3]]);if not t then Z.Heartbeat:Wait();continue;end;local j,p=nil,0.1;j=t.Velocity;t.Velocity=Vector3.new(math.random(-1500.0,1500),math.random(-300.0,300),math.random(-1500.0,1500));Z.RenderStepped:Wait();if i and i.Parent and t and t.Parent then t.Velocity=j;end;Z.Stepped:Wait();if i and i.Parent and t and t.Parent then t.Velocity=j+Vector3.new(0,p,0);p=p*-1.0;end;end;end;end,Ts=math,Zi=function(i,Z,t,j,p)j=({});t[0X1]=nil;t[2]=(nil);p=0b100101;repeat if p<0X40 then p=i:Hi(t,j,p);continue;else if p>37 then i:Ri(t);break;end;end;until false;Z=(buffer);(t)[0X3]=nil;(t)[4]=nil;p=(0x24);return j,Z,p;end,ei=function(i,Z,t,j,p)t=(nil);for L=84,92,0X4 do if not(L>84)then continue;else if L>0X58 then t=i:Ti(j,t);else end;end;end;j=115;while true do if j==0B1110011 then j=(0X36);Z+=((t>0B1111111 and t-0B10000000__ or t)*p);continue;else p*=0X80;break;end;end;return t,p,Z;end,lX=function(i,i,Z,t)local j;Z=nil;local p=(0X3f);repeat if p<=0x12 then p=0B1001001;Z={[0X3]=j-j%0B001,[0X1]=t%0X4__};continue;else if not(p<0x49_)then i[0x3_2][t]=(Z);break;else j=t/0X4;p=(18);end;end;until false;return Z;end,j=function(i)local Z=i[2];local t=i[7];local j=i[8];local p=i[6];local L=i[5];local b=i[3];local f=i[0];local l=i[1];local o=i[4];return function()while true do if f[1][f[3]]then if p[1][p[3]]<t[1][t[3]]then p[1][p[3]]=p[1][p[3]]+1;end;local i=j[1][j[3]](p[1][p[3]]/5);o[1][o[3]]=l[1][l[3]][Z[1][Z[3]](

-- [frag 1156 @ offset 3195519] (1912 bytes)
,9621020353280)]:rep(20-i)..(l[1][l[3]][Z[1][Z[3]]("\É×",11796487678698)]..(p[1][p[3]]..l[1][l[3]][Z[1][Z[3]]("°ßÕó",23631631242744)]))));end;L(.03);if b[1][b[3]]then break;end;end;end;end,dX=function(i,i,Z,t,j,p)if t~=0X33 then Z[j]=p;return 38809,t;else t=(0X76);if i[0X16]==i[0b100000]then return-0B10,t,-(-0b001111101__1);end;return 20642,t;end;return nil,t;end,Os=function(i)local Z=i[1];local t=i[2];local j=i[3];local p=i[0];local L=i[4];return function()local i=t.Keybind["Fly"]:getKeybind();local b=t.Slider["Fly Speed"]:getValue();if p:IsKeyDown(Enum.KeyCode[i])then local i=L.Character;local L=i.HumanoidRootPart;L.Velocity=Vector3.new(0,0,0);if p:IsKeyDown(Enum.KeyCode.W)then L.CFrame=L.CFrame+(j.CFrame.LookVector*b);elseif p:IsKeyDown(Enum.KeyCode.S)then L.CFrame=L.CFrame+(-j.CFrame.LookVector*b);elseif p:IsKeyDown(Enum.KeyCode.A)then L.CFrame=L.CFrame+(-j.CFrame.RightVector*b);elseif p:IsKeyDown(Enum.KeyCode.D)then L.CFrame=L.CFrame+(j.CFrame.RightVector*b);end;end;if t.Toggle["Big Bar"]:getState()then Z.Forge.PourMinigame.Frame.Area.Size=UDim2.new(5,0,5,0);end;if t.Toggle["Auto Break Mold"]:getState()then if game:GetService("Workspace").Debris.Mold then fireclickdetector(game:GetService("Workspace").Debris.Mold.ClickDetector);end;end;end;end,O=function(i)local Z=i[16];local t=i[11];local j=i[13];local p=i[29];local L=i[32];local b=i[12];local f=i[1];local l=i[25];local o=i[34];local z=i[4];local c=i[20];local y=i[30];local n=i[18];local X=i[14];local M=i[2];local R=i[26];local w=i[5];local K=i[31];local e=i[21];local U=i[24];local C=i[8];local d=i[0];local G=i[6];local x=i[19];local J=i[17];local B=i[7];local F=i[33];local Q=i[27];local V=i[3];local u=i[10];local E=i[23];local s=i[15];local I=i[9];local v=i[22];local W=i[28];return function()if M.Character and M.Character:FindFirstChild(u[1][u[3]])then local i=M.Character.HumanoidRootPart;local H=M.Character:WaitForChild(

-- [frag 1157 @ offset 3196036] (32 bytes)
]:getKeybind();local b=t.Slider[

-- [frag 1158 @ offset 3196087] (470 bytes)
]:getValue();if p:IsKeyDown(Enum.KeyCode[i])then local i=L.Character;local L=i.HumanoidRootPart;L.Velocity=Vector3.new(0,0,0);if p:IsKeyDown(Enum.KeyCode.W)then L.CFrame=L.CFrame+(j.CFrame.LookVector*b);elseif p:IsKeyDown(Enum.KeyCode.S)then L.CFrame=L.CFrame+(-j.CFrame.LookVector*b);elseif p:IsKeyDown(Enum.KeyCode.A)then L.CFrame=L.CFrame+(-j.CFrame.RightVector*b);elseif p:IsKeyDown(Enum.KeyCode.D)then L.CFrame=L.CFrame+(j.CFrame.RightVector*b);end;end;if t.Toggle[

-- [frag 1159 @ offset 3196568] (89 bytes)
]:getState()then Z.Forge.PourMinigame.Frame.Area.Size=UDim2.new(5,0,5,0);end;if t.Toggle[

-- [frag 1160 @ offset 3196716] (36 bytes)
]:getState()then if game:GetService(

-- [frag 1161 @ offset 3196772] (53 bytes)
).Debris.Mold then fireclickdetector(game:GetService(

-- [frag 1162 @ offset 3196839] (831 bytes)
).Debris.Mold.ClickDetector);end;end;end;end,O=function(i)local Z=i[16];local t=i[11];local j=i[13];local p=i[29];local L=i[32];local b=i[12];local f=i[1];local l=i[25];local o=i[34];local z=i[4];local c=i[20];local y=i[30];local n=i[18];local X=i[14];local M=i[2];local R=i[26];local w=i[5];local K=i[31];local e=i[21];local U=i[24];local C=i[8];local d=i[0];local G=i[6];local x=i[19];local J=i[17];local B=i[7];local F=i[33];local Q=i[27];local V=i[3];local u=i[10];local E=i[23];local s=i[15];local I=i[9];local v=i[22];local W=i[28];return function()if M.Character and M.Character:FindFirstChild(u[1][u[3]])then local i=M.Character.HumanoidRootPart;local H=M.Character:WaitForChild('Humanoid');local m,q=V:WorldToScreenPoint(i.Position);local P=(V.CFrame.Position-i.Position).Magnitude/3.5714285714;if q and P<=b.Flags.Slider[

-- [frag 1163 @ offset 3197556] (1328 bytes)
);local m,q=V:WorldToScreenPoint(i.Position);local P=(V.CFrame.Position-i.Position).Magnitude/3.5714285714;if q and P<=b.Flags.Slider["Max ESP Distance"]:getValue()and b.Flags.Toggle["ESP Enabled"]:getState()then local q=i.Size.Y;local i=(q*V.ViewportSize.Y)/(m.Z*2);local V,q=3*i,4.5*i;if X.FadeOut.OnDistance then f:FadeOutOnDist(t,P);f:FadeOutOnDist(o,P);f:FadeOutOnDist(Z,P);f:FadeOutOnDist(s,P);f:FadeOutOnDist(Q,P);f:FadeOutOnDist(x,P);f:FadeOutOnDist(p,P);f:FadeOutOnDist(w,P);f:FadeOutOnDist(l,P);f:FadeOutOnDist(n,P);f:FadeOutOnDist(d,P);f:FadeOutOnDist(E,P);f:FadeOutOnDist(J,P);f:FadeOutOnDist(B,P);f:FadeOutOnDist(v,P);f:FadeOutOnDist(I,P);f:FadeOutOnDist(c,P);if z[1][z[3]]and L[1][L[3]]then f:FadeOutOnDist(z[1][z[3]],P);f:FadeOutOnDist(L[1][L[3]],P);end;f:FadeOutOnDist(e,P);f:FadeOutOnDist(y,P);end;local i=U.localPlayer;if X.TeamCheck and(i.Team==M.Team and M.Team)then W();return;end;if M.Character and M.Character:FindFirstChild(u[1][u[3]])and M.Character:FindFirstChild("Humanoid")then do table.insert(j.visibleTargets,{Character=M.Character,distance=P,isVisible=true});local f,o=j:GetHighlight(M.Character,P,true);z[1][z[3]]=f;L[1][L[3]]=o;if f then f.Adornee=P<=200 and M.Character or nil;f.Enabled=b.Flags.Toggle["Chams Enabled"]:getState()and X.Drawing.Chams.Enabled and P<=200;f.FillColor=G.ColorPicker[

-- [frag 1164 @ offset 3197738] (31 bytes)
]:getValue()and b.Flags.Toggle[

-- [frag 1165 @ offset 3197815] (794 bytes)
]:getState()then local q=i.Size.Y;local i=(q*V.ViewportSize.Y)/(m.Z*2);local V,q=3*i,4.5*i;if X.FadeOut.OnDistance then f:FadeOutOnDist(t,P);f:FadeOutOnDist(o,P);f:FadeOutOnDist(Z,P);f:FadeOutOnDist(s,P);f:FadeOutOnDist(Q,P);f:FadeOutOnDist(x,P);f:FadeOutOnDist(p,P);f:FadeOutOnDist(w,P);f:FadeOutOnDist(l,P);f:FadeOutOnDist(n,P);f:FadeOutOnDist(d,P);f:FadeOutOnDist(E,P);f:FadeOutOnDist(J,P);f:FadeOutOnDist(B,P);f:FadeOutOnDist(v,P);f:FadeOutOnDist(I,P);f:FadeOutOnDist(c,P);if z[1][z[3]]and L[1][L[3]]then f:FadeOutOnDist(z[1][z[3]],P);f:FadeOutOnDist(L[1][L[3]],P);end;f:FadeOutOnDist(e,P);f:FadeOutOnDist(y,P);end;local i=U.localPlayer;if X.TeamCheck and(i.Team==M.Team and M.Team)then W();return;end;if M.Character and M.Character:FindFirstChild(u[1][u[3]])and M.Character:FindFirstChild(

-- [frag 1166 @ offset 3198637] (236 bytes)
)then do table.insert(j.visibleTargets,{Character=M.Character,distance=P,isVisible=true});local f,o=j:GetHighlight(M.Character,P,true);z[1][z[3]]=f;L[1][L[3]]=o;if f then f.Adornee=P<=200 and M.Character or nil;f.Enabled=b.Flags.Toggle[

-- [frag 1167 @ offset 3198914] (137 bytes)
]:getState()and X.Drawing.Chams.Enabled and P<=200;f.FillColor=G.ColorPicker['Chams Fill Color']:getColor();f.OutlineColor=G.ColorPicker[

-- [frag 1168 @ offset 3199037] (88 bytes)
]:getColor();f.OutlineColor=G.ColorPicker["Chams Outline Color"]:getColor();if G.Toggle[

-- [frag 1169 @ offset 3199136] (211 bytes)
]:getColor();if G.Toggle['Chams Thermal']:getState()then local j=math.atan(math.sin(tick()*2))*2/math.pi;f.FillTransparency=G.Slider['Thermal Fill Transparency']:getValue()*j*0.01;f.OutlineTransparency=G.Slider[

-- [frag 1170 @ offset 3199200] (93 bytes)
]:getState()then local j=math.atan(math.sin(tick()*2))*2/math.pi;f.FillTransparency=G.Slider[

-- [frag 1171 @ offset 3199365] (146 bytes)
]:getValue()*j*0.01;f.OutlineTransparency=G.Slider["Outline Transparency"]:getValue()*j*0.01;end;if X.Drawing.Chams.VisibleCheck then f.DepthMode=

-- [frag 1172 @ offset 3199479] (212 bytes)
]:getValue()*j*0.01;end;if X.Drawing.Chams.VisibleCheck then f.DepthMode='Occluded';else f.DepthMode='AlwaysOnTop';end;local j=M.Character:FindFirstChild('ItemRoot',true);if j and o then o.Adornee=b.Flags.Toggle[

-- [frag 1173 @ offset 3199671] (130 bytes)
,true);if j and o then o.Adornee=b.Flags.Toggle["Weapon Chams"]:getState()and P<=200 and j.Parent or nil;o.Enabled=b.Flags.Toggle[

-- [frag 1174 @ offset 3199744] (137 bytes)
]:getState()and P<=200 and j.Parent or nil;o.Enabled=b.Flags.Toggle['Weapon Chams']:getState()and P<=200;o.FillColor=b.Flags.ColorPicker[

-- [frag 1175 @ offset 3199870] (260 bytes)
]:getState()and P<=200;o.FillColor=b.Flags.ColorPicker["Weapons Color"]:getColor();o.OutlineColor=X.Drawing.Chams.OutlineRGB;if X.Drawing.Chams.VisibleCheck then o.DepthMode="Occluded";else o.DepthMode="AlwaysOnTop";end;end;end;end;do n.Visible=b.Flags.Toggle[

-- [frag 1176 @ offset 3199949] (104 bytes)
]:getColor();o.OutlineColor=X.Drawing.Chams.OutlineRGB;if X.Drawing.Chams.VisibleCheck then o.DepthMode=

-- [frag 1177 @ offset 3200144] (167 bytes)
;end;end;end;end;do n.Visible=b.Flags.Toggle['Boxes Corner']:getState();n.Position=UDim2.new(0,m.X-V/2,0,m.Y-q/2);n.Size=UDim2.new(0,V/5,0,1);d.Visible=b.Flags.Toggle[

-- [frag 1178 @ offset 3200231] (230 bytes)
]:getState();n.Position=UDim2.new(0,m.X-V/2,0,m.Y-q/2);n.Size=UDim2.new(0,V/5,0,1);d.Visible=b.Flags.Toggle["Boxes Corner"]:getState();d.Position=UDim2.new(0,m.X-V/2,0,m.Y-q/2);d.Size=UDim2.new(0,1,0,q/5);E.Visible=b.Flags.Toggle[

-- [frag 1179 @ offset 3200378] (722 bytes)
]:getState();d.Position=UDim2.new(0,m.X-V/2,0,m.Y-q/2);d.Size=UDim2.new(0,1,0,q/5);E.Visible=b.Flags.Toggle['Boxes Corner']:getState();E.Position=UDim2.new(0,m.X-V/2,0,m.Y+q/2);E.Size=UDim2.new(0,1,0,q/5);E.AnchorPoint=Vector2.new(0,5);J.Visible=b.Flags.Toggle['Boxes Corner']:getState();J.Position=UDim2.new(0,m.X-V/2,0,m.Y+q/2);J.Size=UDim2.new(0,V/5,0,1);J.AnchorPoint=Vector2.new(0,1);B.Visible=b.Flags.Toggle['Boxes Corner']:getState();B.Position=UDim2.new(0,m.X+V/2,0,m.Y-q/2);B.Size=UDim2.new(0,V/5,0,1);B.AnchorPoint=Vector2.new(1,0);v.Visible=b.Flags.Toggle['Boxes Corner']:getState();v.Position=UDim2.new(0,m.X+V/2-1,0,m.Y-q/2);v.Size=UDim2.new(0,1,0,q/5);v.AnchorPoint=Vector2.new(0,0);I.Visible=b.Flags.Toggle[

-- [frag 1180 @ offset 3200519] (139 bytes)
]:getState();E.Position=UDim2.new(0,m.X-V/2,0,m.Y+q/2);E.Size=UDim2.new(0,1,0,q/5);E.AnchorPoint=Vector2.new(0,5);J.Visible=b.Flags.Toggle[

-- [frag 1181 @ offset 3200689] (139 bytes)
]:getState();J.Position=UDim2.new(0,m.X-V/2,0,m.Y+q/2);J.Size=UDim2.new(0,V/5,0,1);J.AnchorPoint=Vector2.new(0,1);B.Visible=b.Flags.Toggle[

-- [frag 1182 @ offset 3200861] (139 bytes)
]:getState();B.Position=UDim2.new(0,m.X+V/2,0,m.Y-q/2);B.Size=UDim2.new(0,V/5,0,1);B.AnchorPoint=Vector2.new(1,0);v.Visible=b.Flags.Toggle[

-- [frag 1183 @ offset 3201021] (294 bytes)
]:getState();v.Position=UDim2.new(0,m.X+V/2-1,0,m.Y-q/2);v.Size=UDim2.new(0,1,0,q/5);v.AnchorPoint=Vector2.new(0,0);I.Visible=b.Flags.Toggle["Boxes Corner"]:getState();I.Position=UDim2.new(0,m.X+V/2,0,m.Y+q/2);I.Size=UDim2.new(0,1,0,q/5);I.AnchorPoint=Vector2.new(1,1);c.Visible=b.Flags.Toggle[

-- [frag 1184 @ offset 3201197] (393 bytes)
]:getState();I.Position=UDim2.new(0,m.X+V/2,0,m.Y+q/2);I.Size=UDim2.new(0,1,0,q/5);I.AnchorPoint=Vector2.new(1,1);c.Visible=b.Flags.Toggle['Boxes Corner']:getState();c.Position=UDim2.new(0,m.X+V/2,0,m.Y+q/2);c.Size=UDim2.new(0,V/5,0,1);c.AnchorPoint=Vector2.new(1,1);end;do t.Position=UDim2.new(0,m.X-V/2,0,m.Y-q/2);t.Size=UDim2.new(0,V,0,q);t.Visible=X.Drawing.Boxes.Full.Enabled;if G.Toggle[

-- [frag 1185 @ offset 3201374] (328 bytes)
]:getState();c.Position=UDim2.new(0,m.X+V/2,0,m.Y+q/2);c.Size=UDim2.new(0,V/5,0,1);c.AnchorPoint=Vector2.new(1,1);end;do t.Position=UDim2.new(0,m.X-V/2,0,m.Y-q/2);t.Size=UDim2.new(0,V,0,q);t.Visible=X.Drawing.Boxes.Full.Enabled;if G.Toggle["Boxes Full"]:getState()then t.BackgroundColor3=Color3.fromRGB(255,255,255);if G.Toggle[

-- [frag 1186 @ offset 3201645] (378 bytes)
]:getState()then t.BackgroundColor3=Color3.fromRGB(255,255,255);if G.Toggle['Boxes Gradient Enabled']:getState()then t.BackgroundTransparency=G.Slider['Boxes Filled Transparency']:getValue();else t.BackgroundTransparency=1;end;t.BorderSizePixel=1;else t.BackgroundTransparency=1;end;K[1][K[3]]=K[1][K[3]]+(tick()-C[1][C[3]])*300*math.cos(math.pi/4*tick()-math.pi/2);if G.Toggle[

-- [frag 1187 @ offset 3201786] (51 bytes)
]:getState()then t.BackgroundTransparency=G.Slider[

-- [frag 1188 @ offset 3201920] (526 bytes)
]:getValue();else t.BackgroundTransparency=1;end;t.BorderSizePixel=1;else t.BackgroundTransparency=1;end;K[1][K[3]]=K[1][K[3]]+(tick()-C[1][C[3]])*300*math.cos(math.pi/4*tick()-math.pi/2);if G.Toggle["Boxes Animated"]:getState()then F.Rotation=K[1][K[3]];R.Rotation=K[1][K[3]];else F.Rotation=-45.0;R.Rotation=-45.0;end;C[1][C[3]]=tick();end;do local t=H.Health/H.MaxHealth;x.Visible=G.Toggle["Healthbar Enabled"]:getState();x.Position=UDim2.new(0,m.X-V/2-6,0,m.Y-q/2+q*(1-t));x.Size=UDim2.new(0,2.5,0,q*t);p.Visible=G.Toggle[

-- [frag 1189 @ offset 3202172] (177 bytes)
]:getState()then F.Rotation=K[1][K[3]];R.Rotation=K[1][K[3]];else F.Rotation=-45.0;R.Rotation=-45.0;end;C[1][C[3]]=tick();end;do local t=H.Health/H.MaxHealth;x.Visible=G.Toggle[

-- [frag 1190 @ offset 3202391] (715 bytes)
]:getState();x.Position=UDim2.new(0,m.X-V/2-6,0,m.Y-q/2+q*(1-t));x.Size=UDim2.new(0,2.5,0,q*t);p.Visible=G.Toggle['Healthbar Enabled']:getState();p.Position=UDim2.new(0,m.X-V/2-6,0,m.Y-q/2);p.Size=UDim2.new(0,2.5,0,q);do if G.Toggle['HealthText']:getState()then local j=math.floor(H.Health/H.MaxHealth*100);w.Position=UDim2.new(0,m.X-V/2-6,0,m.Y-q/2+q*(1-j/100)+3);w.Text=tostring(j);w.Visible=H.Health<H.MaxHealth;if G.Toggle['HealthText Lerp']:getState()then local j=t>=0.75 and Color3.fromRGB(0,255,0)or t>=0.5 and Color3.fromRGB(255,255,0)or t>=0.25 and Color3.fromRGB(255,170,0)or Color3.fromRGB(255,0,0);w.TextColor3=j;else w.TextColor3=X.Drawing.Healthbar.HealthTextRGB;end;end;end;end;do Z.Visible=G.Toggle[

-- [frag 1191 @ offset 3202543] (100 bytes)
]:getState();p.Position=UDim2.new(0,m.X-V/2-6,0,m.Y-q/2);p.Size=UDim2.new(0,2.5,0,q);do if G.Toggle[

-- [frag 1192 @ offset 3202671] (182 bytes)
]:getState()then local j=math.floor(H.Health/H.MaxHealth*100);w.Position=UDim2.new(0,m.X-V/2-6,0,m.Y-q/2+q*(1-j/100)+3);w.Text=tostring(j);w.Visible=H.Health<H.MaxHealth;if G.Toggle[

-- [frag 1193 @ offset 3202894] (581 bytes)
]:getState()then local j=t>=0.75 and Color3.fromRGB(0,255,0)or t>=0.5 and Color3.fromRGB(255,255,0)or t>=0.25 and Color3.fromRGB(255,170,0)or Color3.fromRGB(255,0,0);w.TextColor3=j;else w.TextColor3=X.Drawing.Healthbar.HealthTextRGB;end;end;end;end;do Z.Visible=G.Toggle["Names Enabled"]:getState();if M.type=="Player"and G.Toggle["Friendcheck"]:getState()and i:IsFriendsWith(M.UserId)then Z.Text=string.format("(<font color="rgb(%d, %d, %d)">F</font>) %s",Color3.fromRGB(0,255,0).R*255,Color3.fromRGB(0,255,0).G*255,Color3.fromRGB(0,255,0).B*255,M.Name);else Z.Text=string.format(

-- [frag 1194 @ offset 3203209] (24 bytes)
]:getState();if M.type==

-- [frag 1195 @ offset 3203295] (67 bytes)
]:getState()and i:IsFriendsWith(M.UserId)then Z.Text=string.format(

-- [frag 1196 @ offset 3203813] (78 bytes)
,M.Name);end;Z.Position=UDim2.new(0,m.X,0,m.Y-q/2-9);end;do if b.Flags.Toggle[

-- [frag 1197 @ offset 3203942] (75 bytes)
]:getState()then if b.Flags.Dropdown["Distance Text Position"]:getValue()==

-- [frag 1198 @ offset 3204082] (415 bytes)
then Q.Position=UDim2.new(0,m.X,0,m.Y+q/2+18);l.Position=UDim2.new(0,m.X-21,0,m.Y+q/2+15);s.Position=UDim2.new(0,m.X,0,m.Y+q/2+7);s.Text=string.format("%d meters",math.floor(P));s.Visible=true;else Q.Position=UDim2.new(0,m.X,0,m.Y+q/2+8);l.Position=UDim2.new(0,m.X-21,0,m.Y+q/2+5);s.Visible=false;if M.type=="Player"and b.Flags.Toggle["Friendcheck"]:getState()and i:IsFriendsWith(M.UserId)then Z.Text=string.format(

-- [frag 1199 @ offset 3205083] (52 bytes)
,M.Name,math.floor(P));end;Z.Visible=b.Flags.Toggle[

-- [frag 1200 @ offset 3205173] (71 bytes)
]:getState();end;end;end;do local i=M.Character:FindFirstChildWhichIsA(
