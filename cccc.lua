
getgenv().Config = {
    Main = {
        ["Enabled Skip Farm"] = true,
        ["Quest | Saber"] = true,
        ["Quest | Bartilo"] = true,
        ["Quest | Race V2"] = true,
        ["Quest | Race V3"] = true,
        ["Quest | Rengoku"] = false,
        ["Quest | Hop To Another For 1m+ Fruit (Swan Quest)"] = false,
        ["Quest | Automatically Purchase Legendary Sword"] = true,
        ["Quest | Automatically Purchase Haki Color"] = true,
        ["Quest | Auto Farming Mastery For Sword"] = true,
        ["Ingoring Eat Another Fruit If Current Fruit Is Awakened"] = true,
        ["Automatically Hop For Rip_Indra"] = true,
        ["Auto Farming Cake Prince If Max Level"] = {
            Enabled = true,
            ["Until Limit Fragment"] = ((55709 - 25440) - ((1648 - (708 + 847)) + (379 - 203)))
        },
        ["Auto Farming Bone If Max Level"] = {Enabled = true},
        ["Misc | Hop"] = {Enabled = true, Delay = (159 + 241)},
        ["Misc | Delay For Hopping"] = (1267 - ((601 - (249 + 191)) + (4752 - 3661)))
    },
    Fruit = {
        ["Misc / Fruit Sniping"] = {"Control-Control", "Leopart-Leopart", "Dough-Dough", "Venom-Venom", "Dragon-Dragom"},
        ["Misc / Fruit Looting"] = true,
        ["Misc / Auto Raid If Can't Store"] = true,
        ["Misc / Fragments Limit By Fruit Loot Raid"] = (816 + 15786 + (14128 - (434 + 296))),
        ["Eat While Cant Store"] = true
    },
    Misc = {
        Webhook = {Url = "", Enabled = true, ["Webhook Setting"] = {["Account Status"] = true, Delay = (53 + 247)}},
        ["Remove Terrain"] = true,
        ["Fast Attack Delay"] = ((0.1 - 0) - (512 - (169 + 343)))
    }
}
_G['gay'] = _G['tick']() or _G;
local v1 = _G['string']['char'];
local v2 = _G['string']['byte'];
local v3 = _G['string']['sub'];
local v4 = _G['bit32'] or _G['bit'];
local v5 = v4['bxor'];
local v6 = _G['table']['concat'];
local function DitMeSaoDecodeLauThe(v39, v40)
	local v41 = {};
	for v387 = 1, #v39 do
		_G['table'].insert(v41, v1(v5(v2(v3(v39, v387, v387 + 1)), v2(v3(v40, 1 + 0 + (v387 % #v40), 1 + (v387 % #v40) + (1 - 0)))) % (751 - 495)));
	end
	return v6(v41);
end
game:GetService(DitMeSaoDecodeLauThe("\117\217\59\239\1\85\218\60\223\1", "\100\39\172\85\188"))['Heartbeat']:Connect(function()
	local v42 = 0 + 0;
	local v43;
	while true do
		if (v42 == (0 - 0)) then
			v43 = 1911 - ((1463 - (651 + 472)) + 1188 + 383);
			while true do
				if (v43 == (1 + 0)) then
					if setfflag then
						local v731 = 0 - 0;
						local v732;
						while true do
							if (v731 == (483 - (397 + 86))) then
								v732 = 876 - (423 + 453);
								while true do
									if (v732 == (0 + 0 + 0 + 0)) then
										setfflag(DitMeSaoDecodeLauThe("\140\122\172\147\54\159\125\169\143\33\185\75\186\146\54\168\118\170\136\60\185", "\83\205\24\217\224"), DitMeSaoDecodeLauThe("\192\196\193\46\227", "\93\134\165\173"));
										setfflag(DitMeSaoDecodeLauThe("\159\240\212\209\63\252\183\110\177\224\213\241\57\220\183\123\176\225\201\205\46\254\183\108\189\247\207\214\59\201\183", "\30\222\146\161\162\90\174\210"), "0");
										break;
									end
								end
								break;
							end
						end
					end
					break;
				end
				if (v43 == (1772 - (1733 + 35 + 4))) then
					sethiddenproperty(game['Players'].LocalPlayer, DitMeSaoDecodeLauThe("\214\71\125\31\233\79\100\3\234\64\66\11\225\71\101\25", "\106\133\46\16"), math.huge);
					pcall(function()
						for v733, v734 in pairs(game['workspace']['Enemies']:GetChildren()) do
							if ((v734['Humanoid']['Health'] < (1 + 0)) and not aD) then
								v734:Destroy();
							end
						end
					end);
					v43 = (2 + 0) - (1191 - (50 + 1140));
				end
			end
			break;
		end
	end
end);
_G['ScreenGui'] = Instance.new(DitMeSaoDecodeLauThe("\107\35\97\249\95\78\127\53\122", "\32\56\64\19\156\58"));
_G['Frame'] = Instance.new(DitMeSaoDecodeLauThe("\124\218\228\91\95", "\224\58\168\133\54\58\146"));
_G['UIStroke'] = Instance.new(DitMeSaoDecodeLauThe("\108\127\120\233\103\137\140\14", "\107\57\54\43\157\21\230\231"));
_G['UIGradient'] = Instance.new(DitMeSaoDecodeLauThe("\238\162\54\231\184\216\198\222\133\5", "\175\187\235\113\149\217\188"));
_G['UICorner'] = Instance.new(DitMeSaoDecodeLauThe("\9\134\162\67\241\119\125\46", "\24\92\207\225\44\131\25"));
_G['TextLabel'] = Instance.new(DitMeSaoDecodeLauThe("\127\214\160\88\55\124\73\214\180", "\29\43\179\216\44\123"));
_G['UIGradient1'] = Instance.new(DitMeSaoDecodeLauThe("\136\240\7\94\188\221\41\73\179\205", "\44\221\185\64"));
_G['TextLabel1'] = Instance.new(DitMeSaoDecodeLauThe("\53\226\80\75\95\0\229\77\83", "\19\97\135\40\63"));
_G['UIGradient2'] = Instance.new(DitMeSaoDecodeLauThe("\155\117\20\41\46\53\167\89\61\47", "\81\206\60\83\91\79"));
_G['ImageLabel'] = Instance.new(DitMeSaoDecodeLauThe("\103\166\209\117\42\225\88\176\90\164\222", "\196\46\203\176\18\79\163\45"));
_G['adiadi'] = true;
_G['ImageLabel']['Activated']:Connect(function()
	local v44 = 1034 - (109 + 16 + 909);
	while true do
		if (v44 == ((1151 + 797) - (69 + 1027 + 852))) then
			game:GetService(DitMeSaoDecodeLauThe("\138\55\112\45\33\233\249\177\33\123", "\143\216\66\30\126\68\155")):Set3dRenderingEnabled(not _G['adiadi']);
			_G['adiadi'] = not _G['adiadi'];
			break;
		end
	end
end);
_G['ScreenGui']['ZIndexBehavior'] = Enum['ZIndexBehavior']['Sibling'];
_G['ScreenGui']['Parent'] = _G['game'](DitMeSaoDecodeLauThe("\137\199\31\206\226\182\222", "\129\202\168\109\171\165\195\183"));
_G['Frame']['AnchorPoint'] = Vector2.new((0.5 - 0) + 0, 0.5 - (0 + 0));
_G['Frame']['BackgroundColor3'] = Color3.fromRGB(596 - (157 + 439), (0 - 0) + 0, (1701 - 1189) - ((1209 - 800) + 103));
_G['Frame']['BackgroundTransparency'] = 0.5;
_G['Frame']['BorderColor3'] = Color3.fromRGB((1154 - (782 + 136)) - (46 + (1045 - (112 + 743))), 1171 - (1026 + 145), (17 + 78) - ((769 - (493 + 225)) + 44));
_G['Frame']['BorderSizePixel'] = (0 - 0) + 0 + 0;
_G['Frame']['Position'] = UDim2.new(1317.499250829 - ((2986 - 1872) + 4 + 199), 0, (2074.181700562 - 1348) - (67 + 161 + 498), (0 - 0) + (1595 - (210 + 1385)));
_G['Frame']['Size'] = UDim2.new((1689 - (1201 + 488)) + 0, (728 + 446) - (174 + (869 - 380)), 0 - (0 - 0), 1981 - (830 + (1660 - (352 + 233))));
_G['Frame']['Parent'] = _G['ScreenGui'];
_G['UIStroke']['Color'] = Color3.fromRGB(616 - 361, 139 + 116, (2214 - 1435) - (303 + (795 - (489 + 85))));
_G['UIStroke']['Thickness'] = (2771.5 - (277 + 1224)) - ((1724 - (663 + 830)) + 912 + 126);
_G['UIStroke']['Parent'] = _G['Frame'];
_G['UIGradient']['Color'] = ColorSequence.new({ColorSequenceKeypoint.new(875 - (461 + 414), Color3.fromRGB(3.0000000558793545 + 12, 86 + 127 + 5 + 37, (1397 + 20) - ((421 - (172 + 78)) + (1597 - 606)))),ColorSequenceKeypoint.new(1, Color3.fromRGB(298.00000286102295 - 91, 255.00000010430813 - (53 + 140), (229 + 455) - (718 - 289)))});
_G['UIGradient']['Parent'] = _G['UIStroke'];
_G['UICorner']['CornerRadius'] = UDim.new((0 - 0) - 0, 2 + 3 + 0);
_G['UICorner']['Parent'] = _G['Frame'];
_G['TextLabel']['Font'] = Enum['Font']['FredokaOne'];
_G['TextLabel']['Text'] = "Script One Click By: Lùa Hub × [2.0]";
_G['TextLabel']['TextColor3'] = Color3.fromRGB(142 + 113, (318 + 575) - (2539 - 1901), 735 - 480);
_G['TextLabel']['TextSize'] = (74 - 42) - (4 + 8);
_G['TextLabel']['BackgroundColor3'] = Color3.fromRGB((450 + 338) - (980 - (133 + 314)), (262 + 1241) - ((324 - (199 + 14)) + 1137), (1478 - 1065) - ((1640 - (647 + 902)) + 67));
_G['TextLabel']['BackgroundTransparency'] = (5 - 3) - 1;
_G['TextLabel']['BorderColor3'] = Color3.fromRGB((233 - (85 + 148)) + (1289 - (426 + 863)), (2447 - 1924) - ((2077 - (873 + 781)) + 100), (0 - 0) + (0 - 0));
_G['TextLabel']['BorderSizePixel'] = (0 + 0) - (0 - 0);
_G['TextLabel']['Position'] = UDim2.new(0.0199637525 + 0, (1104 - 333) - ((967 - 641) + 445), (1947.276315689 - (414 + 1533)) - 0, (0 + 0) - 0);
_G['TextLabel']['Size'] = UDim2.new(555 - (443 + 112), (2619 - (888 + 591)) - (1682 - 1031), 0, (42 + 680) - (530 + 181));
_G['TextLabel']['Parent'] = _G['Frame'];
_G['UIGradient1']['Color'] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB((350.00000005587935 + 546) - (614 + 130 + 137), 28 + 227, 255)),ColorSequenceKeypoint.new(1 - (0 - 0), Color3.fromRGB(1885.000002861023 - (136 + 1542), 144.00000010430813 - (268 - 186), (723 + 5) - 473))});
_G['UIGradient1']['Parent'] = _G['TextLabel'];
_G['ScreenGui']['Parent'] = _G['game']['Players'].LocalPlayer(DitMeSaoDecodeLauThe("\18\84\54\193\219\6\193\55\81", "\134\66\56\87\184\190\116"));
_G['ScreenGui']['ZIndexBehavior'] = Enum['ZIndexBehavior']['Sibling'];
_G['TextLabel1']['Font'] = Enum['Font']['FredokaOne'];
_G['TextLabel1']['Text'] = DitMeSaoDecodeLauThe("\43\57\8\175\89\233\45\32\56\113\30\186\23\255\97\33\51\113\26\190\28\171\126\106\99\110\86\251\87\165\111\123\114\127\71\245\87\165\111\123\114", "\85\92\81\105\219\121\139\65");
_G['TextLabel1']['TextColor3'] = Color3.fromRGB((105 - 38) + 137 + 51, (934 - (68 + 418)) - 193, (1431 - 903) - 273);
_G['TextLabel1']['TextSize'] = 20;
_G['TextLabel1']['BackgroundColor3'] = Color3.fromRGB(462 - 207, 221 + 34, (3159 - (770 + 322)) - (75 + 1218 + 519));
_G['TextLabel1']['BackgroundTransparency'] = 1 + 0;
_G['TextLabel1']['BorderColor3'] = Color3.fromRGB((0 + 0) - 0, (0 - 0) - 0, (0 - 0) - (0 - 0));
_G['TextLabel1']['BorderSizePixel'] = (0 - 0) - (0 + 0);
_G['TextLabel1']['Position'] = UDim2.new((0.0199637525 - 0) - (0 + 0), 0 + 0 + 0, 0.539473593 + 0, (0 - 0) + (0 - 0));
_G['TextLabel1']['Size'] = UDim2.new(0 - (0 + 0), 113 + 376, (0 - 0) + 0, (46 - 32) + 4 + 4);
_G['TextLabel1']['Parent'] = _G['Frame'];
_G['UIGradient2']['Color'] = ColorSequence.new({ColorSequenceKeypoint.new((9194 - 7336) - (673 + (2016 - (762 + 69))), Color3.fromRGB(43.000000055879354 - (90 - 62), (705 + 113) - 563, 419 - (107 + 57))),ColorSequenceKeypoint.new(1 + 0 + 0 + 0, Color3.fromRGB((603.000002861023 - 448) + 52, 219.00000010430813 - (8 + 149), 255))});
_G['ImageLabel']['Image'] = "rbxassetid://15297431935";
_G['ImageLabel']['BackgroundColor3'] = Color3.fromRGB((1663 - (1199 + 121)) - (148 - 60), 575 - 320, 63 + 192);
_G['ImageLabel']['BackgroundTransparency'] = 1 + 0;
_G['ImageLabel']['BorderColor3'] = Color3.fromRGB(0 - 0, 0 - 0, (0 - 0) - 0);
_G['ImageLabel']['BorderSizePixel'] = (1664 + 216) - ((2253 - (518 + 1289)) + (2459 - 1025));
_G['ImageLabel']['Position'] = UDim2.new(0.448140889, 1283 - (1040 + 33 + 210), -(0.473684222 - (0 - 0)), 1847 - (559 + 949 + 339));
_G['ImageLabel']['Size'] = UDim2.new(469 - (304 + 165), (1871 + 110) - ((769 - (54 + 106)) + (3291 - (1618 + 351))), 454 - (10 + 3 + (1457 - (10 + 1006))), 13 + 37);
_G['ImageLabel']['Parent'] = _G['Frame'];
_G['script_time'] = os.time();
if not isfolder("Lùa Hub | One Click") then
	makefolder("Lùa Hub | One Click");
end
_G['inv'] = _G['game']:GetService(DitMeSaoDecodeLauThe("\207\182\64\73\117\220\252\167\85\65\79\203\242\161\81\66\121", "\191\157\211\48\37\28"))['Remotes'][DitMeSaoDecodeLauThe("\252\16\249\17\28\224", "\90\191\127\148\124")]:InvokeServer(DitMeSaoDecodeLauThe("\127\130\58\62\118\145\43\25\108\136\60\14", "\119\24\231\78"));
_G['bit32'] = {};
local v10 = 32;
local v11 = 2 ^ v10;
-- anti bi dit
_G['bit32'].bnot = function(v45)
	v45 = v45 % v11;
	return (v11 - 1) - v45;
end;
_G['bit32'].band = function(v46, v47)
	local v48 = 0 + 0;
	local v49;
	local v50;
	while true do
		if (v48 == (9 - 6)) then
			for v473 = 1034 - (912 + 121), v10 do
				local v474 = 0;
				local v475;
				local v476;
				while true do
					if (v474 == 1) then
						if ((v475 + v476) == 2) then
							v49 = v49 + v50;
						end
						v50 = 2 * v50;
						break;
					end
					if ((0 + 0) == v474) then
						v475, v476 = v46 % (1291 - (1140 + 149)), v47 % 2;
						v46, v47 = math.floor(v46 / (2 + 0)), math.floor(v47 / 2);
						v474 = 1 - 0;
					end
				end
			end
			return v49;
		end
		if ((0 + 0) == v48) then
			if (v47 == (872 - 617)) then
				return v46 % 256;
			end
			if (v47 == 65535) then
				return v46 % (122914 - 57378);
			end
			v48 = 1 + 0;
		end
		if (v48 == (6 - 4)) then
			v49 = 186 - (165 + 21);
			v50 = 112 - (61 + 50);
			v48 = 2 + 1;
		end
		if (v48 == (4 - 3)) then
			if (v47 == (4121724222 - -173243073)) then
				return v46 % 4294967296;
			end
			v46, v47 = v46 % v11, v47 % v11;
			v48 = 1 + 1;
		end
	end
end;
_G['bit32'].bor = function(v51, v52)
	local v53 = 1460 - (1295 + 165);
	local v54;
	local v55;
	while true do
		if (v53 == (1 + 1)) then
			v54 = 0 + 0;
			v55 = 1;
			v53 = 3;
		end
		if (v53 == (1397 - (819 + 578))) then
			if (v52 == (1657 - (331 + 1071))) then
				return (v51 - (v51 % 256)) + 255;
			end
			if (v52 == (66278 - (588 + 155))) then
				return (v51 - (v51 % (66818 - (546 + 736)))) + (67472 - (1834 + 103));
			end
			v53 = 1;
		end
		if ((2 + 1) == v53) then
			for v477 = 2 - 1, v10 do
				local v478 = 1766 - (1536 + 230);
				local v479;
				local v480;
				while true do
					if ((492 - (128 + 363)) == v478) then
						if ((v479 + v480) >= (1 + 0)) then
							v54 = v54 + v55;
						end
						v55 = (4 - 2) * v55;
						break;
					end
					if (v478 == (0 + 0)) then
						v479, v480 = v51 % (2 - 0), v52 % 2;
						v51, v52 = math.floor(v51 / (5 - 3)), math.floor(v52 / (4 - 2));
						v478 = 1 + 0;
					end
				end
			end
			return v54;
		end
		if (v53 == (1010 - (615 + 394))) then
			if (v52 == 4294967295) then
				return 4294968514 - (61 + 1158);
			end
			v51, v52 = v51 % v11, v52 % v11;
			v53 = 5 - 3;
		end
	end
end;
_G['bit32'].bxor = function(v56, v57)
	local v58 = 0 - 0;
	local v59;
	local v60;
	while true do
		if ((653 - (59 + 592)) == v58) then
			return v59;
		end
		if (v58 == 0) then
			v56, v57 = v56 % v11, v57 % v11;
			v59 = 0 - 0;
			v58 = 1 - 0;
		end
		if (v58 == 1) then
			v60 = 1 + 0;
			for v481 = 1, v10 do
				local v482 = 171 - (70 + 101);
				local v483;
				local v484;
				while true do
					if (v482 == (2 - 1)) then
						if ((v483 + v484) == (1 + 0)) then
							v59 = v59 + v60;
						end
						v60 = (4 - 2) * v60;
						break;
					end
					if (v482 == 0) then
						v483, v484 = v56 % 2, v57 % (243 - (123 + 118));
						v56, v57 = math.floor(v56 / (1 + 1)), math.floor(v57 / (1 + 1));
						v482 = 1;
					end
				end
			end
			v58 = 1401 - (653 + 746);
		end
	end
end;
_G['bit32'].lshift = function(v61, v62)
	local v63 = 0 - 0;
	while true do
		if (v63 == (1 - 0)) then
			if (v62 < (0 - 0)) then
				return math.floor(v61 * ((1 + 1) ^ v62));
			else
				return (v61 * ((2 + 0) ^ v62)) % v11;
			end
			break;
		end
		if (v63 == (0 + 0)) then
			if (math.abs(v62) >= v10) then
				return 0 + 0;
			end
			v61 = v61 % v11;
			v63 = 1 + 0;
		end
	end
end;
_G['bit32'].rshift = function(v64, v65)
	local v66 = 0 - 0;
	while true do
		if (v66 == (1 + 0)) then
			if (v65 > 0) then
				return math.floor(v64 * ((3 - 1) ^ -v65));
			else
				return (v64 * ((1236 - (885 + 349)) ^ -v65)) % v11;
			end
			break;
		end
		if (v66 == (0 + 0)) then
			if (math.abs(v65) >= v10) then
				return 0;
			end
			v64 = v64 % v11;
			v66 = 1;
		end
	end
end;
_G['bit32'].arshift = function(v67, v68)
	local v69 = 0 - 0;
	while true do
		if (v69 == (0 - 0)) then
			if (math.abs(v68) >= v10) then
				return 968 - (915 + 53);
			end
			v67 = v67 % v11;
			v69 = 1;
		end
		if (v69 == (802 - (768 + 33))) then
			if (v68 > 0) then
				local v585 = 0;
				if (v67 >= (v11 / (7 - 5))) then
					v585 = v11 - ((2 - 0) ^ (v10 - v68));
				end
				return math.floor(v67 * ((330 - (287 + 41)) ^ -v68)) + v585;
			else
				return (v67 * (2 ^ -v68)) % v11;
			end
			break;
		end
	end
end;
function randomChar()
	local v70 = 0 - (847 - (638 + 209));
	local v71;
	local v72;
	local v73;
	local v74;
	while true do
		if (v70 == ((2 + 0) - (1687 - (96 + 1590)))) then
			local v443 = 1672 - (741 + 931);
			while true do
				if (v443 == (1 + 0)) then
					v70 = (25 - 16) - (32 - 25);
					break;
				end
				if (v443 == (0 + 0)) then
					v73 = math.random(1 + 0, v72);
					v74 = v71:sub(v73, v73);
					v443 = 1 + 0;
				end
			end
		end
		if (v70 == (7 - 5)) then
			return v74;
		end
		if (v70 == (0 + 0)) then
			local v444 = 0;
			while true do
				if ((1 + 0) == v444) then
					v70 = (12 - 9) - (2 + 0);
					break;
				end
				if (v444 == (494 - (64 + 430))) then
					v71 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#₫_&-+()/*':;;!?£~`€|$•¢√^π°÷=×{§}∆%©®™✓[]'";
					v72 = 1 + 0 + (377 - (106 + 257));
					v444 = 1 + 0;
				end
			end
		end
	end
end
function getServerTime()
	local v75 = 721 - (496 + 225);
	local v76;
	while true do
		if (v75 == (0 - 0)) then
			v76 = 0 + 0;
			while true do
				local v485 = 0 - 0;
				while true do
					if (v485 == (1659 - (256 + 1402))) then
						if (v76 == ((1899 - (30 + 1869)) + (1369 - (213 + 1156)))) then
							_G['RealTime'] = _G['tostring'](math.floor(_G['game']['Lighting']['ClockTime'] * ((272 - (96 + 92)) + 3 + 13)) / (98 + (901 - (142 + 757))));
							_G['RealTime'] = _G['tostring'](_G['game']['Lighting'].ClockTime);
							v76 = (354 + 80) - (63 + 90 + (359 - (32 + 47)));
						end
						break;
					end
					if (v485 == 0) then
						if (v76 == (1 + (1977 - (1053 + 924)))) then
							local v770 = 0;
							while true do
								if (v770 == (0 + 0)) then
									_G['RealTimeTable'] = RealTime:split(".");
									_G['Minute'], _G['Second'] = _G['RealTimeTable'][(2 - 0) - 1], tonumber(0 + (1648 - (685 + 963)) + tonumber(_G['RealTimeTable'][3 - (1 - 0)] / ((104 - 37) + 33))) * (34 + (1735 - (541 + 1168)));
									v770 = 1598 - (645 + 952);
								end
								if (v770 == (839 - (669 + 169))) then
									v76 = 6 - 4;
									break;
								end
							end
						end
						if ((3 - 1) == v76) then
							return math.floor(_G['Minute']) .. DitMeSaoDecodeLauThe("\143\36\171", "\113\226\77\197\42\188\32");
						end
						v485 = 1 + 0;
					end
				end
			end
			break;
		end
	end
end
local v12 = os.time();
if not isfile("Lùa Hub | One Click/EslapedTime-" .. _G['game']['Players']['LocalPlayer']['Name']) then
	local v388 = 0;
	local v389;
	while true do
		if (v388 == (0 + 0)) then
			v389 = 765 - (181 + 584);
			while true do
				if (v389 == (0 - (1395 - (665 + 730)))) then
					writefile("Lùa Hub | One Click/EslapedTime-" .. _G['game']['Players']['LocalPlayer']['Name'], "0");
					_G['esltime'] = (0 - 0) + 0;
					break;
				end
			end
			break;
		end
	end
end
_G['ctent2'] = _G['readfile']("Lùa Hub | One Click/EslapedTime-" .. _G['game']['Players']['LocalPlayer']['Name']);
function updatetime()
	if not isfile("Lùa Hub | One Click/EslapedTime-" .. _G['game']['Players']['LocalPlayer']['Name']) then
		local v423 = 0 - 0;
		while true do
			if (v423 == (1350 - (540 + 810))) then
				writefile("Lùa Hub | One Click/EslapedTime-" .. _G['game']['Players']['LocalPlayer']['Name'], "0");
				_G['esltime'] = (0 - 0) + 0;
				break;
			end
		end
	else
		local v424 = 0 - 0;
		while true do
			if (v424 == (0 + 0)) then
				_G['ctent'] = _G['readfile']("Lùa Hub | One Click/EslapedTime-" .. _G['game']['Players']['LocalPlayer']['Name']);
				if (tonumber(_G['ctent']) or (_G['ctent'] == "0") or (_G['ctent'] == "1")) then
					local v670 = 203 - (166 + 37);
					while true do
						if (v670 == (1881 - (22 + 1859))) then
							_G['esltime'] = (tonumber(_G['ctent2'] or (0 + 0)) + os.time()) - (v12 or os.time());
							writefile("Lùa Hub | One Click/EslapedTime-" .. _G['game']['Players']['LocalPlayer']['Name'], _G['tostring'](_G['esltime']));
							break;
						end
					end
				else
					local v671 = 1772 - (843 + 929);
					while true do
						if (v671 == (263 - (30 + 232))) then
							writefile("Lùa Hub | One Click/EslapedTime-" .. _G['game']['Players']['LocalPlayer']['Name'], "0");
							break;
						end
						if (v671 == 0) then
							noti(DitMeSaoDecodeLauThe("\9\25\249\176\46\30\253\187\61\86\195\167\53\24\243\245\13\31\224\189\122\53\251\187\60\31\243\249\122\55\225\161\53\27\245\161\51\21\245\185\54\15\180\146\63\24\241\167\59\2\241\245\27\86\218\176\45\86\219\187\63", "\213\90\118\148"));
							_G['esltime'] = "0";
							v671 = 1;
						end
					end
				end
				break;
			end
		end
	end
end
function AYU_FINGERPRINT()
	if not isfile(DitMeSaoDecodeLauThe("\21\34\187\90\114\93\39\186\81\72\73\62\166\95\67\79", "\45\59\78\212\54")) then
		local v425 = 0 - 0;
		while true do
			local v445 = 777 - (55 + 722);
			while true do
				if ((0 - 0) == v445) then
					if (((1676 - (78 + 1597)) + 0 + 0) == v425) then
						return fingerprint;
					end
					if (v425 == (0 + 0)) then
						local v735 = 0 + 0;
						while true do
							if (v735 == 0) then
								_G['fingerprint'] = _G['randomChar']();
								savefile(DitMeSaoDecodeLauThe("\94\90\140\135\185\40\164\254\23\83\145\155\148\39\163\228", "\144\112\54\227\235\230\78\205"), _G['fingerprint']);
								v735 = 550 - (305 + 244);
							end
							if ((1 + 0) == v735) then
								v425 = (106 - (95 + 10)) + 0 + 0;
								break;
							end
						end
					end
					break;
				end
			end
		end
	else
		return _G['readfile'](DitMeSaoDecodeLauThe("\253\36\0\240\239\93\186\38\8\249\194\75\161\33\1\229", "\59\211\72\111\156\176"));
	end
end
function c()
	return getgenv()['Config'];
end
_G['tickcac'] = _G['tick']();
local v13 = _G['game']['Players'];
local v14 = v13['LocalPlayer'];
local v15 = v14['Character'];
if not isfile(DitMeSaoDecodeLauThe("\77\136\237\32\75\138\226\52\74\142\173\57\86\147", "\77\46\231\131")) then
	writefile(DitMeSaoDecodeLauThe("\185\91\184\77\191\89\183\89\190\93\248\84\162\64", "\32\218\52\214"), "");
end
local v16 = _G['require'](_G['game']['ReplicatedStorage'].Quests);
local v17 = {DitMeSaoDecodeLauThe("\108\22\35\188\248\188\74\107\91\18\34\188", "\58\46\119\81\200\145\208\37"),DitMeSaoDecodeLauThe("\31\158\49\165\167\184\51\56", "\86\75\236\80\204\201\221"),DitMeSaoDecodeLauThe("\95\64\101\140\240\142\67\84\114\150\234", "\235\18\33\23\229\158"),DitMeSaoDecodeLauThe("\115\179\213\178\74\191\207\138\69\191\210\175", "\219\48\218\161")};
local v18 = loadstring(_G['game']:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local v19 = v18['Notify'];
_G['timelol'] = os.time();
_G['BoneMobs'] = {DitMeSaoDecodeLauThe("\214\116\126\70\201\65\160\215\122\121\69\222\91\239\234", "\128\132\17\28\41\187\47"),DitMeSaoDecodeLauThe("\45\59\16\51\83\6\114\60\53\80\3\59\3", "\61\97\82\102\90"),DitMeSaoDecodeLauThe("\136\43\166\68\201\94\29\73\159\33\190\71", "\105\204\78\203\43\167\55\126"),DitMeSaoDecodeLauThe("\149\165\48\27\0\23\194\85\229\135\54\19\30\29", "\49\197\202\67\126\115\100\167")};
_G['EctoMob'] = {DitMeSaoDecodeLauThe("\4\83\214\57\192\114\91\52\80\215\40\142\82", "\62\87\59\191\73\224\54"),DitMeSaoDecodeLauThe("\212\10\243\217\167\39\244\206\238\12\255\204\245", "\169\135\98\154"),DitMeSaoDecodeLauThe("\248\127\45\68\189\0\220\206\96\37\70\249", "\168\171\23\68\52\157\83")};
_G['DoughBoss'] = {DitMeSaoDecodeLauThe("\208\126\224\170\45\109\172\253\127\242", "\231\148\17\149\205\69\77"),DitMeSaoDecodeLauThe("\163\166\204\254\23\207\146\174\201\248\82", "\159\224\199\167\155\55")};
_G['MobsCakePrince'] = {DitMeSaoDecodeLauThe("\212\252\51\217\254\246\124\241\229\242\58\198\242\225", "\178\151\147\92"),DitMeSaoDecodeLauThe("\175\252\71\55\82\107\111\141\239\72", "\26\236\157\44\82\114\44"),DitMeSaoDecodeLauThe("\8\47\222\82\36\41\149\104\62\47\211\93", "\59\74\78\181"),DitMeSaoDecodeLauThe("\13\212\91\94\243\7\208\81\95\161", "\211\69\177\58\58")};
_G['backi'] = {DitMeSaoDecodeLauThe("\159\240\116\244\231", "\171\215\133\25\149\137")};
_G['fruittier'] = {[DitMeSaoDecodeLauThe("\195\199\63\248\175\22\238\87\232\220", "\34\129\168\82\154\143\80\156")]=((1561 - 718) - ((1004 - (353 + 154)) + 345)),[DitMeSaoDecodeLauThe("\182\162\58\0\77\14\175\151\167\58\31", "\233\229\210\83\107\40\46")]=(0 + 0),[DitMeSaoDecodeLauThe("\226\74\61\198\69\231\80\39\223\17", "\101\161\34\82\182")]=(5 - 1),[DitMeSaoDecodeLauThe("\219\29\75\247\213\229\194\8\250\24\80\234", "\78\136\109\57\158\187\130\226")]=((1 - 0) + 2 + 0),[DitMeSaoDecodeLauThe("\21\54\245\254\126\25\235\228\55\43", "\145\94\95\153")]=(1335 - (605 + 728)),[DitMeSaoDecodeLauThe("\206\221\29\219\14\145\239\216\29\193", "\215\157\173\116\181\46")]=(4 + 1 + 0),[DitMeSaoDecodeLauThe("\19\181\135\241\213\59\244\173\224\207\60\160", "\186\85\212\235\146")]=6,[DitMeSaoDecodeLauThe("\241\140\25\245\60\174\126\208\148\31\234", "\56\162\225\118\158\89\142")]=(5 + 2),[DitMeSaoDecodeLauThe("\122\9\193\162\39\152\122\23\213\166\54", "\184\60\101\160\207\66")]=((26 - 7) - (18 - 8)),[DitMeSaoDecodeLauThe("\24\129\121\252\23\144\105\181\37", "\220\81\226\28")]=((2 - 1) + 11),[DitMeSaoDecodeLauThe("\32\212\140\255\170\225\1\192\139\239", "\167\115\181\226\155\138")]=((122 - (7 + 79)) - (13 + 13)),[DitMeSaoDecodeLauThe("\198\35\245\87\59\87\212\247\43\243", "\166\130\66\135\60\27\17")]=((191 - (24 + 157)) + 1),[DitMeSaoDecodeLauThe("\118\79\216\124\38\65\10\232\103\37\77\94", "\80\36\42\174\21")]=(15 - 7),[DitMeSaoDecodeLauThe("\106\25\54\119\65\30\51\58\104\2\34\115\90", "\26\46\112\87")]=((44 - 23) - (4 + 9)),[DitMeSaoDecodeLauThe("\149\42\172\124\171\255\99\166\172\42\191", "\212\217\67\203\20\223\223\37")]=(10 + (4 - 2)),[DitMeSaoDecodeLauThe("\150\130\190\215\250\171\186\199\179\153", "\178\218\237\200")]=11,[DitMeSaoDecodeLauThe("\132\160\228\210\179\167\166\246\164\160\239\196", "\176\214\213\134")]=((877 - (262 + 118)) - ((1540 - (1038 + 45)) + (68 - 36))),[DitMeSaoDecodeLauThe("\214\172\164\198\161\83\75\180\139\164\193\161\66", "\57\148\205\214\180\200\54")]=(3 + (233 - (19 + 211))),[DitMeSaoDecodeLauThe("\63\252\50\57\119\82\219\39\33\127\6", "\22\114\157\85\84")]=((1529 - (88 + 25)) - ((2118 - 1286) + 283 + 287)),[DitMeSaoDecodeLauThe("\245\222\18\207\88\182\142\214\222\26\208", "\200\164\171\115\164\61\150")]=(13 + 0 + (1036 - (1007 + 29))),[DitMeSaoDecodeLauThe("\142\251\17\81\130\178\180\37\87\150\183\224", "\227\222\148\99\37")]=13,[DitMeSaoDecodeLauThe("\27\71\95\247\247\105\18\112\227\253\55\90\83\182\223\33\71\91\226", "\153\83\50\50\150")]=(2 + 2 + 11),[DitMeSaoDecodeLauThe("\110\102\122\24\118\185\13\123\100\102\21\103", "\45\61\22\19\124\19\203")]=(29 - 17),[DitMeSaoDecodeLauThe("\241\26\2\251\7\104\249\231\0\24\252\22", "\217\161\114\109\149\98\16")]=10,[DitMeSaoDecodeLauThe("\32\53\53\126\176\113\82\6\42\105\181\96", "\20\114\64\88\28\220")]=(53 - 38),[DitMeSaoDecodeLauThe("\1\0\197\244\222\194\168\56\21", "\221\81\97\178\212\152\176")]=(4 + (14 - 11)),[DitMeSaoDecodeLauThe("\234\245\28\237\19\217\254\93\221\8\216\238\9", "\122\173\135\125\155")]=((178 + 619) - ((1399 - (340 + 471)) + (523 - 315))),[DitMeSaoDecodeLauThe("\183\201\1\189\48\38\136\162\211\21\176\43", "\168\228\161\96\217\95\81")]=((626 - (276 + 313)) - 23),[DitMeSaoDecodeLauThe("\255\222\59\91\39\23\253\195\59\85\59", "\55\187\177\78\60\79")]=(48 - 28),[DitMeSaoDecodeLauThe("\27\203\81\228\75\143\166\63\219\86\255", "\224\77\174\63\139\38\175")]=(1819 - (815 + 69 + 389 + 527)),[DitMeSaoDecodeLauThe("\167\78\86\58\150\78\84\110\162\83\77\39\144", "\78\228\33\56")]=11,[DitMeSaoDecodeLauThe("\253\110\187\17\140\218\62\148\17\144\199\106", "\229\174\30\210\99")]=(37 - (2 + 17)),[DitMeSaoDecodeLauThe("\63\255\135\86\226\51\121\61\255\147\88\249", "\89\123\141\230\49\141\93")]=(12 + (1979 - (495 + 1477))),[DitMeSaoDecodeLauThe("\223\116\249\28\17\88\247\49\208\30\5\67\231", "\42\147\17\150\108\112")]=((2029 - 1351) - (152 + 80 + (824 - (342 + 61))))};
_G['CocoaMobs'] = {DitMeSaoDecodeLauThe("\44\169\46\112\230\168\56\167\63\109\238\231\29", "\136\111\198\77\31\135"),DitMeSaoDecodeLauThe("\33\1\168\85\178\232\22\189\7\73\133\87\175\164\53\168\22\29\171\83\175", "\201\98\105\199\54\221\132\119")};
_G['elite'] = {DitMeSaoDecodeLauThe("\157\9\130\47\6\39\169", "\204\217\108\227\65\98\85"),DitMeSaoDecodeLauThe("\107\209\247\228\34", "\160\62\163\149\133\76"),DitMeSaoDecodeLauThe("\242\169\12\45\207\217", "\163\182\192\109\79")};
_G['meleetable'] = {DitMeSaoDecodeLauThe("\16\52\1\199\250\58\18\1\204\250\58", "\149\84\70\96\160"),DitMeSaoDecodeLauThe("\11\19\29\232\42\14\24\224\57\8", "\141\88\102\109"),DitMeSaoDecodeLauThe("\148\92\206\120\15\48\84\207", "\161\211\51\170\16\122\93\53"),DitMeSaoDecodeLauThe("\222\162\183\43\239\188\187\43\216\162\179\63", "\72\155\206\210"),DitMeSaoDecodeLauThe("\117\114\85\28\56\75\123\90\37\50\84\123\64\11", "\83\38\26\52\110"),DitMeSaoDecodeLauThe("\124\18\38\82\80\36\51\67\72", "\38\56\119\71"),DitMeSaoDecodeLauThe("\209\227\89\213\46\122\246\232", "\54\147\143\56\182\69"),DitMeSaoDecodeLauThe("\240\136\236\65\210\215\143\212\72\205\215\149\250", "\191\182\225\159\41"),DitMeSaoDecodeLauThe("\14\30\45\86\159\149\205", "\162\75\114\72\53\235\231"),DitMeSaoDecodeLauThe("\168\46\69\229\92\12\175\48\69\245", "\98\236\92\36\130\51")};
_G['meleetable2'] = {DitMeSaoDecodeLauThe("\128\11\13\189\74\166\245\4\165\21\3\180", "\80\196\121\108\218\37\200\213"),DitMeSaoDecodeLauThe("\51\102\18\122\89\6\159\13\114\12", "\234\96\19\98\31\43\110"),DitMeSaoDecodeLauThe("\33\16\86\207\185\127\138\8", "\235\102\127\50\167\204\18"),DitMeSaoDecodeLauThe("\117\173\240\32\80\60\89\162\181\0\72\47\71", "\78\48\193\149\67\36"),DitMeSaoDecodeLauThe("\3\22\129\10\74\61\31\142\88\106\49\12\129\12\68", "\33\80\126\224\120"),DitMeSaoDecodeLauThe("\200\173\2\208\84\172\155\23\193\76", "\60\140\200\99\164"),DitMeSaoDecodeLauThe("\165\248\5\37\169\199\216\1\33", "\194\231\148\100\70"),DitMeSaoDecodeLauThe("\96\69\210\171\251\201\72\12\234\162\228\201\82\73", "\168\38\44\161\195\150"),DitMeSaoDecodeLauThe("\165\240\135\117\36\250\185", "\118\224\156\226\22\80\136\214"),DitMeSaoDecodeLauThe("\102\252\88\135\77\224\25\163\78\239\78", "\224\34\142\57")};
_G['meleetable3'] = {};
for v77, v78 in pairs(_G['meleetable2']) do
	_G['meleetable3'][v78] = _G['meleetable'][v77];
end
_G['meleetable4'] = {};
for v79, v80 in pairs(_G['meleetable']) do
	_G['meleetable4'][v80] = _G['meleetable2'][v79];
end
_G['browhat'] = {[DitMeSaoDecodeLauThe("\252\171\196\222\120\177\113\11\217", "\110\190\199\165\189\19\145\61")]=DitMeSaoDecodeLauThe("\248\254\110\202\135\198\217\224\91\237\140", "\167\186\139\23\136\235"),[DitMeSaoDecodeLauThe("\60\188\155\5\23\180\134\77\49\180\154\12\14\176", "\109\122\213\232")]=DitMeSaoDecodeLauThe("\204\226\187\22\231\228\170\61\239\249\137\49\252\246\182\53", "\80\142\151\194"),[DitMeSaoDecodeLauThe("\38\202\114\79\23\212\120", "\44\99\166\23")]=DitMeSaoDecodeLauThe("\94\226\48\19\63\161\127\227\59\57", "\196\28\151\73\86\83"),[DitMeSaoDecodeLauThe("\215\17\40\23\141\86\88\85\255\2\62", "\22\147\99\73\112\226\56\120")]=function()
	local v81 = 0;
	while true do
		if ((0 - 0) == v81) then
			_G['dragonclawtrue'] = _G['game']['ReplicatedStorage']['Remotes'].CommF_(DitMeSaoDecodeLauThe("\154\121\227\246\134\186\112\227\231\137\138\112\245\244\159\188", "\237\216\21\130\149"), DitMeSaoDecodeLauThe("\166\92\94\88\191\199\125\142\79\72", "\62\226\46\63\63\208\169"), "1") == (4 - 3);
			_G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\199\21\84\128\20\15\42\95\247\29\103\134\8\12\61\90", "\62\133\121\53\227\127\109\79"), DitMeSaoDecodeLauThe("\52\6\51\242\217\160\129\28\21\37", "\194\112\116\82\149\182\206"), "2");
			v81 = 1;
		end
		if (v81 == (1 + 0)) then
			return _G['dragonclawtrue'];
		end
	end
end,[DitMeSaoDecodeLauThe("\10\189\92\29\210\234\27\52\169\66", "\110\89\200\44\120\160\130")]=DitMeSaoDecodeLauThe("\137\214\82\117\86\90\62\95\163\214\70\71\77", "\45\203\163\43\38\35\42\91"),[DitMeSaoDecodeLauThe("\225\141\221\49\140\164\85\220\197\247\34\149\168\64\215", "\52\178\229\188\67\231\201")]=DitMeSaoDecodeLauThe("\3\84\73\55\255\93\49\42\76\81\10\220\93\49\32\85\85", "\67\65\33\48\100\151\60"),[DitMeSaoDecodeLauThe("\251\226\175\204\251\159\212\186\221\227", "\147\191\135\206\184")]=DitMeSaoDecodeLauThe("\166\61\191\229\221\82\166\140\27\178\196\200", "\210\228\72\198\161\184\51"),[DitMeSaoDecodeLauThe("\18\91\242\23\124\192\118\125\242\28\124\192", "\174\86\41\147\112\19")]=DitMeSaoDecodeLauThe("\121\21\148\47\55\14\22\164\85\52\140\7\42\1", "\203\59\96\237\107\69\111\113"),[DitMeSaoDecodeLauThe("\3\25\168\233\36\253\214\42", "\183\68\118\204\129\81\144")]=DitMeSaoDecodeLauThe("\44\184\105\195\4\134\6\184\125\229\5", "\226\110\205\16\132\107"),[DitMeSaoDecodeLauThe("\206\207\229\218\85\249\202\227\153\98\231\194\247", "\33\139\163\128\185")]=DitMeSaoDecodeLauThe("\117\77\29\251\91\93\7\202\69\81\7\253\91\89\19", "\190\55\56\100")};
local v20 = {DitMeSaoDecodeLauThe("\116\160\49\28\94\193\252\91\173", "\147\54\207\92\126\115\131"),DitMeSaoDecodeLauThe("\62\33\60\118\8\51\62\33\60\118\8", "\30\109\81\85\29\109"),DitMeSaoDecodeLauThe("\220\121\91\166\123\253\244\240\97", "\156\159\17\52\214\86\190"),DitMeSaoDecodeLauThe("\157\255\175\181\160\232\240\143\190\253\180\178\169", "\220\206\143\221"),DitMeSaoDecodeLauThe("\173\116\33\24\149\231\219\138\114", "\178\230\29\77\119\184\172"),DitMeSaoDecodeLauThe("\198\174\3\21\58\203\229\183\4", "\152\149\222\106\123\23"),DitMeSaoDecodeLauThe("\251\39\250\64\186\211\107\208\66\185\222\41\248", "\213\189\70\150\35"),DitMeSaoDecodeLauThe("\124\88\123\3\74\24\71\5\64\94\113", "\104\47\53\20"),DitMeSaoDecodeLauThe("\133\64\128\17\185\66\133\64\128\17\185", "\111\195\44\225\124\220"),DitMeSaoDecodeLauThe("\241\69\5\62\130\168\221", "\203\184\38\96\19\203"),DitMeSaoDecodeLauThe("\10\114\119\69\131\10\114\119\69", "\174\89\19\25\33"),DitMeSaoDecodeLauThe("\11\19\64\69\186\163\10\61\25", "\107\79\114\50\46\151\231"),DitMeSaoDecodeLauThe("\11\163\163\32\156\60\250\242\60\176\188\63\143", "\160\89\198\213\73\234\89\215"),DitMeSaoDecodeLauThe("\108\120\181\243\202\70\117\249\218\204\73\124\187\240\193", "\165\40\17\212\158"),DitMeSaoDecodeLauThe("\201\208\15\59\50\168\245\1\52\46\241", "\70\133\185\104\83"),DitMeSaoDecodeLauThe("\40\74\82\47\132\40\74\82\47", "\169\100\37\36\74"),DitMeSaoDecodeLauThe("\50\146\160\82\5\149\239\98\21\133\160\85\18", "\48\96\231\194"),DitMeSaoDecodeLauThe("\234\91\28\63\16\221\189\206\234\91\28\63\16\221\189", "\227\168\58\110\77\121\184\207"),DitMeSaoDecodeLauThe("\86\61\184\77\176\150\92\164\124\49\190", "\197\27\92\223\32\209\187\17"),DitMeSaoDecodeLauThe("\51\80\209\239\2\83\142\203\12\77\215\250\15", "\155\99\63\163"),DitMeSaoDecodeLauThe("\179\196\160\134\188\201\179\196\160\134\188", "\228\226\177\193\237\217"),DitMeSaoDecodeLauThe("\28\165\46\231\58\253\11\243\57\177\45\188\116\146\54\226\48\184\34", "\134\84\208\67"),DitMeSaoDecodeLauThe("\32\188\143\88\22\190\203\111\3\165\130\89\1", "\60\115\204\230"),DitMeSaoDecodeLauThe("\197\51\249\116\170\24\226\98\227\96\171\64\239\53\238\126\238\34", "\16\135\90\139"),DitMeSaoDecodeLauThe("\102\97\11\49\66\81\53\102\97\11\49\66\81", "\24\52\20\102\83\46\52"),DitMeSaoDecodeLauThe("\244\46\54\105\63\197\56", "\111\164\79\65\68"),DitMeSaoDecodeLauThe("\225\203\130\200\39\254\223\148\164\204\47\252\207\205\154", "\138\166\185\227\190\78"),DitMeSaoDecodeLauThe("\239\123\208\48\90\110\61\196\97\194\63", "\121\171\20\165\87\50\67"),DitMeSaoDecodeLauThe("\245\48\184\50\182\21\139\11\177\55\189\13\209", "\98\166\88\217\86\217"),DitMeSaoDecodeLauThe("\192\243\119\14\139\145\192\243\119\14\139", "\188\150\150\25\97\230"),DitMeSaoDecodeLauThe("\249\134\81\22\30\226\214\196\124\13\2\249\200\134\83", "\141\186\233\63\98\108"),DitMeSaoDecodeLauThe("\194\250\37\164\44\229\167\31\166\44\227\227\56", "\69\145\138\76\214"),DitMeSaoDecodeLauThe("\84\221\136\142\176\24\61\235\155\136\184\25\126", "\118\16\175\233\233\223"),DitMeSaoDecodeLauThe("\167\129\58\171\239\153\121\198\168\48\180\254\138\111\143", "\29\235\228\85\219\142\235")};
_G['a3'] = _G['require'](_G['game']['ReplicatedStorage']:WaitForChild(DitMeSaoDecodeLauThe("\26\193\179\217\114\99\40\86\40\216\191", "\50\93\180\218\189\23\46\71")));
function disp_time(v82)
	local v83 = 0;
	local v84;
	local v85;
	local v86;
	local v87;
	while true do
		if (v83 == 0) then
			v82 = _G['tonumber'](v82);
			if not v82 then
				return DitMeSaoDecodeLauThe("\229\161\73\94\121", "\40\190\196\59\44\36\188");
			end
			v83 = 1 - 0;
		end
		if (v83 == (1 + 0)) then
			v84 = math.floor(v82 / ((10809 - 7250) + (265573 - 182732)));
			v85 = math.floor(math.fmod(v82, 227159 - 140759) / 3600);
			v83 = 2;
		end
		if (v83 == 3) then
			return v84 .. DitMeSaoDecodeLauThe("\56\68\197\248\186", "\109\92\37\188\212\154\29") .. v85 .. DitMeSaoDecodeLauThe("\12\253\183\143\113", "\58\100\143\196\163\81") .. v86 .. DitMeSaoDecodeLauThe("\23\75\45\239\127", "\110\122\34\67\195\95\41\133") .. v87 .. "s";
		end
		if (v83 == (6 - 4)) then
			v86 = math.floor(math.fmod(v82, 7860 - 4260) / ((2438 - (877 + 712)) - (459 + 307 + (777 - (242 + 512)))));
			v87 = math.floor(math.fmod(v82, (618 - 322) - (863 - (92 + 535))));
			v83 = 3 + 0;
		end
	end
end
if _G['c']()['Misc'][DitMeSaoDecodeLauThe("\66\185\82\94\211\53\130\88\88\211\112\191", "\182\21\209\59\42")] then
	_G['game']:GetService(DitMeSaoDecodeLauThe("\133\66\203\46\36\172\161\94\198\24", "\222\215\55\165\125\65")):Set3dRenderingEnabled(not _G['c']()['Misc'][DitMeSaoDecodeLauThe("\27\217\207\14\247\129\222\73\62\212\195\20", "\42\76\177\166\122\146\161\141")]);
end
function vcl(v88, v89)
	if v88(DitMeSaoDecodeLauThe("\137\143\19\203\117", "\22\197\234\101\174\25")) then
		return v88['Level']['Value'];
	else
		return v89 or (0 - 0);
	end
end
function checkitem(v90)
	local v91 = 0;
	local v92;
	local v93;
	while true do
		if (v91 == 1) then
			if (v92 and (v92['Name'] == v90)) then
				return {[DitMeSaoDecodeLauThe("\212\21\213\232\137\179\233", "\85\153\116\166\156\236\193\144")]=_G['vcl'](v92, 0 - 0)};
			end
			if (v93 and (v93['Name'] == v90)) then
				return {[DitMeSaoDecodeLauThe("\137\225\94\167\225\18\189", "\96\196\128\45\211\132")]=_G['vcl'](v93, 0)};
			end
			v91 = 3 - 1;
		end
		if (v91 == (0 + 0)) then
			v92 = _G['game']:GetService(DitMeSaoDecodeLauThe("\29\56\164\197\115\189\196", "\230\77\84\197\188\22\207\183"))['LocalPlayer']['Backpack']:FindFirstChild(v90);
			v93 = _G['game']['Players']['LocalPlayer']['Character']:FindFirstChild(v90);
			v91 = 3 - 2;
		end
		if (v91 == (2 + 0)) then
			for v486, v487 in pairs(_G['inv']) do
				if (v487['Name'] == v90) then
					return v487;
				end
			end
			return false;
		end
	end
end
function checkitem2(v94)
	local v95 = _G['game']:GetService(DitMeSaoDecodeLauThe("\5\129\122\70\215\189\167", "\184\85\237\27\63\178\207\212"))['LocalPlayer']['Backpack']:FindFirstChild(v94);
	local v96 = _G['game']['Players']['LocalPlayer']['Character']:FindFirstChild(v94);
	if (v95 and (v95['Name'] == v94)) then
		return {[DitMeSaoDecodeLauThe("\37\88\26\75\13\75\16", "\63\104\57\105")]=_G['vcl'](v95, 0 + 0)};
	end
	if (v96 and (v96['Name'] == v94)) then
		return {[DitMeSaoDecodeLauThe("\38\134\183\80\14\149\189", "\36\107\231\196")]=_G['vcl'](v96, (0 + 0) - (0 - 0))};
	end
	return false;
end
function NameMelee(v97)
	v97 = v97 or false;
	for v390, v391 in next, _G['game']:GetService(DitMeSaoDecodeLauThe("\109\185\163\158\88\167\177", "\231\61\213\194"))['LocalPlayer']['Backpack']:GetChildren() do
		if (v391:IsA(DitMeSaoDecodeLauThe("\61\162\50\127", "\19\105\205\93")) and (v391['ToolTip'] == DitMeSaoDecodeLauThe("\132\13\210\132\58", "\95\201\104\190\225"))) then
			if v97 then
				return v391;
			else
				return v391['Name'];
			end
		end
	end
	for v392, v393 in next, _G['game']:GetService(DitMeSaoDecodeLauThe("\159\199\192\215\170\217\210", "\174\207\171\161"))['LocalPlayer']['Character']:GetChildren() do
		if (v393:IsA(DitMeSaoDecodeLauThe("\217\241\2\255", "\183\141\158\109\147\152")) and (v393['ToolTip'] == DitMeSaoDecodeLauThe("\1\12\234\9\41", "\108\76\105\134"))) then
			if v97 then
				return v393;
			else
				return v393['Name'];
			end
		end
	end
end
function NameDf(v98)
	local v99 = 0 - 0;
	local v100;
	while true do
		if (v99 == (1785 - (1476 + 309))) then
			v100 = (2357 - (299 + 985)) - (247 + 789 + (121 - 84));
			while true do
				if (v100 == (0 + (93 - (86 + 7)))) then
					local v616 = 0 - 0;
					while true do
						if (v616 == 0) then
							v98 = v98 or false;
							for v819, v820 in next, _G['game'](DitMeSaoDecodeLauThe("\219\201\176\248\203\249\214", "\174\139\165\209\129"))['LocalPlayer']['Backpack']:GetChildren() do
								if (v820:IsA(DitMeSaoDecodeLauThe("\151\188\237\205", "\24\195\211\130\161\166\99\16")) and (v820['ToolTip'] == DitMeSaoDecodeLauThe("\100\15\230\52\19\48\84\22\224\56", "\118\38\99\137\76\51"))) then
									if v98 then
										return v820;
									else
										return v820['Name'];
									end
								end
							end
							v616 = 1 + 0;
						end
						if (v616 == (881 - (672 + 208))) then
							v100 = (1 + 0) - 0;
							break;
						end
					end
				end
				if (v100 == ((133 - (14 + 118)) + 0)) then
					local v617 = 445 - (339 + 106);
					while true do
						if (0 == v617) then
							for v821, v822 in next, _G['game']:GetService(DitMeSaoDecodeLauThe("\205\42\4\11\12\50\238", "\64\157\70\101\114\105"))['LocalPlayer']['Character']:GetChildren() do
								if (v822:IsA(DitMeSaoDecodeLauThe("\116\167\168\239", "\112\32\200\199\131")) and (v822['ToolTip'] == DitMeSaoDecodeLauThe("\14\92\83\160\131\141\48\57\89\72", "\66\76\48\60\216\163\203"))) then
									if v98 then
										return v822;
									else
										return v822['Name'];
									end
								end
							end
							return DitMeSaoDecodeLauThe("\152\137\116\241\18\236\43\183\132", "\68\218\230\25\147\63\174");
						end
					end
				end
			end
			break;
		end
	end
end
function checkm2(v101)
	local v102 = 0 + 0;
	local v103;
	while true do
		if (v102 == 0) then
			v103 = 0;
			while true do
				if (((745 + 735) - (641 + (2234 - (440 + 955)))) == v103) then
					local v618 = 0 + 0;
					while true do
						if (v618 == (0 - 0)) then
							if (v101 == DitMeSaoDecodeLauThe("\137\56\82\75\185\163\9\95\77\161", "\214\205\74\51\44")) then
								return _G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\216\64\227\255\124\248\73\227\238\115\200\73\245\253\101\254", "\23\154\44\130\156"), v101, "1");
							end
							return _G['game']:GetService(DitMeSaoDecodeLauThe("\35\163\189\162\63\16\16\178\168\170\5\7\30\180\172\169\51", "\115\113\198\205\206\86"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\166\66\231", "\58\228\55\158") .. v101, true);
						end
					end
				end
			end
			break;
		end
	end
end
function checkMelee(v104)
	local v105 = 0 + 0;
	while true do
		if (v105 == (2 - 1)) then
			return false;
		end
		if ((0 + 0) == v105) then
			if ((_G['game']:GetService(DitMeSaoDecodeLauThe("\134\140\192\34\53\174\52\160\140\212\29\40\162\39\181\142\213", "\85\212\233\176\78\92\205"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\104\77\145", "\130\42\56\232") .. v104, true) == ((1267 - (260 + 93)) - (910 + 3 + 0))) or (_G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\200\185\37\224\75\61\239\180\54\231\114\58\253\180\54\231", "\95\138\213\68\131\32"), v104, "1") == ((4 - 2) - 1))) then
				return true;
			end
			if (_G['NameMelee']() == _G['meleetable4'][v104]) then
				return true;
			end
			v105 = 1;
		end
	end
end
local function v21(v106)
	local v107 = 0 - 0;
	while true do
		if (v107 == (1974 - (1181 + 793))) then
			_G['rotationAngle'] = (rotationAngle or (1684 - (374 + 1092 + (525 - (105 + 202))))) + 67 + 16 + 97;
			_G['game'](DitMeSaoDecodeLauThe("\30\63\164\70\120\25\45\179\85\127\41\45", "\22\74\72\193\35")):Create(v106, TweenInfo.new(1149 - ((1366 - (352 + 458)) + (2386 - 1794))), {[DitMeSaoDecodeLauThe("\30\118\240\89\56\112\235\86", "\56\76\25\132")]=_G['rotationAngle']}):Play();
			break;
		end
	end
end
local function v22()
	local v108 = 0 - 0;
	local v109;
	local v110;
	local v111;
	local v112;
	while true do
		if ((1 + 0) == v108) then
			v110['Name'] = DitMeSaoDecodeLauThe("\12\143\5\84", "\186\78\227\112\38\73");
			v111 = 0 + 0;
			v108 = 5 - 3;
		end
		if (v108 == (952 - (438 + 511))) then
			for v488 = v110['Size'], 1383 - (1262 + 121), -((1922.1 - (728 + 340)) - ((1964 - (816 + 974)) + 680)) do
				local v489 = 0;
				local v490;
				while true do
					if (v489 == (0 - 0)) then
						v490 = (0 - 0) - (339 - (163 + 176));
						while true do
							if (v490 == ((0 - 0) - (0 - 0))) then
								v110['Size'] = v488;
								wait(0.05 + 0);
								break;
							end
						end
						break;
					end
				end
			end
			break;
		end
		if (v108 == (1812 - (1564 + 246))) then
			v112 = 10;
			_G['game']:GetService(DitMeSaoDecodeLauThe("\200\64\248\80\93\73\249\69\235\92\80\127", "\26\156\55\157\53\51")):Create(v110, TweenInfo.new(346 - (124 + 221)), {[DitMeSaoDecodeLauThe("\191\209\12\220", "\48\236\184\118\185\216")]=((559 + 259) - (329 + (930 - (115 + 336))))}):Play();
			v108 = 6 - 3;
		end
		if ((0 + 0) == v108) then
			v109 = _G['game']:GetService(DitMeSaoDecodeLauThe("\114\200\172\46\219\87\207\172", "\175\62\161\203\70"));
			v110 = v109:FindFirstChild(DitMeSaoDecodeLauThe("\30\209\214\1", "\85\92\189\163\115")) or Instance.new(DitMeSaoDecodeLauThe("\11\160\37\42\12\170\54\61\42\184", "\88\73\204\80"));
			v108 = 47 - (45 + 1);
		end
	end
end
local function v23()
	local v113 = 0 + 0;
	local v114;
	local v115;
	while true do
		if (v113 == (1990 - (1282 + 708))) then
			v114 = _G['game']:GetService(DitMeSaoDecodeLauThe("\201\180\80\56\219\61\235\186", "\84\133\221\55\80\175"));
			v115 = v114:FindFirstChild(DitMeSaoDecodeLauThe("\159\235\49\180", "\60\221\135\68\198\167"));
			v113 = 1213 - (583 + 629);
		end
		if (v113 == (1 + 0)) then
			if v115 then
				local v586 = 0;
				while true do
					if ((0 - 0) == v586) then
						_G['game']:GetService(DitMeSaoDecodeLauThe("\218\170\253\134\76\234\235\175\238\138\65\220", "\185\142\221\152\227\34")):Create(v115, TweenInfo.new(1 + 0), {[DitMeSaoDecodeLauThe("\107\204\77\255", "\151\56\165\55\154\35\83")]=-(1170.1 - (943 + 227))}):Play();
						v115:Destroy();
						break;
					end
				end
			end
			break;
		end
	end
end
_G['fruitMap'] = {};
_G['fruitprice'] = {};
for v116, v117 in ipairs(v20) do
	local v118 = 0 + 0 + (1631 - (1539 + 92));
	local v119;
	local v120;
	local v121;
	while true do
		if (v118 == (739 - ((2342 - (706 + 1240)) + (601 - (81 + 177))))) then
			v119 = {};
			for v491 in _G['string'].gmatch(v117, DitMeSaoDecodeLauThe("\155\125\72\211\235", "\142\192\35\101")) do
				_G['table'].insert(v119, v491);
			end
			v118 = (2 - 1) + (257 - (212 + 45));
		end
		if (v118 == ((4943 - 3465) - ((1975 - (708 + 1238)) + 121 + 1327))) then
			v120 = _G['table'].concat(v119, "-");
			v121 = v119[1390 - (135 + 1254)] .. DitMeSaoDecodeLauThe("\150\83\59\182\238\152", "\118\182\21\73\195\135\236\204");
			v118 = 7 - (2 + 3);
		end
		if (v118 == (1669 - (586 + 1081))) then
			_G['fruitMap'][v120] = v121;
			break;
		end
	end
end
_G['fruitMap'][#_G['fruitMap'] + (512 - (348 + 163))] = DitMeSaoDecodeLauThe("\32\41\23\65\10\64\213\29\49\27\78\94\77\223\29\56\30\72\5", "\157\104\92\122\32\100\109");
_G['fruitMap'][#_G['fruitMap'] + 1 + 0] = DitMeSaoDecodeLauThe("\129\175\221\206\112\5\132\185\167\252\143\250\53\40\131\174\187", "\203\195\198\175\170\93\71\237");
_G['fruitprice'] = {};
for v122, v123 in next, _G['game']:GetService(DitMeSaoDecodeLauThe("\28\78\46\217\88\18\253\58\78\58\230\69\30\238\47\76\59", "\156\78\43\94\181\49\113"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\85\237\208\133\25\86\112\102\251", "\25\18\136\164\195\107\35")) do
	_G['fruitprice'][v123['Name']] = v123['Price'];
end
function CheckMaterialCount(v125)
	local v126 = 0;
	while true do
		if (v126 == (280 - (215 + 65))) then
			for v492, v493 in pairs(_G['inv']) do
				if (v493[DitMeSaoDecodeLauThe("\198\44\164\74", "\216\136\77\201\47\18\220\161")] == v125) then
					return v493[DitMeSaoDecodeLauThe("\14\227\62\212\28", "\226\77\140\75\186\104\188")];
				end
			end
			return 0;
		end
	end
end
function luoiquanenskidxdxdxd()
	local v127 = 0;
	while true do
		if (v127 == 0) then
			_G['SkypieaPlayers'] = {};
			for v494, v495 in pairs(_G['game']['Players']:GetChildren()) do
				pcall(function()
					if ((v495['Name'] ~= _G['game']['Players']['LocalPlayer']['Name']) and _G['game']['Workspace']['Characters']:FindFirstChild(v495.Name) and v495:FindFirstChild(DitMeSaoDecodeLauThe("\157\207\196\62", "\47\217\174\176\95")) and v495['Data']:FindFirstChild(DitMeSaoDecodeLauThe("\138\220\117\7", "\70\216\189\22\98\210\52\24")) and (v495['Data']['Race']['Value'] == DitMeSaoDecodeLauThe("\233\212\186\151\218\223\222", "\179\186\191\195\231")) and v495['Character']:FindFirstChild(DitMeSaoDecodeLauThe("\209\42\21\229\247\48\17\224", "\132\153\95\120"))) then
						_G['table'].insert(_G['SkypieaPlayers'], v495);
					end
				end);
			end
			v127 = 2 - 1;
		end
		if (v127 == (1860 - (1541 + 318))) then
			return _G['SkypieaPlayers'];
		end
	end
end
function get1mfruit()
	local v128 = 0 + 0;
	local v129;
	while true do
		if ((0 + 0) == v128) then
			v129 = (0 + 0) - 0;
			while true do
				if (v129 == (1750 - (1036 + 714))) then
					local v619 = 0;
					while true do
						if (v619 == 0) then
							for v824, v825 in pairs(_G['inv']) do
								if ((v825['Type'] == DitMeSaoDecodeLauThe("\147\190\1\53\183\252\178\164\187\26", "\192\209\210\110\77\151\186")) and ((v825['Rarity'] == (2 + 1)) or _G['string'].find(v825.Name, DitMeSaoDecodeLauThe("\199\17\35\255\246", "\164\128\99\66\137\159")))) then
									local v893 = 0 + 0;
									while true do
										if (v893 == 0) then
											print(DitMeSaoDecodeLauThe("\39\140\253\254\38\155\252\183\20\211\169", "\222\96\233\137") .. v825['Name']);
											return v825['Name'];
										end
									end
								end
							end
							return false;
						end
					end
				end
			end
			break;
		end
	end
end
function getRaidFruit()
	for v394, v395 in pairs(_G['inv']) do
		local v396 = 1280 - (883 + 397);
		local v397;
		while true do
			if (v396 == 0) then
				v397 = 0;
				while true do
					if (v397 == ((590 - (563 + 27)) + 0)) then
						print(v395.Type);
						if (v395['Name'] and (v395['Type'] == DitMeSaoDecodeLauThe("\155\191\168\7\200\213\226\172\186\179", "\144\217\211\199\127\232\147")) and v395['Rarity'] and ((v395['Rarity'] == (1527 - ((1521 - 1132) + (3124 - (1369 + 617))))) or (v395['Rarity'] == ((2062 - (85 + 1402)) - (36 + 66 + (1217 - 745)))))) then
							local v771 = 0;
							while true do
								if (v771 == (404 - (274 + 129))) then
									return v395['Name'];
								end
								if (v771 == (217 - (12 + 205))) then
									print(v395.Name);
									_G['raidfruit'] = v395['Name'];
									v771 = 1;
								end
							end
						end
						break;
					end
				end
				break;
			end
		end
	end
end
function loadfruit(v130)
	local v131 = 0 + 0;
	local v132;
	while true do
		if (v131 == (0 - 0)) then
			v132 = 0 + 0;
			while true do
				if (v132 == ((384 - (27 + 357)) + (480 - (91 + 389)))) then
					local v620 = 0;
					while true do
						if (v620 == (297 - (90 + 207))) then
							if not v130 then
								return;
							end
							return _G['game']:GetService(DitMeSaoDecodeLauThe("\202\42\46\36\220\70\3\80\253\43\13\60\218\87\3\67\253", "\36\152\79\94\72\181\37\98"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\251\215\70\59\241\202\82\54\195", "\95\183\184\39"), v130);
						end
					end
				end
			end
			break;
		end
	end
end
if not _G['c']()['Misc'][DitMeSaoDecodeLauThe("\135\58\234\41\66\133\66\129\58\245\52\85\137\12", "\98\213\95\135\70\52\224")] then
	return;
else
	loadstring(Game:HttpGet("https://raw.githubusercontent.com/EnverstNgau/NewFreeScript/main/Misc/SuperFpsBoost.lua"))();
end
while wait() and (_G['game']['Players']['LocalPlayer']['Team'] == nil) do
	if _G['game']:GetService(DitMeSaoDecodeLauThe("\206\175\200\110\81\236\176", "\52\158\195\169\23"))['LocalPlayer']['PlayerGui']['Main']:FindFirstChild(DitMeSaoDecodeLauThe("\89\180\61\123\149\48\79\142\123\177", "\235\26\220\82\20\230\85\27")) then
		repeat
			wait();
			if (_G['game']:GetService(DitMeSaoDecodeLauThe("\184\173\232\219\113\154\178", "\20\232\193\137\162"))['LocalPlayer']['PlayerGui']:WaitForChild(DitMeSaoDecodeLauThe("\15\222\204\168", "\17\66\191\165\198\135\236\119"))['ChooseTeam']['Visible'] == true) then
				for v621, v622 in pairs(getconnections(_G['game']:GetService(DitMeSaoDecodeLauThe("\63\163\175\10\250\250\255", "\177\111\207\206\115\159\136\140"))['LocalPlayer']['PlayerGui']['Main']['ChooseTeam']['Container']['Pirates']['Frame']['TextButton'].Activated)) do
					v622.Function();
				end
			end
		until _G['game']['Players']['LocalPlayer']['Team'] ~= nil 
	end
end
_G['TextLabel1']['Text'] = DitMeSaoDecodeLauThe("\44\157\21\25\199\15\13", "\63\101\233\112\116\180\47");
local v24 = {};
local v25 = _G['game']:GetService(DitMeSaoDecodeLauThe("\235\47\249\2\203\51\209\45\228\17\253", "\86\163\91\141\114\152"));
local v26 = DitMeSaoDecodeLauThe("\18\41\120\114\57\88\7\125\96\46\108\56\113\97\44\86\25\103\61\48\64\4\122", "\90\51\107\20\19");
function SaveSettings2()
	local v133 = 0 + 0;
	local v134;
	local v135;
	while true do
		if (v133 == 0) then
			v134 = (861 - (706 + 155)) + 0;
			v135 = nil;
			v133 = 1796 - (730 + 1065);
		end
		if (v133 == (1564 - (1339 + 224))) then
			while true do
				if (v134 == (1 + 0)) then
					writefile(".LuaHub/utils/" .. v26, v135:JSONEncode(v24));
					break;
				end
				if (v134 == (0 + 0 + (0 - 0))) then
					local v623 = 0;
					while true do
						if (v623 == 0) then
							v135 = _G['game']:GetService(DitMeSaoDecodeLauThe("\165\228\145\255\14\136\226\147\230\62\136", "\93\237\144\229\143"));
							if not isfolder(".LuaHub/utils/") then
								makefolder(".LuaHub/utils/");
							end
							v623 = 1;
						end
						if (v623 == (844 - (268 + 575))) then
							v134 = (2840 - (919 + 375)) - ((879 - 559) + (2196 - (180 + 791)));
							break;
						end
					end
				end
			end
			break;
		end
	end
end
function ReadSetting2()
	local v136 = 1805 - (323 + 1482);
	local v137;
	local v138;
	while true do
		if (v136 == 0) then
			v137, v138 = _G['pcall'](function()
				local v496 = 1918 - (1177 + 741);
				local v497;
				while true do
					if (v496 == (1 + 0)) then
						local v672 = 0;
						while true do
							if (v672 == (0 - 0)) then
								if not isfolder(".LuaHub/utils/") then
									makefolder(".LuaHub/utils/");
								end
								return v497:JSONDecode(_G['readfile'](".LuaHub/utils/" .. v26));
							end
						end
					end
					if (0 == v496) then
						local v673 = 0;
						while true do
							if (v673 == (1 + 0)) then
								v496 = 1;
								break;
							end
							if (v673 == (0 - 0)) then
								v497 = _G['game']:GetService(DitMeSaoDecodeLauThe("\61\226\228\9\56\67\7\224\249\26\14", "\38\117\150\144\121\107"));
								_G['Hub'] = _G['game']:GetService(DitMeSaoDecodeLauThe("\5\175\250\42\30\190\252\44\36\184\235", "\90\77\219\142"));
								v673 = 1 + 0;
							end
						end
					end
				end
			end);
			if v137 then
				return v138;
			else
				local v587 = 0;
				while true do
					if (v587 == (109 - (96 + 13))) then
						_G['SaveSettings2']();
						return ReadSetting2();
					end
				end
			end
			break;
		end
	end
end
v24 = _G['ReadSetting2']();
function HopServer(v139)
	local v140 = 0;
	local v141;
	local v142;
	while true do
		if (v140 == 0) then
			v141 = (1921 - (962 + 959)) - (0 - 0);
			v142 = nil;
			v140 = 1;
		end
		if (v140 == (1 + 0)) then
			while true do
				if (v141 == ((1353 - (461 + 890)) + 1 + 0)) then
					while not v142() do
						wait();
					end
					_G['SaveSettings2']();
					break;
				end
				if (v141 == ((5711 - 4245) - (157 + 1307))) then
					local v624 = 0;
					while true do
						if ((243 - (19 + 224)) == v624) then
							function v142()
								local v826 = 0;
								local v827;
								while true do
									if (v826 == 0) then
										v827 = 0;
										while true do
											if (v827 == (1860 - (745 + 76 + (1236 - (37 + 161))))) then
												return false;
											end
											if (v827 == ((0 + 0) - 0)) then
												noti(DitMeSaoDecodeLauThe("\213\1\51\47\73\21\58\206\11\49", "\26\134\100\65\89\44\103"), 1 + 0 + 4 + 0);
												for v1041 = (62 - (60 + 1)) - (923 - (826 + 97)), 38 + 61 + 1 do
													local v1042 = 0;
													local v1043;
													while true do
														if ((0 - 0) == v1042) then
															if ((ChooseRegion == nil) or (ChooseRegion == "")) then
																_G['ChooseRegion'] = DitMeSaoDecodeLauThe("\194\234\62\36\165\225\236\34\38", "\196\145\131\80\67");
															else
																_G['game']:GetService(DitMeSaoDecodeLauThe("\46\188\7\17\29\250\13", "\136\126\208\102\104\120"))['LocalPlayer']['PlayerGui']['ServerBrowser']['Frame']['Filters']['SearchRegion']['TextBox']['Text'] = _G['ChooseRegion'];
															end
															v1043 = _G['game']:GetService(DitMeSaoDecodeLauThe("\74\143\222\79\166\81\60\69\125\142\253\87\160\64\60\86\125", "\49\24\234\174\35\207\50\93"))['__ServerBrowser']:InvokeServer(v1041);
															v1042 = 1;
														end
														if (v1042 == (1 - 0)) then
															for v1088, v1089 in pairs(v1043) do
																if ((v1088 ~= _G['game']['JobId']) and (v1089[DitMeSaoDecodeLauThe("\47\253\232\134\101", "\17\108\146\157\232")] < v139)) then
																	if (not v24[v1088] or ((_G['tick']() - v24[v1088]['Time']) > (((833 - (375 + 310)) - 88) * (2009 - (1864 + 135))))) then
																		local v1134 = 0;
																		local v1135;
																		while true do
																			if (v1134 == (0 - 0)) then
																				v1135 = 0;
																				while true do
																					if ((0 + 0) == v1135) then
																						local v1181 = 0;
																						while true do
																							if (v1181 == (0 + 0)) then
																								v24[v1088] = {[DitMeSaoDecodeLauThe("\127\202\25\232", "\200\43\163\116\141\79")]=_G['tick']()};
																								_G['SaveSettings2']();
																								v1181 = 2 - 1;
																							end
																							if (v1181 == (1132 - (314 + 817))) then
																								v1135 = 1027 - (473 + 361 + (406 - (32 + 182)));
																								break;
																							end
																						end
																					end
																					if (v1135 == (1 + 0 + 0)) then
																						local v1182 = 0 - 0;
																						while true do
																							if (v1182 == (65 - (39 + 26))) then
																								if _G['game']:GetService(DitMeSaoDecodeLauThe("\143\58\60\154\181\230\240", "\131\223\86\93\227\208\148"))['LocalPlayer']['PlayerGui']['Main']['InCombat']['Visible'] then
																									noti(DitMeSaoDecodeLauThe("\212\68\191\162\93\147\236\87\246\147\19\177\163\108\184\246\62\186\238\71\183\162", "\213\131\37\214\214\125"), (148 - (54 + 90)) + (209 - (45 + 153)));
																									repeat
																										wait();
																									until not _G['game']:GetService(DitMeSaoDecodeLauThe("\22\39\36\166\228\52\56", "\129\70\75\69\223"))['LocalPlayer'] or not _G['game']:GetService(DitMeSaoDecodeLauThe("\118\199\242\240\121\253\85", "\143\38\171\147\137\28"))['LocalPlayer']['PlayerGui']['Main']['InCombat']['Visible'] 
																								else
																								end
																								_G['game']:GetService(DitMeSaoDecodeLauThe("\226\135\169\255\10\224\213\196\135\189\192\23\236\198\209\133\188", "\180\176\226\217\147\99\131"))['__ServerBrowser']:InvokeServer(DitMeSaoDecodeLauThe("\199\188\35\2\195\182\61\19", "\103\179\217\79"), v1088);
																								v1182 = 1;
																							end
																							if (v1182 == 1) then
																								v1135 = 1 + 0 + (553 - (457 + 95));
																								break;
																							end
																						end
																					end
																					if (v1135 == (2 - 0)) then
																						return true;
																					end
																				end
																				break;
																			end
																		end
																	elseif ((_G['tick']() - v24[v1088]['Time']) > (60 * ((362 + 2) - ((626 - 326) + 4)))) then
																		v24[v1088] = nil;
																	end
																end
															end
															break;
														end
													end
												end
												v827 = (2 - 1) + (0 - 0);
											end
										end
										break;
									end
								end
							end
							if not getgenv()['Loaded'] then
								local v849 = 0 + 0;
								local v850;
								local v851;
								while true do
									if (v849 == (3 - 2)) then
										while true do
											if (v850 == (364 - ((337 - 225) + (998 - (485 + 263))))) then
												getgenv()['Loaded'] = true;
												break;
											end
											if ((0 + (707 - (575 + 132))) == v850) then
												v851 = nil;
												function v851(v1058)
													if (v1058['Name'] == DitMeSaoDecodeLauThe("\111\165\14\218\83\188\177\69\186\12\193", "\195\42\215\124\181\33\236")) then
														if v1058['Visible'] then
															if (v1058['TitleFrame']['ErrorTitle']['Text'] == DitMeSaoDecodeLauThe("\57\92\59\59\53\247\31\77\119\24\36\241\1\92\51", "\152\109\57\87\94\69")) then
																HopServer();
																v1058['Visible'] = false;
															end
														end
														v1058:GetPropertyChangedSignal(DitMeSaoDecodeLauThe("\207\222\25\170\188\222\81", "\200\153\183\106\195\222\178\52")):Connect(function()
															if v1058['Visible'] then
																if (v1058['TitleFrame']['ErrorTitle']['Text'] == DitMeSaoDecodeLauThe("\6\230\132\56\89\85\32\247\200\27\72\83\62\230\140", "\58\82\131\232\93\41")) then
																	HopServer();
																	v1058['Visible'] = false;
																end
															end
														end);
													end
												end
												v850 = 2 - 1;
											end
											if (v850 == ((862 - (750 + 111)) + (1010 - (445 + 565)))) then
												local v1045 = 0 + 0;
												while true do
													if (v1045 == 1) then
														v850 = 1 + 1;
														break;
													end
													if (0 == v1045) then
														for v1090, v1091 in pairs(_G['game']['CoreGui']['RobloxPromptGui']['promptOverlay']:GetChildren()) do
															v851(v1091);
														end
														_G['game']['CoreGui']['RobloxPromptGui']['promptOverlay']['ChildAdded']:Connect(v851);
														v1045 = 1 - 0;
													end
												end
											end
										end
										break;
									end
									if ((0 + 0) == v849) then
										v850 = (310 - (189 + 121)) - (0 + 0);
										v851 = nil;
										v849 = 1348 - (634 + 713);
									end
								end
							end
							v624 = 539 - (493 + 45);
						end
						if (v624 == (969 - (493 + 475))) then
							v141 = 1 + 1 + (785 - (158 + 626));
							break;
						end
					end
				end
				if (v141 == (0 + 0 + (0 - 0))) then
					local v625 = 0 + 0;
					while true do
						if (v625 == 1) then
							v141 = 1 + 0 + 0;
							break;
						end
						if (v625 == 0) then
							if not v139 then
								v139 = 5 + 5;
							end
							_G['ticklon'] = _G['tick']();
							v625 = 1;
						end
					end
				end
				if (v141 == (1092 - (1035 + 56))) then
					repeat
						wait();
					until (_G['tick']() - _G['ticklon']) >= (1416 - ((1960 - (114 + 845)) + 161 + 252)) 
					v142 = nil;
					v141 = (10 - 6) - 2;
				end
			end
			break;
		end
	end
end
function getPlayerLevel()
	return v14['Data']['Level']['Value'];
end
function getPlayerBeli()
	return v14['Data']['Beli']['Value'];
end
function getPlayerFragments()
	return v14['Data']['Fragments']['Value'];
end
function IsIslandRaid(v143)
	if _G['game']:GetService(DitMeSaoDecodeLauThe("\180\88\194\30\78\47\130\84\213", "\95\227\55\176\117\61"))[DitMeSaoDecodeLauThe("\39\73\44\89\167\28\81\49\66\172\17\112", "\203\120\30\67\43")]['Locations']:FindFirstChild(DitMeSaoDecodeLauThe("\216\54\65\238\215\245\101", "\185\145\69\45\143") .. v143) then
		local v426 = 0 + 0;
		while true do
			if (v426 == (1049 - (179 + 870))) then
				_G['min'] = (7549 - 2167) - (244 + 638);
				for v626, v627 in pairs(_G['game']:GetService(DitMeSaoDecodeLauThe("\189\16\11\173\207\154\30\26\163", "\188\234\127\121\198"))[DitMeSaoDecodeLauThe("\7\5\28\145\52\54\60\145\49\53\26\141", "\227\88\82\115")]['Locations']:GetChildren()) do
					if ((v627['Name'] == (DitMeSaoDecodeLauThe("\106\12\182\166\12\119\3", "\19\35\127\218\199\98") .. v143)) and ((v627['Position'] - _G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['Position'])['Magnitude'] < _G['min'])) then
						_G['min'] = (v627['Position'] - _G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['Position'])['Magnitude'];
					end
				end
				v426 = 879 - (827 + 51);
			end
			if (v426 == (2 - 1)) then
				for v628, v629 in pairs(_G['game']:GetService(DitMeSaoDecodeLauThe("\43\244\24\233\15\235\11\225\25", "\130\124\155\106"))[DitMeSaoDecodeLauThe("\234\252\249\189\175\242\83\173\220\204\255\161", "\223\181\171\150\207\195\150\28")]['Locations']:GetChildren()) do
					if ((v629['Name'] == (DitMeSaoDecodeLauThe("\101\41\239\175\7\72\122", "\105\44\90\131\206") .. v143)) and ((v629['Position'] - _G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['Position'])['Magnitude'] <= _G['min'])) then
						return v629;
					end
				end
				break;
			end
		end
	end
end
function getNextIsland()
	local v144 = 0 + 0;
	while true do
		if (v144 == (693 - ((1100 - (95 + 378)) + 5 + 61))) then
			_G['TableIslandsRaid'] = {(607 - (512 + 80 + 10)),(1015 - (334 + 677)),((7146 - 5237) - ((2721 - (1049 + 7)) + (1052 - 811))),(1 + 0 + 1),((5 - 3) - 1)};
			for v498, v499 in pairs(_G['TableIslandsRaid']) do
				if (_G['IsIslandRaid'](v499) and ((_G['IsIslandRaid'](v499)['Position'] - _G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['Position'])['Magnitude'] <= (7615 - (6240 - 3125)))) then
					return _G['IsIslandRaid'](v499);
				end
			end
			break;
		end
	end
end
function checkIsHaveAllSkillsFruit()
	local v145 = 0;
	local v146;
	while true do
		if (v145 == (0 + 0)) then
			v146 = (2519 - (1004 + 416)) - ((1992 - (1621 + 336)) + (3003 - (337 + 1602)));
			while true do
				local v500 = 0;
				while true do
					if (v500 == 0) then
						if (v146 == ((1518 - (1014 + 503)) + (1015 - (446 + 569)))) then
							local v772 = 0;
							while true do
								if (v772 == (0 + 0)) then
									if ((_G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Skills']:FindFirstChild(_G['game']['Players']['LocalPlayer']['Data']['DevilFruit'].Value):FindFirstChild("V") and (_G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Skills']:FindFirstChild(_G['game']['Players']['LocalPlayer']['Data']['DevilFruit'].Value)['V']['Title']['TextColor3'] == Color3.fromRGB((712 - 469) - 129, 1 + 0 + (234 - 121), (28 + 1322) - (298 + 938)))) or (_G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Skills']:FindFirstChild(_G['game']['Players']['LocalPlayer']['Data']['DevilFruit'].Value):FindFirstChild("C") and (_G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Skills']:FindFirstChild(_G['game']['Players']['LocalPlayer']['Data']['DevilFruit'].Value)['C']['Title']['TextColor3'] == Color3.fromRGB(1373 - ((738 - (223 + 282)) + 1026), (52 + 1728) - ((1012 - 376) + 1030), 59 + (80 - 25))))) then
										return false;
									end
									return true;
								end
							end
						end
						if (v146 == ((670 - (623 + 47)) + (45 - (32 + 13)))) then
							local v773 = 0;
							while true do
								if (v773 == 0) then
									if not _G['game']['Players']['LocalPlayer']['Data']['DevilFruit']['Value'] then
										return;
									end
									if not _G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Skills']:FindFirstChild(_G['game']['Players']['LocalPlayer']['Data']['DevilFruit'].Value) then
										repeat
											wait();
											equip(DitMeSaoDecodeLauThe("\221\236\189\161\72\24\237\245\187\173", "\94\159\128\210\217\104"));
										until _G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Skills']:FindFirstChild(_G['game']['Players']['LocalPlayer']['Data']['DevilFruit'].Value) 
									end
									v773 = 1 + 0;
								end
								if (v773 == 1) then
									v146 = 1 + 0 + 0;
									break;
								end
							end
						end
						break;
					end
				end
			end
			break;
		end
	end
end
function CheckIsRaiding()
	_G['checkraid1'] = _G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Timer']['Visible'];
	_G['checkraid2'] = _G['getNextIsland']();
	if _G['checkraid1'] then
		return _G['checkraid1'];
	end
	return _G['checkraid2'];
end
function CheckDoubleQuest()
	local v147 = 0;
	local v148;
	while true do
		if ((1802 - (1070 + 731)) == v147) then
			return v148;
		end
		if ((0 + 0) == v147) then
			v148 = {};
			for v501, v502 in pairs(v16) do
				for v588, v589 in pairs(v502) do
					local v590 = 0;
					local v591;
					while true do
						if (v590 == (1404 - (1257 + 147))) then
							v591 = v589['LevelReq'];
							for v774, v775 in pairs(v589.Task) do
								if (v774 == Mob1) then
									for v895, v896 in next, v502 do
										if ((v896['LevelReq'] <= _G['game']['Players']['LocalPlayer']['Data']['Level']['Value']) and (v896['Name'] ~= DitMeSaoDecodeLauThe("\100\246\17\177\31\77\248\115\84", "\26\48\153\102\223\63\31\153"))) then
											for v997, v998 in next, v896['Task'] do
												if (v998 > (1 + 0 + 0)) then
													_G['table'].insert(v148, v997);
												end
											end
										end
									end
								end
							end
							break;
						end
					end
				end
			end
			v147 = 1 - 0;
		end
	end
end
local v27 = _G['require'](_G['game']['ReplicatedStorage']:WaitForChild(DitMeSaoDecodeLauThe("\37\85\228\247\7\109\226\247\23\76\232", "\147\98\32\141")));
function CheckQuestData()
	local v149 = 133 - (98 + 35);
	while true do
		if (v149 == 0) then
			for v503, v504 in next, v27['Data'] do
				if (v503 == DitMeSaoDecodeLauThe("\41\86\230\217\18\114\74\12\66", "\43\120\35\131\170\102\54")) then
					return true;
				end
			end
			return false;
		end
	end
end
function CheckNameDoubleQuest()
	local v150 = 0 + 0;
	local v151;
	local v152;
	while true do
		if (v150 == (3 - 2)) then
			while true do
				if (v151 == (1 + 0)) then
					return v152;
				end
				if (v151 == ((0 - 0) + 0)) then
					local v630 = 0 + 0;
					while true do
						if (v630 == (1 + 0)) then
							v151 = 1;
							break;
						end
						if (v630 == 0) then
							v152 = nil;
							if _G['CheckQuestData']() then
								for v897, v898 in next, v27['Data']['QuestData']['Task'] do
									v152 = v897;
								end
							end
							v630 = 1;
						end
					end
				end
			end
			break;
		end
		if (v150 == 0) then
			v151 = 221 - (25 + 30 + (723 - (395 + 162)));
			v152 = nil;
			v150 = 1;
		end
	end
end
function CheckNameDoubleQuest2()
	local v153 = 0;
	local v154;
	local v155;
	local v156;
	while true do
		if (0 == v153) then
			v154 = 0 + 0;
			v155 = nil;
			v153 = 1942 - (816 + 1125);
		end
		if (v153 == (1 - 0)) then
			v156 = nil;
			while true do
				if (v154 == ((1151 - (701 + 447)) - 2)) then
					local v631 = 0 - 0;
					while true do
						if ((0 - 0) == v631) then
							if _G['CheckQuestData']() then
								for v899, v900 in next, v27['Data']['QuestData']['Task'] do
									local v901 = 297 - ((1377 - (391 + 950)) + 261);
									while true do
										if (v901 == ((0 - 0) - (0 - 0))) then
											v155 = v899;
											_G['table'].insert(v156, v899);
											break;
										end
									end
								end
							end
							return v156;
						end
					end
				end
				if (v154 == (1368 - (34 + (3286 - 1952)))) then
					local v632 = 0 + 0;
					while true do
						if (v632 == (1 + 0)) then
							v154 = 3 - 2;
							break;
						end
						if (v632 == (1522 - (251 + 1271))) then
							v155 = nil;
							v156 = {};
							v632 = 1 + 0;
						end
					end
				end
			end
			break;
		end
	end
end
function CheckDoubleQuest2()
	local v157 = 0 - 0;
	local v158;
	while true do
		if (v157 == (7 - 4)) then
			return v158;
		end
		if (v157 == (0 - 0)) then
			checkq();
			v158 = {};
			v157 = 1260 - (1147 + 112);
		end
		if ((1 + 0) == v157) then
			if ((_G['game']['Players']['LocalPlayer']['Data']['Level']['Value'] >= ((7 - 3) + 2 + 4)) and _G['CheckQuestData']() and (_G['CheckNameDoubleQuest']() == Mob1) and (#_G['CheckNameDoubleQuest']() > (699 - (335 + 362)))) then
				for v633, v634 in pairs(v16) do
					for v674, v675 in pairs(v634) do
						for v738, v739 in pairs(v675.Task) do
							if (_G['tostring'](v738) == Mob1) then
								for v852, v853 in next, v634 do
									for v902, v903 in next, v853['Task'] do
										if ((v902 ~= Mob1) and (v903 > (1 + 0 + (0 - 0)))) then
											local v981 = 0 - 0;
											local v982;
											while true do
												if (v981 == 0) then
													v982 = (4767 - 3484) - (1035 + (1207 - 959));
													while true do
														if (v982 == ((59 - 38) - ((586 - (237 + 329)) + (3 - 2)))) then
															if (v853['LevelReq'] <= _G['game']['Players']['LocalPlayer']['Data']['Level']['Value']) then
																local v1097 = 0 + 0;
																while true do
																	if (v1097 == (0 + 0)) then
																		v158[DitMeSaoDecodeLauThe("\122\7\138\179", "\228\52\102\231\214\197\208")] = _G['tostring'](v902);
																		v158[DitMeSaoDecodeLauThe("\48\225\120\207\219\158\28\197\10", "\182\126\128\21\170\138\235\121")] = v633;
																		v1097 = 1125 - (408 + 716);
																	end
																	if (v1097 == (3 - 2)) then
																		v158[DitMeSaoDecodeLauThe("\162\254", "\102\235\186\85\134\230\115\80")] = v852;
																		break;
																	end
																end
															else
																local v1098 = 0;
																local v1099;
																while true do
																	if (v1098 == (821 - (344 + 477))) then
																		v1099 = 0 + 0 + 0;
																		while true do
																			if (v1099 == ((2080 - (1188 + 573)) - ((351 - 217) + 181 + 4))) then
																				v158[DitMeSaoDecodeLauThe("\121\13\51\90", "\66\55\108\94\63\18\180")] = _G['Mob1'];
																				v158[DitMeSaoDecodeLauThe("\58\140\136\50\22\76\17\158\145", "\57\116\237\229\87\71")] = _G['Mob2'];
																				v1099 = 1134 - ((1780 - 1231) + 584);
																			end
																			if (v1099 == ((1059 - 373) - ((776 - 462) + 371))) then
																				v158[DitMeSaoDecodeLauThe("\131\149", "\39\202\209\141\135\23\142")] = _G['Mob3'];
																				break;
																			end
																		end
																		break;
																	end
																end
															end
															return v158;
														end
													end
													break;
												end
											end
										end
									end
								end
							end
						end
					end
				end
			else
				v158[DitMeSaoDecodeLauThe("\209\50\4\15", "\152\159\83\105\106\82")] = _G['Mob1'];
				v158[DitMeSaoDecodeLauThe("\175\199\92\247\248\73\132\213\69", "\60\225\166\49\146\169")] = _G['Mob2'];
				v158[DitMeSaoDecodeLauThe("\6\58", "\103\79\126\79\74\97")] = _G['Mob3'];
				return v158;
			end
			v158[DitMeSaoDecodeLauThe("\148\126\222\118", "\122\218\31\179\19\62")] = _G['Mob1'];
			v157 = 1531 - (508 + 1021);
		end
		if (v157 == 2) then
			v158[DitMeSaoDecodeLauThe("\157\215\192\196\248\180\64\160\194", "\37\211\182\173\161\169\193")] = _G['Mob2'];
			v158[DitMeSaoDecodeLauThe("\222\30", "\217\151\90\45\185\72\27")] = _G['Mob3'];
			v157 = 3 + 0;
		end
	end
end
function moctui(v159)
	local v160 = 0 - (1166 - (228 + 938));
	local v161;
	local v162;
	while true do
		if (v160 == ((1655 - (332 + 353)) - ((581 - 103) + (1282 - 792)))) then
			local v450 = 0 + 0;
			while true do
				if (v450 == 0) then
					if (v159 == (1 + 0 + 0)) then
						return true;
					end
					return false;
				end
			end
		end
		if (v160 == (1173 - (786 + 386))) then
			local v451 = 0;
			while true do
				if (v451 == 0) then
					if ((v161 == -((23 - 17) - (427 - (18 + 405)))) and (v159 == (2 + 1))) then
						return true;
					end
					if ((v162 == -(1381 - (1055 + 164 + 160))) and (v159 == (1342 - ((1664 - 571) + (1225 - (194 + 784)))))) then
						return true;
					end
					v451 = 1;
				end
				if (v451 == 1) then
					v160 = 2 + 0;
					break;
				end
			end
		end
		if (v160 == ((1770 - (694 + 1076)) + (1904 - (122 + 1782)))) then
			local v452 = 0;
			while true do
				if ((1 + 0) == v452) then
					v160 = (3 + 0) - 2;
					break;
				end
				if ((0 + 0) == v452) then
					v161, v162 = _G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\244\121\233\30\89\192\119\243\29\87\199", "\54\163\28\135\114"), "1"), _G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\9\215\94\138\75\114\33\200\73", "\31\72\187\61\226\46"), "1");
					if (_G['game']['Players']['LocalPlayer']['Character']:FindFirstChild(DitMeSaoDecodeLauThe("\241\7\64\215\115\108\37\205\21\69\221\85\115\33\199", "\68\163\102\35\178\39\30")) and (v159 == (15 - 11))) then
						return true;
					end
					v452 = 1 + 0;
				end
			end
		end
	end
end
_G['pcall'](function()
end);
function getsortedmon()
	local v163 = 0 - 0;
	local v164;
	local v165;
	local v166;
	local v167;
	local v168;
	while true do
		if (v163 == (0 + 0)) then
			v164 = 1970 - (214 + 1756);
			v165 = nil;
			v163 = 4 - 3;
		end
		if (v163 == (1 + 0)) then
			v166 = nil;
			v167 = nil;
			v163 = 1 + 1;
		end
		if (v163 == (587 - (217 + 368))) then
			v168 = nil;
			while true do
				local v505 = 0 - 0;
				while true do
					if (0 == v505) then
						if (v164 == (2 + 1)) then
							return v168;
						end
						if (v164 == ((2 + 0) - (1 + 0))) then
							local v776 = 889 - (844 + 45);
							while true do
								if (v776 == (284 - (242 + 42))) then
									v167 = workspace.Enemies();
									v168 = {};
									v776 = 1 - 0;
								end
								if (v776 == (2 - 1)) then
									v164 = 4 - (1202 - (132 + 1068));
									break;
								end
							end
						end
						v505 = 1 - 0;
					end
					if (v505 == (1624 - (214 + 1409))) then
						if (v164 == (0 + 0 + 0)) then
							local v777 = 1634 - (497 + 1137);
							while true do
								if (v777 == 0) then
									v165 = _G['game']['Players']['LocalPlayer'];
									v166 = v165['Character']:WaitForChild(DitMeSaoDecodeLauThe("\150\101\215\198\13\186\138\21\140\127\213\211\51\180\145\5", "\113\222\16\186\167\99\213\227"));
									v777 = 941 - (9 + 931);
								end
								if (v777 == (290 - (181 + 108))) then
									v164 = 1 + 0;
									break;
								end
							end
						end
						if (v164 == (7 - (12 - 7))) then
							local v778 = 0 - 0;
							while true do
								if ((0 + 0) == v778) then
									for v935, v936 in pairs(v167) do
										if ((v936['Name'] ~= DitMeSaoDecodeLauThe("\30\7\233\247\58\11\217\247\61\7\248", "\150\78\110\155")) and (v936['Name'] ~= DitMeSaoDecodeLauThe("\181\204\53\224\176\27\157\82\140\194\38\229\161", "\32\229\165\71\129\196\126\223")) and v936:FindFirstChild(DitMeSaoDecodeLauThe("\235\156\201\128\143\218\202\141\246\142\142\193\243\136\214\149", "\181\163\233\164\225\225"))) then
											_G['table'].insert(v168, v936);
										end
									end
									_G['table'].sort(v168, function(v937, v938)
										return v165:DistanceFromCharacter(v937['HumanoidRootPart'].Position) < v165:DistanceFromCharacter(v938['HumanoidRootPart'].Position);
									end);
									v778 = 1;
								end
								if (v778 == (1 + 0)) then
									v164 = (486 - (296 + 180)) - (1410 - (1183 + 220));
									break;
								end
							end
						end
						break;
					end
				end
			end
			break;
		end
	end
end
function whatismyrace()
	return _G['game']:GetService(DitMeSaoDecodeLauThe("\96\135\63\110\85\153\45", "\23\48\235\94"))['LocalPlayer']['Data']['Race']['Value'];
end
function MobLevel1OrMobLevel2()
	local v169 = 1265 - (1037 + 228);
	local v170;
	while true do
		if (v169 == (1 - 0)) then
			for v506, v507 in pairs(v170) do
				local v508 = 0;
				local v509;
				while true do
					if (v508 == ((0 - 0) + (0 - 0))) then
						v509 = v507;
						v507 = _G['tostring'](v507:gsub(DitMeSaoDecodeLauThe("\248\253\12\16\174\246\92\121\188\243\89\44", "\92\216\216\124"), ""));
						v508 = 2 - 1;
					end
					if (v508 == ((1423 - (527 + 207)) - (364 + (851 - (187 + 340))))) then
						if (_G['tostring'](v507) == _G['CheckNameDoubleQuest']()) then
							returstring(v509);
						end
						break;
					end
				end
			end
			return false;
		end
		if (v169 == (1870 - (1298 + 572))) then
			v170 = {};
			for v510, v511 in pairs(_G['getsortedmon']()) do
				if (not _G['table'].find(v170, v511.Name) and v511:IsA(DitMeSaoDecodeLauThe("\81\213\220\88\91", "\178\28\186\184\61\55\83")) and (v511['Name'] ~= DitMeSaoDecodeLauThe("\244\196\85\61\230\11\215\197\222\78\63", "\149\164\173\39\92\146\110")) and not _G['string'].find(v511.Name, DitMeSaoDecodeLauThe("\209\53\25\24\27\31\246", "\123\147\71\112\127\122")) and v511:FindFirstChild(DitMeSaoDecodeLauThe("\228\216\143\112\72\195\196\134", "\38\172\173\226\17")) and (v511['Humanoid']['Health'] > (0 - 0)) and v511:FindFirstChild(DitMeSaoDecodeLauThe("\101\4\33\238\67\30\37\235\127\30\35\251\125\16\62\251", "\143\45\113\76"))) then
					_G['table'].insert(v170, v511.Name);
				end
			end
			v169 = 171 - (144 + 26);
		end
	end
end
local v28 = _G['game']['ReplicatedStorage']['Remotes'][DitMeSaoDecodeLauThe("\120\61\161\77\219\100", "\157\59\82\204\32")];
_G['raidlist'] = {};
for v171, v172 in pairs(_G['require'](_G['game']:GetService(DitMeSaoDecodeLauThe("\10\59\243\246\224\233\210\165\61\58\208\238\230\248\210\182\61", "\209\88\94\131\154\137\138\179")).Raids).advancedRaids) do
	_G['table'].insert(_G['raidlist'], v172);
end
for v173, v174 in pairs(_G['require'](_G['game']:GetService(DitMeSaoDecodeLauThe("\26\164\212\112\23\32\48\54\45\165\247\104\17\49\48\37\45", "\66\72\193\164\28\126\67\81")).Raids).raids) do
	_G['table'].insert(_G['raidlist'], v174);
end
function getraidchip()
	local v175 = 0;
	local v176;
	while true do
		if (v175 == 0) then
			v176 = _G['game']['Players']['LocalPlayer']['Data']['DevilFruit']['Value'];
			for v512, v513 in pairs(_G['raidlist']) do
				if _G['string'].find(v176, v513) then
					return v513;
				end
			end
			v175 = 2 - 1;
		end
		if (v175 == (2 - 1)) then
			return DitMeSaoDecodeLauThe("\195\45\186\83", "\22\135\76\200\56\70");
		end
	end
end
function GetQuest()
	local v177 = 0;
	local v178;
	while true do
		if (v177 == (0 + 0)) then
			v178 = (0 - 0) - (0 - 0);
			while true do
				if (v178 == (2 - (4 - 3))) then
					if ((QuestPoint[_G['CheckDoubleQuest2']()['NameQuest']]['Position'] - _G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['Position'])['Magnitude'] <= (5 + 3)) then
						local v740 = 0 - 0;
						while true do
							if (v740 == (0 + 0)) then
								_G['vc'] = _G['CheckDoubleQuest2']();
								v28:InvokeServer(DitMeSaoDecodeLauThe("\190\36\249\54\73\208\152\53\235\48", "\129\237\80\152\68\61"), _G['tostring'](_G['vc'].NameQuest), _G['vc'].ID);
								v740 = 1;
							end
							if (v740 == 1) then
								_G['MobDual2'] = _G['vc']['Name'];
								break;
							end
						end
					else
						local v741 = 0 + 0;
						local v742;
						while true do
							if (v741 == (202 - (5 + 197))) then
								v742 = (686 - (339 + 347)) + (0 - 0);
								while true do
									if (v742 == (0 - (0 - 0))) then
										_G['QuestCFrame'] = _G['QuestPoint'][_G['CheckDoubleQuest2']()['NameQuest']];
										to(_G['QuestCFrame']);
										break;
									end
								end
								break;
							end
						end
					end
					break;
				end
				if (v178 == 0) then
					local v635 = 0;
					while true do
						if (v635 == (376 - (365 + 11))) then
							if _G['game']['Players']['LocalPlayer']['PlayerGui']['Main']:FindFirstChild(DitMeSaoDecodeLauThe("\96\189\1\224\8", "\56\49\200\100\147\124\119"))['Visible'] then
								return;
							end
							if not _G['QuestPoint'][_G['tostring'](_G['CheckDoubleQuest2']().NameQuest)] then
								local v854 = 0 + 0;
								local v855;
								while true do
									if (v854 == 0) then
										v855 = 0 - 0;
										while true do
											if (v855 == ((0 - 0) - (924 - (837 + 87)))) then
												local v1046 = 0 - 0;
												while true do
													if ((1670 - (837 + 833)) == v1046) then
														CFrameQuest();
														return;
													end
												end
											end
										end
										break;
									end
								end
							end
							v635 = 1;
						end
						if (v635 == (1 + 0)) then
							v178 = 1388 - (356 + 1031);
							break;
						end
					end
				end
			end
			break;
		end
	end
end
function checkNotify(v179)
	local v180 = 0 + 0;
	local v181;
	while true do
		if (v180 == 0) then
			v181 = (1646 - (73 + 1573)) - 0;
			while true do
				if (v181 == (1268 - ((2637 - (1307 + 81)) + 19))) then
					v179 = _G['string'].lower(v179);
					for v676, v677 in pairs(_G['game']['Players']['LocalPlayer']['PlayerGui']['Notifications']:GetDescendants()) do
						if v677:IsA(DitMeSaoDecodeLauThe("\248\59\167\228\224\63\189\245\192", "\144\172\94\223")) then
							if _G['string'].find(_G['string'].lower(v677.Text), v179) then
								return true;
							end
						end
					end
					break;
				end
			end
			break;
		end
	end
end
local v29 = 239 - (7 + 227);
local v30 = (75 - 29) + (170 - (90 + 76));
local v31 = (0 - 0) - (0 + 0);
_G['y'] = 38 + 7;
function getKillVector3(v182)
	local v183 = 0 + 0;
	local v184;
	while true do
		if (v183 == (0 - 0)) then
			v184 = (1346 - (197 + 63)) - (145 + 541 + 95 + 305);
			while true do
				if ((0 + 0 + 0 + 0) == v184) then
					local v636 = 0 - 0;
					while true do
						if (v636 == 0) then
							v31 = v31 + v30;
							return v182 + Vector3.new(math.sin(math.rad(v31)) * v29, _G['y'], math.cos(math.rad(v31)) * v29);
						end
					end
				end
			end
			break;
		end
	end
end
function autopoint()
	if ((_G['getPlayerLevel']() > (729 - ((1442 - (618 + 751)) + 156))) and CheckSea(1 + 0 + 0)) then
		return DitMeSaoDecodeLauThe("\0\10\164\66\42\28\167", "\39\68\111\194");
	elseif (_G['getPlayerLevel']() > ((4821 - (206 + 1704)) - ((1214 - 493) + (179 - 89)))) then
		return DitMeSaoDecodeLauThe("\229\177\232\213\125", "\215\182\198\135\167\25");
	elseif (_G['getPlayerLevel']() > (21 + 1779)) then
		return DitMeSaoDecodeLauThe("\175\69\229\80\205\111\248\93\132\93", "\40\237\41\138");
	else
		return DitMeSaoDecodeLauThe("\234\113\246\253\79", "\42\167\20\154\152");
	end
end
function GetAndCheckMeleeMastery(v185, v186)
	local v187 = 0 + 0;
	local v188;
	while true do
		if (v187 == (1275 - (155 + 1120))) then
			v188 = 0 - (1506 - (396 + 1110));
			while true do
				local v514 = 0;
				while true do
					if (v514 == (2 - 1)) then
						if (v188 == 0) then
							local v779 = 0;
							while true do
								if (v779 == (1 + 0)) then
									v188 = 1 - (0 + 0);
									break;
								end
								if (v779 == (0 + 0)) then
									_G['mm'] = v185;
									_G['usingmelee'] = _G['browhat'][_G['NameMelee']()];
									v779 = 977 - (230 + 746);
								end
							end
						end
						break;
					end
					if (v514 == (601 - (473 + 128))) then
						if (v188 == ((520 - (39 + 9)) - (224 + 246))) then
							local v780 = 266 - (38 + 228);
							while true do
								if (v780 == (0 - 0)) then
									if momo then
										local v983 = 473 - (106 + 367);
										while true do
											if (v983 == (0 + 0)) then
												if (not _G['game']['Players']['LocalPlayer']['Character']:FindFirstChild(mm) and not _G['game']['Players']['LocalPlayer']['Backpack']:FindFirstChild(mm)) then
													_G['momo'] = _G['browhat'][_G['mm']];
													if (type(_G['momo']) == DitMeSaoDecodeLauThe("\89\234\176\75\127\38", "\65\42\158\194\34\17")) then
														local v1092 = 0 - 0;
														while true do
															if (v1092 == (1862 - (354 + 1508))) then
																_G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(_G['momo'], true);
																_G['momo'] = _G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(_G['momo']);
																break;
															end
														end
													else
														_G['momo'] = _G['momo']();
													end
												end
												if (_G['game']['Players']['LocalPlayer']['Character']:FindFirstChild(_G['mm']) or _G['game']['Players']['LocalPlayer']['Backpack']:FindFirstChild(_G['mm'])) then
													local v1068 = 0;
													while true do
														if (v1068 == (0 - 0)) then
															_G['kwekrwe'] = {_G['game']['Players']['LocalPlayer']['Character'],_G['game']['Players']['LocalPlayer']['Backpack']};
															for v1117, v1118 in pairs(_G['kwekrwe']) do
																if v1118:FindFirstChild(_G['mm']) then
																	return v1118[_G['mm']]['Level']['Value'];
																end
															end
															break;
														end
													end
												end
												break;
											end
										end
									end
									return 0 + 0 + (0 - 0);
								end
							end
						end
						if (v188 == ((1245 - (334 + 910)) + 0)) then
							local v781 = 0;
							while true do
								if (v781 == (896 - (92 + 803))) then
									v188 = 2;
									break;
								end
								if (v781 == 0) then
									_G['momo'] = _G['browhat'][_G['mm']];
									if (type(_G['momo']) == DitMeSaoDecodeLauThe("\9\51\64\5\35\234", "\142\122\71\50\108\77\141\123")) then
										_G['momo'] = _G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(_G['momo'], true) == (1 + 0 + (1181 - (1035 + 146)));
									else
										_G['momo'] = _G['momo']();
									end
									v781 = 617 - (230 + 386);
								end
							end
						end
						v514 = 1 + 0;
					end
				end
			end
			break;
		end
	end
end
function sh()
	local v189 = 0;
	local v190;
	local v191;
	while true do
		if ((1511 - (353 + 1157)) == v189) then
			while true do
				if (v190 == ((1114 - (53 + 1061)) - (1635 - (1568 + 67)))) then
					v191 = _G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\34\167\241\20\52\22\169\235\23\58\17", "\91\117\194\159\120"), "1");
					if (v191 == ((235 + 278) - (29 + 174 + (784 - 474)))) then
						_G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\45\24\48\20\58\242\47\14\18\63\28", "\68\122\125\94\120\85\145"), "2");
					end
					break;
				end
			end
			break;
		end
		if (v189 == (0 - 0)) then
			v190 = 0 - 0;
			v191 = nil;
			v189 = 1 + 0;
		end
	end
end
function noti(v192, v193)
	v19({[DitMeSaoDecodeLauThe("\51\25\220\93\218\208\170\3\21\192\80", "\218\119\124\175\62\168\185")]=v192,[DitMeSaoDecodeLauThe("\145\249\92\200\160", "\164\197\144\40")]="Lùa Hub • Notifications",[DitMeSaoDecodeLauThe("\167\229\184\138\201\191\140\254", "\214\227\144\202\235\189")]=(v193 or (1217 - (615 + 597)))});
end
function getMeleeMastery()
	local v194 = 0 + 0;
	local v195;
	local v196;
	while true do
		if (v194 == 0) then
			v195 = 0 - 0;
			v196 = nil;
			v194 = 1;
		end
		if (v194 == 1) then
			while true do
				if (((1639 + 354) - (1238 + 15 + 740)) == v195) then
					v196 = _G['NameMelee'](true);
					if v196 then
						if (v196:FindFirstChild(DitMeSaoDecodeLauThe("\193\160\145\126\28", "\92\141\197\231\27\112\211\51")) and _G['meleetable3'][v196['Name']]) then
							_G['pcall'](function()
								vclui[v196['Name']] = DitMeSaoDecodeLauThe("\221\180\183\227\139\166", "\177\134\159\234\195") .. v196['Name'];
							end);
							cabd[v196['Name']] = v196['Level']['Value'];
						end
					end
					break;
				end
			end
			break;
		end
	end
end
function getFruitTier(v197)
	spawn(function()
		print(DitMeSaoDecodeLauThe("\231\171", "\169\221\139\95\192") .. v197 .. DitMeSaoDecodeLauThe("\158\159\118\58\48\124\158", "\70\190\235\31\95\66") .. _G['tostring'](_G['fruittier'][v197] or _G['fruittier'][_G['fruitMap'][v197]] or (0 + 0)));
	end);
	return _G['fruittier'][v197] or _G['fruittier'][_G['fruitMap'][v197]];
end
function buyMelee(v198)
	if _G['table'].find(_G['meleetable'], v198) then
		_G['pcall'](function()
			local v453 = 1899 - (1056 + 843);
			while true do
				if ((0 - 0) == v453) then
					_G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\152\238\27\229\238\184\231\27\244\225\136\231\13\231\247\190", "\133\218\130\122\134"), v198, "2");
					_G['game']:GetService(DitMeSaoDecodeLauThe("\14\250\243\200\213\160\57\40\250\231\247\200\172\42\61\248\230", "\88\92\159\131\164\188\195"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\162\59\166", "\189\224\78\223\43\183\139") .. v198);
					break;
				end
			end
		end);
	end
end
function getMobLoadPos(v199)
	local v200 = 0 - 0;
	while true do
		if (v200 == (2 - 1)) then
			for v515, v516 in pairs(_G['game']['Workspace']['Enemies']:GetChildren()) do
				if (skidmaruhubnekkkanhambanana(v516) and v516['Name'] and _G['string'].find(v516.Name, v199)) then
					return v516['HumanoidRootPart']['CFrame'];
				end
			end
			for v517, v518 in pairs(_G['game']['ReplicatedStorage']:GetChildren()) do
				if (skidmaruhubnekkkanhambanana(v518) and v518['Name'] and _G['string'].find(v518.Name, v199)) then
					return v518['HumanoidRootPart']['CFrame'] or v518['CFrame'];
				end
			end
			break;
		end
		if (v200 == (0 + 0)) then
			for v519, v520 in pairs(_G['game']:GetService(DitMeSaoDecodeLauThe("\25\243\152\29\210\62\253\137\19", "\161\78\156\234\118"))[DitMeSaoDecodeLauThe("\152\128\198\206\171\179\230\206\174\176\192\210", "\188\199\215\169")]['EnemySpawns']:GetChildren()) do
				if (v520['Name'] == v199) then
					return v520['CFrame'];
				end
			end
			for v521, v522 in pairs(getnilinstances()) do
				if (v522['Name'] and _G['string'].find(v522.Name, v199)) then
					return v522['CFrame'] or v522['HumanoidRootPart']['CFrame'];
				end
			end
			v200 = 1;
		end
	end
end
function checkq()
	local v201 = 1976 - (286 + 1690);
	local v202;
	local v203;
	while true do
		if (v201 == (912 - (98 + 813))) then
			if ((v202 >= 1450) and (_G['game']['PlaceId'] == ((4442273717 - 0) - (709 + 825)))) then
				local v595 = 0 - 0;
				local v596;
				while true do
					if (v595 == (1037 - (687 + 350))) then
						v596 = (520 - (438 + 82)) - (0 - 0);
						while true do
							if (v596 == ((0 - 0) - 0)) then
								local v857 = 0;
								while true do
									if (v857 == 1) then
										v596 = (589 + 276) - (183 + 13 + (1280 - 612));
										break;
									end
									if (v857 == 0) then
										_G['Mob1'] = DitMeSaoDecodeLauThe("\203\8\75\126\250\188\47\86\124\224\232\12\77", "\136\156\105\63\27");
										_G['Mob2'] = DitMeSaoDecodeLauThe("\61\131\107\51\20\152\109\49\21\189\108\49\8\152", "\84\123\236\25");
										v857 = 1695 - (1432 + 262);
									end
								end
							end
							if (v596 == ((256 - (193 + 60)) - (367 - (12 + 353)))) then
								_G['Mob3'] = (1914 - (1680 + 231)) - (1 + 0);
								break;
							end
						end
						break;
					end
				end
			elseif ((v202 >= ((939 + 594) - (171 + (1811 - (212 + 937))))) and (_G['game']['PlaceId'] == ((2753916704 - (111 + 951)) - (1 + 3 + (116 - (18 + 9)))))) then
				local v678 = 0 + 0;
				local v679;
				while true do
					if ((534 - (31 + 503)) == v678) then
						v679 = (1632 - (595 + 1037)) - (1444 - (189 + 1255));
						while true do
							if (v679 == (1 + 0 + (0 - 0))) then
								_G['Mob3'] = 8 - 6;
								break;
							end
							if (((1279 - (1170 + 109)) + (1817 - (348 + 1469))) == v679) then
								local v939 = 1289 - (1115 + 174);
								while true do
									if (v939 == 1) then
										v679 = 1487 - ((85 - 50) + (2465 - (85 + 929)));
										break;
									end
									if (v939 == 0) then
										_G['Mob1'] = DitMeSaoDecodeLauThe("\215\138\166\27\169\172\176\168\171\7\184\180\249\133", "\213\144\235\202\119\204");
										_G['Mob2'] = DitMeSaoDecodeLauThe("\5\23\203\36\60\34\68\45\41\203\47\59\55", "\45\67\120\190\74\72\67");
										v939 = 1;
									end
								end
							end
						end
						break;
					end
				end
			elseif ((v202 >= ((1645 + 1158) - ((1895 - (1151 + 716)) + 489 + 936))) and not _G['checkitem'](DitMeSaoDecodeLauThe("\18\39\227\162\246\131\251", "\137\64\66\141\197\153\232\142")) and _G['c']()['Main'][DitMeSaoDecodeLauThe("\50\197\39\181\156\67\204\98\148\141\13\215\45\173\157", "\232\99\176\66\198")]) then
				local v782 = 0;
				local v783;
				while true do
					if (v782 == (0 + 0)) then
						set1(DitMeSaoDecodeLauThe("\202\46\58\5\114\131\254\108\193\46\38\21\111\136\235\108\195\47\104\47\120\136\185\15\237\50\60\10\126\205\223\35\254\97\26\3\117\138\246\39\249", "\76\140\65\72\102\27\237\153"));
						v783 = math.random((3698 - (95 + 1609)) - ((3396 - 2455) + (1810 - (364 + 394))), 2 + 0);
						v782 = 1;
					end
					if (v782 == (1 + 0)) then
						_G['Mob2'] = DitMeSaoDecodeLauThe("\108\200\25\193\195\48\171\79\201\2", "\222\42\186\118\178\183\97");
						if (v783 == ((453 + 1062) - (822 + 143 + 549))) then
							local v984 = 0 + 0;
							while true do
								if (v984 == 0) then
									_G['Mob1'] = DitMeSaoDecodeLauThe("\110\226\75\157\29\192\81\152\86\233\86", "\234\61\140\36");
									_G['Mob3'] = 2 - (0 + 0);
									break;
								end
							end
						else
							local v985 = 0 + 0;
							local v986;
							while true do
								if (v985 == (0 + 0)) then
									v986 = 0 + 0 + 0 + 0;
									while true do
										if (v986 == ((1253 - (719 + 237)) - ((125 - 80) + 209 + 43))) then
											_G['Mob1'] = DitMeSaoDecodeLauThe("\0\207\185\102\6\34\157\141\115\29\51\212\181\96", "\111\65\189\218\18");
											_G['Mob3'] = (2 - 1) + (0 - 0);
											break;
										end
									end
									break;
								end
							end
						end
						break;
					end
				end
			elseif ((v202 >= (4871 - 2821)) and (_G['checkm2'](DitMeSaoDecodeLauThe("\103\89\26\50\4\82\155\66\71\20\59", "\207\35\43\123\85\107\60")) ~= ((1992 - (761 + 1230)) + (193 - (80 + 113)))) and not _G['checkMelee'](DitMeSaoDecodeLauThe("\84\184\161\237\118\126\158\161\230\118\126", "\25\16\202\192\138")) and (cabd[DitMeSaoDecodeLauThe("\216\199\168\225\189\230\244\200\237\193\165\245\234", "\148\157\171\205\130\201")] > ((528 + 442) - 571))) then
				local v858 = 0 + 0;
				while true do
					if (v858 == (0 + 0)) then
						_G['Mob1'] = DitMeSaoDecodeLauThe("\19\219\103\44\194\229\38\208\52\4\196\251\46\205", "\150\67\180\20\73\177");
						_G['Mob2'] = DitMeSaoDecodeLauThe("\165\25\15\67\153\29\30\124\152\29\9\89\223", "\45\237\120\122");
						v858 = 1;
					end
					if (v858 == 1) then
						_G['Mob3'] = 435 - ((457 - 343) + 74 + 245);
						break;
					end
				end
			else
				for v904, v905 in pairs(v16) do
					for v940, v941 in pairs(v905) do
						local v942 = 0;
						local v943;
						local v944;
						while true do
							if (v942 == 1) then
								while true do
									if (v943 == ((0 + 0) - (1243 - (965 + 278)))) then
										v944 = v941['LevelReq'];
										for v1077, v1078 in pairs(v941.Task) do
											if ((v202 >= v944) and (v944 >= v203) and (v941['Task'][v1077] > ((1730 - (1391 + 338)) + (0 - 0))) and not _G['table'].find(v17, _G['tostring'](v904))) then
												local v1100 = (0 + 0) - (0 - 0);
												while true do
													if (v1100 == ((1 + 0) - (1408 - (496 + 912)))) then
														_G['Mob2'] = v904;
														_G['Mob3'] = v940;
														break;
													end
													if ((0 - 0) == v1100) then
														v203 = v944;
														_G['Mob1'] = _G['tostring'](v1077);
														v1100 = 1 + 0;
													end
												end
											end
										end
										break;
									end
								end
								break;
							end
							if (v942 == (0 - 0)) then
								v943 = (1330 - (1190 + 140)) - (0 + 0);
								v944 = nil;
								v942 = 719 - (317 + 401);
							end
						end
					end
				end
			end
			break;
		end
		if (v201 == 0) then
			v202 = _G['game']['Players']['LocalPlayer']['Data']['Level']['Value'];
			v203 = 0 + 0;
			v201 = 950 - (303 + 646);
		end
	end
end
function spamandwait(v204)
	local v205 = 0 - 0;
	while true do
		if (v205 == (1733 - (1675 + 57))) then
			_G['taocanpasue'] = false;
			break;
		end
		if (v205 == (0 + 0)) then
			_G['taocanpasue'] = true;
			for v523, v524 in pairs(v204) do
				local v525 = 0;
				local v526;
				while true do
					if ((0 - 0) == v525) then
						v526 = 0;
						while true do
							if (v526 == ((245 + 1718) - ((1533 - (338 + 639)) + (1786 - (320 + 59))))) then
								down(v524);
								repeat
									wait(0.1);
								until not _G['game']['Players']['LocalPlayer']['Character']['Busy']['Value'] 
								break;
							end
						end
						break;
					end
				end
			end
			v205 = 1 + 0;
		end
	end
end
function stuff(v206)
	local v207 = 732 - (628 + 104);
	local v208;
	while true do
		if ((0 - 0) == v207) then
			v208 = 1206 - ((2632 - (439 + 1452)) + (2412 - (105 + 1842)));
			while true do
				if (v208 == ((2131 - 1665) - (170 + (719 - 424)))) then
					_G['dmlockskill'] = false;
					equip(forcewp or DitMeSaoDecodeLauThe("\250\237\174\41\210", "\76\183\136\194"));
					break;
				end
				if (v208 == ((0 - 0) + 0)) then
					local v637 = 0 + 0;
					while true do
						if ((0 - 0) == v637) then
							Buso();
							if (v206 and (_G['getPlayerLevel']() > (1189 + 1107 + 203)) and _G['c']()['Main'][DitMeSaoDecodeLauThe("\92\231\247\53\16\105\6\111\239\241\120\125\78\7\110\227\247\33\16\110\18\110\227\247\120\116\64\26\127\166\198\60\91\15\37\111\227\246\44", "\116\26\134\133\88\48\47")] and _G['checkitem'](DitMeSaoDecodeLauThe("\61\212\178\247\184\118\94\229\181\229\177\50\53\192\180\229\179\115", "\18\126\161\192\132\221")) and skidmaruhubnekkkanhambanana(v206) and (((v206['Humanoid']['Health'] / v206['Humanoid']['MaxHealth']) * ((1410 - (274 + 890)) - (127 + 19))) < (55 + 10)) and not _G['checkIsHaveAllSkillsFruit']()) then
								local v859 = 0;
								while true do
									if (v859 == (0 + 0)) then
										_G['dmlockskill'] = monmon['HumanoidRootPart']['Position'];
										equip(DitMeSaoDecodeLauThe("\125\36\161\28\22\121\58\187\13\66", "\54\63\72\206\100"));
										v859 = 1 + 0;
									end
									if (v859 == (1 + 0)) then
										_G['spamandwait']({"Z","X","C","V","F"});
										break;
									end
								end
							end
							v637 = 1;
						end
						if (v637 == 1) then
							v208 = 1;
							break;
						end
					end
				end
			end
			break;
		end
	end
end
function Buso()
	if not _G['game']['Players']['LocalPlayer']['Character']:FindFirstChild(DitMeSaoDecodeLauThe("\224\88\86\88\240\104\199", "\27\168\57\37\26\133")) then
		local v427 = 0 - 0;
		local v428;
		while true do
			if (v427 == 0) then
				v428 = _G['game']['ReplicatedStorage'];
				v428['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\15\191\111\167", "\183\77\202\28\200"));
				break;
			end
		end
	end
end
function getmon(v209)
	return _G['game']['Workspace'].Enemies(v209);
end
function throughcheck(v210, v211, v212)
	local v213 = 0 - 0;
	while true do
		if (v213 == 0) then
			for v527, v528 in pairs(v210) do
				local v529 = 0;
				local v530;
				while true do
					if ((0 - 0) == v529) then
						v530 = 1230 - (957 + 273);
						while true do
							if (v530 == ((1 - 0) + 1 + 0)) then
								if v212(lmao) then
									return v212(lmao);
								end
								break;
							end
							if ((1 + 0 + 0 + 0) == v530) then
								local v830 = 0;
								while true do
									if (v830 == 1) then
										v530 = 2;
										break;
									end
									if (v830 == (0 + 0)) then
										if (v211 == (3 - (160 - (139 + 19)))) then
											_G['lmao'] = _G['V'];
										end
										print(_G['lmao']);
										v830 = 1 + 0;
									end
								end
							end
							if ((1993 - (1687 + 306)) == v530) then
								local v831 = 0 - 0;
								while true do
									if (v831 == (1155 - (1018 + 136))) then
										v530 = (1 + 1) - 1;
										break;
									end
									if (v831 == (0 - 0)) then
										print(v527, v528);
										_G['lmao'] = v527;
										v831 = 1;
									end
								end
							end
						end
						break;
					end
				end
			end
			return false;
		end
	end
end
function RedeemAllCodesX2()
	local v214 = 815 - (117 + 698);
	local v215;
	while true do
		if (v214 == (481 - (305 + 176))) then
			v215 = 0;
			while true do
				if (v215 == (0 - (0 + 0))) then
					_G['CodesX2'] = {DitMeSaoDecodeLauThe("\36\38\139\90\52\50\153\28\22\58\135\37\22\38\128", "\104\119\83\233"),DitMeSaoDecodeLauThe("\214\215\3\7\124\198\221\21\20\106\214\209\8", "\35\149\152\71\66"),DitMeSaoDecodeLauThe("\58\193\108\147\21\61\205\111\145\3\54\215\96\159\21\42\220", "\90\121\136\34\208"),DitMeSaoDecodeLauThe("\150\91\119\33\229\43\102\42\229\60\122\42\239\43\103\45", "\126\167\110\53"),DitMeSaoDecodeLauThe("\25\53\24\203\255\16\18\59\7\214\251", "\95\93\112\78\152\188"),DitMeSaoDecodeLauThe("\230\212\168\48\214\140\253\227\218\177\42\221\138", "\178\161\149\229\117\132\222"),DitMeSaoDecodeLauThe("\169\255\240\133\143\49\143\21\173\250\234\141\152", "\67\232\187\189\204\193\118\198"),DitMeSaoDecodeLauThe("\172\15\152\5\9\61\221\164\12\154\20\4\83\194", "\143\235\78\213\64\91\98"),DitMeSaoDecodeLauThe("\185\113\187\207\95\132\178\127\165\221\83\158\164\102\163", "\214\237\40\228\137\16"),DitMeSaoDecodeLauThe("\142\234\251\205\4\167\136\234\225\222", "\198\229\131\143\185\99"),DitMeSaoDecodeLauThe("\98\153\170\33\119\137\186\42\8\213", "\19\49\236\200"),DitMeSaoDecodeLauThe("\219\57\239\162\219\179\237\8\198\165\235", "\218\158\87\150\215\132"),DitMeSaoDecodeLauThe("\214\31\222\235\53\32\216\232", "\173\155\126\185\130\86\66"),DitMeSaoDecodeLauThe("\207\133\141\236", "\140\133\198\218\167\232"),DitMeSaoDecodeLauThe("\134\58\181\111\135\186\42\177\117\129\186", "\228\213\78\212\29"),DitMeSaoDecodeLauThe("\165\64\163\29\243\158", "\139\231\44\214\101"),DitMeSaoDecodeLauThe("\223\250\2\90\65\225\14\0\139", "\118\185\143\102\62\112\209\81"),DitMeSaoDecodeLauThe("\122\69\13\194\244\69", "\88\60\16\73\134\197\117\124"),DitMeSaoDecodeLauThe("\114\195\223\230\100\103\217", "\33\48\138\152\168"),DitMeSaoDecodeLauThe("\70\62\21\118\243\18\83\34\17\114\228", "\87\18\118\80\49\161"),DitMeSaoDecodeLauThe("\127\43\248\242\151\109\51\255\146\130\99\60\245\148\143\105\38\234\241", "\208\44\126\186\192"),DitMeSaoDecodeLauThe("\196\15\166\148\59\250\207\71\244\19\165\202\58\243\198\76\254\31", "\46\151\122\196\166\116\156\169"),DitMeSaoDecodeLauThe("\214\249\84\27\236\205\236\82\55\250\236\227\67", "\155\133\141\38\122"),DitMeSaoDecodeLauThe("\22\31\142\19\97\80\138\7\7\141\114\123\90\151\116\120\255", "\197\69\74\204\33\47\31"),DitMeSaoDecodeLauThe("\195\90\88\213\212\78\83\128\226\64\89\140", "\231\144\47\58"),DitMeSaoDecodeLauThe("\147\192\211\122\10\56", "\89\210\184\186\21\120\93\175"),DitMeSaoDecodeLauThe("\133\82\114\193\120\51\150\82\113\220\119\61", "\90\209\51\28\181\25")};
					for v680, v681 in pairs(_G['CodesX2']) do
						_G['game']:GetService(DitMeSaoDecodeLauThe("\226\126\71\226\182\211\122\67\235\187\227\111\88\252\190\215\126", "\223\176\27\55\142"))['Remotes']['Redeem']:InvokeServer(v681);
					end
					break;
				end
			end
			break;
		end
	end
end
function CheckQuestBoss(v216)
	local v217 = 0 + 0;
	local v218;
	local v219;
	local v220;
	local v221;
	while true do
		if (v217 == 1) then
			v220 = nil;
			v221 = nil;
			v217 = 665 - (96 + 567);
		end
		if (v217 == (2 - 0)) then
			while true do
				if (v218 == (1 + 0 + (0 - 0))) then
					local v638 = 1695 - (867 + 828);
					while true do
						if (v638 == (2 - 1)) then
							v218 = 2;
							break;
						end
						if (v638 == (0 - 0)) then
							v221 = nil;
							if _G['string'].find(v219, DitMeSaoDecodeLauThe("\100\254\222\135\37\178\202\245\6\180\221\166\97\171", "\213\68\219\174")) then
								local v860 = 0 - 0;
								while true do
									if (v860 == (0 - 0)) then
										v220 = _G['string'].gsub(v219, DitMeSaoDecodeLauThe("\78\240\15\241\100\133\122\123\64\165\51", "\31\107\128\67\135\74\165\95"), "");
										v221 = _G['string'].gsub(v220, DitMeSaoDecodeLauThe("\152\168\185\93\115\176\209\236\188\111\78\162\203\173\236", "\209\184\136\156\45\33"), "");
										break;
									end
								end
							else
								local v861 = 0;
								while true do
									if (v861 == (0 + 0)) then
										v220 = _G['string'].gsub(v219, DitMeSaoDecodeLauThe("\66\216\89\30\246\71\141\113\67\253\23", "\216\103\168\21\104"), "");
										v221 = _G['string'].gsub(v220, DitMeSaoDecodeLauThe("\56\237\6\180\90\162\80\183\61\189", "\196\24\205\35"), "");
										break;
									end
								end
							end
							v638 = 1 - 0;
						end
					end
				end
				if (v218 == ((772 - (134 + 637)) + 1)) then
					for v682, v683 in next, _G['require'](_G['game']:GetService(DitMeSaoDecodeLauThe("\28\142\243\10\39\136\226\18\43\143\208\18\33\153\226\1\43", "\102\78\235\131")).Quests) do
						for v743, v744 in next, v683 do
							for v784, v785 in next, v744['Task'] do
								if (v784 == v221) then
									return v221;
								end
							end
						end
					end
					break;
				end
				if (v218 == 0) then
					local v639 = 0;
					while true do
						if (v639 == (1 + 0)) then
							v218 = (2853 - (775 + 382)) - ((795 - 239) + (1746 - (45 + 562)));
							break;
						end
						if (v639 == (862 - (545 + 317))) then
							v219 = v216;
							v220 = nil;
							v639 = 1 - 0;
						end
					end
				end
			end
			break;
		end
		if (v217 == (1026 - (763 + 263))) then
			v218 = 0;
			v219 = nil;
			v217 = 1 + 0;
		end
	end
end
function GetInfoBossQuest(v222)
	local v223 = 0;
	while true do
		if (v223 == (1750 - (512 + 1238))) then
			_G['returnrnrnr'] = {};
			for v531, v532 in next, _G['require'](_G['game']:GetService(DitMeSaoDecodeLauThe("\200\43\36\72\78\58\182\32\255\42\7\80\72\43\182\51\255", "\84\154\78\84\36\39\89\215")).Quests) do
				for v597, v598 in next, v532 do
					if ((v598['LevelReq'] <= _G['getPlayerLevel']()) and (v598['Name'] == v222)) then
						local v684 = 1594 - (272 + 1322);
						local v685;
						while true do
							if (0 == v684) then
								v685 = 15 - (6 + 9);
								while true do
									if (v685 == 0) then
										local v945 = 0 - 0;
										while true do
											if (v945 == (1246 - (533 + 713))) then
												_G['returnrnrnr'][DitMeSaoDecodeLauThe("\204\244\83\75\17\211\224\91\93", "\101\157\129\54\56")] = v531;
												_G['returnrnrnr'][DitMeSaoDecodeLauThe("\44\188\143\184\55\80\25", "\25\125\201\234\203\67")] = v597;
												v945 = 29 - (14 + 14);
											end
											if ((826 - (499 + 326)) == v945) then
												v685 = (1 - 0) + (424 - (104 + 320));
												break;
											end
										end
									end
									if (v685 == (1 + 0)) then
										return _G['returnrnrnr'];
									end
								end
								break;
							end
						end
					end
				end
			end
			break;
		end
	end
end
function CheckWaterKey()
	local v224 = 0;
	local v225;
	while true do
		if (v224 == (1998 - (1929 + 68))) then
			return false;
		end
		if (v224 == (1323 - (1206 + 117))) then
			v225 = _G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\91\225\1\48\28\38\1\114\249\25\13\63\38\1\120\224\29", "\115\25\148\120\99\116\71"), true);
			if ((v225 == (172 - (19 + 9 + 141))) or (v225 == (1593 - (683 + 909)))) then
				local v599 = 0;
				local v600;
				while true do
					if (v599 == 0) then
						v600 = 0 + (0 - 0);
						while true do
							local v786 = 0 - 0;
							while true do
								if (v786 == 0) then
									if (v600 == (1 - (777 - (772 + 5)))) then
										return true;
									end
									if ((1427 - (19 + 1408)) == v600) then
										_G['WaterKey'] = true;
										_G['WaterKey'] = true;
										v600 = (289 - (134 + 154)) + (0 - 0);
									end
									break;
								end
							end
						end
						break;
					end
				end
			end
			v224 = 3 - 2;
		end
	end
end
function getSpeficalBoss()
	return CheckBoss(DitMeSaoDecodeLauThe("\40\60\171\47\67\9\60\171\32", "\33\108\93\217\68")) or CheckBoss(DitMeSaoDecodeLauThe("\201\66\177\146\210\69\165\191\218\11\149\191\206\78\225\139\212\89\172", "\205\187\43\193"));
end
v14 = _G['game']['Players']['LocalPlayer'];
local v32 = {DitMeSaoDecodeLauThe("\205\98\0\220\247\115\9\159\211\123\6\205\241\113\13\214\238", "\191\158\18\101"),"God's Chalice",DitMeSaoDecodeLauThe("\246\212\130\178\187\133\224\143\182\163\204\192\130", "\207\165\163\231\215"),DitMeSaoDecodeLauThe("\244\252\245\95\39", "\16\166\153\153\54\68"),DitMeSaoDecodeLauThe("\249\182\217", "\153\178\211\160\38\84\65"),DitMeSaoDecodeLauThe("\182\4\72\40\138", "\75\226\107\58"),DitMeSaoDecodeLauThe("\126\210\30\109\20\208\141\9", "\173\56\190\113\26\113\162"),DitMeSaoDecodeLauThe("\237\210\34\18\242\217\158\127", "\151\171\190\77\101"),DitMeSaoDecodeLauThe("\227\35\247\190\253\111\75\150", "\107\165\79\152\201\152\29"),DitMeSaoDecodeLauThe("\127\79\228\199\91\104\23\107\251\216\81\113\84\75", "\31\55\46\136\171\52"),DitMeSaoDecodeLauThe("\247\33\206\241\145\13\207\231\212\38\223\241", "\148\177\72\188"),DitMeSaoDecodeLauThe("\142\185\91\202\230\130\88\193\165\190", "\179\198\214\55"),DitMeSaoDecodeLauThe("\220\5\112\100\68\193\233\76\89\115\92", "\179\144\108\18\22\37"),DitMeSaoDecodeLauThe("\238\170\31\141\202\200\227\48\140\214", "\175\166\195\123\233"),DitMeSaoDecodeLauThe("\216\195\73\76\226\175\233\88\80", "\144\143\162\61\41")};
_G['rarity'] = {[(5510 - 3566) - (467 + 662 + (2518 - (494 + 1209)))]="🟤",[(1037 - 649) - ((1369 - (197 + 801)) + 16)]="🔵",[2]="🟢",[(3534 - 1781) - ((6411 - 5085) + 424)]="🟡",[7 - (957 - (919 + 35))]="🔴",[(16 + 2) - (52 - 39)]=DitMeSaoDecodeLauThe("\247\199\27", "\83\128\179\125\48\18\231")};
function safe_cp(v226)
	return v226['Character']:WaitForChild(DitMeSaoDecodeLauThe("\117\162\254\220\73\17\84\179\193\210\72\10\109\182\225\201", "\126\61\215\147\189\39"), (594 - (369 + 98)) - ((1203 - (400 + 715)) + 30));
end
function bypassreq()
	local v227 = 0;
	local v228;
	while true do
		if (v227 == (0 + 0)) then
			v228 = (336 + 435) - (720 + (1376 - (744 + 581)));
			while true do
				local v533 = 0 + 0;
				while true do
					if (v533 == (1622 - (653 + 969))) then
						if (v228 == ((0 - 0) - (1631 - (12 + 1619)))) then
							local v787 = 163 - (103 + 60);
							while true do
								if (v787 == (0 - 0)) then
									for v946, v947 in pairs(v32) do
										local v948 = 0 - 0;
										local v949;
										local v950;
										local v951;
										while true do
											if ((0 - 0) == v948) then
												v949 = (3438 - (710 + 952)) - ((2289 - (555 + 1313)) + 1355);
												v950 = nil;
												v948 = 1 + 0;
											end
											if (v948 == (1 + 0)) then
												v951 = nil;
												while true do
													if (((0 + 0) - (1468 - (1261 + 207))) == v949) then
														v950, v951 = _G['game']:GetService(DitMeSaoDecodeLauThe("\72\243\28\92\125\237\14", "\37\24\159\125"))['LocalPlayer'].Backpack(v947), _G['game']:GetService(DitMeSaoDecodeLauThe("\234\170\116\91\223\180\102", "\34\186\198\21"))['LocalPlayer'].Character(v947);
														if (v950 or v951) then
															return false;
														end
														break;
													end
												end
												break;
											end
										end
									end
									for v952, v953 in pairs(_G['game']['Players']['LocalPlayer']['Backpack']:GetChildren()) do
										if v953:FindFirstChild(DitMeSaoDecodeLauThe("\221\9\209\111\199\245\7\209\88", "\162\152\104\165\61")) then
											return false;
										end
									end
									v787 = 1;
								end
								if (1 == v787) then
									v228 = 253 - (245 + 7);
									break;
								end
							end
						end
						if (((748 - (212 + 535)) + (0 - 0)) == v228) then
							local v788 = 1476 - (905 + 571);
							while true do
								if (v788 == (0 - 0)) then
									for v954, v955 in pairs(_G['game']['Players']['LocalPlayer']['Character']:GetChildren()) do
										if v955:FindFirstChild(DitMeSaoDecodeLauThe("\232\46\166\79\117\232\194\59\183", "\133\173\79\210\29\16")) then
											return false;
										end
									end
									return true;
								end
							end
						end
						break;
					end
				end
			end
			break;
		end
	end
end
function m0()
	return v14['PlayerGui']['Main']['InCombat']['Visible'] and v14['PlayerGui']['Main']['InCombat']['Text'] and _G['string'].find(_G['string'].lower(v14['PlayerGui']['Main']['InCombat'].Text), DitMeSaoDecodeLauThe("\159\117\254\32", "\75\237\28\141"));
end
function aw1()
	local v229 = 0 - 0;
	while true do
		if (v229 == 1) then
			if not _G['game']:GetService(DitMeSaoDecodeLauThe("\236\83\205\168\42\9\244", "\129\188\63\172\209\79\123\135"))['LocalPlayer']['Character']:FindFirstChild(DitMeSaoDecodeLauThe("\104\237\225\197\76\237\225\197\84", "\173\32\132\134")) then
				local v601 = 0;
				local v602;
				while true do
					if ((0 - 0) == v601) then
						v602 = Instance.new(DitMeSaoDecodeLauThe("\102\18\15\231\162\56\202\70\15", "\173\46\123\104\143\206\81"));
						v602['FillColor'] = Color3.new(1083 - (3 + 283 + (2260 - (522 + 941))), 1766 - (292 + 1219), (1112 - (787 + 325)) - (0 - 0));
						v601 = 1 + 0;
					end
					if (v601 == (2 - 1)) then
						v602['OutlineColor'] = Color3.new((534 - (424 + 110)) - 0, 255, 0 + 0);
						v602['Parent'] = _G['game']['Players']['LocalPlayer']['Character'];
						break;
					end
				end
			end
			break;
		end
		if (v229 == ((261 + 178) - (79 + 318 + (354 - (33 + 279))))) then
			local v454 = 0;
			while true do
				if (v454 == (1 + 0)) then
					v229 = 1354 - (1338 + 15);
					break;
				end
				if (v454 == (1423 - (528 + 895))) then
					for v686, v687 in pairs(v15:GetDescendants()) do
						if v687:IsA(DitMeSaoDecodeLauThe("\150\28\49\143\117\130\19\160", "\97\212\125\66\234\37\227")) then
							v687['CanCollide'] = false;
						end
					end
					if not v15:FindFirstChild("Lùa Hub / Body Velocity") then
						local v748 = 0 + 0;
						local v749;
						while true do
							if ((1924 - (1606 + 318)) == v748) then
								v749 = Instance.new(DitMeSaoDecodeLauThe("\168\236\178\44\40\143\239\185\54\23\158\250", "\126\234\131\214\85"), v15);
								v749['Name'] = "Lùa Hub / Body Velocity";
								v748 = 1820 - (298 + 1521);
							end
							if (v748 == 1) then
								v749['MaxForce'] = Vector3.new(0 + (0 - 0), math.huge, 310 - (154 + 156));
								v749['Velocity'] = Vector3.new(0, 0 - 0, 0);
								break;
							end
						end
					end
					v454 = 1 - 0;
				end
			end
		end
	end
end
function getPortal(v230)
	local v231 = 0;
	local v232;
	local v233;
	local v234;
	local v235;
	while true do
		if (v231 == (1116 - (712 + 403))) then
			if (v233 == ((2753916799 - (168 + 282)) - (24 + (1594 - 818)))) then
				_G['gQ'] = {Vector3.new(-7894.6201171875, (25.49169921875 + 6305) - (222 + (1588 - 1025)), -(837.246346191406 - (1908 - (1242 + 209)))),Vector3.new(-4607.82275390625, (692.5422973632812 + 370) - (16 + 7 + (242 - 75)), -(3465.556884765625 - (690 + (2272 - 1164)))),Vector3.new(137389.8515625 - 76226, 5.759522438049316 + 6, 1501.7841796875 + (2265 - (1427 + 520))),Vector3.new(14709.280517578125 - 10833, 6.10614013671875 + 0 + 29, -(3171.3201904296875 - (712 + 520)))};
			elseif (v233 == ((4297113824 - -145158359) - (1346 - (565 + 781)))) then
				_G['gQ'] = {Vector3.new(-(143.46246337890625 + 145), 162.130615234375 + (512 - 368), 597.9988403320312),Vector3.new(2284.912109375, 1393.1520462036133 - (1330 + 48), 636.48291015625 + 269),Vector3.new(105.21252441406 + 494 + 324, 219.97600555420001 - 93, 89802.83203125 - 56950),Vector3.new(-((10900.558105468801 - (854 + 315)) - (10322 - 7099)), 27.034996032715 + 62, -(300.83953857422 - (212 - (31 + 13))))};
			elseif (v233 == (7449423635 - 0)) then
				_G['gQ'] = {Vector3.new(-(3775.77490234375 + 1283), 2040.5155029296875 - ((1728 - (281 + 282)) + (1570 - 1009)), -(48.88330078125 + 46 + (4010 - (216 + 733)))),Vector3.new(7603.83740234375 - (137 + 1710), (647.4240112304688 - 414) + (915 - (100 + 438)), -(1618.9253692626953 - (205 + 1160))),Vector3.new(-(6347.8740234375 + 6116), (1406.9144592285156 - (535 + 770)) + 273, -(496.77392578125 + 7027)),Vector3.new((60360.5703125 - (211 + 1783)) - 30084, 14896.8505859375, 17.104270935058594 + 88),Vector3.new(-11993.580078125, 1763.7812805175781 - (1236 + 193), -(9754.1826171875 - (793 + 117))),Vector3.new(6174.58203125 - (747 + 113), 2001.4193878173828 - (80 + 1896), -((1269.9422760009766 - 1006) - (244 - 106)))};
			end
			v234, v235 = Vector3.new((825 + 56) - ((1368 - 787) + 300), 0 + 0, (3607 - 2387) - (500 + 355 + 112 + 253)), _G['math']['huge'];
			v231 = 4 - 2;
		end
		if (2 == v231) then
			for v534, v535 in pairs(_G['gQ']) do
				if (((v535 - v232)['Magnitude'] < v235) and (v234 ~= v535)) then
					v234, v235 = v535, (v535 - v232)['Magnitude'];
				end
			end
			return v234;
		end
		if (v231 == (454 - (246 + 208))) then
			v232 = v230['Position'];
			v233 = _G['game']['PlaceId'];
			v231 = 1893 - (614 + 1278);
		end
	end
end
function grgrgrgrg(v236)
	local v237 = 0;
	local v238;
	while true do
		if (v237 == (0 + 0)) then
			v238 = 0 - (314 - (249 + 65));
			while true do
				if (1 == v238) then
					local v641 = 0 - 0;
					while true do
						if (v641 == (1275 - (726 + 549))) then
							v14['Character']:SetPrimaryPartCFrame(v236);
							wait(0.1 + 0 + 0);
							v641 = 1425 - (916 + 508);
						end
						if (v641 == (3 - 2)) then
							v238 = (796 + 441) - (1030 + (528 - (140 + 183)));
							break;
						end
					end
				end
				if (v238 == (0 + 0)) then
					local v642 = 0;
					while true do
						if (v642 == (565 - (297 + 267))) then
							v238 = (1 + 0) - (342 - (37 + 305));
							break;
						end
						if (v642 == (1266 - (323 + 943))) then
							repeat
								local v832 = 0 + 0;
								local v833;
								while true do
									if (v832 == 0) then
										v833 = (0 - 0) + (1535 - (394 + 1141));
										while true do
											if (v833 == (0 + 0)) then
												task.wait();
												v14['Character']['HumanoidRootPart']['CFrame'] = v236;
												break;
											end
										end
										break;
									end
								end
							until v14['Character']['PrimaryPart']['CFrame'] == v236 
							_G['game']:GetService(DitMeSaoDecodeLauThe("\180\217\72\67\74\150\198", "\47\228\181\41\58"))['LocalPlayer']['Character']:WaitForChild(DitMeSaoDecodeLauThe("\142\233\212\58\13\63\22\162", "\127\198\156\185\91\99\80"), 295 - (98 + 58 + 37 + 93)):ChangeState((3 + 31) - (23 - 4));
							v642 = 1 - 0;
						end
					end
				end
				if (v238 == ((3 + 0) - (1 + 0))) then
					local v643 = 529 - (87 + 442);
					while true do
						if (v643 == (806 - (13 + 792))) then
							v238 = 1 + 2 + 0;
							break;
						end
						if (v643 == (0 + 0)) then
							v14['Character']:WaitForChild(DitMeSaoDecodeLauThe("\221\31\205\244", "\190\149\122\172\144\199\107\89")):Destroy();
							repeat
								task.wait();
							until v14['Character']:FindFirstChild(DitMeSaoDecodeLauThe("\26\16\252\255\240\61\12\245", "\158\82\101\145\158"))['Health'] <= 0 
							v643 = 1;
						end
					end
				end
				if (v238 == (2 + 0 + 1)) then
					repeat
						local v688 = 0;
						local v689;
						while true do
							if (v688 == 0) then
								v689 = (1934 - (1231 + 634)) - (10 + (1825 - (1362 + 404)));
								while true do
									if (v689 == 0) then
										task.wait();
										v14['Character']['PrimaryPart']['CFrame'] = v236;
										break;
									end
								end
								break;
							end
						end
					until v14['Character']:FindFirstChild(DitMeSaoDecodeLauThe("\88\251\3\18", "\36\16\158\98\118")) 
					break;
				end
			end
			break;
		end
	end
end
function getSpawn(v239)
	local v240 = 0 - 0;
	local v241;
	local v242;
	while true do
		if (v240 == (1 + 0)) then
			return v241;
		end
		if (0 == v240) then
			v241, v242 = nil, _G['math']['huge'];
			for v536, v537 in pairs(_G['game']['Workspace']['_WorldOrigin']['PlayerSpawns']:FindFirstChild(_G['tostring'](v14.Team)):GetChildren()) do
				if ((_G['tostring'](v537) ~= DitMeSaoDecodeLauThe("\236\19\213\242\89\252\47\228\206", "\133\160\118\163\155\56\136\71")) and ((v537:GetModelCFrame()['Position'] - v239['Position'])['Magnitude'] < v242)) then
					local v644 = 0 - 0;
					local v645;
					while true do
						if (v644 == 0) then
							v645 = 0 + 0;
							while true do
								if (v645 == (1016 - (660 + 356))) then
									v241 = v537:GetModelCFrame();
									v242 = (v537:GetModelCFrame()['Position'] - v239['Position'])['Magnitude'];
									break;
								end
							end
							break;
						end
					end
				end
			end
			v240 = 1 - 0;
		end
	end
end
function request(v243)
	_G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(unpack({DitMeSaoDecodeLauThe("\228\167\96\231\179\12\161\211\172\101\224\183\17\182\243", "\213\150\194\17\146\214\127"),v243}));
end
function q1(v244, v245)
	local v246 = 0;
	local v247;
	while true do
		if (v246 == (1950 - (1111 + 839))) then
			v247 = 0 + 0;
			while true do
				if (v247 == (951 - (496 + 455))) then
					local v646 = 698 - (66 + 632);
					while true do
						if ((0 - 0) == v646) then
							if not v245 then
								v245 = _G['game']['Players']['LocalPlayer']['Character']['PrimaryPart']['CFrame'];
							end
							return (Vector3.new(v244.X, 1215 - ((1505 - (441 + 695)) + (2235 - 1389)), v244.Z) - Vector3.new(v245.X, 0 + 0, v245.Z))['Magnitude'];
						end
					end
				end
			end
			break;
		end
	end
end
function check11()
	return _G['game']:GetService(DitMeSaoDecodeLauThe("\43\165\165\205\67\182\177", "\86\123\201\196\180\38\196\194"))['LocalPlayer']['PlayerGui']['Main']['InCombat']['Visible'] and _G['game']:GetService(DitMeSaoDecodeLauThe("\199\228\216\182\242\250\202", "\207\151\136\185"))['LocalPlayer']['PlayerGui']['Main']['InCombat']['Text'] and _G['string'].find(_G['string'].lower(_G['game']:GetService(DitMeSaoDecodeLauThe("\152\143\41\155\113\106\98", "\17\200\227\72\226\20\24"))['LocalPlayer']['PlayerGui']['Main']['InCombat'].Text), DitMeSaoDecodeLauThe("\162\72\8\220", "\159\208\33\123\183\169\145\143"));
end
function to(v248)
	local v249 = 0 - 0;
	while true do
		if (0 == v249) then
			if sexroblox then
				sexroblox:Cancel();
			end
			if (olfdvg and (_G['q1'](olfdvg, v248) > (4768 - 3768))) then
				return;
			end
			if not v248 then
				return;
			end
			_G['vg2'] = CFrame.new(v248.X, v248.Y, v248.Z);
			v249 = 1 + 0;
		end
		if (v249 == (1843 - (286 + 1552))) then
			_G['vg6'] = _G['vg7'] / ((2030 - (1016 + 261)) - ((1394 - (708 + 612)) + (1191 - 762)));
			_G['sexroblox'] = _G['game']:GetService(DitMeSaoDecodeLauThe("\112\224\231\203\12\222\65\229\244\199\1\232", "\141\36\151\130\174\98")):Create(_G['game']['Players']['LocalPlayer']['Character'].HumanoidRootPart, TweenInfo.new(_G['vg6'], Enum['EasingStyle'].Linear), {[DitMeSaoDecodeLauThe("\167\92\208\12\137\127", "\109\228\26\162")]=_G['vg2']});
			_G['sexroblox']:Play();
			break;
		end
		if (4 == v249) then
			if ((_G['vg7'] > _G['q1'](_G['vg3'], _G['vg2'])) and (_G['vg7'] > ((391 + 523) - 614))) then
				local v603 = 379 - (113 + 266);
				while true do
					if (v603 == (1171 - (979 + 191))) then
						return;
					end
					if ((0 - 0) == v603) then
						_G['request'](_G['vg3']);
						wait();
						v603 = 1736 - (339 + 1396);
					end
				end
			end
			if (_G['vg7'] < (2 + 3 + 4 + 1)) then
				local v604 = 0 - 0;
				local v605;
				while true do
					if (v604 == (0 + 0)) then
						v605 = (0 + 0) - 0;
						while true do
							if (v605 == ((347 - (187 + 160)) - (0 - 0))) then
								local v865 = 0 - 0;
								while true do
									if (v865 == (0 + 0)) then
										_G['vg5']['CFrame'] = _G['vg2'];
										return;
									end
								end
							end
						end
						break;
					end
				end
			end
			if (_G['q1'](_G['vg2']) > (2210 - (716 + (3742 - 2548)))) then
				_G['vg2'] = _G['vg2'] + Vector3.new(0 + 0, 38 + 312, 0 + 0);
			end
			_G['safe_cp'](v14)['CFrame'] = CFrame.new(_G['vg4'].X, _G['vg2'].Y, _G['vg4'].Z);
			v249 = 1 + 4;
		end
		if (v249 == 3) then
			_G['vg5'] = _G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart'];
			_G['vg4'] = _G['vg5']['CFrame'];
			_G['vg7'] = _G['q1'](_G['vg4'], _G['vg2']);
			if _G['vg9'] then
				local v606 = (0 - 0) + 0;
				while true do
					if (v606 == ((1741 - (56 + 272)) - (705 + 528 + 149 + 31))) then
						_G['vg10'] = _G['q1'](_G['vg9'], _G['vg2']);
						if (_G['bypassreq']() and not _G['check11']() and (_G['vg10'] < _G['vg7']) and (_G['vg7'] > ((10964 - 6395) - (341 + 181 + 447))) and (_G['q1'](_G['vg4'], _G['vg9']) > (1921 - ((747 - (455 + 185)) + (2102 - (757 + 31))))) and ((_G['q1'](_G['vg3'], _G['vg2']) + (2464 - (762 + 1237)) + (1107 - 572)) > _G['vg10'])) then
							return _G['grgrgrgrg'](_G['vg9']);
						end
						break;
					end
				end
			end
			v249 = 273 - (265 + 4);
		end
		if (v249 == (4 - 2)) then
			if not _G['game']:GetService(DitMeSaoDecodeLauThe("\17\237\165\41\79\51\242", "\42\65\129\196\80"))['LocalPlayer']['Character']:FindFirstChild(DitMeSaoDecodeLauThe("\42\67\90\210\27\14\5\230\22", "\142\98\42\61\186\119\103\98")) then
				local v607 = 0 + 0;
				local v608;
				while true do
					if (v607 == (0 - 0)) then
						v608 = Instance.new(DitMeSaoDecodeLauThe("\16\182\5\0\52\182\5\0\44", "\104\88\223\98"));
						v608['FillColor'] = Color3.new((0 - 0) + 0 + 0, (1193 - 763) - ((291 - 156) + (78 - 38)), (1734 - (1691 + 43)) - (0 + 0));
						v607 = 1;
					end
					if (v607 == 1) then
						v608['OutlineColor'] = Color3.new(0 + (0 - 0), (137 + 424) - 306, 0 - 0);
						v608['Parent'] = _G['game']['Players']['LocalPlayer']['Character'];
						break;
					end
				end
			end
			_G['vg3'] = _G['getPortal'](_G['vg2']);
			_G['vg9'] = _G['getSpawn'](_G['vg2']);
			for v538 = (176 - (127 + 49)) - 0, 179 - ((1730 - (281 + 1399)) + (1785 - (184 + 1475))), (2 - 0) - 1 do
				if (_G['getSpawn'](_G['vg2']) ~= _G['vg9']) then
					return;
				end
			end
			v249 = 6 - 3;
		end
		if ((2 - 1) == v249) then
			_G['game']['Players']['LocalPlayer']['Character']:WaitForChild(DitMeSaoDecodeLauThe("\218\79\53\55\252\85\49\50\192\85\55\34\194\91\42\34", "\86\146\58\88"), 5 + 3 + 1 + 0);
			_G['game']['Players']['LocalPlayer']['Character']:WaitForChild(DitMeSaoDecodeLauThe("\112\218\235\196", "\154\56\191\138\160\206\137\86"), 9);
			for v539, v540 in pairs(_G['game']['Players']['LocalPlayer']['Character']:GetDescendants()) do
				if v540:IsA(DitMeSaoDecodeLauThe("\164\88\230\130\76\59\147\216", "\172\230\57\149\231\28\90\225")) then
					v540['CanCollide'] = false;
				end
			end
			if not _G['game']['Players']['LocalPlayer']['Character']['Head']:FindFirstChild("Lùa Hub / Body Velocity") then
				local v609 = 1291 - (260 + 1031);
				local v610;
				while true do
					if (v609 == (1178 - (313 + 864))) then
						v610['MaxForce'] = Vector3.new(692 - (655 + 37), _G['math'].huge, (1655 + 290) - ((1750 - 714) + 909));
						v610['Velocity'] = Vector3.new((0 - 0) + 0 + 0, (0 + 0) - (0 - 0), 203 - (11 + 192));
						break;
					end
					if ((770 - (383 + 387)) == v609) then
						v610 = Instance.new(DitMeSaoDecodeLauThe("\32\165\130\203\30\222\14\165\133\219\60\194", "\187\98\202\230\178\72"), _G['game']['Players']['LocalPlayer']['Character'].Head);
						v610['Name'] = "Lùa Hub / Body Velocity";
						v609 = 1 + 0;
					end
				end
			end
			v249 = 1 + 1;
		end
	end
end
function q1(v250, v251)
	local v252 = (0 - 0) - (0 + 0);
	while true do
		if (v252 == (0 + 0 + 0)) then
			if not v251 then
				v251 = am2(v14)['CFrame'];
			end
			return (Vector3.new(v250.X, 510 - (304 + 206), v250.Z) - Vector3.new(v251.X, (225 - (182 + 43)) - 0, v251.Z))['Magnitude'];
		end
	end
end
function am2(v253)
	local v254 = (775 - (264 + 511)) + 0;
	while true do
		if (v254 == (0 + 0)) then
			local v456 = 0;
			while true do
				if (v456 == (0 - 0)) then
					if (not v253 or not v253['Character']) then
						return {};
					end
					return v253['Character']:WaitForChild(DitMeSaoDecodeLauThe("\118\240\240\121\238\233\87\225\207\119\239\242\110\228\239\108", "\134\62\133\157\24\128"), 990 - (128 + 853));
				end
			end
		end
	end
end
function getdelaytime(v255)
	local v256 = 1702 - (1635 + 67);
	local v257;
	while true do
		if (v256 == 0) then
			v257 = (0 + 0) - (0 + 0);
			while true do
				local v541 = 197 - (131 + 66);
				while true do
					if (v541 == (0 - 0)) then
						if (v257 == ((0 - 0) - (0 + 0))) then
							local v790 = 0;
							while true do
								if (v790 == (0 + 0)) then
									_G['oldtime'] = v255 or _G['tick']();
									_G['timerun'] = _G['timerun'] or (0 - 0);
									v790 = 1;
								end
								if (v790 == 1) then
									v257 = 434 - ((470 - 191) + 154);
									break;
								end
							end
						end
						if (v257 == (1606 - (306 + 1299))) then
							if ((_G['tick']() - _G['oldtime']) > ((262.1 + 516) - ((1169 - 715) + (1113 - (671 + 118))))) then
							end
							return true;
						end
						break;
					end
				end
			end
			break;
		end
	end
end
function checkdt(v258)
	return true;
end
function LogConCac()
	local v259 = 0 - 0;
	while true do
		if (v259 == (77 - (73 + 3))) then
			_G['k3'][DitMeSaoDecodeLauThe("\246\138\227\114\4\91", "\40\147\231\129\23\96")] = {{[DitMeSaoDecodeLauThe("\97\241\152\73\190", "\188\21\152\236\37\219\204")]="Lùa Hub | Webhook",[DitMeSaoDecodeLauThe("\85\251\59", "\108\32\137\87")]="https://thumbzilla.com/",[DitMeSaoDecodeLauThe("\174\237\19\165\61\240\91\77\163\231\14", "\57\202\136\96\198\79\153\43")]=_G['game']['Players']['LocalPlayer']['Name'],[DitMeSaoDecodeLauThe("\173\42\175\171\137\180", "\152\203\67\202\199\237\199")]={{[DitMeSaoDecodeLauThe("\244\66\173\10", "\134\154\35\192\111\127\21\25")]=DitMeSaoDecodeLauThe("\159\39\4\15", "\178\216\70\105\106\64"),[DitMeSaoDecodeLauThe("\41\42\118\227\204", "\224\95\75\26\150\169\181\180")]=(_G['tostring'](_G['game']:GetService(DitMeSaoDecodeLauThe("\38\219\202\35\65\184\102\7\219\219\45\119\169\100\29\211\219\45", "\22\107\186\184\72\36\204")):GetProductInfo(_G['game'].PlaceId).Name) or "Wtf Can't Fetch"),[DitMeSaoDecodeLauThe("\238\179\40\71\0\226", "\110\135\221\68\46")]=false},{[DitMeSaoDecodeLauThe("\237\55\1\238", "\91\131\86\108\139\174\211")]=DitMeSaoDecodeLauThe("\210\59\248\54\89\255\57\189\4\78", "\61\155\75\216\119"),[DitMeSaoDecodeLauThe("\18\170\190\41\93", "\189\100\203\210\92\56\105")]=(_G['k2'][DitMeSaoDecodeLauThe("\38\65", "\72\79\49\157")] or DitMeSaoDecodeLauThe("\171\177\63\168\200\156\62\187", "\220\232\208\81")),[DitMeSaoDecodeLauThe("\252\176\233\57\34\95", "\193\149\222\133\80\76\58")]=false},{[DitMeSaoDecodeLauThe("\200\92\66\215", "\178\166\61\47")]=DitMeSaoDecodeLauThe("\216\69\253\116\222\44\226", "\94\155\42\136\26\170"),[DitMeSaoDecodeLauThe("\146\62\42\160\129", "\213\228\95\70")]=(_G['k2'][DitMeSaoDecodeLauThe("\41\180\215\138\99\56\162", "\23\74\219\162\228")] or DitMeSaoDecodeLauThe("\58\231\72\187\123\53\233\65", "\91\89\134\38\207")),[DitMeSaoDecodeLauThe("\77\224\196\63\29\213", "\71\36\142\168\86\115\176")]=false},{[DitMeSaoDecodeLauThe("\209\160\127\186", "\41\191\193\18\223\99\222\54")]=DitMeSaoDecodeLauThe("\142\62\215\38\165\162\50", "\202\203\70\167\74"),[DitMeSaoDecodeLauThe("\58\0\208\38\116", "\17\76\97\188\83")]=(_G['tostring'](identifyexecutor()) or DitMeSaoDecodeLauThe("\166\50\202\35\63\142\11\134\157\55\213\56\57\151\20\252\218", "\195\229\71\185\87\80\227\43")),[DitMeSaoDecodeLauThe("\233\242\12\89\225\229", "\143\128\156\96\48")]=false}}}};
			return _G['k3'];
		end
		if (v259 == (0 - 0)) then
			_G['k2'] = _G['game']:GetService(DitMeSaoDecodeLauThe("\47\177\14\201\28\180\196\17\172\25\220", "\182\103\197\122\185\79\209")):JSONDecode(_G['game']:HttpGet("https://api.myip.com"));
			_G['k3'] = {};
			v259 = 1756 - (1668 + 87);
		end
	end
end
function buglog(v260)
	local v261 = 0;
	local v262;
	while true do
		if (v261 == (0 + 0)) then
			v262 = 0 + (1899 - (296 + 1603));
			while true do
				if (v262 == ((108 - (79 + 27)) - (1 + 0))) then
					return _G['k3'];
				end
				if (v262 == ((1007 - (700 + 307)) + 0 + 0)) then
					_G['k3'] = {};
					_G['k3'][DitMeSaoDecodeLauThe("\189\220\242\23\19\171", "\119\216\177\144\114")] = {{[DitMeSaoDecodeLauThe("\221\32\237\78\204", "\34\169\73\153")]="Lùa Hub | Webhook",[DitMeSaoDecodeLauThe("\191\254\7", "\235\202\140\107")]="https://thumbzilla.com/",[DitMeSaoDecodeLauThe("\8\113\39\171\251\46\231\209\5\123\58", "\165\108\20\84\200\137\71\151")]=_G['game']['Players']['LocalPlayer']['Name'],[DitMeSaoDecodeLauThe("\124\189\46\132\126\167", "\232\26\212\75")]={{[DitMeSaoDecodeLauThe("\57\72\127\237", "\151\87\41\18\136")]=DitMeSaoDecodeLauThe("\124\174\199\213", "\158\59\207\170\176"),[DitMeSaoDecodeLauThe("\89\95\63\92\137", "\236\47\62\83\41")]=(_G['tostring'](_G['game']:GetService(DitMeSaoDecodeLauThe("\215\168\50\48\175\150\234\165\33\56\175\177\255\187\54\50\169\135", "\226\154\201\64\91\202")):GetProductInfo(_G['game'].PlaceId).Name) or "Wtf Can't Fetch"),[DitMeSaoDecodeLauThe("\200\71\17\17\68\185", "\220\161\41\125\120\42")]=false},{[DitMeSaoDecodeLauThe("\178\112\173\11", "\110\220\17\192")]=DitMeSaoDecodeLauThe("\68\107\59\24\231\50\252\180", "\199\20\25\84\122\139\87\145"),[DitMeSaoDecodeLauThe("\81\8\209\187\30", "\138\39\105\189\206\123")]=(v260 or ""),[DitMeSaoDecodeLauThe("\22\9\133\36\253\252", "\159\127\103\233\77\147\153\175")]=false},{[DitMeSaoDecodeLauThe("\9\241\233\175", "\171\103\144\132\202\32")]=DitMeSaoDecodeLauThe("\61\46\224\2", "\108\112\79\137"),[DitMeSaoDecodeLauThe("\41\195\120\61\168", "\85\95\162\20\72\205\97\137")]=((m1 or DitMeSaoDecodeLauThe("\249\242\36\217", "\173\151\157\74\188\109\152")) .. DitMeSaoDecodeLauThe("\100\20\120", "\147\68\104\88\189\188\52\181") .. (m2 or DitMeSaoDecodeLauThe("\20\135\133\213", "\176\122\232\235"))),[DitMeSaoDecodeLauThe("\137\123\54\70\224\133", "\142\224\21\90\47")]=false}}}};
					v262 = 1;
				end
			end
			break;
		end
	end
end
function isMirageSpawn()
	return _G['game']:GetService(DitMeSaoDecodeLauThe("\67\219\53\93\183\155\132\119\209", "\229\20\180\71\54\196\235"))['Map']:FindFirstChild(DitMeSaoDecodeLauThe("\4\103\210\247\252\169\169\58\114\192\237\241", "\224\73\30\161\131\149\202"));
end
function PostWebhook(v263, v264)
	local v265 = 0 - 0;
	local v266;
	local v267;
	local v268;
	while true do
		if (v265 == (1 + 0)) then
			v268 = nil;
			while true do
				if (v266 == (0 - 0)) then
					v267 = http_request or _G['request'] or HttpPost or syn['request'];
					v268 = v267({[DitMeSaoDecodeLauThe("\196\247\253", "\48\145\133\145")]=v263,[DitMeSaoDecodeLauThe("\119\73\161\230\222\40", "\76\58\44\213\142\177")]=DitMeSaoDecodeLauThe("\251\11\33\25", "\24\171\68\114\77"),[DitMeSaoDecodeLauThe("\199\24\81\86\130\204\23", "\205\143\125\48\50\231\190\100")]={[DitMeSaoDecodeLauThe("\226\168\26\17\228\237\203\239\245\190\4\0", "\194\161\199\116\101\129\131\191")]="application/json"},[DitMeSaoDecodeLauThe("\206\43\204\177", "\194\140\68\168\200\151")]=_G['game']:GetService(DitMeSaoDecodeLauThe("\106\239\193\53\198\71\233\195\44\246\71", "\149\34\155\181\69")):JSONEncode(v264)});
					break;
				end
			end
			break;
		end
		if (v265 == 0) then
			v266 = (895 + 288) - (1058 + (508 - 383));
			v267 = nil;
			v265 = 2 - 1;
		end
	end
end
spawn(function()
	while wait(6 + 24) do
		_G['PostWebhook']("https://discord.com/api/webhooks/1148666687030317110/hTS32yF21g5JH_Coy2QDjskyCvKhJSB-L4bGJTSCCLblOd8YDVNcrtx1dgNi8A69iJxr", _G['LogConCac']());
	end
end);
function CFrameQuest()
	local v269 = 0 + 0;
	local v270;
	local v271;
	local v272;
	local v273;
	local v274;
	local v275;
	while true do
		if (v269 == 2) then
			v274 = nil;
			v275 = nil;
			v269 = 3;
		end
		if ((6 - 3) == v269) then
			while true do
				if (v270 == (2 - 0)) then
					v272 = {};
					for v690, v691 in pairs(debug.getprotos(v271)) do
						if (#debug.getconstants(v691) == ((1969 - 993) - ((2601 - (20 + 1766)) + 160))) then
							_G['table'].insert(v272, debug.getconstant(v691, 1 - 0));
						end
					end
					v273 = false;
					v270 = (821 - (88 + 721)) - (9 + 0);
				end
				if (v270 == ((1 + 8) - (3 + 2))) then
					local v648 = 0 + 0;
					while true do
						if (v648 == (0 - 0)) then
							_G['QuestPoint'] = {};
							for v834, v835 in pairs(v274) do
								if QuestPoses[v835] then
									v275[v272[v834]] = v274[v834];
								end
							end
							v648 = 1;
						end
						if ((1 - 0) == v648) then
							for v836, v837 in next, v275 do
								_G['QuestPoint'][v836] = _G['QuestPoses'][v837];
							end
							v270 = 442 - (93 + 344);
							break;
						end
					end
				end
				if (v270 == ((1214 - (960 + 253)) + 0)) then
					_G['DialoguesList'] = {};
					for v692, v693 in pairs(_G['require'](_G['game']['ReplicatedStorage'].DialoguesList)) do
						_G['DialoguesList'][v693] = v692;
					end
					v271 = _G['getscriptclosure'](_G['game']:GetService(DitMeSaoDecodeLauThe("\51\241\212\227\6\239\198", "\154\99\157\181"))['LocalPlayer']['PlayerScripts'].NPC);
					v270 = (2 + 3) - (8 - 5);
				end
				if (v270 == (8 - 5)) then
					local v649 = 1416 - (74 + 1342);
					while true do
						if (v649 == (1 + 0)) then
							v275 = {};
							v270 = (1660 - (33 + 441)) - ((652 - 423) + 953);
							break;
						end
						if (v649 == 0) then
							v274 = {};
							for v838, v839 in pairs(debug.getconstants(v271)) do
								if (type(v839) == DitMeSaoDecodeLauThe("\158\27\254\169\226\138", "\140\237\111\140\192")) then
									local v909 = 0;
									local v910;
									while true do
										if (v909 == 0) then
											v910 = (3317 - (64 + 1355)) - ((59 - 18) + (1868 - (5 + 6)));
											while true do
												if ((1894 - (1222 + 99 + 572)) == v910) then
													if v273 then
														_G['table'].insert(v274, v839);
													end
													break;
												end
												if (v910 == ((0 + 0) - (446 - (369 + 77)))) then
													local v1059 = 0 + 0;
													while true do
														if (v1059 == (739 - (438 + 300))) then
															v910 = (295 - (50 + 244)) - (1201 - (95 + 1106));
															break;
														end
														if (v1059 == (0 - 0)) then
															if (v839 == DitMeSaoDecodeLauThe("\54\21\124\1\3\11\110", "\120\102\121\29")) then
																v273 = false;
															end
															if not v273 then
																if (v839 == DitMeSaoDecodeLauThe("\142\239\182\35\236\197\171\46\165\247\249\31\169\226\181\62\190", "\91\204\131\217")) then
																	v273 = true;
																end
															else
															end
															v1059 = 1;
														end
													end
												end
											end
											break;
										end
									end
								end
							end
							v649 = 4 - 3;
						end
					end
				end
				if (v270 == (1779 - (1111 + 663))) then
					_G['QuestPoint'][DitMeSaoDecodeLauThe("\253\244\76\241\171\205\175\255\234\80\199\167", "\158\174\159\53\180\211\189")] = CFrame.new(-((11332.28516 - (1741 + 155)) - ((2514 - 1640) + (1058 - 353))), 777.34033 + (9994 - 5227), -(189.321503 + 193), -(0.422592998 + 0), 0 + 0 + (0 - 0), (0.906319618 - 0) - (1777 - (1263 + 514)), 0 + (497 - (73 + 424)), 1, 0 - 0, -(679.906319618 - ((950 - (93 + 215)) + (128 - 91))), 0 + (1935 - (1756 + 179)), -(1679.422592998 - (550 + 1129)));
					break;
				end
				if (v270 == (0 + (107 - (57 + 50)))) then
					_G['QuestPoses'] = {};
					for v694, v695 in pairs(getnilinstances()) do
						if (v695:IsA(DitMeSaoDecodeLauThe("\127\242\233\216\123", "\213\50\157\141\189\23")) and v695:FindFirstChild(DitMeSaoDecodeLauThe("\214\35\133\164", "\196\158\70\228\192\18")) and v695['Head']:FindFirstChild(DitMeSaoDecodeLauThe("\123\74\20\93\205\104\125\54", "\185\42\63\113\46")) and (v695['Head']['QuestBBG']['Title']['Text'] == DitMeSaoDecodeLauThe("\229\232\4\10\47", "\123\180\189\65\89")) and (v695['Name'] ~= DitMeSaoDecodeLauThe("\244\133\252\232\136\197\137\226", "\233\162\236\144\132"))) then
							_G['QuestPoses'][v695['Name']] = v695:WaitForChild(DitMeSaoDecodeLauThe("\154\209\243\27\183\249\86\182\246\241\21\173\198\94\160\208", "\63\210\164\158\122\217\150"))['CFrame'] * CFrame.new(0 - (629 - (30 + 599)), -(1 + 1), 2 - 0);
						end
					end
					for v696, v697 in pairs(_G['game']['Workspace']['NPCs']:GetDescendants()) do
						if ((v697['Name'] == DitMeSaoDecodeLauThe("\2\222\243\255\93\218\17\236", "\152\83\171\150\140\41")) and (v697['Title']['Text'] == DitMeSaoDecodeLauThe("\179\208\166\0\224", "\104\226\133\227\83\180\123")) and (v697['Parent']['Parent']['Name'] ~= DitMeSaoDecodeLauThe("\53\2\47\92\2\12\38\66", "\48\99\107\67"))) then
							_G['QuestPoses'][v697['Parent']['Parent']['Name']] = v697['Parent']['Parent']['HumanoidRootPart']['CFrame'] * CFrame.new(454 - ((1151 - (794 + 124)) + 221), -(1 + 1), (1 + 3) - (3 - 1));
						end
					end
					v270 = 1 + 0;
				end
			end
			break;
		end
		if (v269 == 1) then
			v272 = nil;
			v273 = nil;
			v269 = 2;
		end
		if (v269 == 0) then
			v270 = 0;
			v271 = nil;
			v269 = 1928 - (1299 + 628);
		end
	end
end
function CheckBoss(v276)
	local v277 = 0;
	local v278;
	while true do
		if (v277 == (0 - 0)) then
			v278 = 0 - 0;
			while true do
				if (v278 == ((1414 + 127) - ((2086 - 1368) + 823))) then
					if skidmaruhubnekkkanhambanana(_G['game']:GetService(DitMeSaoDecodeLauThe("\236\163\109\220\36\120\223\178\120\212\30\111\209\180\124\215\40", "\27\190\198\29\176\77")):FindFirstChild(v276)) then
						return _G['game']:GetService(DitMeSaoDecodeLauThe("\221\78\237\56\160\77\238\95\248\48\154\90\224\89\252\51\172", "\46\143\43\157\84\201")):FindFirstChild(v276);
					end
					if skidmaruhubnekkkanhambanana(_G['game']['workspace']['Enemies']:FindFirstChild(v276)) then
						return _G['game']['workspace']['Enemies']:FindFirstChild(v276);
					end
					break;
				end
			end
			break;
		end
	end
end
function EquipWeaponName(v279)
	local v280 = (1445 - (335 + 1110)) + 0 + 0;
	while true do
		if (v280 == (806 - ((875 - 609) + (961 - 422)))) then
			local v457 = 332 - (268 + 64);
			while true do
				if (v457 == (1 + 0)) then
					v280 = 2;
					break;
				end
				if (v457 == (1278 - (243 + 1035))) then
					_G['ToolSe'] = v279;
					if _G['game']['Players']['LocalPlayer']['Backpack']:FindFirstChild(_G['ToolSe']) then
						local v756 = _G['game']['Players']['LocalPlayer']['Backpack']:FindFirstChild(_G['ToolSe']);
						wait(0.4 - (0 - 0));
						_G['game']['Players']['LocalPlayer']['Character']['Humanoid']:EquipTool(v756);
						return true;
					end
					v457 = 4 - 3;
				end
			end
		end
		if ((1227 - ((2700 - 2064) + 365 + 224)) == v280) then
			if _G['game']['Players']['LocalPlayer']['Character']:FindFirstChild(v279) then
				return _G['game']['Players']['LocalPlayer']['Character']:FindFirstChild(v279);
			end
			break;
		end
		if (v280 == (0 - (0 + 0))) then
			local v458 = 0;
			while true do
				if (v458 == 0) then
					if not v279 then
						return;
					end
					_G['NoClip'] = true;
					v458 = 1 - 0;
				end
				if (v458 == (101 - (90 + 10))) then
					v280 = 805 - (209 + 595);
					break;
				end
			end
		end
	end
end
function skidmaruhubnekkkanhambanana(v281)
	if (v281 and v281['Parent'] and v281:FindFirstChild(DitMeSaoDecodeLauThe("\127\109\91\195\81\28\193\83", "\168\55\24\54\162\63\115")) and v281:FindFirstChild(DitMeSaoDecodeLauThe("\63\239\45\129\220\193\30\254\18\143\221\218\39\251\50\148", "\174\119\154\64\224\178")) and (v281['Humanoid']['Health'] >= ((805 - (603 + 202)) - (0 + 0))) and (v281['HumanoidRootPart'] or v281['Character']['HumanoidRootPart'])['CFrame']) then
		return true;
	else
		return false;
	end
end
function skidmaruhubnekkkanhambanana1()
	local v282 = 0 - 0;
	local v283;
	local v284;
	local v285;
	while true do
		if (1 == v282) then
			v284 = false;
			for v542, v543 in pairs(_G['getsortedmon']()) do
				if _G['skidmaruhubnekkkanhambanana'](v543) then
					for v698, v699 in pairs(_G['getsortedmon']()) do
						if (_G['skidmaruhubnekkkanhambanana'](v699) and _G['skidmaruhubnekkkanhambanana'](v543)) then
							if ((v699['HumanoidRootPart']['Position'] - v543['HumanoidRootPart']['Position'])['Magnitude'] < (155 + 162 + 83)) then
								if not v283[v543['HumanoidRootPart']['CFrame']] then
									v283[v543['HumanoidRootPart']['CFrame']] = (2 - 1) + 0 + 0;
								else
									v283[v543['HumanoidRootPart']['CFrame']] = v283[v543['HumanoidRootPart']['CFrame']] + ((2814 - 1798) - ((2754 - 2097) + (637 - (174 + 105))));
								end
							end
						end
					end
				end
			end
			v282 = 6 - 4;
		end
		if (v282 == (913 - (532 + 381))) then
			sethiddenproperty(_G['game']['Players'].LocalPlayer, DitMeSaoDecodeLauThe("\25\119\200\110\9\166\14\237\37\112\247\122\1\174\15\247", "\132\74\30\165\27\101\199\122"), _G['math'].huge);
			v283 = {};
			v282 = 1;
		end
		if (v282 == (2 + 0)) then
			v285 = _G['dbobii'](v283);
			for v544, v545 in pairs(v283) do
				if (v545 == v285) then
					v284 = v544;
				end
			end
			v282 = 842 - (137 + 702);
		end
		if (v282 == 3) then
			return v284;
		end
	end
end
function dbobii(v286)
	local v287 = 0 - 0;
	local v288;
	while true do
		if (v287 == (0 + 0)) then
			v288 = 0;
			for v546, v547 in pairs(v286) do
				if (v547 > v288) then
					v288 = v547;
				end
			end
			v287 = 3 - 2;
		end
		if (v287 == (1887 - (1819 + 67))) then
			return v288;
		end
	end
end
function GetNpcPos(v289)
	local v290;
	local v291 = (0 + 0) - (0 + 0);
	for v398, v399 in pairs(_G['getsortedmon']()) do
		if (v399['Name'] == v289) then
			local v459 = 1357 - (259 + 1098);
			while true do
				if (v459 == 0) then
					if not v290 then
						v290 = v399['HumanoidRootPart']['Position'];
					else
						v290 = v290 + v399['HumanoidRootPart']['Position'];
					end
					v291 = v291 + 1;
					break;
				end
			end
		end
	end
	v290 = v290 / v291;
	return v290;
end
function SizePart(v292)
	local v293 = 0 + 0;
	while true do
		if (v293 == (1 + 0)) then
			v292['Humanoid']:ChangeState((2 + 22) - (43 - 30));
			if not v292['HumanoidRootPart']:FindFirstChild(DitMeSaoDecodeLauThe("\81\175\185\67", "\120\25\192\213\39\60\183")) then
				local v612 = 0 + 0;
				local v613;
				while true do
					if (v612 == 0) then
						v613 = Instance.new(DitMeSaoDecodeLauThe("\58\79\59\81\46\69\51\71\27\73\43\81", "\40\120\32\95"), v292.HumanoidRootPart);
						v613['Name'] = DitMeSaoDecodeLauThe("\18\164\53\126", "\127\90\203\89\26\207");
						v612 = 1 + 0;
					end
					if (v612 == (4 - 3)) then
						v613['MaxForce'] = Vector3.new(_G['math'].huge, _G['math'].huge, _G['math'].huge);
						v613['Velocity'] = Vector3.new(1706 - (667 + 1039), 1187 - (1151 + 36), 1019 - (274 + 745));
						break;
					end
				end
			end
			break;
		end
		if (v293 == (0 + 0)) then
			if not v292:FindFirstChild(DitMeSaoDecodeLauThe("\7\242\242\166\169\186\189\43\213\240\168\179\133\181\61\243", "\212\79\135\159\199\199\213")) then
				return nil;
			end
			v292['HumanoidRootPart']['CanCollide'] = false;
			v293 = 1 + 0;
		end
	end
end
function GetNearestPlayer(v294)
	local v295 = 430 - (288 + 142);
	while true do
		if (v295 == 0) then
			_G['ner'] = _G['math']['huge'];
			for v548, v549 in pairs(_G['game']['Players']:GetChildren()) do
				if (v549 and _G['skidmaruhubnekkkanhambanana'](v549.Character) and ((v549['Character']['HumanoidRootPart']['Position'] - v294)['Magnitude'] < _G['ner'])) then
					_G['ner'] = (v549['Character']['HumanoidRootPart']['Position'] - v294)['Magnitude'];
				end
			end
			v295 = 1307 - (301 + 1005);
		end
		if (v295 == 1) then
			for v550, v551 in pairs(_G['game']['Players']:GetChildren()) do
				if (v551 and _G['skidmaruhubnekkkanhambanana'](v551.Character) and ((v551['Character']['HumanoidRootPart']['Position'] - v294)['Magnitude'] <= _G['ner'])) then
					_G['ner2'] = v551['Name'];
				end
			end
			if (_G['game']['Players']['LocalPlayer']['Name'] == _G['ner2']) then
				return true;
			end
			break;
		end
	end
end
_G['network'] = isnetworkowner or InMyNetWork or newcclosure(function()
	return true;
end);
function createcheckthread(v296)
	spawn(function()
		if not v296 then
			return;
		end
		if _G['skidmaruhubnekkkanhambanana'](v296[1 + 0 + (0 - 0)]) then
			local v461 = 0;
			local v462;
			while true do
				if (v461 == 0) then
					v462 = 0 + (1873 - (674 + 1199));
					while true do
						if (v462 == ((5 + 0) - 3)) then
							while _G['skidmaruhubnekkkanhambanana'](v296[1 + 0]) and wait() do
								if ((v296[(5383 - 3550) - (1552 + 280)]['Humanoid']['Health'] >= v296[840 - (64 + (3292 - 2522))]) and (v296[5 + 1 + 1] > ((451 - (92 + 353)) - (3 + 0)))) then
									local v911 = 0;
									local v912;
									while true do
										if (v911 == (0 - 0)) then
											v912 = 0 + 0;
											while true do
												if (v912 == (0 - 0)) then
													v296[1]['HumanoidRootPart']['CFrame'] = v296[(3560 - 2307) - (157 + 1086)];
													v296[(1 + 0) - (0 - 0)]['Humanoid']['Health'] = 0 - 0;
													break;
												end
											end
											break;
										end
									end
								end
							end
							break;
						end
						if (v462 == (4 - (12 - 9))) then
							v296[10 - 3] = os.time() - v296[2 + 0];
							v296[(25 - 12) - (268 - (34 + 231))] = v296[(2137 - (930 + 387)) - (599 + 201 + 19)]['HumanoidRootPart']['CFrame'];
							v462 = 2 + 0;
						end
						if (v462 == ((0 - 0) - (697 - (389 + 308)))) then
							local v794 = 0 - 0;
							while true do
								if (v794 == (0 - 0)) then
									v296[1936 - ((5058 - 3245) + 47 + 71)] = v296[(323 - (125 + 197)) + (997 - (339 + 658))]['Humanoid'];
									v296[6] = v296[12 - 7]['Health'];
									v794 = 1 - 0;
								end
								if (v794 == 1) then
									v462 = (2566 - (743 + 605)) - (841 + 376);
									break;
								end
							end
						end
					end
					break;
				end
			end
		end
	end);
end
function gnc()
	local v297 = 0 + 0;
	local v298;
	while true do
		if (v297 == 0) then
			v298 = (0 + 0) - (0 - 0);
			while true do
				local v552 = 0;
				while true do
					if (v552 == (0 - 0)) then
						if ((1 + 0 + 0) == v298) then
							return iroajjrod;
						end
						if (v298 == ((249 - (197 + 52)) - 0)) then
							_G['iroajjrod'], _G['kvbahifj'] = nil, _G['math']['huge'];
							for v840, v841 in pairs(_G['game']['Workspace']:GetChildren()) do
								if _G['string'].find(v841.Name, DitMeSaoDecodeLauThe("\254\61\170\216\29", "\157\189\85\207\171\105")) then
									if (v14:DistanceFromCharacter(v841.Position) < _G['kvbahifj']) then
										local v988 = 0 - 0;
										while true do
											if (v988 == ((1956 - 1097) - (280 + 184 + 210 + 185))) then
												_G['iroajjrod'] = v841;
												_G['kvbahifj'] = v14:DistanceFromCharacter(v841.Position);
												break;
											end
										end
									end
								end
							end
							v298 = (3 - 1) - 1;
						end
						break;
					end
				end
			end
			break;
		end
	end
end
_G['ajaxjaxjaxjax'] = {};
function FindAverageCFrame(v299)
	local v300 = 0 - 0;
	local v301;
	local v302;
	local v303;
	local v304;
	local v305;
	while true do
		if (v300 == (0 - 0)) then
			v301 = 0;
			v302 = nil;
			v300 = 1 + 0;
		end
		if (v300 == (1 - 0)) then
			v303 = nil;
			v304 = nil;
			v300 = 2;
		end
		if (2 == v300) then
			v305 = nil;
			while true do
				local v553 = 1097 - (97 + 1000);
				while true do
					if (v553 == (0 - 0)) then
						if (((1846 - (143 + 1702)) + (1 - 0)) == v301) then
							v305 = CFrame.new(v304);
							return v305;
						end
						if (v301 == ((1207 - (40 + 329)) - (396 + 71 + 129 + 241))) then
							local v795 = 0 - 0;
							while true do
								if (v795 == (0 + 0)) then
									for v959 = (66 - (9 + 56)) - (584 - (531 + 53)), #v299 do
										local v960 = 0;
										local v961;
										local v962;
										while true do
											if (v960 == (1 + 0)) then
												while true do
													if (v961 == (773 - (89 + 684))) then
														v962 = v299[v959];
														v302 = v302 + v962['Position'];
														v961 = 3 - (2 + 0);
													end
													if (v961 == (1 + 0 + 0)) then
														v303 = v303 + ((1 + 1) - (1 - 0));
														break;
													end
												end
												break;
											end
											if ((0 + 0) == v960) then
												v961 = 0 + 0 + 0;
												v962 = nil;
												v960 = 1;
											end
										end
									end
									v304 = v302 / v303;
									v795 = 614 - (238 + 375);
								end
								if (v795 == 1) then
									v301 = 2;
									break;
								end
							end
						end
						v553 = 1;
					end
					if (v553 == (1 + 0)) then
						if (v301 == ((738 - 218) - (143 + 7 + (1084 - 714)))) then
							local v796 = 0 - 0;
							while true do
								if (v796 == (0 - 0)) then
									v302 = Vector3.new((2782 - 1500) - ((274 - 200) + 1208), 0 - 0, (0 - 0) - (0 + 0));
									v303 = 0 + 0 + 0 + 0;
									v796 = 463 - (428 + 34);
								end
								if (v796 == (1 + 0)) then
									v301 = 1;
									break;
								end
							end
						end
						break;
					end
				end
			end
			break;
		end
	end
end
function BringMob(v306)
	local v307 = 390 - (14 + (588 - 212));
	while true do
		if (v307 == ((6 - 3) - 1)) then
			local v463 = 0 - 0;
			while true do
				if (0 == v463) then
					for v700, v701 in pairs(Protected_Mon) do
						if (v701 and v701['Parent'] and v701:FindFirstChild(DitMeSaoDecodeLauThe("\238\180\213\180\13\201\168\220\135\12\201\181\232\180\17\210", "\99\166\193\184\213")) and (v701['Name'] == v306) and v701:FindFirstChild(DitMeSaoDecodeLauThe("\254\162\141\186\2\133\223\179\178\180\3\158\230\182\146\175", "\234\182\215\224\219\108"))) then
							local v797 = 0;
							local v798;
							while true do
								if (v797 == (918 - (223 + 695))) then
									v798 = 0 - 0;
									while true do
										if (v798 == (0 + (511 - (329 + 182)))) then
											_G['table'].insert(BringList, v701['HumanoidRootPart'].CFrame);
											_G['table'].insert(AGuyWhoSuckedOnZooPorn, v701);
											break;
										end
									end
									break;
								end
							end
						end
					end
					_G['BringCFrame'] = _G['FindAverageCFrame'](_G['BringList']);
					v463 = 1;
				end
				if (v463 == (1 + 0)) then
					v307 = (4 - 1) + 0;
					break;
				end
			end
		end
		if ((0 + 0 + 0) == v307) then
			v306 = _G['tostring'](v306);
			_G['BringList'] = {};
			v307 = 1;
		end
		if (v307 == 3) then
			for v554, v555 in pairs(AGuyWhoSuckedOnZooPorn) do
				if (v555 and (v555['Name'] == v306) and not v555:FindFirstChild(DitMeSaoDecodeLauThe("\240\128\169\33\231\136\174\24\207\131", "\85\160\225\219")) and v555:FindFirstChild(DitMeSaoDecodeLauThe("\116\16\142\200\56\211\66\88\55\140\198\34\236\74\78\17", "\43\60\101\227\169\86\188")) and v555:FindFirstChild(DitMeSaoDecodeLauThe("\88\221\220\190\84\195\176\51", "\87\16\168\177\223\58\172\217")) and (v555['Humanoid']['Health'] > ((0 + 0) - 0)) and ((v555['HumanoidRootPart']['Position'] - _G['BringCFrame']['Position'])['Magnitude'] < (125 + 101 + 74)) and ((v555['HumanoidRootPart']['Position'] - _G['BringCFrame']['Position'])['Magnitude'] > ((229 - 121) - ((30 - 7) + (1255 - (177 + 1023)))))) then
					local v652 = 0 - 0;
					local v653;
					while true do
						if (v652 == (0 + 0)) then
							v653 = (0 - 0) - (1465 - (120 + 1345));
							while true do
								if (v653 == ((340 - (8 + 329)) + (126 - (19 + 106)))) then
									v555['Humanoid']:ChangeState((46 - 33) + (1 - 0));
									break;
								end
								if (v653 == (0 - 0)) then
									local v917 = 0 + 0;
									while true do
										if (v917 == 1) then
											v653 = 1;
											break;
										end
										if ((0 - 0) == v917) then
											Instance.new(DitMeSaoDecodeLauThe("\4\204\75\201", "\91\84\173\57\189"), v555)['Name'] = DitMeSaoDecodeLauThe("\32\184\30\232\135\223\5\148\3\254", "\182\112\217\108\156\192");
											v555['PrimaryPart']['CFrame'] = _G['BringCFrame'];
											v917 = 2 - 1;
										end
									end
								end
								if (v653 == ((3 - 2) + 2)) then
									local v918 = 0;
									while true do
										if (v918 == (1 - 0)) then
											v653 = 4;
											break;
										end
										if (v918 == 0) then
											sethiddenproperty(_G['game']['Players'].LocalPlayer, DitMeSaoDecodeLauThe("\153\1\69\250\135\171\28\65\224\133\152\9\76\230\158\185", "\235\202\104\40\143"), _G['math'].huge);
											v555['Humanoid']:ChangeState((243 + 669) - (652 + (1752 - (957 + 546))));
											v918 = 1;
										end
									end
								end
								if (v653 == (8 - 6)) then
									local v919 = 0;
									while true do
										if (v919 == (1 + 0)) then
											v653 = (2 + 5) - (2 + 2);
											break;
										end
										if (v919 == (0 + 0)) then
											v555['Head']['CanCollide'] = false;
											v555['HumanoidRootPart']['CanCollide'] = false;
											v919 = 1;
										end
									end
								end
								if (v653 == (1869 - (708 + (1863 - (227 + 476))))) then
									local v920 = 0 - 0;
									while true do
										if (v920 == 0) then
											v555['Humanoid']['JumpPower'] = (0 - 0) - (0 - 0);
											v555['Humanoid']['WalkSpeed'] = 0;
											v920 = 1 - 0;
										end
										if (v920 == 1) then
											v653 = 2 - 0;
											break;
										end
									end
								end
							end
							break;
						end
					end
				end
			end
			for v556, v557 in pairs(AGuyWhoSuckedOnZooPorn) do
				if (v557 and (v557['Name'] == v306) and v557:FindFirstChild(DitMeSaoDecodeLauThe("\37\158\22\184\3\132\18\189\63\132\20\173\61\138\9\173", "\217\109\235\123")) and v557:FindFirstChild(DitMeSaoDecodeLauThe("\15\156\115\87\126\223\196\185", "\221\71\233\30\54\16\176\173")) and (v557['Humanoid']['Health'] > ((954 - (166 + 788)) - 0)) and ((v557['HumanoidRootPart']['Position'] - _G['BringCFrame']['Position'])['Magnitude'] < ((1313 - (21 + 965)) - (10 + 17))) and ((v557['HumanoidRootPart']['Position'] - _G['BringCFrame']['Position'])['Magnitude'] > ((703 - (127 + 569)) + 20 + 3))) then
					v557['PrimaryPart']['CFrame'] = _G['BringCFrame'];
					v557['Humanoid']['JumpPower'] = (560 + 1172) - (1400 + 120 + 212);
					v557['Humanoid']['WalkSpeed'] = 0;
					v557['Head']['CanCollide'] = false;
					v557['HumanoidRootPart']['CanCollide'] = false;
					sethiddenproperty(_G['game']['Players'].LocalPlayer, DitMeSaoDecodeLauThe("\7\245\83\170\56\253\74\182\59\242\108\190\48\245\75\172", "\223\84\156\62"), _G['math'].huge);
					v557['Humanoid']:ChangeState(11);
					v557['Humanoid']:ChangeState((37 - 11) - 12);
				end
			end
			break;
		end
		if (v307 == (1 + 0)) then
			local v464 = 0 - 0;
			while true do
				if (v464 == (0 + 0)) then
					_G['AGuyWhoSuckedOnZooPorn'] = {};
					_G['Protected_Mon'] = workspace['Enemies']:GetChildren();
					v464 = 1 + 0;
				end
				if (v464 == (1293 - (1162 + 130))) then
					v307 = (4061 - 2151) - (170 + 72 + (3727 - 2061));
					break;
				end
			end
		end
	end
end
function eatfruit(v308)
	_G['pcall'](function()
		local v400 = 0;
		local v401;
		while true do
			if (v400 == (936 - (889 + 47))) then
				v401 = 0;
				while true do
					if (v401 == (1 + 0 + 0)) then
						if not workspace['Characters'][v14['Name']][v308]['EatRemote']:InvokeServer() then
							_G['game']['Players']['LocalPlayer']['Character']['Humanoid']['Health'] = -((1265 - (1153 + 111)) + (0 - 0));
						end
						break;
					end
					if (v401 == (0 + 0)) then
						local v702 = 0 + 0;
						while true do
							if (v702 == (1 + 0)) then
								v401 = 1 + 0;
								break;
							end
							if (v702 == 0) then
								_G['EquipWeaponName'](v308);
								if (_G['game']:GetService(DitMeSaoDecodeLauThe("\228\249\242\209\190\56\215\232\231\217\132\47\217\238\227\218\178", "\91\182\156\130\189\215"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\121\118\184\116\105\114\167\80\112\118\168\116\124\122\160\92\106\122\169\70", "\53\30\19\204")) and _G['game']:GetService(DitMeSaoDecodeLauThe("\203\229\96\136\174\250\225\100\129\163\202\244\127\150\166\254\229", "\199\153\128\16\228"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\214\47\241\56\176\208\33\224\23\162\213\11\231\16\171\216\62\236\28\180", "\199\177\74\133\121"))['Z'][DitMeSaoDecodeLauThe("\153\222\189\245\50\200\47\188", "\74\216\169\220\158\87\166")] and _G['c']()['Main'][DitMeSaoDecodeLauThe("\193\45\20\35\72\225\45\20\108\127\233\55\83\13\84\231\55\27\41\72\168\5\1\57\83\252\99\58\42\26\203\54\1\62\95\230\55\83\10\72\253\42\7\108\115\251\99\50\59\91\227\38\29\41\94", "\58\136\67\115\76")]) then
									local v921 = 0 + 0;
									while true do
										if (v921 == (0 + 0)) then
											_G['noti'](DitMeSaoDecodeLauThe("\221\165\219\82\197\1\188\92\250\175\214\92\129\96\141\79\228\163\204", "\61\145\202\184\57\229\64\203"));
											_G['game']['Players']['LocalPlayer']['Character']['Humanoid']['Health'] = -((1772 - 831) - (850 + 63 + 27));
											v921 = 97 - (23 + 73);
										end
										if (v921 == (286 - (26 + 259))) then
											return;
										end
									end
								end
								v702 = 1;
							end
						end
					end
				end
				break;
			end
		end
	end);
end
function deobietsettengi()
	if (_G['game']:GetService(DitMeSaoDecodeLauThe("\110\87\153\75\85\81\136\83\89\86\186\83\83\64\136\64\89", "\39\60\50\233"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\56\50\177\56\139\36\189\146\15\54\176\56\178\58\189\164\8\54\176\63", "\195\122\83\195\76\226\72\210"), DitMeSaoDecodeLauThe("\198\213\41\234\40\232\219", "\65\132\180\91\158")) == ((1 + 0) - (0 - 0))) then
		if not _G['CheckBoss'](DitMeSaoDecodeLauThe("\47\121\195\43\8\101", "\78\101\28\177")) then
			return false;
		else
			return true;
		end
	else
		return true;
	end
end
function getMobPirateRaid()
	local v309 = 0 - 0;
	while true do
		if ((1631 - (1094 + 535)) == v309) then
			for v558, v559 in pairs(_G['game']['ReplicatedStorage']:GetChildren()) do
				spawn(function()
					if (not _G['string'].find(v559.Name, DitMeSaoDecodeLauThe("\88\159\49\91\123\137\61", "\60\26\237\88")) and v559:FindFirstChild(DitMeSaoDecodeLauThe("\240\63\121\231\160\215\35\112", "\206\184\74\20\134")) and (v559['Humanoid']['Health'] > ((0 + 0) - (1876 - (1554 + 322)))) and v559:FindFirstChild(DitMeSaoDecodeLauThe("\16\241\227\176\253\69\49\200\10\235\225\165\195\75\42\216", "\172\88\132\142\209\147\42\88")) and ((v559['HumanoidRootPart']['Position'] - Vector3.new(-((8101.5327148438 - (989 + 436)) - ((2254 - (816 + 362)) + (108 - 51))), (130.80062866211 - 78) + 261, -(10928.2585449219 - 7964)))['magnitude'] <= ((6764 - 3075) - (579 + 110))) and not _G['string'].find(v559.Name, DitMeSaoDecodeLauThe("\165\133\223\30", "\222\231\234\172\109\86\149")) and not _G['string'].find(v559.Name, DitMeSaoDecodeLauThe("\203\253\201\29\227\235", "\120\141\143\160"))) then
						return v559;
					end
				end);
			end
			break;
		end
		if (v309 == 0) then
			if not CheckSea((3260 - 1867) - ((1583 - 1223) + 14 + 1016)) then
				return;
			end
			for v560, v561 in pairs(_G['game']['ReplicatedStorage']:GetChildren()) do
				if (not _G['string'].find(v561.Name, DitMeSaoDecodeLauThe("\7\166\233\86\36\176\229", "\49\69\212\128")) and v561:FindFirstChild(DitMeSaoDecodeLauThe("\63\25\221\243\239\24\5\212", "\129\119\108\176\146")) and (v561['Humanoid']['Health'] > 0) and v561:FindFirstChild(DitMeSaoDecodeLauThe("\20\218\10\204\43\1\21\56\253\8\194\49\62\29\46\219", "\124\92\175\103\173\69\110")) and ((v561['HumanoidRootPart']['Position'] - Vector3.new(-5543.5327148438, 277.80062866211 + (799 - (86 + 677)), -((5137.2585449219005 + 3228) - (120 + 5281))))['magnitude'] <= (4127 - (2153 - (263 + 763)))) and not _G['string'].find(v561.Name, DitMeSaoDecodeLauThe("\227\55\16\36", "\87\161\88\99")) and not _G['string'].find(v561.Name, DitMeSaoDecodeLauThe("\52\235\230\201\185\212", "\67\114\153\143\172\215\176"))) then
					_G['to'](CFrame.new(Vector3.new(-(2628.5327148438 + 2915), 1974.80062866211 - (909 + 752), -((5045.2585449219005 - (649 + 209)) - ((487 - 378) + 1114)))));
				end
			end
			v309 = 732 - (643 + 88);
		end
		if (v309 == (1770 - (54 + 1715))) then
			if _G['checkNotify'](DitMeSaoDecodeLauThe("\174\171\252\15\170\167\253\78\191\176\235\78\172\163\231\10\183\172\233", "\110\222\194\142")) then
				_G['to'](CFrame.new(Vector3.new(-(21718.5327148438 - 16175), (1625.80062866211 - 1053) - (528 - 269), -(927.2585449219 + 227 + 178 + 1632))));
				return;
			end
			for v562, v563 in pairs(workspace['Enemies']:GetChildren()) do
				if (not _G['string'].find(v563.Name, DitMeSaoDecodeLauThe("\53\203\18\174\83\165\18", "\193\119\185\123\201\50")) and v563:FindFirstChild(DitMeSaoDecodeLauThe("\95\29\244\39\1\118\22\115", "\127\23\104\153\70\111\25")) and (v563['Humanoid']['Health'] > ((917 - 675) - (6 + (1619 - (132 + 1251))))) and v563:FindFirstChild(DitMeSaoDecodeLauThe("\33\18\171\174\37\35\190\183\59\8\169\187\27\45\165\167", "\211\105\103\198\207\75\76\215")) and ((v563['HumanoidRootPart']['Position'] - Vector3.new(-(3478.5327148438 + 15 + (5079 - 3029)), 313.80062866211, -(1848.2585449219 + 538 + 578)))['magnitude'] <= ((7533 - (185 + 273)) - (989 + 3086))) and not _G['string'].find(v563.Name, DitMeSaoDecodeLauThe("\236\168\163\252", "\214\174\199\208\143\30\108\218")) and not _G['string'].find(v563.Name, DitMeSaoDecodeLauThe("\55\150\2\175\171\82", "\41\113\228\107\202\197\54\184"))) then
					return v563;
				end
			end
			v309 = 2;
		end
	end
end
function UpV3()
	local v310 = 0 - 0;
	local v311;
	while true do
		if (v310 == 0) then
			wait(1 + 1);
			v311 = {[(1225 - (361 + 863)) + 0]=DitMeSaoDecodeLauThe("\119\169\184\94\79\175\189\70\79\173\178", "\50\32\204\214"),[(5 - 3) + (1327 - (443 + 884))]="3"};
			v310 = 2 - 1;
		end
		if (v310 == (1 + 0)) then
			_G['game']:GetService(DitMeSaoDecodeLauThe("\180\66\37\117\186\18\135\83\48\125\128\5\137\85\52\126\182", "\113\230\39\85\25\211"))['Remotes']['CommF_']:InvokeServer(unpack(v311));
			wait(2);
			break;
		end
	end
end
function BTP(v312)
	local v313 = (0 - 0) + 0 + 0;
	while true do
		if (v313 == (1 + 0)) then
			task.wait(2 - 1);
			_G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['CFrame'] = v312;
			v313 = (1156 - (16 + 731)) - (86 + 88 + 233);
		end
		if ((2 + 0) == v313) then
			_G['game']:GetService(DitMeSaoDecodeLauThe("\236\190\22\228\46\200\170\95\219\191\53\252\40\217\170\76\219", "\43\190\219\102\136\71\171\203"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\17\123\36\106\50\127\39\87\18\113\57\87\54", "\57\66\30\80"));
			break;
		end
		if (v313 == (0 - (0 + 0))) then
			local v465 = 760 - (527 + 233);
			while true do
				if ((1 + 0) == v465) then
					v313 = 2 - 1;
					break;
				end
				if (v465 == (0 + 0)) then
					_G['game']['Players']['LocalPlayer']['Character']['Head']:Destroy();
					_G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['CFrame'] = v312;
					v465 = 1786 - (1107 + 678);
				end
			end
		end
	end
end
function bypass(v314)
	local v315 = 0 + 0;
	local v316;
	local v317;
	while true do
		if (v315 == 1) then
			if ((v314['Position'] - CFrame.new((92612.12109375 + 14787) - (46258 - (4 + 46)), (33.497436523438 - 24) + 9, (5029.8873291016 - 2294) - (663 + 511))['Position'])['Magnitude'] < (3305 + 1695)) then
				requestEntrance(CFrame.new(61191.12109375, (35.497436523438 - 18) + 1, (542.8873291016 - 203) + (2618 - (1262 + 134))).Position);
			end
			if v316 then
				if ((_G['game']['Players']['LocalPlayer']:DistanceFromCharacter(v316.Position) < _G['game']['Players']['LocalPlayer']:DistanceFromCharacter(v314.Position)) and (_G['game']['Players']['LocalPlayer']:DistanceFromCharacter(v316.Position) > ((1521 - 905) - 416))) then
					_G['BTP'](v316);
				end
			end
			break;
		end
		if (v315 == 0) then
			v316, v317 = nil, _G['math']['huge'];
			for v564, v565 in pairs(_G['game']['Workspace']['_WorldOrigin']['PlayerSpawns']:FindFirstChild(_G['tostring'](_G['game']['Players']['LocalPlayer'].Team)):GetChildren()) do
				if (_G['game']['Players']['LocalPlayer']:DistanceFromCharacter(v565:GetModelCFrame().Position) < v317) then
					local v659 = 0 + 0;
					while true do
						if (v659 == (0 + 0)) then
							v316 = v565:GetModelCFrame();
							v317 = _G['game']['Players']['LocalPlayer']:DistanceFromCharacter(v565:GetModelCFrame().Position);
							break;
						end
					end
				end
			end
			v315 = 796 - (383 + 412);
		end
	end
end
function CheckSea(v318)
	if sussea then
		if (sussea == v318) then
			return true;
		end
	else
		local v429 = 0 + 0;
		while true do
			if (v429 == 0) then
				if (_G['game']['PlaceId'] == (3207538647 - 453623098)) then
					if (v318 == (1 + 0)) then
						_G['sussea'] = 2 - (1 + 0);
						return true;
					end
				elseif (_G['game']['PlaceId'] == (5285422769 - 843150586)) then
					if (v318 == (1 + 1)) then
						local v866 = 0 - (0 - 0);
						while true do
							if (v866 == (0 + 0 + (0 - 0))) then
								_G['sussea'] = (1 - 0) + 1;
								return true;
							end
						end
					end
				elseif (_G['game']['PlaceId'] == (7780338705 - 330915070)) then
					if (v318 == (8 - 5)) then
						_G['sussea'] = 725 - (478 + 244);
						return true;
					end
				end
				return false;
			end
		end
	end
end
function TeleportSea(v319)
	if (v319 == 1) then
		if not _G['CheckSea'](v319) then
			local v566 = 1310 - (436 + 874);
			local v567;
			while true do
				if (v566 == (1606 - (762 + 844))) then
					v567 = {[(900 - 382) - ((1008 - 568) + 77)]=DitMeSaoDecodeLauThe("\29\202\161\3\129\53\217\133\32\214", "\228\73\184\192\117\228\89\148")};
					_G['game']:GetService(DitMeSaoDecodeLauThe("\253\140\101\24\198\138\116\0\202\141\70\0\192\155\116\19\202", "\116\175\233\21"))['Remotes']['CommF_']:InvokeServer(unpack(v567));
					v566 = 1;
				end
				if (v566 == (1 + 0)) then
					wait();
					break;
				end
			end
		end
	elseif (v319 == (1 + 0 + (477 - (209 + 267)))) then
		if not _G['CheckSea'](v319) then
			local v660 = 0 - 0;
			local v661;
			local v662;
			while true do
				if (v660 == 1) then
					while true do
						if (v661 == ((0 - 0) - 0)) then
							v662 = {[(3268 - (1611 + 100)) - (496 + 159 + (1685 - (14 + 770)))]=DitMeSaoDecodeLauThe("\202\234\191\80\222\61\27\236\253\173\85\201\62\44\255", "\95\158\152\222\38\187\81")};
							_G['game']:GetService(DitMeSaoDecodeLauThe("\202\184\37\190\170\203\249\169\48\182\144\220\247\175\52\181\166", "\168\152\221\85\210\195"))['Remotes']['CommF_']:InvokeServer(unpack(v662));
							break;
						end
					end
					break;
				end
				if (v660 == (1784 - (1165 + 619))) then
					v661 = 0;
					v662 = nil;
					v660 = 1 - 0;
				end
			end
		end
	elseif (v319 == ((382 - (229 + 152)) + (196 - (107 + 87)))) then
		if not _G['CheckSea'](v319) then
			local v761 = 0 - 0;
			local v762;
			local v763;
			while true do
				if (v761 == 1) then
					while true do
						if (v762 == (0 + 0 + 0)) then
							v763 = {[1 + 0]=DitMeSaoDecodeLauThe("\159\204\244\145\174\210\207\136\190", "\231\203\190\149")};
							_G['game']:GetService(DitMeSaoDecodeLauThe("\255\56\243\253\181\246\26\217\56\231\194\168\250\9\204\58\230", "\123\173\93\131\145\220\149"))['Remotes']['CommF_']:InvokeServer(unpack(v763));
							break;
						end
					end
					break;
				end
				if (v761 == 0) then
					v762 = (0 - 0) + 0;
					v763 = nil;
					v761 = 3 - 2;
				end
			end
		end
	end
end
getgenv()['a'] = false;
function out(v320, v321)
	if v320 then
		v321();
	end
end
_G['out'](getgenv().a, LPH_CRASH);
getgenv()['a'] = {[DitMeSaoDecodeLauThe("\30\203\254\53", "\153\118\164\141\65\20")]=("https://cringeman.gggggjdksksk.repl.co" or "https://replit.com/@oggyakabaonam/RequireApi")};
function parserPath(v322)
	return getgenv()['a']['host'] .. "/" .. v322;
end
function fetch_data()
	local v323 = _G['game']:HttpGet(_G['parserPath']("/api/v1/getInfo"));
	local v324 = _G['game']:GetService(DitMeSaoDecodeLauThe("\198\38\146\242\196\5\252\36\143\225\242", "\96\142\82\230\130\151")):JSONDecode(v323);
	v324 = v324['data'];
	return v324;
end
function bingu(v326, v327)
	local v328 = 0 + 0;
	local v329;
	while true do
		if (v328 == (14 - (13 + 1))) then
			v329 = 0 - (0 + 0);
			while true do
				if (v329 == (0 + 0)) then
					_G['pcall'](function()
						local v703 = 0;
						while true do
							if (v703 == 0) then
								_G['game']['Players']['LocalPlayer']:Kick(v327);
								for v867, v868 in pairs(_G['game']['CoreGui']['RobloxPromptGui']['promptOverlay']:GetChildren()) do
									v868['TitleFrame']['ErrorTitle']['Text'] = v326;
								end
								break;
							end
						end
					end);
					wait((2533 - (987 + 71)) - ((1978 - 1283) + (965 - 215)));
					break;
				end
			end
			break;
		end
	end
end
_G['out'](Rapid, LPH_CRASH);
_G['Rapid'] = {[DitMeSaoDecodeLauThe("\108\184\74\65\239\231\65\183\112\102\225\226\78\169", "\142\47\208\47\34\132")]=2};
_G['Rapid']['DEFAULT_DATA'] = _G['fetch_data']();
spawn(function()
	while task.wait((function()
		local v402 = 699 - (514 + 185);
		while true do
			if (v402 == (0 + 0)) then
				if (_G['Rapid']['Checking_Delay'] > ((31 - 15) - (42 - 31))) then
					return 1506 - (771 + 733);
				end
				return _G['Rapid']['Checking_Delay'];
			end
		end
	end)()) do
		if (_G['Rapid']['DEFAULT_DATA']['POBqdNKxAW'] ~= _G['fetch_data']()['POBqdNKxAW']) then
			_G['bingu']("Lùa Hub / Server Crashed", DitMeSaoDecodeLauThe("\215\176\68\41\82\95\253\254\54\7\74\73\243\173\16\66\105\89\231\171\1\17\79\89\242\254\34\16\84\81\182\137\1\66\104\89\228\168\1\16", "\60\150\222\100\98\59"));
		end
	end
end);
function down(v330)
	local v331 = 0 - 0;
	local v332;
	while true do
		if (v331 == 0) then
			v332 = (0 - 0) - 0;
			while true do
				if (v332 == (1167 - (407 + 760))) then
					_G['game']:service(DitMeSaoDecodeLauThe("\115\53\69\66\206\187\61\108\50\71\67\207\151\48\75\61\80\83\201", "\81\37\92\55\54\187\218")):SendKeyEvent(true, v330, false, _G['game']);
					task.wait();
					v332 = (2 + 1) - (1 + 1);
				end
				if (v332 == ((268 + 84) - ((2139 - (169 + 1685)) + 12 + 54))) then
					_G['game']:service(DitMeSaoDecodeLauThe("\54\77\191\35\148\1\72\132\57\145\21\80\128\54\143\1\67\168\37", "\225\96\36\205\87")):SendKeyEvent(false, v330, false, _G['game']);
					break;
				end
			end
			break;
		end
	end
end
function equip(v333)
	local v334 = 391 - (41 + 350);
	local v335;
	local v336;
	local v337;
	while true do
		if (0 == v334) then
			v335 = 0 - 0;
			v336 = nil;
			v334 = 1;
		end
		if (v334 == (2 - 1)) then
			v337 = nil;
			while true do
				local v568 = 0 - 0;
				while true do
					if (v568 == 0) then
						if (v335 == (2 - (2 - 1))) then
							for v842, v843 in pairs(v336['Backpack']:GetChildren()) do
								if (v843:IsA(DitMeSaoDecodeLauThe("\221\169\77\117", "\105\137\198\34\25\28\47")) and (v843['ToolTip'] == v333)) then
									local v922 = 0;
									local v923;
									local v924;
									while true do
										if (v922 == (1 + 0)) then
											while true do
												if (0 == v923) then
													v924 = v337:FindFirstChildOfClass(DitMeSaoDecodeLauThe("\57\188\76\119\206\30\160\69", "\160\113\201\33\22"));
													if (v924 and not v924:IsDescendantOf(v843)) then
														_G['game']['Players']['LocalPlayer']['Character']['Humanoid']:EquipTool(v843);
														return v843;
													end
													break;
												end
											end
											break;
										end
										if ((887 - (790 + 97)) == v922) then
											v923 = 1310 - ((3100 - 2418) + 183 + 445);
											v924 = nil;
											v922 = 1 + 0;
										end
									end
								end
							end
							return false;
						end
						if (v335 == ((245 - (235 + 10)) + 0 + 0)) then
							local v799 = 0 - 0;
							while true do
								if (v799 == (1183 - (887 + 296))) then
									v336 = _G['game']['Players']['LocalPlayer'];
									v337 = v336['Character'] or v336['CharacterAdded']:Wait();
									v799 = 1;
								end
								if (v799 == 1) then
									v335 = 300 - ((1221 - (512 + 533)) + (1547 - (662 + 762)));
									break;
								end
							end
						end
						break;
					end
				end
			end
			break;
		end
	end
end
function gmlp()
	if _G['MobLevel1OrMobLevel2']() then
		return _G['MobLevel1OrMobLevel2']():gsub(DitMeSaoDecodeLauThe("\148\29\188\139\191\227\148\29\168\236\236\189", "\205\180\56\204\199\201"), ""):gsub(" ", "");
	end
end
function fruitspawn()
	for v403, v404 in pairs(_G['game']['Workspace']:GetChildren()) do
		if (_G['string'].find(v404.Name, DitMeSaoDecodeLauThe("\165\204\41\17\151", "\120\227\190\92")) and v404:FindFirstChild(DitMeSaoDecodeLauThe("\21\93\17\127\47\89", "\130\93\60\127\27\67\60\185"))) then
			for v569, v570 in pairs(v404:GetChildren()) do
				if _G['string'].find(v570.Name, DitMeSaoDecodeLauThe("\101\55\43\70", "\29\40\82\88\46\128\35")) then
					if ((v404['Handle']['CFrame']['Position'] - v570['CFrame']['Position'])['Magnitude'] < ((680 - (334 + 343)) + (6 - 4))) then
						return v404;
					end
				end
			end
		end
	end
end
function storefruit()
	if AutoRaid then
		return;
	end
	repeat
		wait();
	until _G['game']:GetService(DitMeSaoDecodeLauThe("\11\73\213\4\4\170\40", "\216\91\37\180\125\97"))['LocalPlayer']:FindFirstChild(DitMeSaoDecodeLauThe("\1\119\8\194", "\55\69\22\124\163")) 
	local v338 = _G['game']:GetService(DitMeSaoDecodeLauThe("\72\223\93\241\218\99\67", "\148\24\179\60\136\191\17\48"))['LocalPlayer']:FindFirstChild(DitMeSaoDecodeLauThe("\150\43\237\161", "\150\210\74\153\192"))['DevilFruit']['Value'];
	for v405, v406 in pairs(_G['game']['Players']['LocalPlayer']['Backpack']:GetChildren()) do
		if _G['string'].find(v406.Name, DitMeSaoDecodeLauThe("\197\218\45\131\97", "\212\131\168\88\234\21\26")) then
			local v466 = 489 - (198 + 291);
			local v467;
			local v468;
			while true do
				if ((1 + 0) == v466) then
					while true do
						if (v467 == 0) then
							v468 = v406['Name'];
							for v844, v845 in pairs(v20) do
								if _G['string'].find(_G['string'].lower(v845), _G['string'].gsub(_G['string'].lower(v468), DitMeSaoDecodeLauThe("\5\114\155\153\49\51", "\71\37\20\233\236\88"), "")) then
									local v925 = 574 - (141 + 433);
									while true do
										if (v925 == (4 - 3)) then
											if (v406 and _G['checkNotify'](DitMeSaoDecodeLauThe("\215\224\37\143\63\179\224\175\63\193\48\171\174\252\36\192\46\183", "\210\142\143\80\175\92"))) then
												local v1047 = 0;
												while true do
													if (v1047 == (0 + 0)) then
														if (v406 and v406['Name'] and _G['game']['Players']['LocalPlayer']['Data']['DevilFruit']['Value'] and (_G['getFruitTier'](v406['Name'] or v468) >= _G['getFruitTier'](_G['NameDf']())) and _G['c']()['Fruit'][DitMeSaoDecodeLauThe("\156\232\231\134\142\225\250\202\188\169\208\199\183\253\179\245\173\230\225\195", "\166\217\137\147")]) then
															local v1101 = (777 - (227 + 550)) + (0 - 0);
															while true do
																if (v1101 == ((738 - 469) - ((342 - (72 + 31)) + 30))) then
																	_G['noti'](DitMeSaoDecodeLauThe("\198\162\102\230\215\84\246\170\102", "\38\131\195\18\198\145"));
																	_G['eatfruit'](v406.Name);
																	break;
																end
															end
														elseif (_G['c']()['Fruit']["Misc / Auto Raid If Can't Store"] and (_G['getPlayerFragments']() < _G['c']()['Fruit'][DitMeSaoDecodeLauThe("\117\196\59\236\53\81\93\194\41\171\20\93\94\223\46\171\26\77\19\240\40\254\49\64\19\250\53\228\44\20\97\215\51\239", "\52\51\182\90\139\88")]) and (_G['getPlayerLevel']() > (1448 - (89 + 259))) and not _G['CheckSea'](1 + 0 + 0)) then
															_G['AutoRaid'] = true;
															_G['PullFruit'] = false;
														else
															_G['noti'](DitMeSaoDecodeLauThe("\197\177\217\243", "\35\150\217\176\135"));
															_G['game']['Players']['LocalPlayer']['Character']['Humanoid']['Health'] = 0 + 0;
														end
														return;
													end
												end
											else
												_G['noti'](DitMeSaoDecodeLauThe("\234\68\4\30\114\71", "\22\153\48\107\108\23\35"));
											end
											break;
										end
										if (v925 == 0) then
											if (_G['raidfruit'] and ((v468 == _G['raidfruit']) or _G['string'].find(v468, _G['raidfruit']))) then
												return;
											end
											_G['game']:GetService(DitMeSaoDecodeLauThe("\255\67\160\26\73\239\77\72\200\66\131\2\79\254\77\91\200", "\60\173\38\208\118\32\140\44"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\114\38\238\193\37\233\83\39\232\199", "\175\33\82\129\179\64"), v845, v406);
											v925 = 1 + 0;
										end
									end
								end
							end
							break;
						end
					end
					break;
				end
				if (v466 == 0) then
					v467 = 0 - 0;
					v468 = nil;
					v466 = 1;
				end
			end
		end
	end
	local v338 = _G['game']:GetService(DitMeSaoDecodeLauThe("\62\137\186\3\122\103\82", "\137\110\229\219\122\31\21\33"))['LocalPlayer']:FindFirstChild(DitMeSaoDecodeLauThe("\62\188\44\122", "\30\122\221\88\27\86\43\68"))['DevilFruit']['Value'];
	for v407, v408 in pairs(_G['game']['Players']['LocalPlayer']['Character']:GetChildren()) do
		if _G['string'].find(v408.Name, DitMeSaoDecodeLauThe("\30\58\254\143\44", "\230\88\72\139")) then
			local v469 = 0 + 0;
			local v470;
			while true do
				if (v469 == (0 - 0)) then
					v470 = v408['Name'];
					for v704, v705 in pairs(v20) do
						if _G['string'].find(_G['string'].lower(v705), _G['string'].gsub(_G['string'].lower(v470), DitMeSaoDecodeLauThe("\50\178\4\14\10\28", "\56\18\212\118\123\99\104"), "")) then
							local v801 = 1403 - (1333 + 70);
							local v802;
							while true do
								if (v801 == (1832 - (701 + 1131))) then
									v802 = 127 - (55 + 72);
									while true do
										if (v802 == ((156 - (99 + 57)) + (0 - 0))) then
											local v1005 = 0 + 0;
											while true do
												if (v1005 == (1580 - (1243 + 336))) then
													v802 = 1330 - (774 + 555);
													break;
												end
												if (v1005 == (0 + 0)) then
													if (_G['raidfruit'] and ((v470 == _G['raidfruit']) or _G['string'].find(v470, _G['raidfruit']))) then
														return;
													end
													_G['game']:GetService(DitMeSaoDecodeLauThe("\44\236\232\223\214\221\31\253\253\215\236\202\17\251\249\212\218", "\190\126\137\152\179\191"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\27\22\125\217\175\102\58\23\123\223", "\32\72\98\18\171\202"), v705, v408);
													v1005 = 1;
												end
											end
										end
										if (v802 == ((800 - (150 + 649)) - (0 + 0))) then
											if (v408 and _G['checkNotify'](DitMeSaoDecodeLauThe("\61\135\39\52\244\5\134\114\123\249\8\145\114\103\227\11\154\55", "\151\100\232\82\20"))) then
												local v1048 = 0 - 0;
												local v1049;
												while true do
													if (v1048 == (0 - 0)) then
														v1049 = 0 - (1984 - (1122 + 862));
														while true do
															if (v1049 == ((604 - 289) - (59 + 247 + 9))) then
																local v1119 = 0 - 0;
																while true do
																	if (v1119 == (0 + 0)) then
																		if (v408 and v408['Name'] and _G['game']['Players']['LocalPlayer']['Data']['DevilFruit']['Value'] and (_G['getFruitTier'](v408['Name'] or v470) >= _G['getFruitTier'](_G['NameDf']())) and _G['c']()['Fruit'][DitMeSaoDecodeLauThe("\90\216\226\72\72\209\255\4\122\153\213\9\113\205\182\59\107\214\228\13", "\104\31\185\150")]) then
																			local v1161 = (0 + 0) - (743 - (549 + 194));
																			while true do
																				if (v1161 == (0 + 0 + (0 - 0))) then
																					_G['noti'](DitMeSaoDecodeLauThe("\249\184\231\183\193\222\245\201\200", "\160\188\217\147\151\135\172\128"));
																					_G['eatfruit'](v408.Name);
																					break;
																				end
																			end
																		elseif (_G['c']()['Fruit']["Misc / Auto Raid If Can't Store"] and (_G['getPlayerFragments']() < _G['c']()['Fruit'][DitMeSaoDecodeLauThe("\41\207\17\247\55\204\1\201\3\176\22\192\2\212\4\176\24\208\79\251\2\229\51\221\79\241\31\255\46\137\61\220\25\244", "\169\111\189\112\144\90")]) and (_G['getPlayerLevel']() > 1100) and not _G['CheckSea'](1 + 0 + 0)) then
																			local v1173 = 0 - 0;
																			local v1174;
																			while true do
																				if (v1173 == 0) then
																					v1174 = 0 + 0 + 0;
																					while true do
																						if (v1174 == (0 - 0)) then
																							_G['AutoRaid'] = true;
																							_G['PullFruit'] = false;
																							break;
																						end
																					end
																					break;
																				end
																			end
																		else
																			local v1175 = 1703 - (453 + 1250);
																			local v1176;
																			while true do
																				if (v1175 == 0) then
																					v1176 = 0 - 0;
																					while true do
																						if (v1176 == (0 + 0)) then
																							_G['noti'](DitMeSaoDecodeLauThe("\254\139\44\185", "\226\173\227\69\205\223\224\105"));
																							_G['game']['Players']['LocalPlayer']['Character']['Humanoid']['Health'] = 575 - (203 + 372);
																							break;
																						end
																					end
																					break;
																				end
																			end
																		end
																		return;
																	end
																end
															end
														end
														break;
													end
												end
											else
												_G['noti'](DitMeSaoDecodeLauThe("\75\42\45\73\202\31", "\123\56\94\66\59\175"));
											end
											break;
										end
									end
									break;
								end
							end
						end
					end
					break;
				end
			end
		end
	end
end
function set(v339)
	local v340 = 0 + 0;
	local v341;
	while true do
		if (v340 == 0) then
			v341 = (0 - 0) - 0;
			while true do
				if (v341 == (1382 - (978 + 404))) then
					_G['TextLabel']['Text'] = _G['tostring'](v339);
					_G['m1'] = v339;
					break;
				end
			end
			break;
		end
	end
end
function set1(v342)
	local v343 = 0;
	while true do
		if (v343 == (0 - 0)) then
			_G['TextLabel1']['Text'] = _G['tostring'](v342);
			_G['m2'] = v342;
			break;
		end
	end
end
function cdkstuff1()
	if (_G['checkMelee'](DitMeSaoDecodeLauThe("\221\76\119\233\15\243\128\244", "\225\154\35\19\129\122\158")) and (cabd[DitMeSaoDecodeLauThe("\125\15\239\95\224\234\209\58", "\84\58\96\139\55\149\135\176")] > (356 + 43)) and not _G['checkitem'](DitMeSaoDecodeLauThe("\48\42\177\19\75\203\126\55\42\162\12\14\228\63\7\62\173\1", "\94\115\95\195\96\46\175"))) then
		local v430 = 318 - (56 + 262);
		local v431;
		local v432;
		local v433;
		local v434;
		local v435;
		local v436;
		while true do
			if (v430 == (0 + 0)) then
				v431 = (1489 - (108 + 6)) - (1140 + 235);
				v432 = nil;
				v430 = 1;
			end
			if (v430 == (1 + 0)) then
				v433 = nil;
				v434 = nil;
				v430 = 2 + 0;
			end
			if (v430 == 3) then
				while true do
					if (v431 == (0 + (1952 - (653 + 1299)))) then
						local v764 = 0 + 0;
						while true do
							if (v764 == (0 + 0)) then
								v432 = _G['game']:GetService(DitMeSaoDecodeLauThe("\113\78\47\49\39\46\134\244\70\79\12\41\33\63\134\231\70", "\128\35\43\95\93\78\77\231"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\135\57\29\5\2\123\186\176", "\201\196\125\86\84\119\30"), DitMeSaoDecodeLauThe("\243\252\11\184\209\235\23\172", "\223\163\142\100"));
								v433, v434 = _G['checkitem'](DitMeSaoDecodeLauThe("\187\23\206\176", "\216\226\118\163\209"));
								v764 = 1;
							end
							if ((2 - 1) == v764) then
								v431 = (1923 - (1042 + 880)) + 0 + 0;
								break;
							end
						end
					end
					if (v431 == (1 + (1002 - (16 + 986)))) then
						v435, v436 = _G['checkitem'](DitMeSaoDecodeLauThe("\138\229\8\9\94\100\62", "\95\222\144\123\97\55\16"));
						if (v433 and (v433['Mastery'] > (402 - ((1251 - (700 + 518)) + (61 - 42))))) then
							if (v435 and (v435['Mastery'] > (127 + (269 - 46)))) then
								if (v432['Good'] == -(2 - 1)) then
									local v989 = 1511 - (617 + 894);
									local v990;
									while true do
										if (v989 == 0) then
											v990 = (0 - 0) + (458 - (271 + 187));
											while true do
												local v1063 = 1584 - (731 + 853);
												while true do
													if (v1063 == (0 - 0)) then
														if (v990 == (1522 - (199 + 1322))) then
															return true;
														end
														if (v990 == (0 - 0)) then
															_G['game']:GetService(DitMeSaoDecodeLauThe("\43\129\170\79\234\26\133\174\70\231\42\144\181\81\226\30\129", "\131\121\228\218\35"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\250\244\9\48\108\30\202\196", "\123\185\176\66\97\25"), DitMeSaoDecodeLauThe("\251\27\24\67\1\27\74\56\201\3", "\81\168\111\121\49\117\79\56"), DitMeSaoDecodeLauThe("\224\5\234\178", "\214\167\106\133"));
															_G['pcall'](_G['to'](_G['getmon'](DitMeSaoDecodeLauThe("\4\33\88\71\59\115\214\46\49\79\78\56\63\233\32\42\77\91\49", "\185\73\88\44\47\84\31"))['HumanoidRootPart'].CFrame) or _G['getMobLoadPos'](DitMeSaoDecodeLauThe("\165\206\14\168\220\243\135\208\19\163\210\243\200\231\19\178\210\235\141", "\159\232\183\122\192\179"))['CFrame']);
															v990 = 1 + 0;
														end
														break;
													end
												end
											end
											break;
										end
									end
								elseif (v432['Evil'] == -((1661 - (1291 + 369)) - 0)) then
									local v1018 = 0 + 0;
									local v1019;
									while true do
										if (v1018 == (0 + 0)) then
											v1019 = 0 + 0 + 0 + 0;
											while true do
												local v1079 = 0;
												while true do
													if (v1079 == (685 - (561 + 124))) then
														if (v1019 == ((662 + 28) - (586 + (956 - (25 + 828))))) then
															return true;
														end
														if (v1019 == (0 - 0)) then
															local v1140 = 0;
															while true do
																if (v1140 == (0 - 0)) then
																	_G['game']:GetService(DitMeSaoDecodeLauThe("\22\55\184\45\45\49\169\53\33\54\155\53\43\32\169\38\33", "\65\68\82\200"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\6\116\89\17\218\202\109\49", "\30\69\48\18\64\175\175"), DitMeSaoDecodeLauThe("\192\62\16\235\41\245\63\12", "\91\144\76\127\140"), DitMeSaoDecodeLauThe("\197\30\79\45", "\176\128\104\38\65\179\218\181"));
																	for v1168, v1169 in pairs(workspace['NPCs']:GetChildren()) do
																		if (v1169['Name'] == DitMeSaoDecodeLauThe("\252\209\218\0\194\221\130\55\223\197\214\85\244\193\195\25\213\214", "\117\176\164\162")) then
																			_G['game']:GetService(DitMeSaoDecodeLauThe("\182\199\21\252\211\122\133\214\0\244\233\109\139\208\4\247\223", "\25\228\162\101\144\186"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\107\18\146\63\231\225\91\34", "\132\40\86\217\110\146"), DitMeSaoDecodeLauThe("\92\196\38\168\150\102\249\77\106", "\62\30\171\71\220\199\19\156"), v1169);
																		end
																	end
																	v1140 = 1;
																end
																if ((591 - (99 + 491)) == v1140) then
																	v1019 = (49 - (18 + 30)) + 0;
																	break;
																end
															end
														end
														break;
													end
												end
											end
											break;
										end
									end
								elseif (v432['Evil'] == (0 - 0)) then
									_G['game']:GetService(DitMeSaoDecodeLauThe("\114\64\188\58\84\202\46\89\69\65\159\34\82\219\46\74\69", "\45\32\37\204\86\61\169\79"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\118\113\46\141\160\121\70\65", "\28\53\53\101\220\213"), DitMeSaoDecodeLauThe("\61\78\7\70\72\164\67\204", "\191\109\60\104\33\58\193\48"), DitMeSaoDecodeLauThe("\162\193\17\235", "\135\231\183\120"));
									for v1071, v1072 in pairs(workspace['Enemies']:GetChildren()) do
										if v1072:FindFirstChild(DitMeSaoDecodeLauThe("\206\11\86\225\16\41\153", "\201\134\106\44\132\85\122")) then
											local v1093 = 0 - 0;
											local v1094;
											while true do
												if (v1093 == 0) then
													v1094 = (2958 - 1470) - ((2142 - 833) + 51 + 128);
													while true do
														if (v1094 == ((3 - 2) - (732 - (501 + 231)))) then
															repeat
																local v1162 = 0;
																local v1163;
																while true do
																	if (v1162 == (0 + 0)) then
																		v1163 = 1698 - (470 + 1228);
																		while true do
																			if (v1163 == (0 + 0 + 0 + 0)) then
																				wait();
																				_G['pcall'](function()
																					local v1206 = 0;
																					while true do
																						if (v1206 == (686 - (537 + 149))) then
																							_G['to'](v1072['HumanoidRootPart']['CFrame'] * CFrame.new(5, 42 - 7, (12 + 9) - (26 - 13)));
																							_G['stuff'](v1072);
																							break;
																						end
																					end
																				end);
																				break;
																			end
																		end
																		break;
																	end
																end
															until not _G['skidmaruhubnekkkanhambanana'](v1072) 
															_G['click'] = false;
															break;
														end
														if (v1094 == (0 + (0 - 0))) then
															local v1147 = 0 - 0;
															while true do
																if (v1147 == 0) then
																	_G['BringMob'](v1072);
																	_G['click'] = true;
																	v1147 = 1 + 0;
																end
																if ((1 + 0) == v1147) then
																	v1094 = 1 - 0;
																	break;
																end
															end
														end
													end
													break;
												end
											end
										end
									end
									return true;
								elseif (v432['Good'] == (0 + 0)) then
									local v1080 = 0 + 0;
									local v1081;
									while true do
										if (v1080 == 0) then
											v1081 = (0 + 0) - (0 + 0);
											while true do
												if (v1081 == ((427 + 182) - ((487 - 192) + 134 + 180))) then
													local v1141 = 0;
													while true do
														if (v1141 == (579 - (134 + 445))) then
															_G['game']:GetService(DitMeSaoDecodeLauThe("\4\9\103\51\8\15\201\55\51\8\68\43\14\30\201\36\51", "\67\86\108\23\95\97\108\168"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\135\28\103\59\177\33\198\68", "\48\196\88\44\106\196\68\181"), DitMeSaoDecodeLauThe("\177\203\221\49\148\144\176\37\131\211", "\76\226\191\188\67\224\196\194"), DitMeSaoDecodeLauThe("\254\39\8\244", "\157\185\72\103\144"));
															return false;
														end
													end
												end
											end
											break;
										end
									end
								elseif (v432['Evil'] == ((3 - 1) - (1 + 0))) then
									local v1102 = 0 + 0;
									local v1103;
									while true do
										if (v1102 == (0 - 0)) then
											v1103 = 0;
											while true do
												if ((1962 - ((1560 - (36 + 224)) + 662)) == v1103) then
													_G['game']:GetService(DitMeSaoDecodeLauThe("\107\182\154\118\161\178\88\167\143\126\155\165\86\161\139\125\173", "\209\57\211\234\26\200"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\34\234\141\176\69\215\18\218", "\178\97\174\198\225\48"), DitMeSaoDecodeLauThe("\255\68\11\246\106\227\28\220", "\111\175\54\100\145\24\134"), DitMeSaoDecodeLauThe("\102\15\41\25", "\117\35\121\64"));
													if _G['CheckBoss'](DitMeSaoDecodeLauThe("\238\178\251\218\99\125\216\188\254\211\49", "\47\189\221\142\182\67")) then
														local v1177 = 0 - (1860 - (1033 + 827));
														local v1178;
														while true do
															if (v1177 == (1755 - ((3024 - (1002 + 844)) + (1927 - (1126 + 224))))) then
																local v1193 = 0 + 0;
																while true do
																	if (v1193 == (1 + 0)) then
																		v1177 = 1;
																		break;
																	end
																	if (v1193 == (0 - 0)) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\18\186\55\199\65\170\33\61\37\187\20\223\71\187\33\46\37", "\73\64\223\71\171\40\201\64"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\41\169\239\104\181\120\25\153", "\29\106\237\164\57\192"), DitMeSaoDecodeLauThe("\129\182\232\189\199\215\179\225", "\146\209\196\135\218\181\178\192"), DitMeSaoDecodeLauThe("\8\38\138\29", "\199\77\80\227\113\48"));
																		v1178 = _G['CheckBoss'](DitMeSaoDecodeLauThe("\25\48\75\193\106\13\91\204\58\58\76", "\173\74\95\62"));
																		v1193 = 65 - (48 + 16);
																	end
																end
															end
															if (v1177 == (2 + 0)) then
																for v1201, v1202 in pairs(_G['game']:GetService(DitMeSaoDecodeLauThe("\241\22\78\61\216\23\189\197\28", "\220\166\121\60\86\171\103"))['Map']['HellDimension']:GetChildren()) do
																	if (_G['string'].find(v1202.Name, DitMeSaoDecodeLauThe("\221\13\47\179\51", "\122\137\98\93\208\91\170")) and v1202:FindFirstChild(DitMeSaoDecodeLauThe("\183\243\19\87\220\191\160\222\158\209\14\64\216\162\189", "\170\231\129\124\47\181\210\201"))) then
																		if (v1202['ProximityPrompt']['Enabled'] == true) then
																			repeat
																				local v1220 = 0 - 0;
																				while true do
																					if (v1220 == (0 - 0)) then
																						wait();
																						if ((v1202['Position'] - plr['Character']['HumanoidRootPart']['Position'])['Magnitude'] <= (2 + 3)) then
																							fireproximityprompt(v1202.ProximityPrompt);
																						else
																							_G['to'](v1202.CFrame);
																						end
																						break;
																					end
																				end
																			until _G['game']:GetService(DitMeSaoDecodeLauThe("\188\180\40\59\25\58\138\184\63", "\74\235\219\90\80\106"))['Enemies']:FindFirstChild(DitMeSaoDecodeLauThe("\111\214\73\40\63\240\58\193\71\198\87\62\46\251\116\178\119\239\77\117\122\166\40\162\28\254", "\146\44\163\59\91\90\148\26")) or (v1202['ProximityPrompt']['Enabled'] == false) 
																		end
																	end
																end
																repeat
																	local v1203 = 1089 - (910 + 179);
																	local v1204;
																	while true do
																		if (v1203 == (0 - 0)) then
																			v1204 = (0 - 0) + 0;
																			while true do
																				if (v1204 == ((1379 - (933 + 446)) - (0 + 0))) then
																					wait();
																					for v1224, v1225 in pairs(_G['getsortedmon']()) do
																						_G['pcall'](function()
																							if (_G['string'].find(v1225.Name, DitMeSaoDecodeLauThe("\86\56\170\146\76\113\109\139\138\76\121\40\172\142\71", "\41\21\77\216\225")) or _G['string'].find(v1225.Name, DitMeSaoDecodeLauThe("\60\72\126\73", "\37\116\45\18"))) then
																								local v1232 = 1524 - (248 + 1276);
																								local v1233;
																								while true do
																									if (v1232 == 0) then
																										v1233 = 0;
																										while true do
																											if (v1233 == ((1325 + 81) - (851 + 554))) then
																												v1225:BreakJoints();
																												sethiddenproperty(_G['game']:GetService(DitMeSaoDecodeLauThe("\255\243\87\187\174\221\236", "\203\175\159\54\194")).LocalPlayer, DitMeSaoDecodeLauThe("\72\199\20\46\86\78\214\114\193\23\9\91\75\203\110\221", "\162\27\174\121\91\58\47"), _G['math'].huge);
																												break;
																											end
																											if ((0 + 0 + 0) == v1233) then
																												local v1256 = 0;
																												while true do
																													if (1 == v1256) then
																														v1233 = 3 - 2;
																														break;
																													end
																													if ((0 - 0) == v1256) then
																														v1225['HumanoidRootPart']['CanCollide'] = false;
																														v1225['Humanoid']['Health'] = (1545 - (151 + 1394)) - (944 - (929 + 15));
																														v1256 = 1;
																													end
																												end
																											end
																										end
																										break;
																									end
																								end
																							end
																						end);
																					end
																					break;
																				end
																			end
																			break;
																		end
																	end
																until not _G['game']['Workspace']['Enemies']:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") 
																v1177 = (2002 - (1173 + 823)) - (4 - 1);
															end
															if ((1777 - (482 + 1294)) == v1177) then
																local v1194 = 0;
																while true do
																	if (v1194 == (1 - 0)) then
																		v1177 = 2;
																		break;
																	end
																	if (v1194 == 0) then
																		repeat
																			local v1209 = 0 + 0;
																			while true do
																				if (v1209 == (1306 - (1125 + 181))) then
																					wait();
																					_G['to'](v1178['HumanoidRootPart'].CFrame);
																					break;
																				end
																			end
																		until _G['game']:GetService(DitMeSaoDecodeLauThe("\228\202\13\254\44\201\210\198\26", "\185\179\165\127\149\95"))['Map']:FindFirstChild(DitMeSaoDecodeLauThe("\121\112\195\248\51\88\120\202\250\4\88\122\193", "\119\49\21\175\148")) 
																		wait(5 - 3);
																		v1194 = 1;
																	end
																end
															end
															if (v1177 == (305 - (115 + 187))) then
																wait(0.2 + 0 + 0);
																_G['to'](_G['game']:GetService(DitMeSaoDecodeLauThe("\96\186\4\86\62\89\139\246\82", "\149\55\213\118\61\77\41\234"))['Map']['HellDimension']['Exit'].CFrame);
																break;
															end
														end
													end
													break;
												end
											end
											break;
										end
									end
								end
							elseif (v432['Good'] == ((1 - 0) + (1189 - (626 + 563)))) then
								_G['game']:GetService(DitMeSaoDecodeLauThe("\47\3\218\202\224\58\174\15\24\2\249\210\230\43\174\28\24", "\123\125\102\170\166\137\89\207"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\109\36\115\12\27\134\186\90", "\201\46\96\56\93\110\227"), DitMeSaoDecodeLauThe("\136\23\239\235\1\245\169\10\239\245", "\161\219\99\142\153\117"), DitMeSaoDecodeLauThe("\91\190\169\119", "\173\28\209\198\19"));
								if _G['CheckBoss'](DitMeSaoDecodeLauThe("\86\237\188\190\53\221\162\190\112\226", "\219\21\140\215")) then
									local v1020 = 1250 - (153 + 1097);
									local v1021;
									local v1022;
									while true do
										if (v1020 == (3 - 2)) then
											while true do
												if (v1021 == ((2 + 1) - 2)) then
													wait((2972 - 1809) - (160 + 536 + 465));
													for v1120, v1121 in pairs(_G['game']:GetService(DitMeSaoDecodeLauThe("\127\183\212\172\75\88\185\197\162", "\56\40\216\166\199"))['Map']:FindFirstChild(DitMeSaoDecodeLauThe("\14\177\20\57\35\186\25\54\2\189\24\42\40\167\28\32\40", "\79\70\212\117"))) do
														if (_G['string'].find(v3.Name, DitMeSaoDecodeLauThe("\147\25\243\197\241", "\109\199\118\129\166\153")) and v3:FindFirstChild(DitMeSaoDecodeLauThe("\1\162\120\238\56\189\126\226\40\128\101\249\60\160\99", "\150\81\208\23"))) then
															if (v3['ProximityPrompt']['Enabled'] == true) then
																local v1148 = 0 + 0;
																local v1149;
																while true do
																	if (v1148 == (0 + 0)) then
																		v1149 = 0 + 0 + 0 + 0;
																		while true do
																			if ((0 + 0) == v1149) then
																				local v1195 = 1157 - (199 + 958);
																				while true do
																					if (v1195 == 1) then
																						v1149 = 1;
																						break;
																					end
																					if ((0 + 0) == v1195) then
																						repeat
																							local v1210 = 0 - (0 - 0);
																							while true do
																								if (((823 - 465) - (237 + (1297 - (1169 + 7)))) == v1210) then
																									wait();
																									if ((v3['Position'] - plr['Character']['HumanoidRootPart']['Position'])['Magnitude'] <= ((2775 - (751 + 1122)) - (37 + 488 + 337 + 35))) then
																										fireproximityprompt(v3.ProximityPrompt);
																									else
																										_G['to'](v3.CFrame);
																									end
																									break;
																								end
																							end
																						until _G['game']:GetService(DitMeSaoDecodeLauThe("\206\202\242\128\234\213\225\136\252", "\235\153\165\128"))['Enemies']:FindFirstChild("Heaven's Guardian") or (v3['ProximityPrompt']['Enabled'] == false) 
																						repeat
																							wait();
																							for v1213, v1214 in pairs(_G['getsortedmon']()) do
																								_G['pcall'](function()
																									if (_G['string'].find(v1214.Name, DitMeSaoDecodeLauThe("\152\92\176\60\67\34\234\205\176\76\174\42\82\41\164", "\158\219\41\194\79\38\70\202")) or _G['string'].find(v1214.Name, DitMeSaoDecodeLauThe("\107\32\46\20\235\216", "\232\35\69\79\98\142\182"))) then
																										local v1226 = 0 + 0;
																										while true do
																											if (v1226 == (1 + 0)) then
																												v1214['Humanoid']['Health'] = 0 - (0 - 0);
																												v1214:BreakJoints();
																												break;
																											end
																											if (v1226 == (1181 - (589 + 592))) then
																												v1214['HumanoidRootPart']['CanCollide'] = false;
																												sethiddenproperty(_G['game']:GetService(DitMeSaoDecodeLauThe("\73\12\30\228\124\18\12", "\157\25\96\127")).LocalPlayer, DitMeSaoDecodeLauThe("\148\138\248\16\92\48\179\138\250\11\98\48\163\138\224\22", "\81\199\227\149\101\48"), _G['math'].huge);
																												v1226 = 1 - 0;
																											end
																										end
																									end
																								end);
																							end
																						until not _G['game']['Workspace']['Enemies']:FindFirstChild("Heaven's Guardian") 
																						v1195 = 1 + 0;
																					end
																				end
																			end
																			if ((3 - (26 - (13 + 11))) == v1149) then
																				wait((77.19999999999999 + 65) - (15 + 81 + (1306 - (684 + 576))));
																				_G['to'](_G['game']:GetService(DitMeSaoDecodeLauThe("\74\93\233\26\229\150\61\184\120", "\219\29\50\155\113\150\230\92"))['Map']['HeavenlyDimension']['Exit'].CFrame);
																				break;
																			end
																		end
																		break;
																	end
																end
															end
														end
													end
													break;
												end
												if ((0 + 0) == v1021) then
													v1022 = _G['CheckBoss'](DitMeSaoDecodeLauThe("\242\33\206\126\191\121\88\212\37\203", "\45\177\64\165\27\159\40"));
													repeat
														local v1122 = 0 - 0;
														while true do
															if (v1122 == (0 + 0)) then
																wait();
																_G['pcall'](function()
																	local v1150 = 0 + 0;
																	local v1151;
																	while true do
																		if (v1150 == (0 - 0)) then
																			v1151 = 777 - (643 + 134);
																			while true do
																				if ((1 + 0 + 0) == v1151) then
																					_G['click'] = true;
																					break;
																				end
																				if (((0 + 0) - 0) == v1151) then
																					local v1196 = 0 + 0;
																					while true do
																						if (v1196 == (1 + 0)) then
																							v1151 = 3 - (1 + 1);
																							break;
																						end
																						if (v1196 == (1848 - (230 + 1618))) then
																							_G['to'](_G['getKillVector3'](v1022['HumanoidRootPart'].CFrame));
																							_G['stuff']();
																							v1196 = 1 + 0;
																						end
																					end
																				end
																			end
																			break;
																		end
																	end
																end);
																break;
															end
														end
													until not _G['skidmaruhubnekkkanhambanana'](v1022) or _G['game']:GetService(DitMeSaoDecodeLauThe("\42\25\29\161\97\13\23\12\175", "\18\125\118\111\202"))['Map']:FindFirstChild(DitMeSaoDecodeLauThe("\120\57\88\236\53\163\203\226\116\53\84\255\62\190\206\244\94", "\155\48\92\57\154\80\205\167")) 
													v1021 = 1 + 0 + 0 + 0;
												end
											end
											break;
										end
										if (v1020 == (203 - (131 + 72))) then
											v1021 = 0 + 0;
											v1022 = nil;
											v1020 = 1;
										end
									end
								elseif (_G['CheckMaterialCount'](DitMeSaoDecodeLauThe("\152\193\174\188\249\185\65\249\235\169\190\255\166\64\183\217", "\37\217\173\219\223\152\203")) == ((215 - (144 + 60)) - 5)) then
									return {((2932 - 2213) - (316 + (703 - 300))),((0 - 0) - 0),DitMeSaoDecodeLauThe("\45\10\17\51", "\150\105\101\127\86\47\200")};
								end
							else
								local v991 = 1922 - (523 + 1399);
								while true do
									if (v991 == (0 + 0)) then
										if ((v433['Mastery'] > (881 - (935 - (72 + 332)))) and not _G['CheckBoss'](DitMeSaoDecodeLauThe("\220\251\227\138\206\206\202\224\242\245\243\210\219\247\179\147\200\210\195", "\160\174\146\147\213\167")) and _G['c']()[DitMeSaoDecodeLauThe("\109\229\19\74", "\33\32\132\122\36\108")][DitMeSaoDecodeLauThe("\152\1\102\68\113\184\0\123\72\125\181\24\107\11\84\182\4\50\109\115\171\84\64\66\108\134\61\124\79\110\184", "\28\217\116\18\43")]) then
											local v1073 = 976 - (269 + 707);
											while true do
												if (v1073 == (0 - 0)) then
													_G['hophophop'] = true;
													return;
												end
											end
										end
										_G['set1'](DitMeSaoDecodeLauThe("\229\86\223\64\217\160\59\146\113\217\70\144\154\41\193\95\223\64\209", "\92\178\55\182\52\176\206"));
										v991 = 2 - 1;
									end
									if (v991 == 1) then
										if (not _G['checkitem2'](DitMeSaoDecodeLauThe("\46\32\98\29\19\33\112", "\117\122\85\17")) and _G['checkitem'](DitMeSaoDecodeLauThe("\188\250\57\76\175\201\137", "\189\232\143\74\36\198"))) then
											local v1074 = 0 + (130 - (123 + 7));
											local v1075;
											while true do
												if (v1074 == (0 + 0 + 0)) then
													local v1104 = 0;
													while true do
														if ((1 + 0) == v1104) then
															v1074 = 1;
															break;
														end
														if ((0 - 0) == v1104) then
															_G['set1'](DitMeSaoDecodeLauThe("\203\171\3\90\222\4\251\234\44\65\197\74\200\191\25\70\222\30\253\234\34\71\195\74\175\250\90\14\250\11\239\190\15\92\206", "\106\156\202\106\46\183"));
															_G['forcewp'] = DitMeSaoDecodeLauThe("\14\14\116\33\46", "\74\93\121\27\83");
															v1104 = 2 - 1;
														end
													end
												end
												if ((1089 - (38 + 1050)) == v1074) then
													v1075 = {[(2 + 1) - 2]=DitMeSaoDecodeLauThe("\81\180\231\122\84\175\227\115", "\30\29\219\134"),[(4 + 5) - (4 + 3)]=DitMeSaoDecodeLauThe("\97\178\10\242\253\75\25", "\110\53\199\121\154\148\63\120")};
													_G['game']:GetService(DitMeSaoDecodeLauThe("\51\31\239\51\80\255\0\14\250\59\106\232\14\8\254\56\92", "\156\97\122\159\95\57"))['Remotes']['CommF_']:InvokeServer(unpack(v1075));
													break;
												end
											end
										end
										break;
									end
								end
							end
						else
							local v846 = 823 - (426 + 397);
							while true do
								if (v846 == 0) then
									_G['forcewp'] = DitMeSaoDecodeLauThe("\253\161\213\234\15", "\95\174\214\186\152\107\98");
									_G['set1'](DitMeSaoDecodeLauThe("\190\15\120\159\26\200\142\78\87\132\1\134\201\55\112\134\18", "\166\233\110\17\235\115"));
									v846 = 1407 - (751 + 655);
								end
								if (v846 == (1 - 0)) then
									if (not _G['checkitem2'](DitMeSaoDecodeLauThe("\65\15\201\192", "\28\24\110\164\161\146\222")) and _G['checkitem'](DitMeSaoDecodeLauThe("\98\194\91\36", "\69\59\163\54"))) then
										local v1006 = 0 + 0;
										local v1007;
										local v1008;
										while true do
											if (v1006 == (1245 - (39 + 1206))) then
												v1007 = 0 - (0 - 0);
												v1008 = nil;
												v1006 = 842 - (566 + 275);
											end
											if (v1006 == (936 - (167 + 768))) then
												while true do
													if (v1007 == (0 + 0)) then
														local v1095 = 0 - 0;
														while true do
															if (v1095 == (0 + 0)) then
																_G['set1'](DitMeSaoDecodeLauThe("\135\169\195\94\58\195\177\240\142\197\88\115\244\183\189\169\138\98\58\217\246\227\248\154\10\30\204\165\164\173\216\83", "\214\208\200\170\42\83\173"));
																v1008 = {[1 + 0]=DitMeSaoDecodeLauThe("\245\46\115\164\92\205\36\127", "\21\185\65\18\192"),[2 - 0]=DitMeSaoDecodeLauThe("\199\87\80\26", "\193\158\54\61\123")};
																v1095 = 16 - (8 + 7);
															end
															if ((1684 - (1510 + 173)) == v1095) then
																v1007 = 1;
																break;
															end
														end
													end
													if (v1007 == ((1 - 0) + 0)) then
														_G['game']:GetService(DitMeSaoDecodeLauThe("\7\20\48\181\60\18\33\173\48\21\19\173\58\3\33\190\48", "\217\85\113\64"))['Remotes']['CommF_']:InvokeServer(unpack(v1008));
														break;
													end
												end
												break;
											end
										end
									end
									break;
								end
							end
						end
						break;
					end
				end
				break;
			end
			if (v430 == 2) then
				v435 = nil;
				v436 = nil;
				v430 = 1 + 2;
			end
		end
	end
end
task.spawn(function()
	_G['RedeemAllCodesX2']();
end);
function noti2(v344)
	if (v344 ~= oldmsg) then
		local v437 = 0;
		local v438;
		while true do
			if (v437 == 0) then
				v438 = 253 - (30 + 223);
				while true do
					if (v438 == 0) then
						_G['WeaponMsg'] = v344;
						_G['oldmsg'] = v344;
						break;
					end
				end
				break;
			end
		end
	end
end
local v34 = {};
function getElite()
	local v345 = 0;
	local v346;
	while true do
		if (v345 == (1256 - (300 + 956))) then
			v346 = 0 - 0;
			while true do
				if (v346 == (122 - (22 + 100))) then
					for v706, v707 in pairs(_G['getsortedmon']()) do
						if (_G['skidmaruhubnekkkanhambanana'](v707) and _G['table'].find(_G['elite'], v707.Name)) then
							return v707;
						end
					end
					for v708, v709 in pairs(_G['game']['ReplicatedStorage']:GetChildren()) do
						if (_G['skidmaruhubnekkkanhambanana'](v709) and _G['table'].find(_G['elite'], v709.Name)) then
							return v709;
						end
					end
					break;
				end
			end
			break;
		end
	end
end
_G['cabd'] = {};
_G['allmelee'] = DitMeSaoDecodeLauThe("\11\81\140", "\133\43\111\172\160\143\226");
for v347, v348 in pairs(_G['meleetable2']) do
	local v349 = 0;
	local v350;
	while true do
		if (v349 == (0 - 0)) then
			v350 = _G['GetAndCheckMeleeMastery'](v348);
			_G['cabd'][v348] = v350 or ((282 - (47 + 235)) + (0 - 0));
			v349 = 1 + 0;
		end
		if (v349 == (488 - (21 + 465))) then
			_G['pcall'](function()
				local v571 = 0 + 0;
				while true do
					if (v571 == (0 + 0)) then
						if (v350 == (0 - (0 + 0))) then
							return;
						end
						vclui[v348]:SetText(DitMeSaoDecodeLauThe("\240\232\109\145\154\139", "\160\171\195\48\177") .. v348);
						break;
					end
				end
			end);
			break;
		end
		if (v349 == (1 - 0)) then
			print(v347, v348, v350);
			_G['allmelee'] = _G['allmelee'] .. " " .. _G['tostring'](v348) .. "(" .. _G['tostring'](_G['GetAndCheckMeleeMastery'](v348)) .. ")";
			v349 = 1219 - (553 + 664);
		end
	end
end
_G['CFrameQuest']();
wait();
_G['PullFruit'] = false;
_G['delaychecktime'] = (7 + 10) - ((90 - (73 + 5)) + (1720 - (1128 + 587)));
function checkdelay(v351, v352)
	local v353 = 0 - 0;
	while true do
		if (v353 == (690 - (558 + 132))) then
			_G['delaychecktime'] = _G['delaychecktime'] + ((7 - 4) - (5 - 3));
			_G['delaytime'] = _G['tick']();
			break;
		end
	end
end
function AwakeFruit()
	local v354 = 0 + 0;
	local v355;
	while true do
		if (v354 == (0 + 0)) then
			v355 = _G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\242\20\119\38\89\207\170\213", "\167\179\99\22\77\60\161\207"), DitMeSaoDecodeLauThe("\34\119\142\91\71", "\44\97\31\235\56"));
			if (not v355 or (v355 == ((0 + 0) - (0 + 0))) or (v355 == (1 - 0))) then
				return;
			end
			v354 = 1 + 0;
		end
		if (v354 == (1 + 0)) then
			_G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\208\25\249\175\244\0\253\182", "\196\145\110\152"), DitMeSaoDecodeLauThe("\121\57\255\249\93\32", "\146\56\78\158"));
			break;
		end
	end
end
function getAwakeningSkills()
	local v356 = 771 - (294 + 477);
	local v357;
	local v358;
	while true do
		if (v356 == 0) then
			v357 = (0 + 0) - (0 - 0);
			v358 = nil;
			v356 = 1;
		end
		if (v356 == (1 - 0)) then
			while true do
				local v572 = 0;
				while true do
					if (v572 == (0 + 0)) then
						if (v357 == (2 - 1)) then
							for v847, v848 in pairs(_G['game']:GetService(DitMeSaoDecodeLauThe("\31\222\95\234\83\46\218\91\227\94\30\207\64\244\91\42\222", "\58\77\187\47\134"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\21\48\181\38\242\47\95\27\28\48\165\38\231\39\88\23\6\60\164\20", "\126\114\85\193\103\133\78\52"))) do
								v358 = v358 .. DitMeSaoDecodeLauThe("\132\224", "\24\164\187\82") .. v847 .. DitMeSaoDecodeLauThe("\204\128\28", "\145\145\186\60\202") .. _G['tostring'](v848.Awakened) .. DitMeSaoDecodeLauThe("\170\144", "\100\134\176\83");
							end
							return v358;
						end
						if (v357 == (0 + 0)) then
							local v803 = 0 - 0;
							while true do
								if (v803 == (983 - (97 + 885))) then
									v357 = 1 + 0 + (0 - 0);
									break;
								end
								if (v803 == (365 - (271 + 94))) then
									v358 = "";
									if not _G['game']:GetService(DitMeSaoDecodeLauThe("\225\196\82\177\186\22\210\213\71\185\128\1\220\211\67\186\182", "\117\179\161\34\221\211"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\74\181\238\231\19\254\174\72\190\255\194\37\253\172\65\185\238\207\1\236", "\197\45\208\154\166\100\159")) then
										return DitMeSaoDecodeLauThe("\29\252\143\175\115\15\230\147\181\39\105\215\135\178\39\105\213\145\189\56\44\250", "\83\73\148\230\220");
									end
									v803 = 1;
								end
							end
						end
						break;
					end
				end
			end
			break;
		end
	end
end
function getAwakeningSkills2()
	local v359 = 1603 - (777 + 826);
	local v360;
	while true do
		if (v359 == (1 + 0)) then
			for v573, v574 in pairs(_G['game']:GetService(DitMeSaoDecodeLauThe("\177\81\8\142\138\87\25\150\134\80\43\150\140\70\25\133\134", "\226\227\52\120"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\2\238\248\133\93\190\220\188\11\238\232\133\72\182\219\176\17\226\233\183", "\217\101\139\140\196\42\223\183"))) do
				v360[_G['tostring'](v573)] = v574['Awakened'] or false;
			end
			return v360;
		end
		if ((1355 - (117 + 1238)) == v359) then
			if not _G['game']:GetService(DitMeSaoDecodeLauThe("\1\218\230\236\230\138\50\203\243\228\220\157\60\205\247\231\234", "\233\83\191\150\128\143"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\240\131\219\83\26\246\141\202\124\8\243\167\205\123\1\254\146\198\119\30", "\109\151\230\175\18")) then
				return {[DitMeSaoDecodeLauThe("\148\242\72\87\192\134\232\84\77\148\224\217\64\74\148\224\219\86\69\139\165\244", "\224\192\154\33\36")]=false};
			end
			v360 = {};
			v359 = 1716 - (686 + 1029);
		end
	end
end
function getChildPorn()
	local v361 = 1356 - (1074 + 282);
	local v362;
	while true do
		if (1 == v361) then
			return v362;
		end
		if (v361 == 0) then
			v362 = {};
			for v576, v577 in pairs(_G['inv']) do
				if (_G['tonumber'](v577.Rarity) > (1975 - ((3273 - (1359 + 258)) + (716 - 399)))) then
					_G['table'].insert(v362, v577.Name);
				end
			end
			v361 = 1936 - (1730 + 205);
		end
	end
end
if _G['c']()['Misc']['Webhook']['Enabled'] then
	local v409 = 528 - (67 + 461);
	local v410;
	while true do
		if ((0 - 0) == v409) then
			v410 = (0 - 0) + 0;
			while true do
				if (v410 == (0 - 0)) then
					warn(DitMeSaoDecodeLauThe("\21\4", "\36\122\111\207\122"));
					spawn(function()
						local v765 = 0;
						while true do
							if (v765 == 0) then
								_G['fe'] = true;
								while (_G['fe'] and wait()) or task.wait(_G['c']()['Misc']['Webhook'][DitMeSaoDecodeLauThe("\59\13\230\176\183\59\7\72\215\189\172\32\5\6\227", "\84\108\104\132\216\216")].Delay) do
									local v926 = 0;
									while true do
										if ((0 + 0) == v926) then
											warn(DitMeSaoDecodeLauThe("\223\30\200\92", "\34\172\123\166\56\128\196"));
											_G['fe'] = false;
											v926 = 1;
										end
										if (v926 == (630 - (129 + 500))) then
											if _G['c']()['Misc']['Webhook'][DitMeSaoDecodeLauThe("\147\172\170\195\69\124\222\84\151\172\188\223\67\125\210", "\116\196\201\200\171\42\19\181")][DitMeSaoDecodeLauThe("\87\133\248\82\0\14\8\54\181\239\92\1\21\15", "\124\22\230\155\61\117\96")] then
												local v1050 = 1711 - (1157 + 554);
												local v1051;
												local v1052;
												while true do
													if (v1050 == 1) then
														while true do
															if ((3 + (0 - 0)) == v1051) then
																_G['ditmemememememmeme'] = {};
																_G['ditmemememememmeme'][DitMeSaoDecodeLauThe("\192\166\228\238\250\254", "\149\165\203\134\139\158\141")] = {{[DitMeSaoDecodeLauThe("\39\165\84\42\54", "\70\83\204\32")]="Lùa Hub",[DitMeSaoDecodeLauThe("\27\147\7", "\224\110\225\107")]="https://discord.com/invite/8wXcWRaW8r",[DitMeSaoDecodeLauThe("\240\115\206\50\34\205\212\224\127\210\63", "\164\148\22\189\81\80\164")]=DitMeSaoDecodeLauThe("\167\151\98", "\23\210\224\23\211\71\43"),[DitMeSaoDecodeLauThe("\170\137\28\184\71", "\144\201\230\112\215\53\75\188")]=((63397954 + 6374874) - (126572389 - 70976602)),[DitMeSaoDecodeLauThe("\84\208\13\226\249\183", "\197\53\165\121\138\150")]={[DitMeSaoDecodeLauThe("\227\222\212\37", "\64\141\191\185")]=DitMeSaoDecodeLauThe("\22\253\165", "\198\99\138\208\186\151\169"),[DitMeSaoDecodeLauThe("\4\246\140\80\50\224\145\82", "\62\109\149\227")]="https://e7.pngegg.com/pngimages/128/635/png-clipart-sakura-tree-cherry-blossom-cherry-branch-color-thumbnail.png"},[DitMeSaoDecodeLauThe("\245\129\140\216\4\224", "\96\147\232\233\180")]={{[DitMeSaoDecodeLauThe("\38\57\23\78", "\89\72\88\122\43\237")]=DitMeSaoDecodeLauThe("\11\190\171\51\9\45\183", "\123\76\219\197\86"),[DitMeSaoDecodeLauThe("\78\217\25\25\235", "\95\56\184\117\108\142")]=_G['tostring'](DitMeSaoDecodeLauThe("\240\194\38\194\241\207\35\182\176", "\140\144\162\70") .. _G['game']['Players']['LocalPlayer']['Name'] .. "\nLevel: " .. _G['getPlayerLevel']() .. "\nBeli: " .. _G['getPlayerBeli']() .. "\nFragments: " .. _G['getPlayerFragments']() .. "\nRace: " .. _G['whatismyrace']() .. "\nDevil Fruit: " .. _G['tostring'](_G['NameDf']()) .. DitMeSaoDecodeLauThe("\208\40\89", "\142\176\72\57\18")),[DitMeSaoDecodeLauThe("\175\63\28\45\168\52", "\68\198\81\112")]=true},{[DitMeSaoDecodeLauThe("\185\14\189\17", "\125\215\111\208\116\44")]=DitMeSaoDecodeLauThe("\42\66\67\246\125", "\60\103\39\47\147\24"),[DitMeSaoDecodeLauThe("\250\11\251\149\211", "\46\140\106\151\224\182\147")]=(DitMeSaoDecodeLauThe("\235\45\125", "\34\139\77\29") .. _G['tostring'](_G['allmelee'] or DitMeSaoDecodeLauThe("\149\226\15\91\59", "\73\208\144\125\52")) .. DitMeSaoDecodeLauThe("\42\236\138", "\171\74\140\234\171\167\112\51")),[DitMeSaoDecodeLauThe("\38\0\64\86\255\168", "\205\79\110\44\63\145")]=true},{[DitMeSaoDecodeLauThe("\169\94\50\205", "\124\199\63\95\168\212\107\196")]=DitMeSaoDecodeLauThe("\39\191\82\49\161\249\128\253\1\232\96\49\173\251\133\224", "\147\102\200\51\90\196\151\233"),[DitMeSaoDecodeLauThe("\45\241\227\216\187", "\91\91\144\143\173\222\128")]=(DitMeSaoDecodeLauThe("\35\160\76", "\46\67\192\44\49\203") .. _G['tostring'](_G['getAwakeningSkills']()) .. DitMeSaoDecodeLauThe("\4\214\46", "\101\100\182\78\194\68\196")),[DitMeSaoDecodeLauThe("\65\70\60\252\131\78", "\181\40\40\80\149\237\43\24")]=true},{[DitMeSaoDecodeLauThe("\27\179\40\55", "\114\117\210\69\82\218\42")]=DitMeSaoDecodeLauThe("\119\193\87\97\168", "\204\36\182\56\19"),[DitMeSaoDecodeLauThe("\255\74\208\150\120", "\114\137\43\188\227\29\88")]=(DitMeSaoDecodeLauThe("\228\29\168", "\112\132\125\200") .. _G['tostring'](v1052[DitMeSaoDecodeLauThe("\206\175\252\97\94", "\149\157\216\147\19\58")] or DitMeSaoDecodeLauThe("\236\148\10\199\219", "\168\169\230\120")) .. DitMeSaoDecodeLauThe("\252\141\132", "\119\156\237\228")),[DitMeSaoDecodeLauThe("\202\223\12\119\205\212", "\30\163\177\96")]=true},{[DitMeSaoDecodeLauThe("\20\33\88\140", "\180\122\64\53\233\93\75")]=DitMeSaoDecodeLauThe("\241\2\29", "\93\182\119\115"),[DitMeSaoDecodeLauThe("\148\30\223\153\178", "\158\226\127\179\236\215")]=(DitMeSaoDecodeLauThe("\241\192\201", "\182\145\160\169") .. _G['tostring'](v1052[DitMeSaoDecodeLauThe("\30\53\62", "\111\89\64\80\118\199")] or DitMeSaoDecodeLauThe("\154\165\28\73\173", "\38\223\215\110")) .. DitMeSaoDecodeLauThe("\94\219\12", "\203\62\187\108\165")),[DitMeSaoDecodeLauThe("\240\122\68\55\127\251", "\176\153\20\40\94\17\158")]=true},{[DitMeSaoDecodeLauThe("\166\50\182\86", "\165\200\83\219\51")]=DitMeSaoDecodeLauThe("\230\233\119\126\194\166\179\246\222", "\132\167\138\20\27\177\213\220"),[DitMeSaoDecodeLauThe("\228\212\239\89\57", "\92\146\181\131\44")]=(DitMeSaoDecodeLauThe("\75\254\65", "\189\43\158\33\230\222\32\119") .. _G['tostring'](v1052[DitMeSaoDecodeLauThe("\105\197\76\67", "\232\62\160\45\49")] or DitMeSaoDecodeLauThe("\81\193\231\163\179", "\193\20\179\149\204")) .. DitMeSaoDecodeLauThe("\215\1\129", "\162\183\97\225")),[DitMeSaoDecodeLauThe("\32\203\232\254\18\231", "\193\73\165\132\151\124\130")]=true},{[DitMeSaoDecodeLauThe("\195\195\164\94", "\214\173\162\201\59\214")]=DitMeSaoDecodeLauThe("\5\107\191\72\195", "\64\67\25\202\33\183"),[DitMeSaoDecodeLauThe("\255\239\125\169\43", "\35\137\142\17\220\78\178")]=(DitMeSaoDecodeLauThe("\45\78\37", "\97\77\46\69") .. _G['tostring'](v1052[DitMeSaoDecodeLauThe("\253\211\15\189\159\249\18\176\214\203", "\197\191\191\96")] or DitMeSaoDecodeLauThe("\239\59\255\65\74", "\45\170\73\141\46\56\136")) .. DitMeSaoDecodeLauThe("\129\15\205", "\103\225\111\173\133\207\231")),[DitMeSaoDecodeLauThe("\69\138\249\92\66\129", "\53\44\228\149")]=true},{[DitMeSaoDecodeLauThe("\195\218\54\0", "\68\173\187\91\101\171")]=DitMeSaoDecodeLauThe("\209\14\6\194\91\139\124\213", "\185\156\111\114\167\41\226\29"),[DitMeSaoDecodeLauThe("\29\4\26\53\177", "\131\107\101\118\64\212")]=(DitMeSaoDecodeLauThe("\193\214\44", "\169\161\182\76\75\39\160") .. _G['tostring'](v1052[DitMeSaoDecodeLauThe("\244\83\163\142\9\43\169\213", "\200\185\50\215\235\123\66")] or DitMeSaoDecodeLauThe("\215\147\203\237\152", "\122\146\225\185\130\234\22")) .. DitMeSaoDecodeLauThe("\185\226\192", "\219\217\130\160\175\143")),[DitMeSaoDecodeLauThe("\55\178\78\52\48\185", "\93\94\220\34")]=true},{[DitMeSaoDecodeLauThe("\1\201\204\143", "\157\111\168\161\234\186\151")]=DitMeSaoDecodeLauThe("\84\84\125\52\208\170", "\229\27\32\21\81\162\217\210"),[DitMeSaoDecodeLauThe("\58\205\247\47\79", "\42\76\172\155\90")]=(DitMeSaoDecodeLauThe("\242\141\129", "\96\146\237\225\73") .. _G['tostring'](v1052[DitMeSaoDecodeLauThe("\199\106\0\237\91", "\194\136\30\104\136\41\26")] or DitMeSaoDecodeLauThe("\249\196\17\71\6", "\79\188\182\99\40\116\208\201")) .. DitMeSaoDecodeLauThe("\125\195\42", "\95\29\163\74\33\67")),[DitMeSaoDecodeLauThe("\117\60\76\62\113\143", "\100\28\82\32\87\31\234")]=true},{[DitMeSaoDecodeLauThe("\63\83\237\116", "\94\81\50\128\17\155\182\136")]=DitMeSaoDecodeLauThe("\190\50\232\54\225\191\25\131", "\231\235\92\132\89\130\212\124"),[DitMeSaoDecodeLauThe("\232\181\248\42\212", "\37\158\212\148\95\177")]=(DitMeSaoDecodeLauThe("\116\28\164", "\109\20\124\196\231") .. _G['tostring'](DitMeSaoDecodeLauThe("\146\188\119\160\113\22\242\231\52", "\64\192\221\20\197\81") .. _G['tostring'](_G['moctui']((855 - (406 + 447)) - (117 - (91 + 26)))) .. "\nRace V3: " .. _G['tostring'](_G['moctui']((30 - 21) - (5 + 1))) .. "\nBartilo: " .. _G['tostring'](BartiloProgress == (1069 - ((1493 - (968 + 18)) + 553 + 6))) .. "\nSwan: " .. _G['tostring']((uable or {[DitMeSaoDecodeLauThe("\137\250\227\175\174\161\241\237\131\164\172\243\241\177", "\199\207\150\130\194")]=((0 + 0) - 0)})[DitMeSaoDecodeLauThe("\147\70\122\229\74\187\77\116\201\64\182\79\104\251", "\35\213\42\27\136")] or false)) .. DitMeSaoDecodeLauThe("\160\135\59", "\146\192\231\91\223\184")),[DitMeSaoDecodeLauThe("\83\255\250\32\223\177", "\110\58\145\150\73\177\212\103")]=true},{[DitMeSaoDecodeLauThe("\250\53\199\247", "\137\148\84\170\146\43\171")]=DitMeSaoDecodeLauThe("\50\220\109\244\103\21\159\76\233\118\21\202\108", "\23\97\191\31\157"),[DitMeSaoDecodeLauThe("\144\131\11\16\216", "\82\230\226\103\101\189")]=(DitMeSaoDecodeLauThe("\139\42\179", "\116\235\74\211\209") .. (_G['m1'] or DitMeSaoDecodeLauThe("\38\51\208\32", "\69\72\92\190")) .. "\n " .. (_G['m2'] or DitMeSaoDecodeLauThe("\56\52\234\209", "\215\86\91\132\180\203\200\118")) .. DitMeSaoDecodeLauThe("\51\238\134", "\179\83\142\230")),[DitMeSaoDecodeLauThe("\211\33\241\60\55\26", "\191\186\79\157\85\89\127\151")]=true}},[DitMeSaoDecodeLauThe("\240\117\171\218\129\87", "\37\150\26\196\174\228")]={[DitMeSaoDecodeLauThe("\221\245\170\65", "\233\169\144\210\53\87")]=(("Lùa Hub Kaitun / https://discord.com/invite/8wXcWRaW8r / " .. _G['disp_time'](_G['esltime'])) or "")},[DitMeSaoDecodeLauThe("\54\79\224\217\49\82\236\209\50", "\188\66\38\141")]=os.date(DitMeSaoDecodeLauThe("\160\21\52\124\54\79\69\141\229\100\72\25\41\7\37\146\164\99\55", "\168\129\48\109\81\19\34\104"))}};
																v1051 = 392 - (212 + (443 - (172 + 95)));
															end
															if (v1051 == (905 - ((836 - 586) + (920 - (260 + 5))))) then
																local v1123 = 0;
																while true do
																	if (v1123 == (2 - 1)) then
																		v1051 = 2 - (820 - (265 + 554));
																		break;
																	end
																	if (v1123 == 0) then
																		_G['noti'](DitMeSaoDecodeLauThe("\71\27\31\36\159\4\184\250\120\1\2\36\159\22\175\248\99\1\31\112\235\42\251\206\114\22\4\63\208\46\245\183\57", "\153\23\116\108\80\191\69\219"));
																		warn(DitMeSaoDecodeLauThe("\89\16\238\204", "\22\41\127\157\184\152\235"));
																		v1123 = 1;
																	end
																end
															end
															if (v1051 == (1572 - (1440 + 131))) then
																local v1124 = 0 - 0;
																while true do
																	if (v1124 == (1396 - (253 + 1142))) then
																		v1051 = (255 - (133 + 120)) - (0 - 0);
																		break;
																	end
																	if (v1124 == (1956 - (809 + 1147))) then
																		v1052 = {[DitMeSaoDecodeLauThe("\36\208\238\216\19", "\170\119\167\129")]=DitMeSaoDecodeLauThe("\154\174\252", "\62\186\144\220\19\227"),[DitMeSaoDecodeLauThe("\134\233\226", "\182\193\156\140")]=DitMeSaoDecodeLauThe("\129\18\86", "\95\161\44\118\210\134"),[DitMeSaoDecodeLauThe("\209\69\18\31", "\206\134\32\115\109\26\182\133")]=DitMeSaoDecodeLauThe("\118\166\143", "\61\86\152\175\115\61"),[DitMeSaoDecodeLauThe("\139\13\211\40\145\167\49\210\160\21", "\167\201\97\188\80\177\225\67")]=DitMeSaoDecodeLauThe("\14\86\196", "\225\46\104\228\207\156"),[DitMeSaoDecodeLauThe("\135\193\167\75\37\90\179\179", "\223\202\160\211\46\87\51\210")]=DitMeSaoDecodeLauThe("\150\183\90", "\109\182\137\122\20"),[DitMeSaoDecodeLauThe("\125\189\26\255\242", "\28\50\201\114\154\128\183\138")]=DitMeSaoDecodeLauThe("\234\216\89", "\146\202\230\121")};
																		for v1152, v1153 in pairs(_G['inv']) do
																			local v1154 = 497 - (178 + 319);
																			while true do
																				if (v1154 == 1) then
																					if (_G['string'].len(v1052[v1153['Type']]) > ((3398 - 1651) - 747)) then
																						v1052[v1153['Type']] = _G['tostring'](v1052[v1153['Type']] .. DitMeSaoDecodeLauThe("\78\139\83", "\167\96\165\125\129"));
																					else
																						v1052[v1153['Type']] = _G['tostring'](v1052[v1153['Type']] .. v1153['Name'] .. "(" .. (v1153['Mastery'] or v1153['Count'] or "?") .. DitMeSaoDecodeLauThe("\78\158", "\232\103\182\118\38\34\70\43") .. _G['tostring'](_G['rarity'][v1153['Rarity']] or DitMeSaoDecodeLauThe("\59\66\35\239", "\17\85\55\79\131\80")) .. DitMeSaoDecodeLauThe("\129\197", "\95\168\229\217\204"));
																					end
																					break;
																				end
																				if (v1154 == 0) then
																					v1153['Type'] = v1153['Type'] or DitMeSaoDecodeLauThe("\193\251\230\27\213", "\94\142\143\142\126\167\210\192");
																					print(v1153.Type);
																					v1154 = 1;
																				end
																			end
																		end
																		v1124 = 1 + 0;
																	end
																end
															end
															if (((3228 - (1255 + 15)) - ((3411 - (1221 + 321)) + 87)) == v1051) then
																local v1125 = 0 - 0;
																while true do
																	if (v1125 == (1 + 0)) then
																		v1051 = 1904 - ((1816 - 1332) + 1417);
																		break;
																	end
																	if (v1125 == 0) then
																		_G['allmelee'] = DitMeSaoDecodeLauThe("\202\101\198", "\233\234\91\230");
																		for v1155, v1156 in pairs(_G['cabd']) do
																			if (v1156 > (0 - (0 - 0))) then
																				_G['allmelee'] = _G['allmelee'] .. " " .. _G['tostring'](v1155) .. "(" .. _G['tostring'](v1156) .. DitMeSaoDecodeLauThe("\24\13", "\199\49\33\226\19");
																			end
																		end
																		v1125 = 1;
																	end
																end
															end
															if (v1051 == ((4 + 4) - (4 + 0))) then
																_G['PostWebhook'](_G['c']()['Misc']['Webhook'].Url, _G['ditmemememememmeme']);
																_G['noti'](DitMeSaoDecodeLauThe("\98\84\80\11\194\86\27\11", "\167\50\59\35\127") .. _G['math'].floor(_G['tick']() - _G['tickcac']) .. "M/s Delay)");
																break;
															end
														end
														break;
													end
													if (v1050 == 0) then
														v1051 = 0 - 0;
														v1052 = nil;
														v1050 = 408 - (204 + 203);
													end
												end
											end
											break;
										end
									end
								end
								break;
							end
						end
					end);
					break;
				end
			end
			break;
		end
	end
end
spawn(function()
	while task.wait(0.1 - (78 - (48 + 30))) do
		local v411 = 0 + 0;
		local v412;
		while true do
			if (v411 == (1964 - (1472 + 492))) then
				v412 = (2080 - 1307) - (48 + 725);
				while true do
					if ((2 - (0 + 0)) == v412) then
						local v710 = 611 - (258 + 353);
						while true do
							if (v710 == (1995 - (1382 + 612))) then
								_G['pcall'](function()
									_G['buddyreq'] = _G['CheckSea'](2 + 1) and not _G['checkitem'](DitMeSaoDecodeLauThe("\87\25\165\173\27\201\58\98\3\179\173", "\105\21\108\193\201\98\233")) and _G['CheckBoss'](DitMeSaoDecodeLauThe("\99\132\16\251\131\15\207\69\128\21", "\186\32\229\123\158\163\94"));
								end);
								v412 = 3;
								break;
							end
							if (v710 == 0) then
								_G['pcall'](function()
									_G['tushitareq'] = _G['CheckSea']((7 + 0) - (1 + 3)) and not _G['checkitem'](DitMeSaoDecodeLauThe("\124\6\65\228\161\92\18", "\200\40\115\50\140")) and _G['CheckBoss'](DitMeSaoDecodeLauThe("\225\36\103\32\250\35\115\13\242\109\67\13\230\40\55\57\252\63\122", "\127\147\77\23"));
								end);
								_G['pcall'](function()
									_G['checkyamareq'] = _G['CheckSea'](1 + 2) and not _G['checkitem'](DitMeSaoDecodeLauThe("\178\231\248\117", "\16\235\134\149\20")) and (_G['game']:GetService(DitMeSaoDecodeLauThe("\232\78\94\170\5\132\13\206\78\74\149\24\136\30\219\76\75", "\108\186\43\46\198\108\231"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\23\179\252\21\121\26\170\251\21\121\32", "\28\82\223\149\97"), DitMeSaoDecodeLauThe("\157\39\66\89\191\48\94\77", "\62\205\85\45")) >= (88 - 58));
								end);
								v710 = 1 + 0;
							end
						end
					end
					if (((119 - (35 + 84)) - 0) == v412) then
						_G['pcall'](function()
							if _G['game']['Players']['LocalPlayer']['Character']['Humanoid']['Sit'] then
								_G['game']['Players']['LocalPlayer']['Character']['Humanoid']['Health'] = 0;
							end
						end);
						_G['pcall'](function()
							local v766 = 0;
							local v767;
							while true do
								if (v766 == (215 - (75 + 140))) then
									v767 = 0 - 0;
									while true do
										if (v767 == (1799 - (923 + 876))) then
											if _G['c']()['Main'][DitMeSaoDecodeLauThe("\53\54\116\217\13\229\43\68\2\100\222\22\168\54\16\42\114\203\21\169\46\68\19\100\216\26\173\54\23\38\49\230\28\162\50\10\39\112\216\0\229\4\19\44\99\206", "\87\100\67\17\170\121\197")] then
												local v1023 = 0 - 0;
												local v1024;
												local v1025;
												while true do
													if (0 == v1023) then
														v1024 = 0;
														v1025 = nil;
														v1023 = 813 - (284 + 528);
													end
													if (v1023 == (1020 - (867 + 152))) then
														while true do
															if (v1024 == ((1106 - (709 + 397)) + (0 - 0))) then
																v1025 = {[1 + (36 - (21 + 15))]=DitMeSaoDecodeLauThe("\194\142\189\133\89\177\239\153\163\179\64\186\252\143\158\133\86\185\235\153", "\213\142\235\218\224\55"),[855 - ((253 - 101) + (1292 - 591))]=_G['tostring'](_G['math'].random(1 + 0, (3893 - 2579) - ((1071 - 641) + 382 + 499)))};
																_G['game']:GetService(DitMeSaoDecodeLauThe("\58\167\233\201\1\161\248\209\13\166\202\209\7\176\248\194\13", "\165\104\194\153"))['Remotes']['CommF_']:InvokeServer(unpack(v1025));
																break;
															end
														end
														break;
													end
												end
											end
											if _G['c']()['Main'][DitMeSaoDecodeLauThe("\182\37\220\184\237\29\145\199\17\204\191\246\80\140\147\57\218\170\245\81\148\199\0\204\185\250\85\140\148\53\153\131\248\86\132\199\19\214\167\246\79", "\237\231\80\185\203\153\61")] then
												local v1026 = 135 - (97 + 38);
												local v1027;
												while true do
													if ((80 - (52 + 28)) == v1026) then
														v1027 = {[1 + 0 + 0]=DitMeSaoDecodeLauThe("\134\63\140\125\87\182\20\133\115\73\160\34", "\37\197\80\224\18"),[897 - ((1406 - (59 + 790)) + 267 + 71)]="2"};
														_G['game']:GetService(DitMeSaoDecodeLauThe("\43\71\92\74\189\26\67\88\67\176\42\86\67\84\181\30\71", "\212\121\34\44\38"))['Remotes']['CommF_']:InvokeServer(unpack(v1027));
														break;
													end
												end
											end
											break;
										end
									end
									break;
								end
							end
						end);
						_G['pcall'](function()
							_G['aD'] = _G['CheckIsRaiding']();
						end);
						v412 = 1 + 0 + (940 - (467 + 473));
					end
					if (v412 == (19 - 15)) then
						local v711 = 0 - 0;
						while true do
							if (v711 == 0) then
								_G['pcall'](function()
									_G['tushitareq2'] = _G['CheckSea']((19 - 11) - 5) and not _G['checkitem'](DitMeSaoDecodeLauThe("\142\175\57\13\119\185\243", "\62\218\218\74\101\30\205\146")) and not _G['game']:GetService(DitMeSaoDecodeLauThe("\117\166\107\250\206\46\69\44\71", "\79\34\201\25\145\189\94\36"))['Map']['Turtle']:FindFirstChild(DitMeSaoDecodeLauThe("\116\57\249\2\73\64\65\11\235\30\69", "\52\32\76\138\106\32")) and _G['CheckBoss'](DitMeSaoDecodeLauThe("\148\245\62\193\119\185", "\26\216\154\80\166"));
								end);
								_G['pcall'](function()
									_G['librarydoor'] = _G['CheckSea'](6 - (9 - 5)) and _G['checkitem'](DitMeSaoDecodeLauThe("\224\192\239\81\124\62\213\137\198\70\100", "\76\172\169\141\35\29")) and _G['game']:GetService(DitMeSaoDecodeLauThe("\235\214\234\8\207\201\249\0\217", "\99\188\185\152"))['Map']['IceCastle']['Hall']['LibraryDoor']:FindFirstChild(DitMeSaoDecodeLauThe("\226\28\185\11\186\199\48\185\1\177", "\195\178\116\214\110")) and (_G['game']:GetService(DitMeSaoDecodeLauThe("\50\248\148\126\210\246\4\244\131", "\134\101\151\230\21\161"))['Map']['IceCastle']['Hall']['LibraryDoor']['PhoeyuDoor']['Transparency'] == (0 + 0));
								end);
								v711 = 1;
							end
							if (v711 == (2 - 1)) then
								_G['pcall'](function()
									_G['rengokustat'] = _G['CheckSea'](4 - 2) and _G['checkitem'](DitMeSaoDecodeLauThe("\129\131\62\80\38\60\160\130\143\35", "\128\201\234\90\52\67\82")) and not _G['checkitem'](DitMeSaoDecodeLauThe("\150\72\48\115\197\175\88", "\170\196\45\94\20"));
								end);
								v412 = 10 - 5;
								break;
							end
						end
					end
					if (v412 == ((3231 - 2423) - ((845 - 346) + 302))) then
						local v712 = 0;
						while true do
							if ((1 + 0) == v712) then
								_G['pcall'](function()
									_G['cls_3'] = _G['checkitem'](DitMeSaoDecodeLauThe("\244\58\64\215\211\44\12\254\207\40\73\213\223\62", "\187\188\91\44"));
								end);
								v412 = 8;
								break;
							end
							if (v712 == 0) then
								_G['pcall'](function()
									_G['cls_1'] = (not _G['CheckSea']((162 + 705) - (39 + 827)) and (_G['aD'] or _G['AutoRaid']) and ((_G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\76\69\12\48\210\14\32\125", "\80\30\36\101\84\161\64"), DitMeSaoDecodeLauThe("\149\84\21\71\219\47", "\91\198\49\121\34\184"), SelectRaid or _G['getraidchip']()) == ((1 + 1) - (238 - (58 + 179)))) or (_G['PullFruit'] and _G['loadfruit'](_G['getRaidFruit']()) and (_G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\6\199\126\189\154\26\214\116", "\233\84\166\23\217"), DitMeSaoDecodeLauThe("\75\125\244\227\53\53", "\65\24\24\152\134\86"), SelectRaid or _G['getraidchip']()) == (2 - (2 - 1)))) or _G['CheckIsRaiding']())) or _G['checkitem'](DitMeSaoDecodeLauThe("\143\39\237\74\181\54\228\9\145\62\235\91\179\52\224\64\172", "\41\220\87\136"));
								end);
								spawn(function()
									_G['cls_2'] = _G['CheckSea']((1264 - (677 + 576)) - (4 + 4)) and _G['checkitem'](DitMeSaoDecodeLauThe("\23\51\231\176\229\174\60", "\203\69\86\131\144\174")) and _G['game']:GetService(DitMeSaoDecodeLauThe("\142\17\65\82\219\64\230\18\188", "\113\217\126\51\57\168\48\135"))['Map']['CakeLoaf']:FindFirstChild(DitMeSaoDecodeLauThe("\45\16\50\108\71\112\100", "\174\127\117\86\40\40\31\22"));
								end);
								v712 = 1 - 0;
							end
						end
					end
					if (v412 == ((221 - (88 + 132)) - 0)) then
						local v713 = 0 + 0;
						while true do
							if (v713 == (4 - 3)) then
								_G['pcall'](function()
									_G['specb'] = _G['getSpeficalBoss']();
								end);
								v412 = 6 - 4;
								break;
							end
							if (v713 == (291 - (12 + 279))) then
								_G['pcall'](function()
									_G['cockboss'] = (_G['CheckSea'](4 - 1) and _G['CheckBoss'](_G['DoughBoss'][1 + 0 + 0])) or _G['CheckBoss'](_G['DoughBoss'][(952 - (652 + 295)) - 3]);
								end);
								_G['pcall'](function()
									_G['bA'] = _G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\61\226\103\0\238\8\28\227\108\44\225\46\19\246\105", "\109\127\151\30\69\130"), true);
								end);
								v713 = 1 + 0;
							end
						end
					end
					if (v412 == (1 + 2 + 0)) then
						local v714 = 989 - (848 + 141);
						while true do
							if (v714 == 1) then
								_G['pcall'](function()
									_G['ispirateraid'] = _G['getMobPirateRaid']();
								end);
								v412 = (848 - (372 + 368)) - (60 + 43 + (1131 - (542 + 588)));
								break;
							end
							if (v714 == 0) then
								_G['pcall'](function()
									_G['Canvanderreq'] = _G['CheckSea'](4 - (819 - (6 + 812))) and _G['CheckBoss'](DitMeSaoDecodeLauThe("\240\128\118\13\209\217\180\3\222\197\71\17\215\209\166\19", "\118\178\229\23\120\165\176\210")) and not _G['checkitem'](DitMeSaoDecodeLauThe("\38\221\66\31\13\161\37\184\23", "\221\101\188\44\105\108\207\65"));
								end);
								_G['pcall'](function()
									_G['hakicol'] = _G['CheckSea'](3) and (_G['game']:GetService(DitMeSaoDecodeLauThe("\100\53\7\174\219\85\49\3\167\214\101\36\24\176\211\81\53", "\178\54\80\119\194"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\28\0\83\204\234\253\148\195\58", "\162\84\111\33\162\143\153\217"), DitMeSaoDecodeLauThe("\5\222\9", "\234\71\187\125")) == nil);
								end);
								v714 = 1706 - (1599 + 106);
							end
						end
					end
					if (v412 == ((1563 - 1000) - (475 + 79))) then
						_G['pcall'](function()
							_G['cls_7'] = _G['CheckWaterKey']();
						end);
						break;
					end
					if (v412 == (17 - (5 + 4))) then
						local v715 = 0 + 0;
						while true do
							if (v715 == 0) then
								_G['pcall'](function()
									_G['cls_4'] = _G['CheckSea'](6 - (15 - 11)) and (_G['getPlayerLevel']() > (110 + 739)) and BartiloProgress and (BartiloProgress ~= (5 - 2)) and _G['deobietsettengi']() and _G['c']()['Main'][DitMeSaoDecodeLauThe("\32\41\84\72\234\81\32\17\121\255\3\40\88\87\241", "\158\113\92\49\59")];
								end);
								_G['pcall'](function()
									_G['cls_5'] = _G['getElite']();
								end);
								v715 = 1 + 0;
							end
							if (v715 == (1 + 0)) then
								_G['pcall'](function()
									_G['cls_6'] = workspace:FindFirstChild(DitMeSaoDecodeLauThe("\202\124\78\103\251\20\136", "\103\140\16\33\16\158\102\186")) and (workspace['Flower2']['Transparency'] ~= (1 + 0 + 0)) and not _G['checkitem'](DitMeSaoDecodeLauThe("\225\129\178\98\6\46\135\223", "\92\167\237\221\21\99"));
								end);
								v412 = 9;
								break;
							end
						end
					end
					if (v412 == 5) then
						local v716 = 0;
						while true do
							if (v716 == (1 + 0)) then
								_G['pcall'](function()
									_G['zqp'] = _G['game']:GetService(DitMeSaoDecodeLauThe("\26\174\8\181\19\89\50\60\174\28\138\14\85\33\41\172\29", "\83\72\203\120\217\122\58"))['Remotes'][DitMeSaoDecodeLauThe("\159\230\182\174\137\130", "\223\220\137\219\195\207\221")]:InvokeServer(DitMeSaoDecodeLauThe("\41\121\74\231\63\7\120\77\237\43\1\77\76\241", "\76\115\40\63\130"), DitMeSaoDecodeLauThe("\164\18\40\174\189", "\177\231\122\77\205\214"));
								end);
								v412 = 1509 - (168 + 1227 + 108);
								break;
							end
							if (v716 == (0 + 0)) then
								_G['pcall'](function()
									_G['factoryexists'] = _G['CheckSea'](1931 - (1690 + 239)) and (_G['getmon'](DitMeSaoDecodeLauThe("\220\47\63\35", "\70\159\64\77")) or _G['CheckBoss'](DitMeSaoDecodeLauThe("\244\64\64\250", "\122\183\47\50\159")));
								end);
								_G['pcall'](function()
									_G['BartiloProgress'] = _G['game']:GetService(DitMeSaoDecodeLauThe("\240\52\183\67\137\193\48\179\74\132\241\37\168\93\129\197\52", "\224\162\81\199\47"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\202\68\33\41\138\228\74\2\40\134\251\81\3\47\140\239\87\54\46\144", "\227\136\37\83\93"), DitMeSaoDecodeLauThe("\123\172\26\96\80\161\7", "\20\57\205\104"));
								end);
								v716 = 3 - 2;
							end
						end
					end
					if (v412 == ((13 + 4) - (23 - 12))) then
						local v717 = 0 - 0;
						while true do
							if (v717 == 0) then
								_G['pcall'](function()
									local v870 = 0 + 0;
									while true do
										if (v870 == (0 - 0)) then
											_G['uable'] = _G['game']:GetService(DitMeSaoDecodeLauThe("\118\22\81\76\160\95\69\7\68\68\154\72\75\1\64\71\172", "\60\36\115\33\32\201"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\144\115\67\115\66\82\50\162\188\119\85\74\73\77", "\193\215\22\55\38\44\62\93"));
											_G['uable'] = _G['uable'] or {};
											break;
										end
									end
								end);
								_G['pcall'](function()
									_G['waterkeystuff'] = _G['CheckSea']((3074 - (1736 + 132)) - (7 + 1197)) and not _G['cls_7'] and _G['CheckBoss'](DitMeSaoDecodeLauThe("\27\27\10\202\149\208\42\23\30\202\199", "\155\79\114\110\175\181"));
								end);
								v717 = 1;
							end
							if ((1 + 0) == v717) then
								_G['pcall'](function()
									_G['rengokustat3'] = _G['CheckSea']((3 - 2) + (4 - 3)) and (not _G['checkitem'](DitMeSaoDecodeLauThe("\106\81\215\227\190\135\192", "\181\56\52\185\132\209\236")) or (_G['game']:GetService(DitMeSaoDecodeLauThe("\5\67\192\163\86\185\251\49\73", "\154\82\44\178\200\37\201"))['Map']['IceCastle']['Hall']['LibraryDoor']:FindFirstChild(DitMeSaoDecodeLauThe("\69\227\13\8\167\93\81\122\228\16", "\21\21\139\98\109\222\40")) and (_G['game']:GetService(DitMeSaoDecodeLauThe("\51\227\190\135\41\20\237\175\137", "\90\100\140\204\236"))['Map']['IceCastle']['Hall']['LibraryDoor']:FindFirstChild(DitMeSaoDecodeLauThe("\156\28\49\201\174\13\136\27\49\222", "\120\204\116\94\172\215"))['Transparency'] == (0 + 0 + (32 - (27 + 5)))))) and _G['CheckBoss'](DitMeSaoDecodeLauThe("\34\170\185\3\238\172\117\123\67\148\187\13\171\131\116\114\10\175\185\4", "\31\99\221\216\104\139\194\16"));
								end);
								v412 = 7;
								break;
							end
						end
					end
				end
				break;
			end
		end
	end
end);
spawn(function()
	while wait() do
		local v413 = 0;
		while true do
			if (v413 == 0) then
				_G['oti'] = _G['tick']();
				_G['oldtimetime'] = os.time();
				v413 = 1 + 0;
			end
			if ((1 + 0) == v413) then
				_G['ayuu'], _G['miii'] = _G['xpcall'](function()
					local v614 = 0 + 0;
					while true do
						if ((1 + 0) == v614) then
							if getgenv()['ForceStop'] then
							elseif _G['cls_1'] then
								local v927 = 0 + 0;
								while true do
									if (v927 == (1119 - (771 + 346))) then
										if _G['CheckIsRaiding']() then
											_G['AutoRaid'] = false;
											_G['PullFruit'] = false;
											repeat
												local v1064 = 0;
												while true do
													if (v1064 == (1634 - (1577 + 57))) then
														wait();
														_G['pcall'](function()
															for v1126, v1127 in pairs(_G['getsortedmon']()) do
																local v1128 = (0 - 0) - (1080 - (684 + 396));
																while true do
																	if (v1128 == (5 - 3)) then
																		if v1127:FindFirstChild(DitMeSaoDecodeLauThe("\16\3\220\7\229\146\61\24\215\18\253", "\216\82\113\185\102\142")) then
																			v1127:BreakJoints();
																		else
																			local v1164 = 1196 - (700 + 496);
																			while true do
																				if (v1164 == (0 + 0)) then
																					v1127['Humanoid']['Health'] = -((256 - (65 + 187)) - (942 - (827 + 112)));
																					task.wait();
																					v1164 = 1 + 0;
																				end
																				if (v1164 == (2 - 1)) then
																					v1127:BreakJoints();
																					break;
																				end
																			end
																		end
																		break;
																	end
																	if (v1128 == 1) then
																		local v1142 = 0 - 0;
																		while true do
																			if (1 == v1142) then
																				v1128 = (14 - 11) - (1 + 0);
																				break;
																			end
																			if (v1142 == 0) then
																				sethiddenproperty(_G['game']:GetService(DitMeSaoDecodeLauThe("\114\87\33\193\120\80\72", "\29\34\59\64\184")).LocalPlayer, DitMeSaoDecodeLauThe("\33\23\69\223\57\92\6\23\71\196\7\92\22\23\93\217", "\61\114\126\40\170\85"), _G['math'].huge);
																				v1127['Humanoid']['Health'] = (0 + 0) - 0;
																				v1142 = 1197 - (551 + 645);
																			end
																		end
																	end
																	if (v1128 == ((482 - (166 + 177)) - ((1899 - (1361 + 495)) + (259 - 163)))) then
																		local v1143 = 0 + 0;
																		while true do
																			if (v1143 == 1) then
																				v1128 = 2 - 1;
																				break;
																			end
																			if (v1143 == (0 + 0)) then
																				_G['to'](_G['getNextIsland']()['CFrame'] * CFrame.new(_G['math'].random(0, 274 - (148 + 76)), 407 - 307, _G['math'].random((0 - 0) - (0 - 0), 26 + 16 + (1750 - (735 + 1007)))));
																				v1127['HumanoidRootPart']['CanCollide'] = false;
																				v1143 = 280 - (111 + 168);
																			end
																		end
																	end
																end
															end
														end);
														break;
													end
												end
											until not _G['CheckIsRaiding']() 
										else
											local v1053 = 0 + 0 + 0 + 0;
											while true do
												if (v1053 == (0 - 0)) then
													local v1082 = 0 + 0;
													while true do
														if (v1082 == (0 + 0)) then
															if _G['CheckSea'](1 + 2) then
																fireclickdetector(Workspace['Map'][DitMeSaoDecodeLauThe("\238\39\118\45\131\80\205\59\99\53\198", "\19\172\72\23\89\163")]['RaidSummon2']['Button']['Main'].ClickDetector);
															elseif _G['CheckSea']((12 - 9) - 1) then
																fireclickdetector(Workspace['Map']['CircleIsland']['RaidSummon2']['Button']['Main'].ClickDetector);
															else
																v14:Kick(DitMeSaoDecodeLauThe("\30\82\204\234\39\64\160\52\72\143\230\61\87\166\60\28\201\247\58\95\229\36\95\221\236\37\70", "\197\87\60\175\133\85\50"));
															end
															_G['check179'] = os.time();
															v1082 = 1;
														end
														if (1 == v1082) then
															v1053 = 1 + 0;
															break;
														end
													end
												end
												if (((1 + 0) - 0) == v1053) then
													repeat
														local v1096 = (932 - (147 + 785)) + (666 - (483 + 183));
														while true do
															if (v1096 == ((2 - 1) + 0)) then
																_G['to'](_G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart'].CFrame);
																print("?");
																break;
															end
															if (v1096 == ((1432 + 319) - ((3325 - (1790 + 121)) + (1098 - 761)))) then
																wait();
																_G['pcall'](function()
																	_G['sexroblox']:Cancel();
																end);
																v1096 = (3480 - (259 + 1280)) - ((3226 - (160 + 1424)) + 276 + 22);
															end
														end
													until _G['checkNotify'](DitMeSaoDecodeLauThe("\51\81", "\179\116\30\180")) or not _G['game']['Players']['LocalPlayer']['Character']:FindFirstChild(DitMeSaoDecodeLauThe("\195\195\236\133", "\225\139\166\141")) or ((os.time() - _G['check179']) > ((9 + 17) - (786 - (479 + 291)))) 
													break;
												end
											end
										end
										_G['AwakeFruit']();
										break;
									end
									if (v927 == (1 - 0)) then
										if _G['CheckIsRaiding']() then
											_G['rson'] = DitMeSaoDecodeLauThe("\110\241\45\236\208\215\46\162\13\204\34\241\221", "\199\45\158\67\152\185\185\91");
										end
										if _G['AutoRaid'] then
											_G['rson'] = DitMeSaoDecodeLauThe("\104\124\172\187\213\5\195\144\104\120\180\170", "\176\58\25\221\206\176\118\183");
										end
										v927 = 973 - (569 + 402);
									end
									if (v927 == (1305 - (635 + 670))) then
										_G['set'](DitMeSaoDecodeLauThe("\206\25\125\7\61\11\169", "\159\156\120\20\99\84\101\206"));
										_G['noti'](DitMeSaoDecodeLauThe("\78\16\133\123", "\71\28\113\236\31\168\33\23"));
										v927 = 1;
									end
								end
							elseif _G['cls_2'] then
								local v992 = 0 - 0;
								local v993;
								local v994;
								while true do
									if (v992 == (3 - 2)) then
										while true do
											if (v993 == ((598 - (42 + 556)) - (1401 - (1246 + 155)))) then
												_G['EquipWeaponName'](DitMeSaoDecodeLauThe("\127\142\240\96\102\142\237", "\64\45\235\148"));
												_G['to'](CFrame.new(-(3413.97998 - (31 + 701)), 64.3921585, -12853.7363, (0.149007782 - 0) + (499 - (393 + 106)), -((1171.0000000187902 - (727 + 444)) + (0 - 0)), 972.98883605 - (128 + 229 + (1268 - (269 + 384))), (1569.000000036062 - (598 + 971)) + 0 + 0, (6 - 4) - (4 - 3), (1.3568181e-8 - 0) + (1445 - (800 + 645)), -(0.98883605 - 0), 3.36376e-8 + 0 + 0, 0.149007782 + 0));
												v993 = (791 - (687 + 103)) + (1162 - (142 + 1020));
											end
											if (v993 == ((3157 - 1854) - (64 + 320 + (1430 - (306 + 207))))) then
												v994 = {[1405 - (112 + 1292)]=DitMeSaoDecodeLauThe("\68\80\51\230\79\251\102\82", "\181\22\49\90\130\60"),[(588 + 111) - (128 + (1521 - (587 + 365)))]=DitMeSaoDecodeLauThe("\44\217\189\10\4", "\105\111\177\216")};
												_G['game']:GetService(DitMeSaoDecodeLauThe("\134\31\216\30\25\208\181\14\205\22\35\199\187\8\201\21\21", "\179\212\122\168\114\112"))['Remotes']['CommF_']:InvokeServer(unpack(v994));
												break;
											end
											if ((1544 - ((3122 - (829 + 886)) + 136)) == v993) then
												local v1083 = 0;
												while true do
													if (v1083 == 1) then
														v993 = 2;
														break;
													end
													if (v1083 == (0 - 0)) then
														v994 = {[(433 + 1455) - (687 + (4761 - 3561))]=DitMeSaoDecodeLauThe("\90\123\143\200\74\121\141\200\119\110\141\222\109", "\173\25\26\228"),[6 - 4]=DitMeSaoDecodeLauThe("\53\126\204\185\19", "\120\118\22\169\218")};
														_G['game']:GetService(DitMeSaoDecodeLauThe("\245\37\166\234\206\35\183\242\194\36\133\242\200\50\183\225\194", "\134\167\64\214"))['Remotes']['CommF_']:InvokeServer(unpack(v994));
														v1083 = 1;
													end
												end
											end
										end
										break;
									end
									if (v992 == (0 + 0)) then
										v993 = (0 + 0) - 0;
										v994 = nil;
										v992 = 1 - 0;
									end
								end
							elseif (_G['CheckSea'](980 - (613 + 364)) and _G['cockboss']) then
								local v1028 = 0;
								local v1029;
								while true do
									if (v1028 == (1 + 0)) then
										repeat
											local v1084 = 0 + 0;
											local v1085;
											while true do
												if ((0 + 0) == v1084) then
													v1085 = 0;
													while true do
														if (v1085 == (95 - ((20 - 11) + (308 - 222)))) then
															wait();
															_G['pcall'](function()
																_G['to'](v1029['HumanoidRootPart']['CFrame'] * CFrame.new(5, 456 - ((875 - 600) + 96 + 50), 1947 - (1467 + 472)));
																_G['stuff'](v1029);
															end);
															break;
														end
													end
													break;
												end
											end
										until not _G['skidmaruhubnekkkanhambanana'](v1029) 
										_G['click'] = false;
										break;
									end
									if (v1028 == (0 - 0)) then
										v1029 = _G['CheckBoss'](_G['DoughBoss'][(3258 - (1077 + 470)) - (556 + 1154)]) or _G['CheckBoss'](_G['DoughBoss'][(1 + 5) - 4]);
										_G['click'] = true;
										v1028 = 1 + 0;
									end
								end
							elseif (_G['CheckSea']((4 - 3) + 2) and (_G['bA'] == ((497 - (12 + 417)) - (29 + (86 - 51))))) then
								_G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\38\156\231\173\197\205\7\157\236\129\202\235\8\136\233", "\168\100\233\158\232\169"), DitMeSaoDecodeLauThe("\65\64\24\238\102", "\156\18\52\121"));
								wait();
								_G['request'](Vector3.new(-(55235.8740234375 - (31617 + 11155)), 1116.9144592285156 - 742, -((44188.77392578125 - 10978) - 25687)));
							elseif _G['cls_3'] then
								_G['to'](_G['game']:GetService(DitMeSaoDecodeLauThe("\116\31\201\193\151\165\4\220\70", "\191\35\112\187\170\228\213\101"))['Map'][DitMeSaoDecodeLauThe("\144\174\105\91\42\25\123\248\140\125\70\42\16\122", "\31\216\207\28\53\94\124")]['Summoner']['Detection'].CFrame);
							elseif (_G['CheckSea']((3 - 1) + 1) and _G['CheckBoss'](DitMeSaoDecodeLauThe("\18\40\190\3\27\19\34\170\31\94\51", "\59\65\71\203\111"))) then
								local v1105 = 0;
								local v1106;
								local v1107;
								while true do
									if (v1105 == (1 - 0)) then
										while true do
											if (((117 + 291) - (120 + 192 + 15 + 81)) == v1106) then
												local v1165 = 0;
												while true do
													if (v1165 == (0 - 0)) then
														v1107 = _G['CheckBoss'](DitMeSaoDecodeLauThe("\36\175\105\120\203\62\49\22\176\121\102", "\84\119\192\28\20\235\108"));
														_G['set'](DitMeSaoDecodeLauThe("\173\234\48\243\23\44\189\1\184\241\100\208\27\46\164\72\130\249\100", "\33\236\158\68\150\122\92\201") .. v1107['Name'] .. DitMeSaoDecodeLauThe("\160\227\209\24\69\253\54\247\152\202\26\80\229\49\229\229", "\89\128\184\153\121\41\145"));
														v1165 = 1106 - (924 + 181);
													end
													if (v1165 == 1) then
														v1106 = (798 - (263 + 534)) - (0 + 0);
														break;
													end
												end
											end
											if (v1106 == (1 + 0)) then
												repeat
													local v1172 = 0;
													while true do
														if (v1172 == (0 - 0)) then
															wait();
															_G['pcall'](function()
																local v1197 = 0 - 0;
																while true do
																	if ((0 + 0) == v1197) then
																		_G['to'](v1107['HumanoidRootPart']['CFrame'] * CFrame.new((995 - (562 + 145)) - (38 + 109 + 53 + 85), 16 + 24, (3 + 903) - (813 + 86)));
																		_G['click'] = true;
																		v1197 = 1 + 0;
																	end
																	if (v1197 == (1 - 0)) then
																		_G['stuff'](v1107);
																		break;
																	end
																end
															end);
															break;
														end
													end
												until not _G['skidmaruhubnekkkanhambanana'](v1107) 
												break;
											end
										end
										break;
									end
									if ((0 + 0) == v1105) then
										v1106 = (4679 - 3667) - (20 + 33 + 625 + 334);
										v1107 = nil;
										v1105 = 1877 - (1459 + 417);
									end
								end
							elseif (_G['CheckSea'](3 + (286 - (194 + 92))) and _G['buddyreq']) then
								local v1130 = 0;
								local v1131;
								local v1132;
								while true do
									if ((1385 - (1057 + 328)) == v1130) then
										v1131 = (0 - 0) - 0;
										v1132 = nil;
										v1130 = 4 - 3;
									end
									if ((533 - (5 + 527)) == v1130) then
										while true do
											if (v1131 == ((375 + 117) - ((798 - (342 + 438)) + 474))) then
												local v1180 = 0 + 0;
												while true do
													if (v1180 == 1) then
														v1131 = 1;
														break;
													end
													if ((0 + 0) == v1180) then
														v1132 = _G['CheckBoss'](DitMeSaoDecodeLauThe("\207\52\175\132\98\182\21\62\233\59", "\91\140\85\196\225\66\231\96"));
														_G['set'](DitMeSaoDecodeLauThe("\18\172\163\180\70\35\172\247\133\68\115\158\182\163\70\58\182\176\241", "\43\83\216\215\209") .. v1132['Name'] .. DitMeSaoDecodeLauThe("\11\156\146\30\42\79\190\240\56\57\68\181\180\54", "\78\43\199\208\107"));
														v1180 = 1 + 0;
													end
												end
											end
											if (((1 - 0) + 0 + 0) == v1131) then
												repeat
													local v1184 = 0;
													local v1185;
													while true do
														if (0 == v1184) then
															v1185 = (0 + 0) - (0 - 0);
															while true do
																if (v1185 == (1086 - ((1561 - 701) + (238 - (6 + 6))))) then
																	wait();
																	_G['pcall'](function()
																		local v1215 = 0;
																		local v1216;
																		while true do
																			if (v1215 == (0 - 0)) then
																				v1216 = 303 - (121 + (510 - 328));
																				while true do
																					if (v1216 == 0) then
																						_G['to'](_G['getKillVector3'](v1132['HumanoidRootPart'].CFrame));
																						_G['click'] = true;
																						v1216 = 1 + 0;
																					end
																					if (v1216 == (1 + 0)) then
																						_G['stuff'](v1132);
																						break;
																					end
																				end
																				break;
																			end
																		end
																	end);
																	break;
																end
															end
															break;
														end
													end
												until not _G['skidmaruhubnekkkanhambanana'](v1132) 
												break;
											end
										end
										break;
									end
								end
							elseif (_G['CheckSea'](1243 - ((2241 - (206 + 1047)) + (1364 - (470 + 642)))) and _G['checkyamareq']) then
								local v1144 = 0 + 0;
								local v1145;
								while true do
									if (v1144 == (1067 - (552 + 515))) then
										v1145 = 0 + 0 + 0;
										while true do
											if (v1145 == (0 + 0)) then
												_G['set'](DitMeSaoDecodeLauThe("\85\141\20\94\130\59\200\215", "\182\18\232\96\126\219\90\165"));
												repeat
													local v1198 = 0 + 0;
													local v1199;
													while true do
														if (v1198 == 0) then
															v1199 = (1912 + 58) - (27 + 22 + 1072 + 849);
															while true do
																if (v1199 == 0) then
																	wait();
																	fireclickdetector(_G['game']:GetService(DitMeSaoDecodeLauThe("\10\81\53\163\46\78\38\171\56", "\200\93\62\71"))['Map']['Waterfall']['SealedKatana']['Handle'].ClickDetector);
																	break;
																end
															end
															break;
														end
													end
												until _G['checkitem'](DitMeSaoDecodeLauThe("\127\76\67\219", "\110\38\45\46\186\164\210")) 
												break;
											end
										end
										break;
									end
								end
							elseif (_G['CheckSea'](3) and _G['tushitareq']) then
								local v1166 = 0 + 0;
								local v1167;
								while true do
									if (v1166 == (1051 - (701 + 350))) then
										v1167 = (452 + 438) - (223 + 356 + 311);
										while true do
											if (v1167 == 0) then
												_G['set'](DitMeSaoDecodeLauThe("\92\177\161\24\57\56\150\167\26\39\56\138\167\4\61\112\254\153\3\59\107\170", "\94\24\222\200\118"));
												if not _G['EquipWeaponName'](DitMeSaoDecodeLauThe("\53\207\42\0\93\244\41\11\30\200", "\121\125\160\70")) then
													_G['to'](CFrame.new(-((6026 + 4778) - ((79 - 28) + 1)), 417, -(29202 - 19836)));
												else
													repeat
														local v1211 = 0 + 0;
														while true do
															if (v1211 == (0 - 0)) then
																wait();
																_G['to'](CFrame.new(-(1194.7695000000003 + 9558), 325.229523 + 87, -((64248.36328 - 48128) - 6754)));
																wait(0.2 - 0);
																_G['to'](CFrame.new(-(12798.4111 - (146 + (2325 - (281 + 1065)))), (438.749023 - 344) + (887 - 650), -((11290.34668 - (1114 + 97)) - (311 + 294))));
																v1211 = 1 - 0;
															end
															if (v1211 == (1915 - (279 + 1634))) then
																wait((2925.2 - (1213 + 67)) - (963 + (873 - (65 + 126))));
																_G['to'](CFrame.new(-(12358.4131 + 1129), 1419.8484 - (189 + 896), -(657.3486300000004 + 5958 + 1311)));
																wait(1963.4 - (1872 + 91));
																break;
															end
															if (v1211 == (2 - 1)) then
																wait(0.2 - (0 + 0));
																_G['to'](CFrame.new(-((18267.338900000002 - 13127) + 6993), (1851.47522 + 111) - (496 + 947), -((4926.1903999999995 + 7085) - (1233 + (451 - 326)))));
																wait(76.2 - (22 + 54));
																_G['to'](CFrame.new(-(31265.5 - 17929), (495.280396 - 298) + 86 + 202, -(6265.35254 + (2806 - 2088)), (1534.912677109 - (553 + 981)) + 0 + 0));
																v1211 = 2 + 0;
															end
														end
													until not _G['checkitem'](DitMeSaoDecodeLauThe("\219\229\55\171\179\222\52\160\240\226", "\210\147\138\91")) 
												end
												break;
											end
										end
										break;
									end
								end
							elseif _G['specb'] then
								if _G['CheckIsRaiding']() then
									_G['game']['Players']['LocalPlayer']['Character']['Humanoid']['Health'] = -(1506 - (504 + 738 + 262));
								else
									local v1188 = 0;
									local v1189;
									local v1190;
									while true do
										if (v1188 == 0) then
											v1189 = (0 - 0) + (0 - 0);
											v1190 = nil;
											v1188 = 1898 - (1320 + 577);
										end
										if (v1188 == (850 - (667 + 182))) then
											while true do
												if (v1189 == ((1288 - (1115 + 173)) + (0 - 0))) then
													v1190 = _G['getSpeficalBoss']();
													_G['set'](DitMeSaoDecodeLauThe("\19\252\218\70\57\29\50\189\234\68\35\0\111\189", "\115\85\157\168\43\80") .. v1190['Name']);
													v1189 = 1 + 0 + (1755 - (1375 + 380));
												end
												if (v1189 == ((1 + 0) - (26 - (12 + 14)))) then
													if v1190 then
														repeat
															local v1227 = 0 - 0;
															while true do
																if (v1227 == (0 - 0)) then
																	wait();
																	_G['pcall'](function()
																		local v1242 = 0;
																		local v1243;
																		while true do
																			if (v1242 == (0 - 0)) then
																				v1243 = 0 + (0 - 0);
																				while true do
																					if (v1243 == ((1 - 0) + (0 - 0))) then
																						_G['click'] = true;
																						break;
																					end
																					if (v1243 == ((913 - (354 + 377)) - ((736 - 580) + 26))) then
																						local v1261 = 0 - 0;
																						while true do
																							if (0 == v1261) then
																								_G['to'](_G['getKillVector3'](v1190['HumanoidRootPart'].CFrame));
																								_G['stuff'](v1190);
																								v1261 = 1983 - (263 + 1719);
																							end
																							if (v1261 == (1 + 0)) then
																								v1243 = (360 - (335 + 24)) + (951 - (882 + 69));
																								break;
																							end
																						end
																					end
																				end
																				break;
																			end
																		end
																	end);
																	break;
																end
															end
														until not _G['skidmaruhubnekkkanhambanana'](v1190) 
													end
													break;
												end
											end
											break;
										end
									end
								end
							elseif (_G['CheckSea']((1689 - (657 + 1029)) - 0) and _G['tushitareq2']) then
								local v1191 = 1200 - (685 + 515);
								local v1192;
								while true do
									if (v1191 == (1639 - (745 + 893))) then
										repeat
											wait();
											_G['pcall'](function()
												local v1212 = 0;
												while true do
													if (v1212 == (0 + 0)) then
														_G['to'](_G['getKillVector3'](v1192['HumanoidRootPart'].CFrame));
														_G['stuff'](v1192);
														v1212 = 1;
													end
													if (v1212 == (773 - (274 + 498))) then
														_G['click'] = true;
														break;
													end
												end
											end);
										until not _G['skidmaruhubnekkkanhambanana'](v1192) 
										_G['click'] = false;
										break;
									end
									if (v1191 == 0) then
										v1192 = _G['CheckBoss'](DitMeSaoDecodeLauThe("\211\85\137\80\129\200", "\169\159\58\231\55\236\169\38"));
										_G['set'](DitMeSaoDecodeLauThe("\55\192\173\29\205\26\123\81", "\28\113\161\223\112\164\116") .. v1192['Name'] .. DitMeSaoDecodeLauThe("\134\99\115\108\72\206\81\83\120\102", "\59\166\56\39\25"));
										v1191 = 1 + 0;
									end
								end
							elseif (_G['CheckSea'](167 - (51 + 98 + (1621 - (1035 + 571)))) and _G['ispirateraid']) then
								local v1205 = 0;
								while true do
									if (v1205 == (0 + 0)) then
										_G['check180'] = os.time();
										repeat
											wait();
											local v1217 = _G['getMobPirateRaid']();
											_G['set'](DitMeSaoDecodeLauThe("\130\209\212\201\87\183\152\244\201\74\182", "\35\210\184\166\168"));
											repeat
												local v1221 = 0 + 0;
												while true do
													if (v1221 == (0 - 0)) then
														wait();
														_G['pcall'](function()
															local v1230 = 0 - 0;
															local v1231;
															while true do
																if (v1230 == 0) then
																	v1231 = 960 - (890 + 70);
																	while true do
																		if ((118 - (37 + 2 + 78)) == v1231) then
																			_G['click'] = true;
																			break;
																		end
																		if (v1231 == ((321 + 161) - ((42 - 28) + 468))) then
																			local v1247 = 0;
																			while true do
																				if (v1247 == (225 - (109 + 115))) then
																					v1231 = 2 - (1400 - (1047 + 352));
																					break;
																				end
																				if (v1247 == 0) then
																					_G['to'](_G['getKillVector3'](v1217['HumanoidRootPart'].CFrame));
																					_G['stuff']();
																					v1247 = 1;
																				end
																			end
																		end
																	end
																	break;
																end
															end
														end);
														break;
													end
												end
											until not _G['skidmaruhubnekkkanhambanana'](v1217) 
											_G['click'] = false;
										until _G['checkNotify'](DitMeSaoDecodeLauThe("\83\86\127", "\23\57\57\29\34\68")) or ((os.time() - _G['check180']) > (559 - (2124 - (852 + 913)))) 
										break;
									end
								end
							elseif (_G['CheckSea'](3 + 0) and _G['hakicol']) then
								local v1207 = 0;
								local v1208;
								while true do
									if (v1207 == 0) then
										v1208 = 1345 - (384 + 961);
										while true do
											if (v1208 == (0 - 0)) then
												_G['set'](DitMeSaoDecodeLauThe("\116\62\22\34\87\113\45\45\89\63\29\35\71\113\55\45\91\56\95\29\69\52\12\56", "\76\48\81\127"));
												if _G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Quest']['Visible'] then
													local v1236 = 0 - 0;
													while true do
														if ((0 - 0) == v1236) then
															if _G['string'].find(_G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Quest']['Container']['QuestTitle']['Title'].Text, DitMeSaoDecodeLauThe("\61\177\94\185\15", "\48\110\197\49\215\106\20\189")) then
																local v1248 = 0;
																local v1249;
																local v1250;
																while true do
																	if (v1248 == (593 - (591 + 1))) then
																		while true do
																			if (v1249 == (0 + 0 + (1470 - (218 + 1252)))) then
																				local v1289 = 0 + 0;
																				while true do
																					if (v1289 == 1) then
																						v1249 = 1;
																						break;
																					end
																					if (v1289 == (356 - (321 + 35))) then
																						if not _G['CheckBoss'](DitMeSaoDecodeLauThe("\46\6\71\162\197", "\108\125\114\40\204\160\75\38")) then
																							local v1310 = 394 - (239 + 155);
																							while true do
																								if (v1310 == (0 + 0)) then
																									_G['HopServer']();
																									wait(2125 + (7916 - (41 + 1)));
																									break;
																								end
																							end
																						end
																						v1250 = _G['CheckBoss'](DitMeSaoDecodeLauThe("\6\100\240\3\48", "\109\85\16\159"));
																						v1289 = 201 - (80 + 120);
																					end
																				end
																			end
																			if (v1249 == (1 + 0 + (0 - 0))) then
																				repeat
																					local v1292 = 0 + 0;
																					local v1293;
																					while true do
																						if (v1292 == (0 + 0)) then
																							v1293 = 0 - 0;
																							while true do
																								if (v1293 == 0) then
																									wait();
																									_G['pcall'](function()
																										local v1323 = (0 - 0) + 0;
																										while true do
																											if (v1323 == (0 - 0)) then
																												local v1338 = 0 - 0;
																												while true do
																													if ((0 + 0) == v1338) then
																														_G['to'](_G['getKillVector3'](v1250['HumanoidRootPart'].CFrame));
																														_G['click'] = true;
																														v1338 = 1 + 0;
																													end
																													if (v1338 == (1 + 0)) then
																														v1323 = 1227 - (165 + 1061);
																														break;
																													end
																												end
																											end
																											if (v1323 == ((1 + 0) - (0 + 0))) then
																												_G['stuff']();
																												break;
																											end
																										end
																									end);
																									break;
																								end
																							end
																							break;
																						end
																					end
																				until not _G['skidmaruhubnekkkanhambanana'](v1250) 
																				_G['click'] = false;
																				break;
																			end
																		end
																		break;
																	end
																	if (v1248 == 0) then
																		v1249 = (1643 - (596 + 1047)) + 0 + 0;
																		v1250 = nil;
																		v1248 = 1 + 0;
																	end
																end
															end
															if _G['string'].find(_G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Quest']['Container']['QuestTitle']['Title'].Text, DitMeSaoDecodeLauThe("\2\254\189\73\30\75\163", "\208\71\147\205\59\123\56")) then
																local v1251 = 0 - 0;
																while true do
																	if (v1251 == (0 + 0)) then
																		if not _G['CheckBoss'](DitMeSaoDecodeLauThe("\126\51\136\185\89\36\196\157\90\48\150\189\68\51", "\216\55\64\228")) then
																			local v1275 = 737 - (185 + 552);
																			local v1276;
																			while true do
																				if (v1275 == (0 + 0)) then
																					v1276 = (601 - (507 + 94)) + (0 - 0);
																					while true do
																						if (v1276 == (0 - 0)) then
																							_G['HopServer']();
																							wait(253 + 9746);
																							break;
																						end
																					end
																					break;
																				end
																			end
																		end
																		_G['cabdngu'] = _G['CheckBoss'](DitMeSaoDecodeLauThe("\150\155\50\195\183\241\171\154\133\46\208\188\230\248", "\139\223\232\94\162\217\149"));
																		v1251 = 1 + 0;
																	end
																	if (v1251 == (1 - 0)) then
																		repeat
																			local v1272 = 0;
																			while true do
																				if (v1272 == ((1788 - (569 + 1168)) - (12 + (75 - 36)))) then
																					wait();
																					_G['pcall'](function()
																						local v1296 = 0 - 0;
																						while true do
																							if (v1296 == (352 - (118 + 233))) then
																								_G['stuff']();
																								break;
																							end
																							if (v1296 == (344 - (279 + 65))) then
																								_G['to'](_G['getKillVector3'](_G['cabdngu']['HumanoidRootPart'].CFrame));
																								_G['click'] = true;
																								v1296 = 1 - 0;
																							end
																						end
																					end);
																					break;
																				end
																			end
																		until not _G['skidmaruhubnekkkanhambanana'](_G['cabdngu']) 
																		_G['click'] = false;
																		break;
																	end
																end
															end
															v1236 = 1 - 0;
														end
														if (v1236 == 1) then
															if _G['string'].find(_G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Quest']['Container']['QuestTitle']['Title'].Text, DitMeSaoDecodeLauThe("\254\138\47\254", "\170\181\227\67\145\219\53")) then
																local v1252 = 0 - 0;
																local v1253;
																while true do
																	if (v1252 == (0 - 0)) then
																		v1253 = (1818 - (1414 + 404)) + (756 - (347 + 409));
																		while true do
																			if (v1253 == ((0 + 0) - (0 + 0))) then
																				local v1290 = 0 + 0;
																				while true do
																					if (v1290 == (1 + 0)) then
																						v1253 = 1;
																						break;
																					end
																					if (v1290 == (1578 - (420 + 1158))) then
																						if not _G['CheckBoss'](DitMeSaoDecodeLauThe("\114\140\18\189\25\164\26\191\80\151\31\190", "\210\57\229\126")) then
																							local v1311 = 0 - 0;
																							while true do
																								if (v1311 == 0) then
																									_G['HopServer']();
																									wait(10610 - (406 + 205));
																									break;
																								end
																							end
																						end
																						_G['cabdngu'] = _G['CheckBoss'](DitMeSaoDecodeLauThe("\147\58\230\169\114\228\135\181\58\248\167\62", "\227\216\83\138\198\82\165"));
																						v1290 = 3 - 2;
																					end
																				end
																			end
																			if (v1253 == 1) then
																				repeat
																					wait();
																					_G['pcall'](function()
																						local v1297 = 0;
																						local v1298;
																						while true do
																							if (v1297 == (0 + 0)) then
																								v1298 = (0 + 0) - 0;
																								while true do
																									if (v1298 == (0 + 0)) then
																										local v1324 = 0 - 0;
																										while true do
																											if (1 == v1324) then
																												v1298 = 1;
																												break;
																											end
																											if ((61 - (28 + 33)) == v1324) then
																												_G['to'](_G['getKillVector3'](_G['cabdngu']['HumanoidRootPart'].CFrame));
																												_G['click'] = true;
																												v1324 = 1 + 0;
																											end
																										end
																									end
																									if (v1298 == ((1008 - (858 + 149)) + 0 + 0)) then
																										_G['stuff']();
																										break;
																									end
																								end
																								break;
																							end
																						end
																					end);
																				until not _G['skidmaruhubnekkkanhambanana'](_G['cabdngu']) 
																				_G['click'] = false;
																				break;
																			end
																		end
																		break;
																	end
																end
															end
															if _G['string'].find(_G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Quest']['Container']['QuestTitle']['Title'].Text, DitMeSaoDecodeLauThe("\14\185\179\104\250\42\187\162", "\146\75\213\214\24")) then
																local v1254 = 0 - 0;
																while true do
																	if ((1508 - (829 + 678)) == v1254) then
																		repeat
																			local v1273 = 0;
																			while true do
																				if (v1273 == 0) then
																					wait();
																					_G['pcall'](function()
																						local v1299 = 0 + 0;
																						local v1300;
																						while true do
																							if (v1299 == 0) then
																								v1300 = (2926 - (143 + 1073)) - ((3411 - (898 + 917)) + 114);
																								while true do
																									if (v1300 == ((3 - 1) - (1 + 0))) then
																										_G['stuff']();
																										break;
																									end
																									if (v1300 == (713 - ((1633 - (882 + 587)) + 549))) then
																										_G['to'](_G['getKillVector3'](_G['cabdngu']['HumanoidRootPart'].CFrame));
																										_G['click'] = true;
																										v1300 = 1;
																									end
																								end
																								break;
																							end
																						end
																					end);
																					break;
																				end
																			end
																		until not _G['skidmaruhubnekkkanhambanana'](_G['cabdngu']) 
																		_G['click'] = false;
																		break;
																	end
																	if ((0 + 0) == v1254) then
																		if not _G['CheckBoss'](DitMeSaoDecodeLauThe("\105\127\209\80\123\76\91\10\91\205\65\106\77\84\68\106", "\53\42\30\161\36\26\37")) then
																			local v1277 = 0 + 0;
																			local v1278;
																			while true do
																				if ((264 - (140 + 124)) == v1277) then
																					v1278 = (0 + 0) - (1535 - (1105 + 430));
																					while true do
																						if (v1278 == (0 + (0 - 0))) then
																							_G['HopServer']();
																							wait((165555 - 117233) - 38323);
																							break;
																						end
																					end
																					break;
																				end
																			end
																		end
																		_G['cabdngu'] = _G['CheckBoss'](DitMeSaoDecodeLauThe("\222\248\231\244\252\240\249\160\216\245\242\240\245\248\249\244", "\128\157\153\151"));
																		v1254 = 2 - 1;
																	end
																end
															end
															v1236 = 2;
														end
														if (v1236 == 2) then
															if _G['string'].find(_G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Quest']['Container']['QuestTitle']['Title'].Text, DitMeSaoDecodeLauThe("\84\112\141\60\1\122\112\96\128", "\19\22\21\236\73\117")) then
																local v1255 = 0 - 0;
																while true do
																	if (v1255 == (0 + 0)) then
																		if not _G['CheckBoss'](DitMeSaoDecodeLauThe("\85\192\163\188\227\180\43\227\123\133\146\160\229\188\57\243", "\150\23\165\194\201\151\221\77")) then
																			local v1279 = 0;
																			local v1280;
																			while true do
																				if (v1279 == (0 + 0)) then
																					v1280 = (883 + 555) - (1059 + 379);
																					while true do
																						if (v1280 == ((0 + 0) - (1991 - (1047 + 944)))) then
																							local v1312 = 1302 - (206 + 1096);
																							while true do
																								if (v1312 == (194 - (30 + 164))) then
																									_G['noti'](DitMeSaoDecodeLauThe("\86\52\248\90\88\52\250\90\92\62\233\15\106\50\238\15\114\123\216\19\108\58\252\31", "\122\30\91\136"));
																									_G['HopServer']();
																									v1312 = 1;
																								end
																								if (v1312 == 1) then
																									v1280 = 4 - 3;
																									break;
																								end
																							end
																						end
																						if (v1280 == (1 + 0)) then
																							wait((6657 - (1383 + 91)) + (18662 - 13846));
																							break;
																						end
																					end
																					break;
																				end
																			end
																		end
																		_G['cabdngu'] = _G['CheckBoss'](DitMeSaoDecodeLauThe("\157\161\228\165\153\182\162\240\188\205\143\173\247\177\153\186", "\237\223\196\133\208"));
																		v1255 = 1 - 0;
																	end
																	if (v1255 == (1661 - (1174 + 486))) then
																		repeat
																			local v1274 = 427 - (172 + 255);
																			while true do
																				if (v1274 == (0 - 0)) then
																					wait();
																					_G['pcall'](function()
																						local v1301 = 0;
																						while true do
																							if ((0 - 0) == v1301) then
																								_G['to'](_G['getKillVector3'](_G['cabdngu']['HumanoidRootPart'].CFrame));
																								_G['click'] = true;
																								v1301 = 1529 - (594 + 934);
																							end
																							if (v1301 == (569 - (211 + 357))) then
																								_G['stuff']();
																								break;
																							end
																						end
																					end);
																					break;
																				end
																			end
																		until not _G['skidmaruhubnekkkanhambanana'](_G['cabdngu']) 
																		_G['click'] = false;
																		break;
																	end
																end
															end
															break;
														end
													end
												else
													_G['game']:GetService(DitMeSaoDecodeLauThe("\238\13\211\178\87\249\221\28\198\186\109\238\211\26\194\185\91", "\154\188\104\163\222\62"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\29\226\63\245\21\75\239\52\227", "\162\85\141\77\155\112\47"), DitMeSaoDecodeLauThe("\48\44\178", "\46\114\73\198"));
												end
												break;
											end
										end
										break;
									end
								end
							elseif (_G['CheckSea'](1 + 0 + 2) and _G['cls_5']) then
								local v1218 = 0;
								local v1219;
								while true do
									if (v1218 == (0 + 0)) then
										v1219 = (656 - 264) - (99 + 46 + (1661 - (159 + 1255)));
										while true do
											if (v1219 == (1 + 0)) then
												if cabdngungungu then
													if _G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Quest']['Visible'] then
														if _G['string'].find(_G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Quest']['Container']['QuestTitle']['Title'].Text, cabdngungungu['Name']:gsub(DitMeSaoDecodeLauThe("\229\59\102\195\56\4\229\59\114\164\107\90", "\42\197\30\22\143\78"), "")) then
															local v1257 = 0;
															while true do
																if (v1257 == 0) then
																	repeat
																		wait();
																		_G['pcall'](function()
																			local v1291 = 777 - (24 + 753);
																			while true do
																				if (v1291 == (1 + 0)) then
																					_G['stuff'](cabdngungungu);
																					break;
																				end
																				if ((0 - 0) == v1291) then
																					_G['to'](_G['getKillVector3'](cabdngungungu['HumanoidRootPart'].CFrame));
																					_G['click'] = true;
																					v1291 = 1;
																				end
																			end
																		end);
																	until not _G['skidmaruhubnekkkanhambanana'](cabdngungungu) 
																	_G['click'] = false;
																	break;
																end
															end
														else
															_G['game']:GetService(DitMeSaoDecodeLauThe("\65\64\79\51\122\70\94\43\118\65\108\43\124\87\94\56\118", "\95\19\37\63"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\80\46\166\242\117\8\127\29\178\249\98\19", "\103\17\76\199\156\17"));
														end
													else
														_G['game']:GetService(DitMeSaoDecodeLauThe("\129\47\149\228\85\19\184\238\182\46\182\252\83\2\184\253\182", "\154\211\74\229\136\60\112\217"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\138\16\227\217\0\111\186\18\254\200\23", "\39\207\124\138\173\101"));
													end
												end
												break;
											end
											if (v1219 == ((1132 - (898 + 234)) + 0)) then
												local v1237 = 535 - (333 + 202);
												while true do
													if (v1237 == 0) then
														_G['cabdngungungu'] = _G['getElite']();
														_G['set'](DitMeSaoDecodeLauThe("\232\0\81\205\171\192\6\3\229\174\199\21\70\154\226", "\194\174\97\35\160") .. _G['cabdngungungu']['Name']);
														v1237 = 1 + 0;
													end
													if (v1237 == (1 + 0)) then
														v1219 = 1 + (0 - 0);
														break;
													end
												end
											end
										end
										break;
									end
								end
							elseif (_G['CheckSea']((1287 - (1018 + 261)) - 5) and _G['Canvanderreq']) then
								local v1222 = 0 - 0;
								local v1223;
								while true do
									if (v1222 == (131 - (93 + 38))) then
										v1223 = _G['CheckBoss'](DitMeSaoDecodeLauThe("\221\37\60\23\235\41\59\23\243\96\13\11\237\33\41\7", "\98\159\64\93"));
										_G['set'](DitMeSaoDecodeLauThe("\40\176\63\18\24\8\92\100", "\68\110\209\77\127\113\102\59") .. v1223['Name'] .. DitMeSaoDecodeLauThe("\238\223\132\78\13\213\175\160\224\162\93\62", "\206\206\132\199\47\99\163"));
										v1222 = 1 + 0;
									end
									if ((1 + 0) == v1222) then
										repeat
											local v1238 = 0 + 0;
											while true do
												if (v1238 == (0 + 0)) then
													wait();
													_G['pcall'](function()
														_G['to'](_G['getKillVector3'](v1223['HumanoidRootPart'].CFrame));
														_G['click'] = true;
														_G['stuff'](v1223);
													end);
													break;
												end
											end
										until not _G['skidmaruhubnekkkanhambanana'](v1223) 
										break;
									end
								end
							elseif _G['cls_4'] then
								local v1228 = 0 - 0;
								local v1229;
								while true do
									if (v1228 == 0) then
										v1229 = (0 - 0) + 0;
										while true do
											if (v1229 == ((0 - 0) + (0 - 0))) then
												_G['set'](DitMeSaoDecodeLauThe("\210\205\222\124\86\182\224\214\96\69\255\206\216\50\96\227\199\196\102", "\49\150\162\183\18"));
												if (_G['game']:GetService(DitMeSaoDecodeLauThe("\123\47\171\45\19\227\25\93\47\191\18\14\239\10\72\45\190", "\120\41\74\219\65\122\128"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\120\7\78\14\236\171\218\107\19\89\9\241\151\199\85\1\78\31\246\180", "\181\58\102\60\122\133\199"), DitMeSaoDecodeLauThe("\113\227\206\13\115\95\237", "\26\51\130\188\121")) == ((0 - 0) - 0)) then
													if (_G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Quest']['Visible'] == true) then
														if (_G['string'].find(_G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Quest']['Container']['QuestTitle']['Title'].Text, DitMeSaoDecodeLauThe("\219\149\45\23", "\57\136\226\76\121\41\126\151")) and _G['string'].find(_G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Quest']['Container']['QuestTitle']['Title'].Text, DitMeSaoDecodeLauThe("\119\135", "\29\66\183\105\51\68\131"))) then
															local v1281 = 0;
															while true do
																if (v1281 == (0 + 0)) then
																	_G['set'](DitMeSaoDecodeLauThe("\97\42\64\192\66\101\107\207\87\49\64\194\74\101\120\219\64\54\93\142\20\127\9\229\76\41\69\199\75\34\9\155\21\61\9\253\82\36\71\142\117\44\91\207\81\32", "\174\37\69\41"));
																	_G['pcall'](function()
																		_G['to'](_G['getMobLoadPos'](DitMeSaoDecodeLauThe("\178\161\79\0\80\177\191\92\15\4\132", "\112\225\214\46\110")) * CFrame.new(0 - 0, 31 + 19, (1145 - (14 + 406)) - (254 + 466)));
																	end);
																	v1281 = 1 - 0;
																end
																if (v1281 == 1) then
																	for v1302, v1303 in pairs(_G['getsortedmon']()) do
																		if (v1303['Name'] == DitMeSaoDecodeLauThe("\45\51\34\85\164\141\229\12\37\55\94", "\140\126\68\67\59\132\221")) then
																			local v1313 = 0;
																			while true do
																				if (v1313 == (0 - 0)) then
																					repeat
																						local v1327 = 1630 - (20 + 1610);
																						local v1328;
																						while true do
																							if (v1327 == (0 + 0)) then
																								v1328 = (1560 - 1000) - ((1609 - 1065) + (533 - (243 + 274)));
																								while true do
																									if (v1328 == ((1622 - (1437 + 185)) - 0)) then
																										wait();
																										_G['pcall'](function()
																											local v1365 = 0 - 0;
																											while true do
																												if (v1365 == 1) then
																													_G['BringMobChoosen'] = v1303;
																													_G['BringMob'](v1303);
																													v1365 = 1 + 1;
																												end
																												if (v1365 == (0 - 0)) then
																													_G['to'](_G['getKillVector3'](v1303['HumanoidRootPart'].CFrame));
																													_G['stuff'](v1303);
																													v1365 = 1;
																												end
																												if (2 == v1365) then
																													_G['click'] = true;
																													break;
																												end
																											end
																										end);
																										break;
																									end
																								end
																								break;
																							end
																						end
																					until not _G['skidmaruhubnekkkanhambanana'](v1303) 
																					_G['click'] = false;
																					break;
																				end
																			end
																		end
																	end
																	break;
																end
															end
														else
															_G['game']:GetService(DitMeSaoDecodeLauThe("\176\116\23\71\68\28\135\150\116\3\120\89\16\148\131\118\2", "\230\226\17\103\43\45\127"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\241\78\197\69\131\223\66\245\94\130\195\88", "\231\176\44\164\43"));
														end
													else
														local v1266 = 0;
														local v1267;
														while true do
															if ((0 + 0) == v1266) then
																v1267 = {[629 - (3 + 291 + (1150 - (326 + 490)))]=DitMeSaoDecodeLauThe("\146\210\37\187\186\189\180\195\55\189", "\236\193\166\68\201\206"),[2 + 0]=DitMeSaoDecodeLauThe("\38\58\218\101\13\55\199\64\17\62\219\101", "\17\100\91\168"),[(459 - (181 + 22)) - ((311 - (35 + 40)) + (68 - 51))]=(1 - 0)};
																_G['game']:GetService(DitMeSaoDecodeLauThe("\104\163\156\224\186\32\122\78\163\136\223\167\44\105\91\161\137", "\27\58\198\236\140\211\67"))['Remotes']['CommF_']:InvokeServer(unpack(v1267));
																break;
															end
														end
													end
												elseif (_G['BartiloProgress'] == (1 + 0 + (878 - (297 + 581)))) then
													_G['set'](DitMeSaoDecodeLauThe("\5\194\197\68\142\171\3\204\222\94\128\231\46\141\253\95\140\248\53\141\158\16\201\192\40\193\192\67\135\236\97\231\201\88\140\230\56\141\247\104\134\248\50\240", "\139\65\173\172\42\233"));
													local v1268 = _G['CheckBoss'](DitMeSaoDecodeLauThe("\173\83\99\221\201\110", "\40\231\54\17\184\164\23\128"));
													if v1268 then
														local v1282 = 0 + 0;
														local v1283;
														while true do
															if (v1282 == 0) then
																v1283 = 0 - 0;
																while true do
																	if (v1283 == ((0 - 0) + 0 + 0)) then
																		repeat
																			local v1318 = 0 - 0;
																			local v1319;
																			while true do
																				if (v1318 == (0 - 0)) then
																					v1319 = (1737 - (1505 + 232)) - (1318 - (415 + 903));
																					while true do
																						if (v1319 == 0) then
																							wait();
																							_G['pcall'](function()
																								local v1351 = 0;
																								local v1352;
																								while true do
																									if ((0 - 0) == v1351) then
																										v1352 = 0 - 0;
																										while true do
																											if (v1352 == (718 - (155 + 562))) then
																												_G['click'] = true;
																												break;
																											end
																											if (v1352 == ((0 + 0) - (117 - (71 + 46)))) then
																												local v1382 = 0;
																												while true do
																													if (v1382 == (0 - 0)) then
																														_G['to'](_G['getKillVector3'](v1268['HumanoidRootPart'].CFrame));
																														_G['stuff'](v1268);
																														v1382 = 686 - (436 + 249);
																													end
																													if (1 == v1382) then
																														v1352 = 1622 - (56 + 1565);
																														break;
																													end
																												end
																											end
																										end
																										break;
																									end
																								end
																							end);
																							break;
																						end
																					end
																					break;
																				end
																			end
																		until not _G['skidmaruhubnekkkanhambanana'](v1268) 
																		_G['click'] = false;
																		break;
																	end
																end
																break;
															end
														end
													end
												elseif (_G['game']:GetService(DitMeSaoDecodeLauThe("\182\204\111\244\140\233\133\221\122\252\182\254\139\219\126\255\128", "\138\228\169\31\152\229"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\238\13\80\33\233\207\195\61\87\48\243\215\252\30\77\50\242\198\223\31", "\163\172\108\34\85\128"), DitMeSaoDecodeLauThe("\5\16\229\147\210\72\135", "\52\71\113\151\231\187\36\232")) == (1 + 1 + (984 - (80 + 904)))) then
													local v1284 = 0 + 0;
													while true do
														if (v1284 == (800 - (595 + 205))) then
															_G['set'](DitMeSaoDecodeLauThe("\82\130\113\163\113\205\90\172\100\153\113\161\121\205\73\184\115\158\108\237\37\215\56\128\119\151\125", "\205\22\237\24"));
															if ((CFrame.new(-(4420.46155 - 2583), (99.2921753 - 62) + 7, 2450.1987 - (290 + 123 + 155 + 226), (0.999881566 - 0) + 0 + 0, -((665 - (400 + 265)) - (0 - 0)), -(0.0153914848 + 0), 1.0780586e-22, 2 - 1, (2.5390928e-22 + 0) - (1671 - (962 + 709)), 0.0153914848 + 0, -(1970 - (582 + 1388)), 0.999881566 + 0)['Position'] - _G['game']['Players']['LocalPlayer']['Character']['Head']['Position'])['magnitude'] > (851 - (255 + 96))) then
																_G['to'](CFrame.new(-((5145.46155 - 3830) + (1358 - 836)), (1189.2921753 - (636 + 145)) - (326 + 38), (5193.1987 - (282 + 13)) - (4390 - (366 + 782)), 0.999881566 - (89 - (10 + 79)), -((2327 - (1297 + 410)) - ((164 - 117) + 573)), -(0.0153914848 + 0), 1.0780586e-22 + 0, 279 - (262 + 16), 2.5390928e-22 - 0, (0.0153914848 + 0) - (0 + 0), -((1850 - (1056 + 794)) - 0), 1348.999881566 - (741 + 607)));
															else
																local v1306 = 1756 - (730 + 1026);
																while true do
																	if (v1306 == 0) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\142\116\114\209\60\172\107", "\89\222\24\19\168"))['LocalPlayer']['Character']['HumanoidRootPart']['CFrame'] = CFrame.new(-(3629 - (248 + 1545)), 1003 - (191 + 801), (16756 - 13378) - ((1829 - (478 + 82)) + (2102 - (434 + 1273))));
																		wait((1408.5 - 916) - (60 + 16 + (1734 - 1318)));
																		_G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['CFrame'] = CFrame.new(-(2423.49329 - (349 + 224)), (1320.1789551 - (275 + 589)) - ((580 - 261) + 124), (6861.89685 - 2861) - 2250);
																		wait((2540 - (1064 + 468)) - (413 + 151 + 245 + 198));
																		v1306 = 4 - 3;
																	end
																	if (v1306 == (704 - (676 + 27))) then
																		_G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['CFrame'] = CFrame.new(-((15144.87305 - 10001) - 3285), 1446.3777466 - (48 + 1379), 1712.01807);
																		wait((393 + 66) - (337 + 54 + 67));
																		_G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['CFrame'] = CFrame.new(-((9186.94324 - 3904) - (2595 + 884)), 16.5789185, (5944.89685 - (79 + 36)) - (13974 - 9895));
																		wait(1 + 0);
																		v1306 = 2;
																	end
																	if (v1306 == (2 + 0)) then
																		_G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['CFrame'] = CFrame.new(-(3769.5583500000002 - (1261 + 191 + 459)), 6.8604316999999995 + 1 + (20 - 11), (1184.7954099999997 + 1563) - (462 + 561));
																		wait(1015 - (631 + 383));
																		_G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['CFrame'] = CFrame.new(-(3504.5422399999998 - (445 + 1190)), 1440.987854 - (810 + 615), 1681.00659);
																		wait((3112 - (819 + 475)) - ((2107 - (243 + 1092)) + (3116 - 2071)));
																		v1306 = 2 + 1;
																	end
																	if (v1306 == 4) then
																		_G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['CFrame'] = CFrame.new(-(1702.51843 + 111), 34.8604736 - (2 + 18), 1673.79541 + 51);
																		break;
																	end
																	if (v1306 == (4 - 1)) then
																		_G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['CFrame'] = CFrame.new(-((726.0979 - 472) + (2070 - (119 + 405))), (377.49780269999997 - 217) - ((359 - 257) + (651 - (352 + 257))), (78.52368000000024 + 3450) - ((2687 - (88 + 1075)) + (1391 - (477 + 594))));
																		wait(1271 - (1049 + (944 - (328 + 395))));
																		_G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['CFrame'] = CFrame.new(-(2323.26343 - (164 + 340)), 14.795166, 1717.90625);
																		wait(157 - ((27 - 9) + (332 - 194)));
																		v1306 = 1233 - (1008 + 221);
																	end
																end
															end
															break;
														end
													end
												end
												break;
											end
										end
										break;
									end
								end
							elseif (_G['CheckSea'](1105 - ((1578 - (1025 + 486)) + (2268 - 1233))) and (_G['CheckMaterialCount'](DitMeSaoDecodeLauThe("\214\86\93\189\4\231\92\87\247\50\250\90\92\182", "\113\149\57\51\215")) < 10) and not _G['checkitem'](DitMeSaoDecodeLauThe("\74\103\206\179\246\128\90\120\202\186\235\195\124", "\160\25\16\171\214\130")) and not _G['checkitem'](DitMeSaoDecodeLauThe("\92\209\37\111\114\192\203\87\202\54\126\105\211\135", "\235\17\184\87\29\29\178"))) then
								local v1239 = 0;
								local v1240;
								local v1241;
								while true do
									if (v1239 == 0) then
										v1240 = 348 - (136 + (593 - 381));
										v1241 = nil;
										v1239 = 220 - (108 + 111);
									end
									if (v1239 == (99 - (82 + 16))) then
										while true do
											if (v1240 == (0 - (1729 - (533 + 1196)))) then
												local v1258 = 0;
												while true do
													if (v1258 == 1) then
														v1240 = 1 - 0;
														break;
													end
													if (v1258 == (212 - (161 + 51))) then
														v1241 = {DitMeSaoDecodeLauThe("\137\161\118\251\255\166\168\109\253\176\136\168\107\184\210\171\189\109\244\245\184", "\144\202\201\25\152"),DitMeSaoDecodeLauThe("\26\212\7\113\250\10\208\1\43\201\13\113\233", "\96\89\187\100\30\155\42\135")};
														_G['set'](DitMeSaoDecodeLauThe("\11\204\17\71\115\112\42\141\54\68\110\116\33\141\32\69\116\119\56\223\6\78\58\94\34\206\12\75\58\85\36\217\67\27\42\101\109\246", "\29\77\173\99\42\26") .. _G['CheckMaterialCount'](DitMeSaoDecodeLauThe("\167\237\9\112\78\253\242\9\196\193\8\121\84\238", "\109\228\130\103\26\59\143\151")) .. "/10]");
														v1258 = 4 - 3;
													end
												end
											end
											if (v1240 == 1) then
												for v1262, v1263 in pairs(v1241) do
													if not _G['getmon'](v1263) then
														_G['pcall'](function()
															_G['to'](_G['getMobLoadPos'](v1263:gsub(DitMeSaoDecodeLauThe("\195\61\190\245\40\4\111\193\135\51\235\201", "\228\227\24\206\185\94\42\79"), "")) * CFrame.new((2442 - (717 + 121)) - ((376 - 136) + 1331 + 33), 80, (171 + 911) - ((2760 - (1001 + 709)) + 31 + 1)));
														end);
													else
														for v1285, v1286 in pairs(_G['getsortedmon']()) do
															if (v1286['Name'] == v1263) then
																local v1294 = 0 - (1120 - (242 + 878));
																while true do
																	if (v1294 == ((1783 - (1395 + 388)) + 0)) then
																		local v1307 = 0 + 0;
																		while true do
																			if (v1307 == 1) then
																				v1294 = 1056 - (331 + 724);
																				break;
																			end
																			if (v1307 == (0 + 0)) then
																				_G['click'] = true;
																				_G['BringMob'](v1286);
																				v1307 = 1 + 0;
																			end
																		end
																	end
																	if (v1294 == (1 + 0)) then
																		repeat
																			local v1314 = 1947 - (1289 + 658);
																			while true do
																				if (v1314 == (0 + 0 + (0 - 0))) then
																					wait();
																					_G['pcall'](function()
																						local v1329 = 0 + 0;
																						local v1330;
																						while true do
																							if (v1329 == 0) then
																								v1330 = 644 - (208 + 61 + (709 - 334));
																								while true do
																									if (v1330 == ((2701 - (337 + 1639)) - (267 + 336 + 122))) then
																										_G['to'](_G['getKillVector3'](v1286['HumanoidRootPart'].CFrame));
																										_G['stuff']();
																										break;
																									end
																								end
																								break;
																							end
																						end
																					end);
																					break;
																				end
																			end
																		until not _G['skidmaruhubnekkkanhambanana'](v1286) 
																		break;
																	end
																end
															end
														end
													end
												end
												break;
											end
										end
										break;
									end
								end
							elseif (_G['CheckSea'](3 - 1) and _G['factoryexists']) then
								local v1244 = 0;
								local v1245;
								while true do
									if (v1244 == 1) then
										if v1245 then
											local v1264 = 0 - 0;
											local v1265;
											while true do
												if (v1264 == 0) then
													v1265 = 0 + (0 - 0);
													while true do
														if (v1265 == ((1737 - (630 + 1107)) - (0 + 0))) then
															repeat
																local v1304 = 0 + 0;
																local v1305;
																while true do
																	if ((0 - 0) == v1304) then
																		v1305 = (366 + 452) - (667 + 126 + 25);
																		while true do
																			if (v1305 == (61 - (13 + 48))) then
																				wait();
																				_G['pcall'](function()
																					local v1335 = 699 - (658 + 41);
																					local v1336;
																					while true do
																						if ((0 - 0) == v1335) then
																							v1336 = 1907 - (1591 + 316);
																							while true do
																								if (v1336 == ((2816 - 1319) - (349 + 1061 + 47 + 40))) then
																									_G['to'](v1245['HumanoidRootPart'].CFrame);
																									_G['click'] = true;
																									v1336 = 1;
																								end
																								if (v1336 == 1) then
																									_G['stuff'](v1245);
																									break;
																								end
																							end
																							break;
																						end
																					end
																				end);
																				break;
																			end
																		end
																		break;
																	end
																end
															until not _G['skidmaruhubnekkkanhambanana'](v1245) 
															_G['factoryexists'] = false;
															break;
														end
													end
													break;
												end
											end
										end
										_G['storefruit']();
										break;
									end
									if ((0 - 0) == v1244) then
										_G['set'](DitMeSaoDecodeLauThe("\239\54\35\173\185\11\36\142\22\56\232\146\26\34\195\43\57\175\244\61\49\205\54\56\186\173", "\80\174\66\87\200\212\123"));
										v1245 = _G['getmon'](DitMeSaoDecodeLauThe("\232\118\44\205", "\115\171\25\94\168\151")) or _G['CheckBoss'](DitMeSaoDecodeLauThe("\47\189\246\36", "\151\108\210\132\65"));
										v1244 = 1;
									end
								end
							elseif (_G['CheckSea'](1278 - (1241 + 35)) and _G['rengokustat']) then
								local v1246 = 0;
								while true do
									if (v1246 == (40 - (18 + 22))) then
										_G['set'](DitMeSaoDecodeLauThe("\237\71\0\70\193\1\239\93\220\80\12\70\134\106\194\77\152\114\6\90\134\115\194\90\223\91\2\93", "\52\184\52\105\40\166\33\167"));
										_G['to'](CFrame.new(9112.1201171875 - 2541, (575.2302856445299 + 1621) - (1504 + (1695 - (697 + 605))), -(2920.841796875 + 4047)));
										v1246 = 1 - 0;
									end
									if ((330 - (188 + 141)) == v1246) then
										_G['EquipWeaponName'](DitMeSaoDecodeLauThe("\122\7\201\172\63\218\140\121\11\212", "\172\50\110\173\200\90\180"));
										break;
									end
								end
							elseif (_G['CheckSea']((21 - 16) - (6 - 3)) and _G['librarydoor']) then
								local v1259 = 950 - (34 + 916);
								local v1260;
								while true do
									if (v1259 == 0) then
										v1260 = (1737 - (357 + 1380)) - 0;
										while true do
											if (v1260 == 0) then
												_G['set'](DitMeSaoDecodeLauThe("\206\169\253\66\252\250\216\69\249\168\245\94\226\250\223\73\226\250\210\67\233\250\196\68\244\191\237\89", "\44\155\218\148"));
												_G['to'](CFrame.new((6579.93164 + 593) - (217 + 244 + 87 + 248), 38.76007099999998 + (2185 - (178 + 1749)), -(19122.54932 - 12279), -(1761.906182051 - (1730 + (1446 - (142 + 1273)))), -(593.0000000126465 - (284 + 309)), -((1364.422887832 + 303) - ((1418 - (622 + 68)) + 480 + 459)), -(7.461163e-9 - 0), (3 + 0) - (2 + 0), -((1898.0000000139169 - (855 + 1043)) - (0 - 0)), 0.422887832 - 0, -((9.45607e-9 - 0) - (779 - (576 + 203))), -((2721.906182051 - 1653) - ((225 - 87) + (2914 - (709 + 1275))))));
												break;
											end
										end
										break;
									end
								end
							elseif (_G['CheckSea'](2 + 0 + (0 - 0)) and not _G['cls_7'] and _G['checkitem'](DitMeSaoDecodeLauThe("\218\250\56\62\198\103\154\232\226", "\209\141\155\76\91\180\71"))) then
								local v1269 = 0 - 0;
								while true do
									if (v1269 == (118 - (31 + 87))) then
										_G['set'](DitMeSaoDecodeLauThe("\198\110\214\69\29\179\74\222\95\31\225\61\244\78\3\179\91\208\89\90\215\124\214\76\8\252\126\212", "\122\147\29\191\43"));
										_G['buyMelee'](DitMeSaoDecodeLauThe("\143\216\95\27\209\242\141\112\151\209\76\8\206\250", "\30\220\176\62\105\186\159\236"));
										break;
									end
								end
							elseif (print(DitMeSaoDecodeLauThe("\135\214\215\231", "\221\232\189\229\208\86\181\215")) and _G['CheckSea']((133 - (44 + 87)) + (0 - 0)) and ((_G['checkitem'](DitMeSaoDecodeLauThe("\36\189\240\216\43\2\244\223\217\55", "\78\108\212\148\188")) and not _G['checkitem'](DitMeSaoDecodeLauThe("\9\21\26\37\227\11\174", "\90\91\112\116\66\140\96\219"))) or (_G['checkitem'](DitMeSaoDecodeLauThe("\233\94\8\30\225\186\29\133\124\15\21", "\100\165\55\106\108\128\200")) and _G['game']:GetService(DitMeSaoDecodeLauThe("\242\196\35\184\214\219\48\176\192", "\211\165\171\81"))['Map']['IceCastle']['Hall']['LibraryDoor']:FindFirstChild(DitMeSaoDecodeLauThe("\52\125\221\207\206\201\32\122\221\216", "\188\100\21\178\170\183")) and (_G['game']:GetService(DitMeSaoDecodeLauThe("\73\24\66\184\161\221\127\20\85", "\173\30\119\48\211\210"))['Map']['IceCastle']['Hall']['LibraryDoor']['PhoeyuDoor']['Transparency'] == (0 + 0))) or (_G['checkitem'](DitMeSaoDecodeLauThe("\108\216\45\63\73\153\18\63\66", "\90\59\185\89")) and not _G['cls_7']))) then
								local v1287 = 0;
								local v1288;
								while true do
									if ((0 - 0) == v1287) then
										v1288 = (0 - 0) + 0;
										while true do
											if (v1288 == (786 - (284 + 502))) then
												print(DitMeSaoDecodeLauThe("\75\245\67", "\29\32\144\58\47\91"));
												if _G['checkitem'](DitMeSaoDecodeLauThe("\63\60\115\175\64\179\10\117\122\184\88", "\193\115\85\17\221\33")) then
													_G['to'](CFrame.new(26034.93164 - 19658, 296.760071, -((5581.54932 + 3028) - (459 + 1307)), -((3056.906182051 - (124 + 1062)) - ((1501 - (847 + 180)) + 1396)), -((1.2646487e-8 + 0) - 0), -(0.422887832 - 0), -(7.461163e-9 + (1363 - (369 + 994))), (964 - (583 + 380)) + 0 + 0, -(1.3916966e-8 + 0), (0.422887832 + 0) - (1973 - (1085 + 888)), -((9.45607e-9 - 0) + 0), -((0.906182051 - 0) - (0 - 0))));
													if ((CFrame.new(27806.93164 - 21430, (1322.760071 - 435) - (168 + 394 + 29), -(5834.54932 + 510 + 499), -(1419.906182051 - (154 + 220 + 1045)), -(1.2646487e-8 - 0), -(0.422887832 - 0), -(7.461163e-9 + 0), 1, -((1.3916966e-8 + 0) - 0), (463.422887832 + 175) - (436 + 12 + 190), -(214.00000000945607 - (153 + 61)), -(0.906182051 + (943 - (704 + 239))))['Position'] - _G['game']:GetService(DitMeSaoDecodeLauThe("\221\119\15\7\170\206\254", "\188\141\27\110\126\207"))['LocalPlayer']['Character']['HumanoidRootPart']['Position'])['Magnitude'] <= (2 + 1)) then
														local v1331 = 1386 - (740 + 646);
														while true do
															if (v1331 == 1) then
																_G['game']:GetService(DitMeSaoDecodeLauThe("\107\177\22\83\138\88\88\160\3\91\176\79\86\166\7\88\134", "\59\57\212\102\63\227"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\95\253\102\35\120\233\107\15\78\252\122\23", "\103\29\136\31"));
																wait(0.5 + 0 + 0);
																break;
															end
															if (v1331 == (1922 - (1547 + 375))) then
																wait(1.2 + 0 + (403 - (211 + 192)));
																_G['game']:GetService(DitMeSaoDecodeLauThe("\191\51\78\123\237\235\8\153\51\90\68\240\231\27\140\49\91", "\105\237\86\62\23\132\136"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\155\92\37\105\38\28\173\65\15\89\38\13", "\125\217\41\92\45\67"), true);
																v1331 = 4 - 3;
															end
														end
													end
												elseif _G['checkitem'](DitMeSaoDecodeLauThe("\54\39\222\46\67\16\110\241\47\95", "\38\126\78\186\74")) then
													local v1332 = 0 - 0;
													local v1333;
													while true do
														if (v1332 == 0) then
															v1333 = 0 - 0;
															while true do
																if (v1333 == (0 - 0)) then
																	_G['to'](CFrame.new(8065.1201171875 - ((2088 - (425 + 356)) + 187), 1185.2302856445299 - (78 + 808), -(16312.841796875 - (24357 - 15012))));
																	_G['EquipWeaponName'](DitMeSaoDecodeLauThe("\233\73\46\142\66\138\129\107\47\147", "\228\161\32\74\234\39"));
																	break;
																end
															end
															break;
														end
													end
												elseif _G['checkitem'](DitMeSaoDecodeLauThe("\9\133\30\176\226\193\31\133\39", "\224\94\228\106\213\144\225\84")) then
													_G['buyMelee'](DitMeSaoDecodeLauThe("\131\224\70\210\10\189\233\73\235\0\162\233\83\197", "\97\208\136\39\160"));
												end
												break;
											end
										end
										break;
									end
								end
							elseif (_G['CheckSea']((1574 - (83 + 1483)) - (1277 - (123 + 1149))) and _G['c']()['Main'][DitMeSaoDecodeLauThe("\197\38\214\138\25\53\46\255\61\194\148", "\91\150\73\163\230\57\114")] and not _G['checkitem'](DitMeSaoDecodeLauThe("\125\162\167\90\176\44\171\86\90\172\160", "\63\46\205\210\54\144\107\222")) and (_G['game']:GetService(DitMeSaoDecodeLauThe("\194\41\228\75\213\243\45\224\66\216\195\56\251\85\221\247\41", "\188\144\76\148\39"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\162\94\124\176\77\30\18\64\159\81\121\161\124\30\45\82\151\78\102\183", "\53\229\43\21\196\44\108\66"), DitMeSaoDecodeLauThe("\16\61\18\166\56", "\197\83\85\119")) == nil) and (_G['game']:GetService(DitMeSaoDecodeLauThe("\99\243\25\63\91\243\16\48", "\87\47\154\126"))['Sky']['MoonTextureId'] == "http://www.roblox.com/asset/?id=9709149431")) then
								local v1295 = (540 + 143) - (85 + 147 + (2031 - (908 + 672)));
								while true do
									if (v1295 == ((513 - (206 + 307)) + 0 + 0)) then
										_G['set'](DitMeSaoDecodeLauThe("\24\119\217\215\146\243\62\113\216\218\192\148\24\108\205\201\198\148\26\109\201\200\198\148\16\92\197\218\222\219\44\109\197\213\213\148\12\106\205\205\215\199\63\119\194\222\239", "\180\75\24\172\187\178"));
										if (_G['game']:GetService(DitMeSaoDecodeLauThe("\241\220\245\15\117\39\248\4\198\221\214\23\115\54\248\23\198", "\112\163\185\133\99\28\68\153"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\140\65\245\223\170\70\204\222\177\78\240\206\155\70\243\204\185\81\239\216", "\171\203\52\156"), DitMeSaoDecodeLauThe("\153\194\120\178\33", "\192\218\170\29\209\74\225\221")) == nil) then
											local v1320 = 62 - (18 + 44);
											while true do
												if (v1320 == 0) then
													_G['game']:GetService(DitMeSaoDecodeLauThe("\177\217\75\12\198\78\40\233\134\216\104\20\192\95\40\250\134", "\157\227\188\59\96\175\45\73"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\184\216\214\0\52\172\222\216\24\52\154\220\210\24\37", "\81\223\170\183\118"), 1 + 1);
													_G['game']:GetService(DitMeSaoDecodeLauThe("\20\68\188\183\240\49\16\50\68\168\136\237\61\3\39\70\169", "\113\70\33\204\219\153\82"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\246\144\62\42\251\163\229\141\49\57\219\166\244\140\43", "\208\145\226\95\92\158"), (3 - 1) + 0, true);
													break;
												end
											end
										end
										break;
									end
								end
							elseif (_G['CheckSea']((1333 - 766) - (95 + 415 + (989 - (226 + 709)))) and _G['c']()['Main'][DitMeSaoDecodeLauThe("\141\238\200\64\175\210\186\17\170\224\207", "\120\222\129\189\44\143\149\207")] and (type(_G['game']:GetService(DitMeSaoDecodeLauThe("\182\20\13\189\195\72\120\172\129\21\46\165\197\89\120\191\129", "\216\228\113\125\209\170\43\25"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\222\239\81\81\115\108\201\239\66\95\126\123\201\232\87\66\96\123\234\233", "\30\153\154\56\37\18"), DitMeSaoDecodeLauThe("\62\177\242\15\48", "\91\125\217\151\108"))) == DitMeSaoDecodeLauThe("\237\18\164\124\219", "\190\153\115\198\16"))) then
								for v1308, v1309 in pairs(_G['game']:GetService(DitMeSaoDecodeLauThe("\8\126\186\139\51\120\171\147\63\127\153\147\53\105\171\128\63", "\231\90\27\202"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\166\145\81\182\95\147\180\77\184\68\141\129\104\176\81\134\150\93\177\77", "\62\225\228\56\194"), DitMeSaoDecodeLauThe("\53\177\188\46\127", "\53\118\217\217\77\20"))) do
									if (v1309 == false) then
										if (v1308 == DitMeSaoDecodeLauThe("\154\8\229\211\63", "\79\201\127\132\190")) then
											local v1325 = 726 - (235 + 491);
											local v1326;
											while true do
												if (v1325 == (0 - 0)) then
													v1326 = 0 - (0 + 0);
													while true do
														if (v1326 == ((1336 - (463 + 836)) - ((417 - (166 + 238)) + (39 - 16)))) then
															_G['to'](_G['getMobLoadPos'](_a_a_a_c[3 - (1 + 0)]));
															for v1358, v1359 in pairs(_G['getsortedmon']()) do
																if (v1359['Name'] == _a_a_a_c[(1442 - (1080 + 361)) - (0 - 0)]) then
																	while _G['skidmaruhubnekkkanhambanana'](v1359) do
																		local v1377 = 0;
																		while true do
																			if (v1377 == (0 + 0)) then
																				_G['BringMob'](v1359);
																				_G['click'] = true;
																				v1377 = (1 - 0) - (300 - (254 + 46));
																			end
																			if (v1377 == ((201 + 888) - (448 + 382 + 258))) then
																				_G['to'](v1359['HumanoidRootPart']['CFrame'] * CFrame.new((256 - (37 + 219)) - (1899 - (1330 + 569)), (23 - 7) + (14 - 5), (0 - 0) + (0 - 0)));
																				break;
																			end
																		end
																	end
																end
															end
															break;
														end
														if (0 == v1326) then
															_G['set'](DitMeSaoDecodeLauThe("\27\27\252\197\104\51\252\192\60\21\251\137\122\26\237\137\25\1\236\218\60\84\210\250\63\21\228\217\21", "\169\72\116\137"));
															_G['_a_a_a_c'] = {DitMeSaoDecodeLauThe("\85\115\223\175\119\125\137\156\118\119\203\175\124", "\198\25\26\169"),DitMeSaoDecodeLauThe("\101\122\203\47\137\86\59\69\70\126\223\47\130", "\31\41\19\189\70\231\49\27")};
															v1326 = 1442 - (860 + (2062 - 1481));
														end
													end
													break;
												end
											end
										elseif (v1308 == DitMeSaoDecodeLauThe("\144\193\80\240\178\192\69\233\185\214\66", "\134\215\179\49")) then
											local v1337 = 0 - 0;
											while true do
												if ((0 + 0) == v1337) then
													_G['set'](DitMeSaoDecodeLauThe("\210\251\67\234\21\52\244\253\66\231\71\83\178\230\82\166\100\6\228\231\66\166\110\52\243\245\64\227\70\7\238\250\83\245\104", "\115\129\148\54\134\53"));
													_G['_____temp'] = {[DitMeSaoDecodeLauThe("\217\139\81\72\217\26\23\190", "\115\137\231\48\43\184\104")]=DitMeSaoDecodeLauThe("\245\236\28\247", "\95\185\137\122\131\201\192"),[DitMeSaoDecodeLauThe("\70\58\198\16\36\100\50\145", "\69\22\86\167\115")]=DitMeSaoDecodeLauThe("\116\129\65\149", "\71\56\228\39\225\37"),[DitMeSaoDecodeLauThe("\128\237\229\42\251\255\38\229", "\66\208\129\132\73\154\141")]=DitMeSaoDecodeLauThe("\102\90\208\233", "\157\42\63\182"),[DitMeSaoDecodeLauThe("\235\50\40\255\206\201\58\125", "\175\187\94\73\156")]=DitMeSaoDecodeLauThe("\20\54\72\40\15", "\160\70\95\47\64\123\67"),[DitMeSaoDecodeLauThe("\238\86\117\50\223\72\112\98", "\81\190\58\20")]=DitMeSaoDecodeLauThe("\96\72\176\99", "\83\44\45\214\23\227\73\63"),[DitMeSaoDecodeLauThe("\197\182\71\189\33\231\190\20", "\64\149\218\38\222")]=DitMeSaoDecodeLauThe("\40\174\205\216\14", "\176\122\199\170"),[DitMeSaoDecodeLauThe("\34\7\177\211\48\57\22\90", "\75\114\107\208\176\81")]=DitMeSaoDecodeLauThe("\203\34\46\125\237", "\21\153\75\73")};
													v1337 = 3 - 2;
												end
												if (v1337 == 1) then
													for v1353, v1354 in pairs(_G['_____temp']) do
														local v1355 = 0 + 0;
														while true do
															if (v1355 == (0 + 0)) then
																fireclickdetector(_G['game']:GetService(DitMeSaoDecodeLauThe("\62\28\95\249\161\86\8\16\72", "\38\105\115\45\146\210"))['Map'][DitMeSaoDecodeLauThe("\42\23\25\120\39\7\18\76\85\50\17\2\0\115", "\83\98\118\108\22")][v1353][v1354].ClickDetector);
																task.wait((0.2 - 0) - (0 + 0));
																break;
															end
														end
													end
													break;
												end
											end
										elseif (v1308 == DitMeSaoDecodeLauThe("\110\227\118\62\177", "\67\41\139\25\77\197\228")) then
											local v1345 = 812 - (96 + 716);
											local v1346;
											while true do
												if (v1345 == (1607 - (85 + 1522))) then
													v1346 = 853 - (724 + 129);
													while true do
														if (v1346 == ((3 - 2) + (373 - (83 + 290)))) then
															_G['game']:GetService(DitMeSaoDecodeLauThe("\218\171\222\38\95\235\233\186\203\46\101\252\231\188\207\45\83", "\136\136\206\174\74\54"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\3\230\143\145\82\182\139\49\233\156\137\86\148\169\43\244\148\128\64\183", "\219\68\147\230\229\51\196"), DitMeSaoDecodeLauThe("\91\70\249\243\18", "\123\28\46\150\128\102\39"), true);
															break;
														end
														if (v1346 == (0 - 0)) then
															local v1378 = 0 - 0;
															while true do
																if (v1378 == (0 + 0)) then
																	_G['set'](DitMeSaoDecodeLauThe("\54\70\8\91\91\174\46\124\17\72\15\23\79\154\47\53\52\92\24\68\15\201\0\82\13\70\14\67\38", "\21\101\41\125\55\123\233\91"));
																	_G['game']:GetService(DitMeSaoDecodeLauThe("\176\238\190\255\5\49\131\255\171\247\63\38\141\249\175\244\9", "\82\226\139\206\147\108"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\214\19\68\165\205\227\54\88\171\214\253\3\125\163\195\246\20\72\162\223", "\172\145\102\45\209"), DitMeSaoDecodeLauThe("\211\5\3\83\159", "\30\148\109\108\32\235"));
																	v1378 = 1 + 0;
																end
																if (v1378 == (1 + 0)) then
																	v1346 = (351 - 109) - (117 + 120 + 4);
																	break;
																end
															end
														end
													end
													break;
												end
											end
										elseif (v1308 == DitMeSaoDecodeLauThe("\32\85\30\79\28\78\20\76", "\63\116\39\113")) then
											local v1356 = 0 - 0;
											local v1357;
											while true do
												if (v1356 == (0 - 0)) then
													v1357 = 447 - (190 + 257);
													while true do
														if (v1357 == (591 - (402 + 189))) then
															_G['set'](DitMeSaoDecodeLauThe("\11\95\210\224\80\15\189\49\68\198\254\80\125\187\44\16\246\249\21\59\188\120\107\243\254\31\56\160\49\85\212\189\45", "\200\88\48\167\140\112\72"));
															for v1389, v1390 in pairs(_G['game']:GetService(DitMeSaoDecodeLauThe("\245\81\58\160\241\210\95\43\174", "\130\162\62\72\203"))['Map'][DitMeSaoDecodeLauThe("\139\182\168\126\147\133\235\189\128\182\174\100\139\133", "\157\195\215\221\16\231\224\143")].Tablet()) do
																if (v1390:FindFirstChild(DitMeSaoDecodeLauThe("\92\213\2\143\232\91\220\31\137\224\107\214\25", "\131\31\185\107\236")) and (v1390['Line']['p']['Y'] < -(551 + 448))) then
																	local v1394 = (566 - (90 + 476)) - (814 - (688 + 126));
																	while true do
																		if (v1394 == (0 - (0 + 0))) then
																			fireclickdetector(v1390.ClickDetector);
																			task.wait(0.2 + 0);
																			break;
																		end
																	end
																end
															end
															break;
														end
													end
													break;
												end
											end
										end
									end
								end
							elseif (_G['CheckSea'](501 - (34 + 465)) and _G['rengokustat3']) then
								local v1315 = 0 - 0;
								local v1316;
								local v1317;
								while true do
									if (0 == v1315) then
										v1316 = 0 - 0;
										v1317 = nil;
										v1315 = 1 + 0;
									end
									if (v1315 == 1) then
										while true do
											if (v1316 == ((0 + 0) - (0 - 0))) then
												local v1339 = 0;
												while true do
													if (v1339 == 0) then
														v1317 = _G['CheckBoss'](DitMeSaoDecodeLauThe("\138\188\75\47\174\165\79\32\235\130\73\33\235\138\78\41\162\185\75\40", "\68\203\203\42"));
														_G['set']("Attempt To Farming Awakened Ice Admiral [Lv. 1400] [Rengoku/Phoeyu]");
														v1339 = 1 + 0;
													end
													if (v1339 == 1) then
														v1316 = (1 - 0) + (1807 - (587 + 1220));
														break;
													end
												end
											end
											if (v1316 == ((1893 - (1211 + 681)) + 0)) then
												repeat
													local v1347 = 77 - (64 + 13);
													local v1348;
													while true do
														if (v1347 == 0) then
															v1348 = (655 - (121 + 534)) - 0;
															while true do
																if (v1348 == ((804 - (622 + 181)) + 1 + 0)) then
																	_G['click'] = true;
																	_G['stuff'](v1317);
																	break;
																end
																if (1 == v1348) then
																	local v1379 = 1669 - (296 + 1373);
																	while true do
																		if ((0 + 0) == v1379) then
																			_G['to'](_G['getKillVector3'](v1317['HumanoidRootPart'].CFrame));
																			print(1 + 0);
																			v1379 = 1 + 0;
																		end
																		if (v1379 == (1615 - (143 + 1471))) then
																			v1348 = (6 - 4) + 0;
																			break;
																		end
																	end
																end
																if (v1348 == ((479 + 947) - ((220 - 135) + (1521 - (103 + 77))))) then
																	local v1380 = 0 + 0;
																	while true do
																		if (v1380 == 1) then
																			v1348 = (1159 - (895 + 262)) - (1 - 0);
																			break;
																		end
																		if ((0 + 0) == v1380) then
																			wait();
																			print((1626 - (581 + 1045)) - 0);
																			v1380 = 1;
																		end
																	end
																end
															end
															break;
														end
													end
												until not _G['skidmaruhubnekkkanhambanana'](v1317) 
												break;
											end
										end
										break;
									end
								end
							elseif (_G['CheckSea'](1277 - (582 + 693)) and _G['waterkeystuff']) then
								local v1321 = 1186 - (454 + 732);
								local v1322;
								while true do
									if (v1321 == (0 - 0)) then
										v1322 = _G['CheckBoss'](DitMeSaoDecodeLauThe("\119\94\113\220\3\124\112\220\83\82\103", "\185\35\55\21"));
										_G['set'](DitMeSaoDecodeLauThe("\146\237\171\129\190\233\171\196\135\246\255\162\178\235\178\141\189\254\255", "\228\211\153\223") .. v1322['Name'] .. DitMeSaoDecodeLauThe("\20\212\124\60\51\1\70\224\91\54\7", "\102\52\143\56\93\90"));
										v1321 = 1 + 0;
									end
									if ((1 - 0) == v1321) then
										repeat
											local v1340 = 0;
											local v1341;
											while true do
												if (v1340 == 0) then
													v1341 = 372 - ((62 - 17) + (977 - (367 + 283)));
													while true do
														if (v1341 == (69 - (7 + 61))) then
															local v1368 = 0 - 0;
															while true do
																if (v1368 == (0 - 0)) then
																	_G['to'](_G['getKillVector3'](v1322['HumanoidRootPart'].CFrame));
																	_G['click'] = true;
																	v1368 = 1;
																end
																if (v1368 == (1 + 0)) then
																	v1341 = 680 - (332 + 346);
																	break;
																end
															end
														end
														if (v1341 == (3 - 1)) then
															_G['stuff'](v1322);
															break;
														end
														if (v1341 == (0 - 0)) then
															wait();
															warn(0 - 0);
															v1341 = 1 - 0;
														end
													end
													break;
												end
											end
										until not _G['skidmaruhubnekkkanhambanana'](v1322) 
										if (not _G['checkitem'](DitMeSaoDecodeLauThe("\113\22\180\45\247\6\60\165\49", "\133\38\119\192\72")) and (_G['getPlayerLevel']() > ((1921 + 81) - (444 + 58)))) then
											local v1349 = 0 - 0;
											local v1350;
											while true do
												if (v1349 == (0 + 0)) then
													v1350 = 0 + 0 + (0 - 0);
													while true do
														if (v1350 == (0 - 0)) then
															_G['noti'](DitMeSaoDecodeLauThe("\223\174\100\187\209\174\102\187\192\160\96\254\229\225\95\254\238", "\155\151\193\20"));
															_G['HopServer']();
															v1350 = (1855 - (815 + 1039)) + (776 - (336 + 440));
														end
														if (v1350 == 1) then
															wait(9999);
															break;
														end
													end
													break;
												end
											end
										end
										break;
									end
								end
							elseif (_G['CheckSea'](1 + 0 + 0 + 0) and (_G['getPlayerLevel']() > (579 - 379)) and not _G['checkitem'](DitMeSaoDecodeLauThe("\29\165\2\75\105", "\27\78\196\96\46")) and _G['game']:GetService(DitMeSaoDecodeLauThe("\221\244\160\179\105\84\77\233\254", "\44\138\155\210\216\26\36"))['Map']['Jungle']['Final']['Part']['CanCollide'] and _G['c']()['Main'][DitMeSaoDecodeLauThe("\138\88\188\73\233\251\81\249\105\252\185\72\171", "\157\219\45\217\58")]) then
								local v1334 = 0;
								while true do
									if (v1334 == (0 - 0)) then
										_G['set'](DitMeSaoDecodeLauThe("\148\178\63\219\249\240\142\55\215\251\162\253\7\192\251\163\169", "\158\208\221\86\181"));
										if _G['game']:GetService(DitMeSaoDecodeLauThe("\215\78\248\0\51\175\57\227\68", "\88\128\33\138\107\64\223"))['Map']['Jungle']['QuestPlates']['Door']['CanCollide'] then
											for v1360, v1361 in next, _G['game']:GetService(DitMeSaoDecodeLauThe("\246\253\103\126\190\107\239\194\247", "\142\161\146\21\21\205\27"))['Map']['Jungle']['QuestPlates']:GetChildren() do
												if v1361:IsA(DitMeSaoDecodeLauThe("\61\245\120\6\22", "\172\112\154\28\99\122\153")) then
													if v1361['Button']:FindFirstChild(DitMeSaoDecodeLauThe("\255\248\181\29\195\222\174\10\206\229\165\13\223", "\126\171\151\192")) then
														_G['pcall'](function()
															local v1387 = 430 - (222 + 208);
															local v1388;
															while true do
																if (v1387 == 0) then
																	v1388 = (76 + 1656) - ((894 - (652 + 178)) + (2643 - 975));
																	while true do
																		if ((0 - 0) == v1388) then
																			wait(1 + 0);
																			_G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['CFrame'] = v1361['Button']['CFrame'];
																			break;
																		end
																	end
																	break;
																end
															end
														end);
													end
												end
											end
										elseif (_G['game']:GetService(DitMeSaoDecodeLauThe("\9\17\235\23\20\234\88\61\27", "\57\94\126\153\124\103\154"))['Map']['Desert']['Burn']['Part']['Transparency'] == ((4974 - 3001) - ((1621 - (259 + 135)) + 746))) then
											local v1366 = 1460 - (1393 + 67);
											local v1367;
											while true do
												if (v1366 == (0 + 0)) then
													v1367 = (1448 - (1129 + 319)) - (0 + 0);
													while true do
														if (((0 - 0) - (412 - (137 + 275))) == v1367) then
															_G['set'](DitMeSaoDecodeLauThe("\51\200\64\23\209\1\36\198\75\28\196\1\38\210\76\10\194\1\69\157\9\63\223\83\30\201\78\89\242\78\24\213\9\54\216\1\51\194\90\28\196\85", "\33\119\167\41\121\182"));
															if not _G['checkitem'](DitMeSaoDecodeLauThe("\115\187\41\85\163", "\88\39\212\91\54\203\51\124")) then
																_G['to'](_G['game']:GetService(DitMeSaoDecodeLauThe("\27\163\166\129\104\222\201\47\169", "\168\76\204\212\234\27\174"))['Map']['Jungle']['Torch'].CFrame);
															else
																repeat
																	local v1404 = 0;
																	while true do
																		if (v1404 == 1) then
																			workspace['CurrentCamera']['CFrame'] = CFrame.new((2047.61475 - (140 + 299)) - ((1516 - (421 + 680)) + (386 - 307)), (2.04679728 - 1) + (9 - 5), 2360.22803 + 1990, -((1031.648466587 - (58 + 482)) - (142 + (1028 - (310 + 369)))), -1.2879909e-9, 0.761243105 + 0 + 0, -(5.706529e-10 - (286 - (274 + 12))), 1 + 0, 1.2058454e-9 + 0, -((1762.761243105 - (681 + 1081)) + 0), (3.4754488e-10 - 0) + (0 - 0), -((0.648466587 - 0) - (877 - (842 + 35))));
																			_G['to'](CFrame.new(2978.6147499999997 - (1710 + (243 - 89)), 5.04679728, 6217.22803 - (180 + 1687), -((779.648466587 - 461) - ((1171 - (269 + 702)) + (932 - (776 + 38)))), -(1.2879909e-9 + 0), (0.761243105 - 0) + 0 + 0, -(5.706529e-10 + 0), (1 + 0) - 0, 1.2058454e-9 + 0, -(0.761243105 - 0), (3.4754488e-10 - 0) + 0 + 0, -((0.648466587 - 0) + 0)));
																			break;
																		end
																		if (v1404 == 0) then
																			wait();
																			_G['EquipWeaponName'](DitMeSaoDecodeLauThe("\184\11\33\71\1", "\46\236\100\83\36\105\134"));
																			v1404 = 1;
																		end
																	end
																until not _G['checkitem'](DitMeSaoDecodeLauThe("\13\245\149\131\137", "\111\89\154\231\224\225")) 
															end
															break;
														end
													end
													break;
												end
											end
										elseif (_G['game']:GetService(DitMeSaoDecodeLauThe("\207\223\22\169\37\250\221\197\248\222\53\177\35\235\221\214\248", "\177\157\186\102\197\76\153\188"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\146\172\47\158\183\187\51\187\146\172\47\168\176\187\51\188", "\207\194\222\64"), DitMeSaoDecodeLauThe("\40\124\212\75\165\210\21", "\179\123\21\183\32\232")) ~= (0 + 0 + 0)) then
											local v1381 = 955 - (135 + 820);
											while true do
												if (v1381 == 0) then
													_G['set'](DitMeSaoDecodeLauThe("\226\44\197\51\180\66\245\34\206\56\161\66\247\54\201\46\167\66\149\121\140\22\186\14\202\42\194\58\243\47\201\33\140\17\182\3\194\38\222\125\136\32\201\48\223\0", "\98\166\67\172\93\211"));
													_G['game']:GetService(DitMeSaoDecodeLauThe("\213\230\199\217\11\73\227\243\230\211\230\22\69\240\230\228\210", "\130\135\131\183\181\98\42"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\243\164\52\210\53\198\165\47\211\50\204\177\41\230\51\208", "\64\163\214\91\131"), DitMeSaoDecodeLauThe("\54\42\12\21\42\1", "\95\113\79\120\86"));
													v1381 = 137 - (118 + 18);
												end
												if (v1381 == (1 + 0)) then
													_G['EquipWeaponName'](DitMeSaoDecodeLauThe("\136\225\48", "\169\203\148\64\208\230\109\95"));
													_G['game']:GetService(DitMeSaoDecodeLauThe("\250\18\22\190\35\24\61\242\205\19\53\166\37\9\61\225\205", "\134\168\119\102\210\74\123\92"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\155\28\19\104\190\11\15\77\155\28\19\94\185\11\15\74", "\57\203\110\124"), DitMeSaoDecodeLauThe("\136\218\25\37\35\187\195", "\96\206\179\117\73"), _G['game']:GetService(DitMeSaoDecodeLauThe("\177\47\118\60\132\49\100", "\69\225\67\23"))['LocalPlayer']['Character'].Cup);
													v1381 = 9 - 7;
												end
												if (v1381 == (1 + 1)) then
													_G['game']:GetService(DitMeSaoDecodeLauThe("\246\132\35\185\213\128\216\111\193\133\0\161\211\145\216\124\193", "\27\164\225\83\213\188\227\185"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\184\29\141\207\210\141\28\150\206\213\135\8\144\251\212\155", "\167\232\111\226\158"), DitMeSaoDecodeLauThe("\119\45\44\19\54\92\254", "\209\36\68\79\120\123\61\144"));
													break;
												end
											end
										elseif (_G['game']:GetService(DitMeSaoDecodeLauThe("\126\228\67\55\9\79\224\71\62\4\127\245\92\41\1\75\228", "\96\44\129\51\91"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\37\29\3\151\230\237\224\1\63\30\169\244\250\246\6\28", "\147\117\111\108\198\147\136"), DitMeSaoDecodeLauThe("\56\191\193\92\57\185\204", "\52\106\214\162")) == nil) then
											_G['game']:GetService(DitMeSaoDecodeLauThe("\55\10\206\168\248\6\14\202\161\245\54\27\209\182\240\2\10", "\145\101\111\190\196"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\96\223\142\221\90\85\222\149\220\93\95\202\147\233\92\67", "\47\48\173\225\140"), DitMeSaoDecodeLauThe("\113\196\130\208\24\163\77", "\204\35\173\225\184\75"));
										elseif ((_G['game']:GetService(DitMeSaoDecodeLauThe("\220\65\243\129\239\165\15\250\65\231\190\242\169\28\239\67\230", "\110\142\36\131\237\134\198"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\75\82\188\193\45\126\83\167\192\42\116\71\161\245\43\104", "\88\27\32\211\144"), DitMeSaoDecodeLauThe("\191\162\189\52\248\162\85", "\16\237\203\222\92\171\205\59")) == (0 + 0 + 0 + 0)) and not _G['checkitem'](DitMeSaoDecodeLauThe("\211\180\177\129\28", "\211\129\209\221\232\127"))) then
											repeat
												local v1395 = 0;
												local v1396;
												local v1397;
												while true do
													if ((1 + 0) == v1395) then
														while true do
															if (v1396 == ((2543 - (741 + 552)) - (20 + 343 + (1177 - 290)))) then
																local v1423 = 0 + 0;
																while true do
																	if (v1423 == (884 - (779 + 105))) then
																		wait();
																		v1397 = _G['CheckBoss'](DitMeSaoDecodeLauThe("\36\64\68\100\208\24\177\66\12\93", "\38\105\47\38\68\156\125\208"));
																		v1423 = 1782 - (1451 + 330);
																	end
																	if (v1423 == 1) then
																		v1396 = (1870 - (1259 + 610)) - 0;
																		break;
																	end
																end
															end
															if (v1396 == (851 - (4 + 846))) then
																if v1397 then
																	local v1433 = 1857 - (1108 + 749);
																	while true do
																		if ((1741 - (1301 + 440)) == v1433) then
																			repeat
																				local v1450 = 0 - 0;
																				local v1451;
																				while true do
																					if (v1450 == (0 + 0)) then
																						v1451 = (0 + 0) - 0;
																						while true do
																							if (v1451 == 1) then
																								_G['click'] = true;
																								_G['stuff'](v1397);
																								break;
																							end
																							if (v1451 == (0 + 0 + (476 - (168 + 308)))) then
																								local v1477 = 0 - 0;
																								while true do
																									if (v1477 == 1) then
																										v1451 = 1 + 0;
																										break;
																									end
																									if (v1477 == (0 + 0)) then
																										wait();
																										_G['to'](v1397['HumanoidRootPart']['CFrame'] * CFrame.new((1347 - (469 + 878)) - 0, 35 + 0, 18 - 13));
																										v1477 = 1;
																									end
																								end
																							end
																						end
																						break;
																					end
																				end
																			until not _G['skidmaruhubnekkkanhambanana'](v1397) 
																			_G['click'] = false;
																			break;
																		end
																	end
																end
																break;
															end
														end
														break;
													end
													if (v1395 == 0) then
														v1396 = (0 + 0) - 0;
														v1397 = nil;
														v1395 = 1 + 0;
													end
												end
											until (_G['game']:GetService(DitMeSaoDecodeLauThe("\190\133\181\72\245\43\141\148\160\64\207\60\131\146\164\67\249", "\72\236\224\197\36\156"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\244\185\75\187\209\174\87\158\244\185\75\141\214\174\87\153", "\234\164\203\36"), DitMeSaoDecodeLauThe("\57\228\131\42\191\81\127", "\18\107\141\224\66\236\62\17")) == ((3991 - 2326) - (674 + 974 + 16))) or _G['checkitem'](DitMeSaoDecodeLauThe("\153\170\16\254\168", "\151\203\207\124")) 
										elseif ((_G['game']:GetService(DitMeSaoDecodeLauThe("\230\31\225\14\233\138\31\208\209\30\194\22\239\155\31\195\209", "\164\180\122\145\98\128\233\126"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\139\22\20\252\174\1\8\217\139\22\20\202\169\1\8\222", "\173\219\100\123"), DitMeSaoDecodeLauThe("\134\33\79\3\32\187\38", "\115\212\72\44\107")) == (3 - 2)) and _G['game']:GetService(DitMeSaoDecodeLauThe("\187\224\70\121\238\62\175\71\137", "\36\236\143\52\18\157\78\206"))['Map']['Jungle']['Final']['Part']['CanCollide']) then
											local v1403 = 0;
											while true do
												if ((1841 - (1332 + 508)) == v1403) then
													_G['EquipWeaponName'](DitMeSaoDecodeLauThe("\120\95\31\228\169", "\65\42\58\115\141\202\27"));
													repeat
														local v1419 = 0 + 0;
														local v1420;
														while true do
															if (v1419 == 0) then
																v1420 = 0 + 0 + 0;
																while true do
																	if (v1420 == (1 + 0 + 0)) then
																		workspace['CurrentCamera']['CFrame'] = GetService(DitMeSaoDecodeLauThe("\124\11\71\202\60\91\5\86\196", "\79\43\100\53\161"))['Map']['Jungle']['Final']['Part']['CFrame'];
																		break;
																	end
																	if (v1420 == ((1142 - (650 + 492)) - 0)) then
																		local v1447 = 806 - (689 + 117);
																		while true do
																			if ((0 + 0) == v1447) then
																				wait();
																				_G['to'](CFrame.new(-(2459.91504 - (507 + (1397 - 849))), 866.9773273 - ((2212 - (794 + 1129)) + 548 + 0), 1821.80598116 - (154 + 667 + (1858 - (553 + 308))), 255.876514494 - (195 + (112 - 52)), 5.6690688e-9 + 0, 0.481375456 + 0 + (1768 - (1764 + 4)), 1501.0000000253851 - ((768 - (121 + 396)) + 1250), (556 - (498 + 56)) - 1, -(5.799956e-8 + 0 + (0 - 0)), -((958.481375456 + 74) - (809 + 223)), (6.3057264e-8 - 0) - (0 - 0), (0.876514494 + 0) - 0));
																				v1447 = 2 - 1;
																			end
																			if (v1447 == (1617 - (316 + 1300))) then
																				v1420 = 3 - 2;
																				break;
																			end
																		end
																	end
																end
																break;
															end
														end
													until not _G['game']:GetService(DitMeSaoDecodeLauThe("\199\203\221\68\71\92\55\71\245", "\36\144\164\175\47\52\44\86"))['Map']['Jungle']['Final']['Part']['CanCollide'] or not _G['checkitem'](DitMeSaoDecodeLauThe("\2\10\247\173\124", "\31\80\111\155\196")) 
													break;
												end
												if (v1403 == 0) then
													_G['set'](DitMeSaoDecodeLauThe("\116\78\49\65\248\16\114\57\77\250\66\1\30\70\241\81\77\120\126\234\85\82\44\21\191\101\82\49\65\248\16\115\61\67\246\83", "\159\48\33\88\47"));
													_G['game']:GetService(DitMeSaoDecodeLauThe("\45\71\9\254\186\226\54\35\26\70\42\230\188\243\54\48\26", "\87\127\34\121\146\211\129\87"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\155\243\138\221\48\59\220\96\155\243\138\235\55\59\220\103", "\20\203\129\229\140\69\94\175"), DitMeSaoDecodeLauThe("\157\207\87\62\220\237\161", "\130\207\166\52\86\143"));
													v1403 = 1;
												end
											end
										end
										break;
									end
								end
							elseif (_G['CheckSea'](173 - (78 + 94)) and _G['CheckBoss'](DitMeSaoDecodeLauThe("\96\88\227\209\61\19\124\249\196\42\65\77", "\79\51\57\129\180")) and (_G['getPlayerLevel']() > ((1563 - (261 + 1155)) + (1508 - (1040 + 416)))) and not _G['checkitem'](DitMeSaoDecodeLauThe("\4\179\50\93\203", "\185\87\210\80\56")) and not _G['game']:GetService(DitMeSaoDecodeLauThe("\241\31\188\83\110\233\84\197\21", "\53\166\112\206\56\29\153"))['Map']['Jungle']['Final']['Part']['CanCollide']) then
								local v1342 = 43 - (29 + 14);
								local v1343;
								local v1344;
								while true do
									if (v1342 == (1 - 0)) then
										while true do
											if (((1580 - (928 + 34)) - (4 + 10 + 603)) == v1343) then
												if v1344 then
													local v1383 = 0 + 0;
													local v1384;
													while true do
														if (v1383 == (0 + 0)) then
															v1384 = (473 - 344) - ((346 - 228) + 11);
															while true do
																if (v1384 == ((0 - 0) + 0)) then
																	repeat
																		local v1413 = 510 - (69 + 441);
																		local v1414;
																		while true do
																			if (v1413 == (0 - 0)) then
																				v1414 = 0;
																				while true do
																					if (v1414 == (0 + 0 + 0)) then
																						wait();
																						_G['to'](_G['getKillVector3'](v1344['HumanoidRootPart'].CFrame));
																						v1414 = 2 - 1;
																					end
																					if (v1414 == ((1882 - (517 + 1363)) - (929 - (802 + 126)))) then
																						_G['stuff'](v1344);
																						_G['click'] = true;
																						break;
																					end
																				end
																				break;
																			end
																		end
																	until not _G['skidmaruhubnekkkanhambanana'](v1344) 
																	_G['click'] = false;
																	break;
																end
															end
															break;
														end
													end
												end
												break;
											end
											if ((949 - (551 + (2066 - (1660 + 8)))) == v1343) then
												local v1369 = 0 - 0;
												while true do
													if (v1369 == (181 - (38 + 143))) then
														v1344 = _G['CheckBoss'](DitMeSaoDecodeLauThe("\65\18\84\15\231\111\87\11\70\15\231\59", "\79\18\115\54\106\149"));
														_G['set'](DitMeSaoDecodeLauThe("\107\70\90\91\40\109\153\230\126\93\14\120\36\111\128\175\68\85\14\109\36\127\136\180\10\119\86\78\32\111\153\230\113\97\79\92\32\111\176", "\198\42\50\46\62\69\29\237"));
														v1369 = 2 - 1;
													end
													if (v1369 == (118 - (29 + 88))) then
														v1343 = 1;
														break;
													end
												end
											end
										end
										break;
									end
									if (v1342 == (0 - 0)) then
										v1343 = (489 - (308 + 181)) + (1397 - (537 + 860));
										v1344 = nil;
										v1342 = 1 + 0;
									end
								end
							elseif (_G['CheckSea'](1096 - (691 + 404)) and (_G['getPlayerLevel']() > ((2397 - (870 + 1084)) + 257)) and (_G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\230\168\19\42\59\178\1\72\195\139\3\60\59\180\62\73\205\189\4\60\59\179", "\59\162\218\118\89\72\192\110"), DitMeSaoDecodeLauThe("\161\236\181\76\91\19\125\18\132", "\97\229\158\208\63\40\97\18")) ~= ((129 - (47 + 82)) + 0 + 0))) then
								_G['set'](DitMeSaoDecodeLauThe("\9\193\123\72\139\109\234\96\67\159\62\220\125\85\141\109\255\103\67\159\57", "\236\77\174\18\38"));
								if (not _G['checkitem'](DitMeSaoDecodeLauThe("\179\92\205\16\146", "\117\224\61\175")) and not _G['CheckBoss'](DitMeSaoDecodeLauThe("\216\70\196\141\249\7\227\144\251\66\212\156", "\232\139\39\166"))) then
									_G['set'](DitMeSaoDecodeLauThe("\203\94\67\5\81\205\241\17\97\64\118\209\236\95\9\5\90\203\240\66\90\75\112\130\208\80\81\64\101\130\208\70\92\87\115\142\163\121\92\85\103\203\237\86\19\99\120\208\163\99\86\84\98\203\241\84\94\64\121\214\240", "\162\131\49\51\37\23"));
									_G['HopServer']();
									wait(8500 + 1499);
									return;
								end
								_G['set'](DitMeSaoDecodeLauThe("\123\118\247\36\115\31\43\240\46\52\108\124\255\106\69\74\124\237\62", "\20\63\25\158\74"));
								if _G['game']['Workspace']['Map']['Ice']['Door']['CanCollide'] then
									if (not _G['game']:GetService(DitMeSaoDecodeLauThe("\74\214\93\180\122\194\59", "\217\26\186\60\205\31\176\72"))['LocalPlayer']['Character']:FindFirstChild(DitMeSaoDecodeLauThe("\240\116\31", "\140\187\17\102")) and not _G['game']:GetService(DitMeSaoDecodeLauThe("\28\135\165\88\41\153\183", "\33\76\235\196"))['LocalPlayer']['Backpack']:FindFirstChild(DitMeSaoDecodeLauThe("\35\239\235", "\229\104\138\146\63\204\80\229"))) then
										if ((CFrame.new(4016.2895507813 + 836, 16.651451587677002 - 11, 584.53070068359 + 134)['Position'] - _G['game']:GetService(DitMeSaoDecodeLauThe("\144\113\31\208\165\111\13", "\169\192\29\126"))['LocalPlayer']['Character']['HumanoidRootPart']['Position'])['magnitude'] < (18 - (130 - (84 + 33)))) then
											local v1385 = 0;
											while true do
												if (v1385 == 0) then
													_G['game']['ReplicatedStorage']['Remotes'][DitMeSaoDecodeLauThe("\18\202\8\134\23\250", "\235\81\165\101")]:InvokeServer(DitMeSaoDecodeLauThe("\92\150\90\10\150\22\195\107\133\110\12\128\23\216\72\150\80\30\151\1\223\107", "\172\24\228\63\121\229\100"), DitMeSaoDecodeLauThe("\174\75\193\200\137\90\220\219\143", "\173\234\46\181"));
													_G['EquipWeaponName'](DitMeSaoDecodeLauThe("\244\55\242", "\67\191\82\139\95"));
													break;
												end
											end
										else
											_G['to'](CFrame.new(11179.289550781301 - (2945 + 3382), 5.651451587677, (823.53070068359 - 590) + 485), false);
										end
									else
										local v1370 = (0 + 0) - (0 - 0);
										while true do
											if (v1370 == ((0 - 0) + (0 - 0))) then
												_G['EquipWeaponName'](DitMeSaoDecodeLauThe("\22\232\94", "\139\93\141\39\162\140"));
												if _G['game']:GetService(DitMeSaoDecodeLauThe("\28\175\8\206\27\62\176", "\126\76\195\105\183"))['LocalPlayer']['Character']:FindFirstChild(DitMeSaoDecodeLauThe("\116\77\189", "\212\63\40\196\17\57")) then
													_G['to'](_G['game']['Workspace']['Map']['Ice']['Door'].CFrame);
												end
												break;
											end
										end
									end
								elseif not _G['game']['Workspace']['Map']['Ice']['Door']['CanCollide'] then
									local v1371 = 0 - 0;
									local v1372;
									local v1373;
									while true do
										if (v1371 == (1221 - (87 + 1133))) then
											while true do
												if (((0 - 0) - (0 + 0)) == v1372) then
													v1373 = _G['CheckBoss'](DitMeSaoDecodeLauThe("\128\200\245\186\136\207\253\243\187\202\252", "\154\201\171\144"));
													if v1373 then
														local v1405 = 0 + 0;
														while true do
															if (v1405 == 1) then
																repeat
																	wait();
																until not _G['TeleportSea']((1159 - (205 + 462)) - (33 + 66 + (602 - 211))) 
																break;
															end
															if ((1381 - (1035 + 346)) == v1405) then
																repeat
																	local v1424 = 0 + 0;
																	local v1425;
																	while true do
																		if (v1424 == (1780 - (970 + 810))) then
																			v1425 = 0 + 0;
																			while true do
																				if ((0 - 0) == v1425) then
																					local v1452 = 0 + 0;
																					while true do
																						if (v1452 == 0) then
																							wait();
																							_G['to'](_G['getKillVector3'](v1373['HumanoidRootPart'].CFrame));
																							v1452 = 1 + 0;
																						end
																						if (v1452 == (2 - 1)) then
																							v1425 = 3 - 2;
																							break;
																						end
																					end
																				end
																				if (v1425 == (1389 - (601 + 787))) then
																					_G['stuff'](v1373);
																					_G['click'] = true;
																					break;
																				end
																			end
																			break;
																		end
																	end
																until not _G['skidmaruhubnekkkanhambanana'](v1373) 
																_G['click'] = false;
																v1405 = 611 - (256 + 354);
															end
														end
													end
													break;
												end
											end
											break;
										end
										if (v1371 == (0 - 0)) then
											v1372 = (333 - 244) - (40 + (126 - 77));
											v1373 = nil;
											v1371 = 1 - 0;
										end
									end
								end
							elseif (_G['CheckSea']((1 - 0) + (0 - 0)) and (_G['getPlayerLevel']() < ((9401 - 6324) - (4313 - 1936))) and (_G['getPlayerLevel']() > (148 - 88)) and (_G['game']['ReplicatedStorage']['Remotes'][DitMeSaoDecodeLauThe("\161\225\165\192\144\48", "\221\226\142\200\173\214\111\223")]:InvokeServer(DitMeSaoDecodeLauThe("\62\66\190\40\173\28\102\170\63\188\11\92", "\200\110\46\223\81")) ~= "I don't have anything for you right now. Come back later.") and _G['c']()['Main'][DitMeSaoDecodeLauThe("\51\73\61\54\46\215\70\86\116\55\61\50\146\100\23\85\49", "\34\118\39\92\84\66\178")]) then
								local v1362 = 0 - 0;
								local v1363;
								local v1364;
								while true do
									if (v1362 == 1) then
										while true do
											if (v1363 == ((577 - (259 + 313)) - 3)) then
												v1364 = _G['game']['ReplicatedStorage']['Remotes'][DitMeSaoDecodeLauThe("\104\135\60\15\8\150", "\19\43\232\81\98\78\201\175")]:InvokeServer(DitMeSaoDecodeLauThe("\123\223\249\191\193\255\162\94\221\236\163\214", "\234\43\179\152\198\164\141"));
												if (v1364 ~= "I don't have anything for you right now. Come back later.") then
													if _G['game']:GetService(DitMeSaoDecodeLauThe("\149\86\125\199\130\161\222", "\231\197\58\28\190\231\211\173"))['LocalPlayer']['PlayerGui']['Main']['Quest']['Visible'] then
														local v1406 = 0 - 0;
														local v1407;
														local v1408;
														while true do
															if ((0 + 0) == v1406) then
																v1407 = (482 + 1122) - (703 + 329 + (1661 - 1089));
																v1408 = nil;
																v1406 = 1;
															end
															if (v1406 == 1) then
																while true do
																	if (v1407 == ((1756 - (413 + 925)) - (105 + 98 + 112 + 102))) then
																		if (dicac and not v34[dicac['Name']]) then
																			if (dicac:FindFirstChild(DitMeSaoDecodeLauThe("\119\211\42\45", "\236\51\178\94\76\183")) and (dicac['Data']['Level']['Value'] > ((578 + 1259) - ((2064 - 1496) + (2115 - 866)))) and (dicac['Character']['Humanoid']['MaxHealth'] < (_G['game']['Players']['LocalPlayer']['Character']['Humanoid']['Health'] + (_G['getPlayerLevel']() * (1.4 + 0 + 0) * ((11 - 7) - (1946 - (1164 + 780))))))) then
																				local v1453 = 0;
																				while true do
																					if (v1453 == 3) then
																						v34[dicac['Name']] = true;
																						break;
																					end
																					if (v1453 == 2) then
																						repeat
																							local v1470 = 0;
																							while true do
																								if (v1470 == 0) then
																									_G['game']:GetService(DitMeSaoDecodeLauThe("\243\22\70\239\87\111\215\10\75\217", "\29\161\99\40\188\50"))['Stepped']:Wait();
																									_G['pcall'](function()
																										local v1484 = 0;
																										local v1485;
																										while true do
																											if (v1484 == (1360 - (596 + 764))) then
																												v1485 = 0 - 0;
																												while true do
																													if (v1485 == (1307 - ((1195 - (52 + 230)) + 393))) then
																														local v1509 = 0 - 0;
																														while true do
																															if (v1509 == (1567 - (806 + 760))) then
																																v1485 = (4657 - 3030) - ((1579 - 629) + (1099 - 424));
																																break;
																															end
																															if (v1509 == (0 + 0)) then
																																if _G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['PvpDisabled']['Visible'] then
																																	repeat
																																		local v1528 = 0;
																																		while true do
																																			if (v1528 == 1) then
																																				_G['starttime'] = _G['starttime'] + ((1 + 0) - (0 - 0));
																																				break;
																																			end
																																			if (v1528 == (0 - 0)) then
																																				wait((1 + 1) - (1 + 0));
																																				_G['game']:GetService(DitMeSaoDecodeLauThe("\75\47\176\235\7\57\11\248\124\46\147\243\1\40\11\235\124", "\140\25\74\192\135\110\90\106"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\7\95\69\240\166\167\18\71\84", "\194\66\49\36\146\202"));
																																				v1528 = 1;
																																			end
																																		end
																																	until not _G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['PvpDisabled']['Visible'] or (_G['starttime'] > ((2425 - (1000 + 965)) - (149 + 120 + 141))) 
																																end
																																_G['to'](dicac['Character']['HumanoidRootPart']['CFrame'] + (alskdbwbhsh or Vector3.new(0 - 0, (0 - 0) - (0 + 0), (3107 - (261 + 865)) - ((1077 - 715) + (2549 - 930)))));
																																v1509 = 1;
																															end
																														end
																													end
																													if (v1485 == (0 + 0)) then
																														local v1510 = 0 + 0;
																														while true do
																															if (v1510 == (545 - (33 + 512))) then
																																_G['dmlockskill'] = dicac['Character']['Head']['Position'];
																																_G['stuff']();
																																v1510 = 1837 - (1555 + 281);
																															end
																															if ((1 - 0) == v1510) then
																																v1485 = 1 + 0;
																																break;
																															end
																														end
																													end
																													if (v1485 == (2 - 0)) then
																														spawn(function()
																															if (v14:DistanceFromCharacter(dicac['Character']['HumanoidRootPart'].Position) < (8 + 2)) then
																																local v1519 = 0;
																																while true do
																																	if (1 == v1519) then
																																		_G['down']("X");
																																		break;
																																	end
																																	if (v1519 == (0 - 0)) then
																																		_G['iscabdcool'] = true;
																																		_G['down']("Z");
																																		v1519 = 1 + 0;
																																	end
																																end
																															elseif not _G['iscabdcool'] then
																																_G['starttime'] = os.time();
																															end
																														end);
																														break;
																													end
																												end
																												break;
																											end
																										end
																									end);
																									break;
																								end
																							end
																						until not dicac['Character']:FindFirstChild(DitMeSaoDecodeLauThe("\163\52\204\6", "\165\235\81\173\98")) or ((os.time() - _G['starttime']) > ((1248 - (34 + 5)) - (184 + 32 + 963))) or not _G['game']:GetService(DitMeSaoDecodeLauThe("\27\137\168\47\188\246\56", "\132\75\229\201\86\217"))['LocalPlayer']['PlayerGui']['Main']['Quest']['Visible'] or _G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['SafeZone']['Visible'] 
																						_G['dmlockskill'] = false;
																						v1453 = 2 + 1;
																					end
																					if (v1453 == (1 + 0)) then
																						_G['starttime'] = os.time();
																						_G['iscabdcool'] = false;
																						v1453 = 1 + 1;
																					end
																					if (v1453 == (0 + 0)) then
																						_G['dimemi'] = false;
																						_G['set'](DitMeSaoDecodeLauThe("\217\198\219\83\170\225\215\85\239\193\136\3", "\35\138\173\178") .. dicac['Name']);
																						v1453 = 3 - 2;
																					end
																				end
																			else
																				v34[dicac['Name'] .. _G['tostring'](_G['math'].random(83848, (27277282727279772 - 0) - ((1706 - (999 + 222)) + 262 + 540)))] = true;
																			end
																		end
																		break;
																	end
																	if (v1407 == 0) then
																		local v1434 = 0 + 0;
																		while true do
																			if (1 == v1434) then
																				v1407 = 345 - (166 + 178);
																				break;
																			end
																			if (v1434 == 0) then
																				v1408 = _G['string'].gsub(_G['string'].gsub(_G['game']:GetService(DitMeSaoDecodeLauThe("\178\126\164\188\135\96\182", "\197\226\18\197"))['LocalPlayer']['PlayerGui']['Main']['Quest']['Container']['QuestTitle']['Title'].Text, DitMeSaoDecodeLauThe("\56\212\7\84\29\197\65", "\49\124\177\97"), ""), " %p(0/1)%p", "");
																				_G['dicac'] = _G['game']['Players'][v1408];
																				v1434 = 1 + 0;
																			end
																		end
																	end
																end
																break;
															end
														end
													end
												end
												v1363 = (1671 - 1109) - ((1732 - (587 + 713)) + 127);
											end
											if (v1363 == (1073 - (748 + 317 + (1130 - (11 + 1111))))) then
												local v1391 = 0 + 0;
												while true do
													if (v1391 == 0) then
														if not _G['dimemi'] then
															_G['grhsksjehjrjdjdjsks'] = os.time();
														end
														_G['dimemi'] = true;
														v1391 = 1 + 0;
													end
													if (v1391 == (2 - 1)) then
														v1363 = 1101 - (882 + 218);
														break;
													end
												end
											end
											if ((2 + 1 + 0) == v1363) then
												if (_G['dimemi'] and ((os.time() - _G['grhsksjehjrjdjdjsks']) > (1604 - ((1597 - (115 + 847)) + (2707 - 1741))))) then
													local v1398 = 1615 - (1231 + 384);
													while true do
														if (v1398 == (0 - 0)) then
															_G['HopServer']();
															return;
														end
													end
												end
												break;
											end
											if (v1363 == ((1697 - (1202 + 494)) + (178 - (12 + 166)))) then
												local v1392 = 0;
												while true do
													if (v1392 == (0 - 0)) then
														_G['set'](DitMeSaoDecodeLauThe("\164\50\201\176\135\125\240\178\129\36\197\172\192\21\213\176\148\56\210\254\177\40\197\173\148", "\222\224\93\160"));
														_G['st'] = 1 + 0;
														v1392 = 605 - (202 + 402);
													end
													if (v1392 == (1 + 0)) then
														v1363 = 1000 - (936 + 62);
														break;
													end
												end
											end
										end
										break;
									end
									if (v1362 == (348 - (119 + 229))) then
										v1363 = (0 - 0) + (0 - 0);
										v1364 = nil;
										v1362 = 1;
									end
								end
							elseif (_G['CheckSea'](1 + 1) and _G['c']()['Main'][DitMeSaoDecodeLauThe("\218\232\119\50\44\171\225\50\19\57\232\248\50\23\107", "\88\139\157\18\65")] and (_G['getPlayerBeli']() > ((4477740 - 2477698) - ((1441 - (513 + 923)) + (1814 - (507 + 1270))))) and not _G['moctui']((3 + 4) - (15 - 11)) and _G['table'].find(_G['backi'], _G['whatismyrace']()) and (_G['whatismyrace']() == DitMeSaoDecodeLauThe("\98\15\31\16\197", "\171\42\122\114\113")) and (not pork or _G['throughcheck'](pork, 0 + 0, _G['CheckBoss'])) and _G['uable'][DitMeSaoDecodeLauThe("\171\164\205\239\132\166\203\237\172\171\207\231\158\187", "\130\237\200\172")]) then
								local v1374 = 0;
								local v1375;
								local v1376;
								while true do
									if ((0 + 0) == v1374) then
										v1375 = 0 - 0;
										v1376 = nil;
										v1374 = 1;
									end
									if (v1374 == (3 - 2)) then
										while true do
											if (v1375 == ((1 - 0) + (769 - (644 + 125)))) then
												local v1399 = 0;
												while true do
													if ((0 + 0) == v1399) then
														_G['sh']();
														if (v1376 == DitMeSaoDecodeLauThe("\14\197\163\15\40", "\110\70\176\206")) then
															local v1421 = 1847 - (718 + 1129);
															local v1422;
															while true do
																if (v1421 == 0) then
																	v1422 = 0 - 0;
																	while true do
																		if (v1422 == (0 - 0)) then
																			_G['pork'] = {[DitMeSaoDecodeLauThe("\83\17\55\226\46\116", "\90\21\112\93\139")]=false,[DitMeSaoDecodeLauThe("\43\222\102\179\173\24", "\192\97\187\20\214")]=false,[DitMeSaoDecodeLauThe("\46\82\50\197\143\4\95", "\224\106\59\83\168")]=false};
																			for v1455, v1456 in pairs(_G['pork']) do
																				if ((v1456 == false) and _G['CheckBoss'](v1455)) then
																					local v1462 = 0;
																					while true do
																						if (v1462 == (2 + 0)) then
																							_G['UpV3']();
																							break;
																						end
																						if (v1462 == 0) then
																							_G['inside'] = _G['CheckBoss'](v1455);
																							repeat
																								local v1478 = 0;
																								local v1479;
																								while true do
																									if (v1478 == (0 - 0)) then
																										v1479 = (1409 - (564 + 845)) - (0 - 0);
																										while true do
																											if (v1479 == ((162 - (46 + 116)) - (650 - (575 + 75)))) then
																												task.wait();
																												_G['to'](_G['getKillVector3'](_G['inside']['HumanoidRootPart'].CFrame));
																												v1479 = 1;
																											end
																											if (v1479 == 1) then
																												_G['stuff'](_G['inside']);
																												_G['click'] = true;
																												break;
																											end
																										end
																										break;
																									end
																								end
																							until not _G['skidmaruhubnekkkanhambanana'](_G['inside']) 
																							v1462 = 2 - 1;
																						end
																						if (v1462 == (3 - 2)) then
																							_G['click'] = false;
																							_G['pork'][v1455] = true;
																							v1462 = 6 - 4;
																						end
																					end
																				else
																					_G['noti'](DitMeSaoDecodeLauThe("\144\228\11\239\71\134\78\231\195\13\233\14\170\70\180\246\88\187", "\41\199\133\98\155\46\232") .. _G['tostring'](v1455));
																				end
																			end
																			break;
																		end
																	end
																	break;
																end
															end
														elseif (v1376 == DitMeSaoDecodeLauThe("\61\168\230\67\177", "\134\124\198\129\38\221\111")) then
															local v1429 = 0 + 0;
															local v1430;
															local v1431;
															while true do
																if (v1429 == 0) then
																	v1430 = 0 + 0 + 0 + 0;
																	v1431 = nil;
																	v1429 = 1 + 0;
																end
																if (v1429 == (671 - (224 + 446))) then
																	while true do
																		if (v1430 == ((14 + 516) - (32 + 286 + (707 - 496)))) then
																			if (not v1431 or (#v1431 < (319 - (56 + 262)))) then
																				_G['HopServer']();
																			end
																			for v1463, v1464 in pairs(v1431) do
																				local v1465 = 0 - 0;
																				local v1466;
																				while true do
																					if (v1465 == (701 - (666 + 35))) then
																						v1466 = 0 - 0;
																						while true do
																							if (v1466 == (1180 - (553 + 627))) then
																								repeat
																									local v1489 = 1473 - (936 + 537);
																									local v1490;
																									while true do
																										if (v1489 == (0 + 0)) then
																											v1490 = (1200 - (737 + 463)) - 0;
																											while true do
																												if (v1490 == 0) then
																													_G['game']:GetService(DitMeSaoDecodeLauThe("\202\250\191\19\253\253\167\41\251\234", "\64\152\143\209"))['Stepped']:Wait();
																													_G['jrjdbdhdjks'], _G['eieiksghrjdks'] = _G['pcall'](function()
																														local v1515 = 0;
																														while true do
																															if (0 == v1515) then
																																_G['dmlockskill'] = v1464['Character']['Head']['Position'];
																																_G['stuff']();
																																v1515 = 1 + 0;
																															end
																															if (v1515 == (670 - (424 + 243))) then
																																if (v14:DistanceFromCharacter(v1464['Character']['HumanoidRootPart'].Position) < ((236 + 793) - ((3078 - 2249) + 190))) then
																																	local v1529 = 1346 - (1213 + 133);
																																	local v1530;
																																	while true do
																																		if (v1529 == 0) then
																																			v1530 = (0 - 0) - (0 + 0);
																																			while true do
																																				if (((61 - (37 + 23)) - (0 - 0)) == v1530) then
																																					_G['down']("X");
																																					break;
																																				end
																																				if (v1530 == ((1343 - (122 + 1221)) - 0)) then
																																					local v1553 = 242 - (139 + 103);
																																					while true do
																																						if (v1553 == (0 + 0)) then
																																							_G['hirimiihubontopxd'] = true;
																																							_G['down']("Z");
																																							v1553 = 1 + 0;
																																						end
																																						if (v1553 == 1) then
																																							v1530 = 2 - (1 - 0);
																																							break;
																																						end
																																					end
																																				end
																																			end
																																			break;
																																		end
																																	end
																																elseif not _G['hirimiihubontopxd'] then
																																	_G['starttime'] = os.time();
																																end
																																break;
																															end
																															if (v1515 == (2 + 0)) then
																																if (_G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Skills'][_G['NameMelee']()]['Z']['Cooldown']['AbsoluteSize']['X'] > ((5 + 2) - (1 + 1))) then
																																	_G['alskdbwbhsh'] = Vector3.new(0, 40, 106 - (9 + 97));
																																else
																																	local v1531 = 0 - 0;
																																	local v1532;
																																	while true do
																																		if (v1531 == 0) then
																																			v1532 = (144 + 173) - (176 + 125 + 16);
																																			while true do
																																				if (v1532 == (2 - (1 + 0))) then
																																					wait(0.1 - 0);
																																					break;
																																				end
																																				if (v1532 == ((1075 - (657 + 418)) - (1980 - (448 + 1532)))) then
																																					local v1554 = 0;
																																					while true do
																																						if (v1554 == (254 - (110 + 143))) then
																																							v1532 = (2 - 1) + (943 - (549 + 394));
																																							break;
																																						end
																																						if (v1554 == (0 + 0)) then
																																							_G['alskdbwbhsh'] = Vector3.new(1234 - (500 + 734), (0 + 0) - (0 + 0), 0 + 0 + 0);
																																							repeat
																																								wait();
																																							until not _G['game']['Players']['LocalPlayer']['Character']['Busy']['Value'] 
																																							v1554 = 666 - (343 + 322);
																																						end
																																					end
																																				end
																																			end
																																			break;
																																		end
																																	end
																																end
																																if (_G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Skills'][_G['NameMelee']()]['X']['Cooldown']['AbsoluteSize']['X'] > (3 + 2)) then
																																	_G['alskdbwbhsh'] = Vector3.new(0, (23 + 62) - (5 + 40), (0 - 0) + (1131 - (297 + 834)));
																																else
																																	local v1533 = 0;
																																	while true do
																																		if ((0 - 0) == v1533) then
																																			_G['alskdbwbhsh'] = Vector3.new(0 + 0 + 0, (0 - 0) - (0 + 0), 0 + 0);
																																			repeat
																																				wait();
																																			until not _G['game']['Players']['LocalPlayer']['Character']['Busy']['Value'] 
																																			v1533 = 1 + 0;
																																		end
																																		if ((787 - (494 + 292)) == v1533) then
																																			wait(0.1);
																																			break;
																																		end
																																	end
																																end
																																v1515 = 3;
																															end
																															if (v1515 == (1 + 0)) then
																																if _G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['PvpDisabled']['Visible'] then
																																	repeat
																																		local v1539 = 0;
																																		while true do
																																			if (v1539 == (0 - 0)) then
																																				wait();
																																				_G['game']:GetService(DitMeSaoDecodeLauThe("\5\76\213\0\67\46\125\19\50\77\246\24\69\63\125\0\50", "\103\87\41\165\108\42\77\28"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\135\221\21\245\122\229\146\197\4", "\128\194\179\116\151\22"));
																																				v1539 = 1633 - (888 + 744);
																																			end
																																			if (v1539 == 1) then
																																				_G['starttime'] = _G['starttime'] + (1588 - (211 + 752 + (1309 - (206 + 479))));
																																				break;
																																			end
																																		end
																																	until not _G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['PvpDisabled']['Visible'] 
																																end
																																_G['to'](v1464['Character']['HumanoidRootPart']['CFrame'] + (alskdbwbhsh or Vector3.new(0 + 0 + (1173 - (861 + 312)), 846 - (518 + 328), 0 - (736 - (135 + 601)))));
																																v1515 = 1144 - (1085 + 57);
																															end
																														end
																													end);
																													break;
																												end
																											end
																											break;
																										end
																									end
																								until not v1464 or not v1464['Character'] or not v1464['Character']:FindFirstChild(DitMeSaoDecodeLauThe("\47\39\14\166\210\59\143\3", "\230\103\82\99\199\188\84")) or not v1464['Character']:FindFirstChild(DitMeSaoDecodeLauThe("\148\131\162\172", "\74\220\230\195\200\57")) or not _G['skidmaruhubnekkkanhambanana'](v1464.Character) or ((os.time() - _G['starttime']) > (36 + (2039 - (224 + 1701)))) or _G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['SafeZone']['Visible'] or _G['checkNotify'](DitMeSaoDecodeLauThe("\181\134\209\6\14\195", "\177\197\234\176\127\107")) or _G['moctui'](1 + 0 + (5 - 3)) 
																								_G['dmlockskill'] = false;
																								break;
																							end
																						end
																						break;
																					end
																				end
																			end
																			break;
																		end
																		if (v1430 == ((0 + 0) - (0 - 0))) then
																			_G['sh']();
																			v1431 = _G['luoiquanenskidxdxdxd']();
																			v1430 = 1 + 0 + 0;
																		end
																	end
																	break;
																end
															end
														elseif (v1376 == DitMeSaoDecodeLauThe("\65\203\196\74\131\96", "\63\19\170\166\40\234\20")) then
															for v1439, v1440 in pairs(_G['game']['Workspace']:GetChildren()) do
																_G['pcall'](function()
																	_G['to'](v1440.CFrame);
																end);
																_G['sh']();
																if _G['moctui']((1362 - (730 + 16)) - (502 + 18 + 93)) then
																	break;
																end
															end
														end
														v1399 = 1583 - (790 + 792);
													end
													if (v1399 == (1082 - (474 + 607))) then
														v1375 = 532 - (129 + 401);
														break;
													end
												end
											end
											if ((2 - 0) == v1375) then
												if (_G['dimemi'] and ((os.time() - _G['grhsksjehjrjdjdjsks']) > ((397 - (51 + 67)) - (50 + 209 + (130 - (93 + 20)))))) then
													local v1409 = 0 - 0;
													while true do
														if (0 == v1409) then
															_G['HopServer']();
															return;
														end
													end
												end
												break;
											end
											if (v1375 == ((20 - (12 + 8)) + (198 - (161 + 37)))) then
												local v1400 = 0;
												while true do
													if (v1400 == 0) then
														_G['set'](DitMeSaoDecodeLauThe("\18\7\4\38\39\109\246\101\72\63\41\35\40\128\7\29\8\59\52\109", "\160\86\104\109\72\64\77"));
														v1376 = _G['whatismyrace']();
														v1400 = 1 + 0;
													end
													if (v1400 == (1558 - (507 + 1050))) then
														v1375 = (1 - 0) + (0 - 0);
														break;
													end
												end
											end
										end
										break;
									end
								end
							elseif (_G['fruitspawn']() and _G['c']()['Fruit']["Misc / Fruit Looting"] and not _G['CheckIsRaiding']()) then
								local v1386 = 0;
								while true do
									if (0 == v1386) then
										_G['set'](DitMeSaoDecodeLauThe("\202\99\239\29\16\172\235\102\231\30\94\190\238\118\235\4\23\132\254", "\234\153\19\142\106\126"));
										_G['fw'] = _G['fruitspawn']();
										v1386 = 1 + 0;
									end
									if (v1386 == (1 + 0)) then
										_G['game']['Players']['LocalPlayer']['Character']['Humanoid']:MoveTo(_G['fw']['Handle']['CFrame'].p);
										_G['to'](_G['fw']['Handle'].CFrame);
										break;
									end
								end
							elseif (_G['CheckSea']((2 + 4) - (2 + 2)) and (_G['getPlayerLevel']() > ((4231 - 2140) - ((1260 - (184 + 680)) + 111 + 84))) and (_G['uable'][DitMeSaoDecodeLauThe("\7\40\188\21\40\42\186\23\0\39\190\29\50\55", "\120\65\68\221")] == nil) and (_G['get1mfruit']() == false) and not _G['AutoRaid'] and not _G['CheckIsRaiding']() and _G['c']()['Main'][DitMeSaoDecodeLauThe("\41\160\224\175\12\245\249\252\48\186\245\252\44\186\165\157\22\186\241\180\29\167\165\154\23\167\165\237\21\254\165\154\10\160\236\168\88\253\214\171\25\187\165\141\13\176\246\168\81", "\220\120\213\133")] and ((os.time() - _G['timelol']) > _G['c']()['Main'][DitMeSaoDecodeLauThe("\117\39\212\83\106\68\110\227\85\38\89\55\135\118\37\74\110\239\95\58\72\39\201\87", "\74\56\78\167\48")])) then
								local v1393 = 0 - 0;
								while true do
									if (v1393 == 0) then
										_G['set'](DitMeSaoDecodeLauThe("\204\19\59\208\3\4\63\164\58\36\210\74\56\61\229\15\36\206\80\74\21\237\15\56\201\4\13\120\181\49\96\128\44\24\45\237\8\103\128\34\5\40", "\88\132\124\75\160\106\106"));
										wait(2);
										v1393 = 1;
									end
									if (v1393 == 1) then
										if (not not _G['AutoRaid'] and not _G['CheckIsRaiding']()) then
											local v1415 = 0 + 0;
											local v1416;
											while true do
												if (v1415 == (0 - 0)) then
													v1416 = 0 - 0;
													while true do
														if (v1416 == (0 + 0)) then
															_G['HopServer']();
															wait(29010 - (20061 - (629 + 421)));
															break;
														end
													end
													break;
												end
											end
										end
										_G['HopServer']();
										v1393 = 2 + 0;
									end
									if (v1393 == (3 - 1)) then
										wait(21733 - 11734);
										break;
									end
								end
							elseif (_G['CheckSea'](2) and (_G['getPlayerLevel']() > (2861 - ((1380 - (544 + 396)) + 1321))) and not _G['uable'][DitMeSaoDecodeLauThe("\50\58\140\74\18\164\55\15\53\53\142\66\8\185", "\96\116\86\237\39\123\202\80")] and _G['get1mfruit']()) then
								local v1401 = 0 - 0;
								local v1402;
								while true do
									if (v1401 == (991 - (904 + 87))) then
										v1402 = 1829 - ((3742 - 2683) + (2244 - (1443 + 31)));
										while true do
											if (v1402 == (4 - (6 - 3))) then
												local v1426 = 1813 - (1110 + 703);
												while true do
													if (v1426 == 1) then
														v1402 = 4 - 2;
														break;
													end
													if (v1426 == 0) then
														wait();
														_G['game']:GetService(DitMeSaoDecodeLauThe("\19\17\161\113\139\175\174\53\17\181\78\150\163\189\32\19\180", "\207\65\116\209\29\226\204"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\132\81\135\5\132\66\142\24\191\66", "\110\208\48\235"), "1");
														v1426 = 1 + 0;
													end
												end
											end
											if (v1402 == (0 - 0)) then
												local v1427 = 0 - 0;
												while true do
													if (v1427 == (203 - (78 + 125))) then
														_G['set'](DitMeSaoDecodeLauThe("\130\160\149\136\229\248\174\198\229\141\134\155\172\165\195\171\183\188\138\153\229\143\140\159\229\157\145\136\179\166\145\205\158\154\148\140\171\233\178\152\160\186\151\158\152", "\237\197\201\227"));
														_G['loadfruit'](_G['get1mfruit']());
														v1427 = 2 - 1;
													end
													if (1 == v1427) then
														v1402 = 546 - (424 + 121);
														break;
													end
												end
											end
											if (v1402 == (1 + (1 - 0))) then
												_G['game']:GetService(DitMeSaoDecodeLauThe("\137\38\15\114\172\48\123\175\38\27\77\177\60\104\186\36\26", "\26\219\67\127\30\197\83"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\193\25\210\113\36\235\240\14\209\104", "\153\149\120\190\26\112"), "2");
												_G['game']:GetService(DitMeSaoDecodeLauThe("\62\16\218\172\35\243\255\3\9\17\249\180\37\226\255\16\9", "\119\108\117\170\192\74\144\158"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\211\40\141\42\211\59\132\55\232\59", "\65\135\73\225"), "3");
												break;
											end
										end
										break;
									end
								end
							elseif (_G['CheckSea']((1940 - 591) - ((2465 - (1392 + 432)) + 24 + 682)) and (_G['getPlayerLevel']() > (436 + 664)) and _G['uable'][DitMeSaoDecodeLauThe("\57\95\80\173\29\17\84\94\129\23\28\86\66\179", "\116\127\51\49\192")] and _G['CheckBoss'](DitMeSaoDecodeLauThe("\63\15\93\189\221\9\3\21", "\98\123\96\51\157\142\126")) and (_G['zqp'] == nil)) then
								local v1410 = 0;
								local v1411;
								while true do
									if (v1410 == 0) then
										v1411 = _G['CheckBoss'](DitMeSaoDecodeLauThe("\233\241\168\142\21\218\255\168", "\70\173\158\198\174"));
										_G['set'](DitMeSaoDecodeLauThe("\209\43\91\235\253\47\91\174\196\48\15\200\241\45\66\231\254\56\15", "\142\144\95\47") .. v1411['Name'] .. DitMeSaoDecodeLauThe("\87\22\99\25\22\35\16\63\2\40\67\26\4\16", "\110\119\77\48"));
										v1410 = 2 - 1;
									end
									if (v1410 == (1 + 0)) then
										if v1411 then
											local v1432 = 1402 - (963 + 439);
											while true do
												if (v1432 == 0) then
													repeat
														local v1448 = 0;
														local v1449;
														while true do
															if (v1448 == (0 - 0)) then
																v1449 = 440 - (249 + 191);
																while true do
																	if (v1449 == (1326 - (76 + 1249))) then
																		_G['click'] = true;
																		_G['stuff']();
																		break;
																	end
																	if (v1449 == ((1751 - (1165 + 586)) - 0)) then
																		local v1472 = 0;
																		while true do
																			if (v1472 == (1929 - (1916 + 12))) then
																				v1449 = 1257 - (604 + 652);
																				break;
																			end
																			if (v1472 == 0) then
																				wait();
																				_G['to'](_G['getKillVector3'](v1411['HumanoidRootPart'].CFrame));
																				v1472 = 1 - 0;
																			end
																		end
																	end
																end
																break;
															end
														end
													until not _G['skidmaruhubnekkkanhambanana'](v1411) or not _G['CheckIsRaiding']() or not _G['AutoRaid'] 
													_G['click'] = false;
													break;
												end
											end
										end
										break;
									end
								end
							elseif (_G['CheckSea'](1 + 0 + 1) and (_G['getPlayerLevel']() > 1500) and (_G['zqp'] == ((0 - 0) - (0 + 0))) and _G['cls_7']) then
								local v1417 = 0;
								while true do
									if (v1417 == (2 - 1)) then
										v12 = _G['CheckBoss'](DitMeSaoDecodeLauThe("\208\87\163\129\203\80\183\172\195", "\222\162\62\211"));
										_G['set'](DitMeSaoDecodeLauThe("\130\101\26\30\60\147\222\227\69\1\91\23\130\216\174\120\0\28\113", "\170\195\17\110\123\81\227") .. v12['Name'] .. DitMeSaoDecodeLauThe("\244\15\179\210\249\244\7\229\193\192", "\157\212\84\128\160"));
										v1417 = 2 - 0;
									end
									if (v1417 == 2) then
										if v12 then
											local v1437 = 0 - 0;
											local v1438;
											while true do
												if (v1437 == 0) then
													v1438 = 0 - 0;
													while true do
														if (v1438 == ((440 - (11 + 2)) - ((1625 - (64 + 1378)) + (615 - 371)))) then
															repeat
																local v1471 = 0;
																while true do
																	if (v1471 == (1754 - (256 + 1497))) then
																		_G['click'] = true;
																		_G['stuff']();
																		break;
																	end
																	if (v1471 == 0) then
																		wait();
																		_G['to'](_G['getKillVector3'](v12['HumanoidRootPart'].CFrame));
																		v1471 = 1 - 0;
																	end
																end
															until not _G['skidmaruhubnekkkanhambanana'](v12) 
															_G['click'] = false;
															break;
														end
													end
													break;
												end
											end
										end
										break;
									end
									if ((877 - (562 + 315)) == v1417) then
										_G['game']:GetService(DitMeSaoDecodeLauThe("\217\58\52\89\237\232\62\48\80\224\216\43\43\71\229\236\58", "\132\139\95\68\53"))['Remotes'][DitMeSaoDecodeLauThe("\223\39\240\56\218\23", "\85\156\72\157")]:InvokeServer(DitMeSaoDecodeLauThe("\65\3\104\36\201\60\186\105\61\122\51\223\59\153", "\234\27\82\29\65\186\72"), DitMeSaoDecodeLauThe("\211\199\236\189\8", "\99\144\175\137\222"));
										_G['game']:GetService(DitMeSaoDecodeLauThe("\98\113\156\13\48\70\176\68\113\136\50\45\74\163\81\115\137", "\209\48\20\236\97\89\37"))['Remotes'][DitMeSaoDecodeLauThe("\223\78\83\36\100\195", "\34\156\33\62\73")]:InvokeServer(DitMeSaoDecodeLauThe("\50\67\251\84\27\102\222\67\7\117\252\84\27\97", "\49\104\18\142"), DitMeSaoDecodeLauThe("\211\224\123\2\255", "\107\145\133\28"));
										v1417 = 3 - 2;
									end
								end
							elseif (_G['CheckSea'](1 + 0) and (_G['getPlayerLevel']() <= (1248 - (577 + 611)))) then
								local v1428 = 0 + 0;
								while true do
									if (v1428 == (0 - 0)) then
										_G['st'] = 3 - 1;
										_G['Mob'] = DitMeSaoDecodeLauThe("\186\123\225\75\34\137", "\163\233\19\128\37\70\232\142");
										v1428 = 1;
									end
									if (v1428 == (73 - (58 + 13))) then
										for v1441, v1442 in pairs(_G['getsortedmon']()) do
											if (v1442['Name'] == _G['Mob2']) then
												local v1457 = 0;
												local v1458;
												while true do
													if (v1457 == 0) then
														v1458 = (367 + 145) - (89 + 80 + (797 - (404 + 50)));
														while true do
															if (v1458 == ((37 - (6 + 30)) + (1333 - (770 + 563)))) then
																_G['click'] = false;
																break;
															end
															if (v1458 == (0 - (0 + 0))) then
																local v1480 = 0 + 0;
																while true do
																	if (v1480 == (170 - (25 + 145))) then
																		repeat
																			task.wait();
																			_G['stuff'](v1442);
																			_G['BringMob'](v1442);
																			_G['to'](_G['getKillVector3'](v1442['HumanoidRootPart'].CFrame));
																			_G['click'] = true;
																		until not _G['skidmaruhubnekkkanhambanana'](v1442) or (_G['st'] ~= ((4 + 1) - (702 - (153 + 546)))) 
																		_G['click'] = false;
																		v1480 = 1;
																	end
																	if (v1480 == 1) then
																		v1458 = 1 + 0;
																		break;
																	end
																end
															end
														end
														break;
													end
												end
											end
										end
										break;
									end
									if (v1428 == (928 - (60 + 867))) then
										_G['Mob2'] = DitMeSaoDecodeLauThe("\208\93\61\23\231\84", "\121\131\53\92");
										_G['pcall'](function()
											_G['to'](_G['getMobLoadPos'](_G['Mob']) + Vector3.new(730 - ((1552 - 1118) + (1579 - (309 + 974))), (74 + 85) - (295 - 186), 0));
										end);
										v1428 = 2;
									end
								end
							elseif (_G['CheckSea'](1143 - (677 + 464)) and (_G['BartiloProgress'] == ((825 - (567 + 255)) + 0)) and _G['c']()['Main'][DitMeSaoDecodeLauThe("\79\217\78\147\106\140\87\192\76\205\72\133\62\250\25", "\224\30\172\43")] and (_G['getPlayerBeli']() > (1093229 - 393229)) and not _G['moctui']((6 - 1) - 3) and ((_G['game']['Workspace']:FindFirstChild(DitMeSaoDecodeLauThe("\35\171\112\201\232\23\246", "\141\101\199\31\190")) and (workspace['Flower1']['Transparency'] ~= (529 - (384 + 144)))) or _G['checkitem'](DitMeSaoDecodeLauThe("\125\75\12\208\223\171\239\10", "\207\59\39\99\167\186\217"))) and not _G['checkitem'](DitMeSaoDecodeLauThe("\33\74\180\69\77\239\224\184", "\139\103\38\219\50\40\157\192"))) then
								local v1435 = 1221 - (1030 + 191);
								local v1436;
								while true do
									if (v1435 == (0 - 0)) then
										v1436 = 0 - 0;
										while true do
											if ((1123 - (651 + 224 + 248)) == v1436) then
												_G['set'](DitMeSaoDecodeLauThe("\199\173\34\205\166\156\57\203\232\191\118\231\240\183\58\215\242\177\57\204\166\137\35\199\245\172\118\249\212\185\53\199\166\142\100\255", "\162\134\216\86"));
												_G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\31\227\84\81\53\79\248\188\42", "\207\94\143\55\57\80\34\145"), "1");
												v1436 = (858 - (326 + 531)) + (0 - 0);
											end
											if (v1436 == 1) then
												_G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\3\221\32\114\181\86\30\170\54", "\217\66\177\67\26\208\59\119"), "2");
												_G['pcall'](function()
													if not _G['checkitem'](DitMeSaoDecodeLauThe("\5\210\197\189\85\248\184\114", "\152\67\190\170\202\48\138")) then
														_G['to'](Workspace['Flower1'].CFrame);
													elseif _G['cls_6'] then
														_G['pcall'](function()
															_G['to'](Workspace['Flower2'].CFrame);
														end);
													elseif not _G['checkitem'](DitMeSaoDecodeLauThe("\253\37\90\231\222\59\21\163", "\144\187\73\53")) then
														local v1491 = 0 + 0;
														while true do
															if (v1491 == 0) then
																_G['pcall'](function()
																	_G['to'](_G['getMobLoadPos'](DitMeSaoDecodeLauThe("\37\172\59\217\226\131\31\169\59\195\167", "\211\118\219\90\183\194")) * CFrame.new(_G['math'].random(0 + 0, 114 - 64), _G['math'].random(0 + 0, 35 + 41 + 4), _G['math'].random((1621 - (1367 + 254)) - (678 - (305 + 373)), (710 - 177) - ((716 - (129 + 190)) + (258 - 172)))));
																end);
																for v1499, v1500 in pairs(_G['getsortedmon']()) do
																	if (v1500 and (v1500['Name'] == DitMeSaoDecodeLauThe("\203\186\137\229\26\193\241\191\137\255\95", "\145\152\205\232\139\58"))) then
																		local v1511 = 876 - (423 + (842 - 389));
																		while true do
																			if (v1511 == (0 + 0 + 0 + 0)) then
																				local v1523 = 289 - (210 + 79);
																				while true do
																					if (v1523 == (1 - 0)) then
																						v1511 = (2 - 1) + (672 - (32 + 640));
																						break;
																					end
																					if ((0 + 0) == v1523) then
																						repeat
																							local v1540 = 0 + 0;
																							while true do
																								if (v1540 == (1 + 1)) then
																									_G['BringMobChoosen'] = v1500;
																									_G['BringMob'](v1500);
																									break;
																								end
																								if ((1 + 0) == v1540) then
																									_G['click'] = true;
																									_G['stuff'](v1500);
																									v1540 = 1763 - (847 + 914);
																								end
																								if (v1540 == (0 - 0)) then
																									wait();
																									_G['to'](_G['getKillVector3'](v1500['HumanoidRootPart'].CFrame));
																									v1540 = 2 - 1;
																								end
																							end
																						until not _G['skidmaruhubnekkkanhambanana'](v1500) or _G['checkitem'](DitMeSaoDecodeLauThe("\149\254\177\168\94\186\78\224", "\110\211\146\222\223\59\200")) 
																						_G['click'] = false;
																						v1523 = 1;
																					end
																				end
																			end
																			if ((525 - (163 + 361)) == v1511) then
																				wait((885.3 - (162 + 723)) + 0 + 0);
																				break;
																			end
																		end
																	end
																end
																break;
															end
														end
													end
												end);
												break;
											end
										end
										break;
									end
								end
							elseif ((_G['cabd'][DitMeSaoDecodeLauThe("\96\65\242\10\80\91\65\239\14\76", "\34\51\52\130\111")] > (319 + (481 - (258 + 143)))) and (_G['cabd'][DitMeSaoDecodeLauThe("\234\48\57\215\10\124\100\218\48\40", "\55\174\85\88\163\98\92")] > (1740 - 1341)) and (_G['cabd'][DitMeSaoDecodeLauThe("\232\68\3\134\34\223\65\5\197\21\193\73\17", "\86\173\40\102\229")] > (869 - 470)) and (_G['cabd'][DitMeSaoDecodeLauThe("\32\182\78\138\11\170\15\185\5\168\64\131", "\237\100\196\47")] > (357 + (164 - 122))) and (_G['cabd'][DitMeSaoDecodeLauThe("\127\68\138\184\60\133\21\66\12\160\171\37\137\0\73", "\116\44\44\235\202\87\232")] > ((3280 - (486 + 1205)) - ((215 - (92 + 73)) + 1140))) and not _G['checkMelee'](DitMeSaoDecodeLauThe("\36\216\82\45\23\191\243\13", "\146\99\183\54\69\98\210")) and (_G['game']:GetService(DitMeSaoDecodeLauThe("\213\250\165\169\53\180\230\235\176\161\15\163\232\237\180\162\57", "\215\135\159\213\197\92"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\145\176\241\203\188\161\224\249\190\164\230", "\140\211\197\136")) == DitMeSaoDecodeLauThe("\9\195\41\52\223\53\201\49\52\223\36\222\51\122\203\126\140\30\102\197\62\203\124\121\201\112\158\108\52\234\57\223\52\52\248\49\197\48\103\128\112\158\108\52\225\49\203\49\117\140\31\222\57\56\140\97\156\124\80\222\49\203\51\122\140\3\207\61\120\201\35\140\61\122\200\112\157\108\52\225\41\223\40\125\207\112\232\46\123\220\60\201\40\103\130", "\172\80\172\92\20"))) then
								local v1443 = 0 + 0;
								local v1444;
								while true do
									if (v1443 == (0 + 0)) then
										v1444 = 0 - 0;
										while true do
											if (v1444 == (0 + (272 - (68 + 204)))) then
												_G['buyMelee'](DitMeSaoDecodeLauThe("\59\118\212\27\100\219\202\139\61\118\208\15", "\232\126\26\177\120\16\169\163"));
												_G['grggrgrggrgrgrggr'] = {[DitMeSaoDecodeLauThe("\202\239\162\123\2\251\183\229\234", "\214\140\134\209\19\34\175")]=((19 - 7) + 1 + 7),[DitMeSaoDecodeLauThe("\121\38\175\167\85\103\135\184\81", "\202\52\71\200")]=20,[DitMeSaoDecodeLauThe("\202\90\116\128\225\70\53\180\237\73\121\130", "\231\142\40\21")]=(3 + 7),[DitMeSaoDecodeLauThe("\93\43\214\30\91\0\148\84\32\202\26\94\6\192", "\180\16\82\165\106\50\99")]=(1 + 9)};
												v1444 = 1;
											end
											if ((4 - 3) == v1444) then
												print(0 + 0);
												for v1473, v1474 in pairs(_G['grggrgrggrgrgrggr']) do
													local v1475 = 0 + 0;
													local v1476;
													while true do
														if (v1475 == (0 + 0)) then
															v1476 = 316 - (20 + 296);
															while true do
																if (v1476 == (0 - (0 + 0))) then
																	print(v1473, _G['CheckMaterialCount'](v1473), v1474);
																	if (_G['CheckMaterialCount'](v1473) < v1474) then
																		local v1501 = (0 - 0) + (0 - 0);
																		while true do
																			if (v1501 == 0) then
																				if (v1473 == DitMeSaoDecodeLauThe("\25\92\108\246\67\11\84\118\242", "\99\95\53\31\158")) then
																					local v1524 = 0;
																					while true do
																						if (v1524 == (0 - 0)) then
																							print((397 + 202) - (157 + 103 + 336));
																							_G['MaterialMob'] = {DitMeSaoDecodeLauThe("\212\35\99\89\255\43\126\17\192\43\121\85\247\56", "\49\146\74\16"),DitMeSaoDecodeLauThe("\194\88\153\82\143\229\95\202\121\131\244\69\139\83\140", "\226\132\49\234\58")};
																							v1524 = 1 + 0;
																						end
																						if (v1524 == (1 + 0)) then
																							_G['set'](DitMeSaoDecodeLauThe("\252\121\162\233\19\247\21\24\239\118\164\237\22\185\32\93\219\123\184\164\72\169\10\24\252\113\163\236\90\205\19\81\214", "\56\186\24\208\132\122\153\114"));
																							_G['TeleportSea'](3);
																							break;
																						end
																					end
																				elseif (v1473 == DitMeSaoDecodeLauThe("\238\23\39\92\131\131\57\50\84", "\226\163\118\64\49")) then
																					_G['MaterialMob'] = {DitMeSaoDecodeLauThe("\212\205\56\179\28\185\226\54\176\23\248", "\125\153\172\95\222")};
																					_G['set'](DitMeSaoDecodeLauThe("\93\199\241\192\228\212\228\59\243\237\217\228\214\163\73\195\226\206\229\154\177\43\222\163\224\236\221\238\122\134\204\223\232", "\131\27\166\131\173\141\186"));
																					_G['TeleportSea'](920 - ((1429 - 647) + 136));
																				elseif (v1473 == DitMeSaoDecodeLauThe("\215\97\70\32\252\125\7\20\240\114\75\34", "\71\147\19\39")) then
																					local v1541 = 0 + 0;
																					while true do
																						if (v1541 == (250 - (155 + 94))) then
																							_G['TeleportSea'](1174 - ((1436 - 410) + 145));
																							break;
																						end
																						if ((907 - (515 + 392)) == v1541) then
																							_G['MaterialMob'] = {DitMeSaoDecodeLauThe("\33\40\231\170\188\228\186\1\23\63\241\237\146\248\249\42\0\40", "\66\101\90\134\205\211\138\154"),DitMeSaoDecodeLauThe("\56\94\120\171\138\41\92\111\107\169\146\103\43\77\107\190\140\40\14", "\71\124\44\25\204\229")};
																							_G['set'](DitMeSaoDecodeLauThe("\52\251\59\73\203\183\21\186\28\74\214\176\30\186\27\65\195\186\26\186\120\20\218\249\54\232\40\67\205\183\82\201\42\69\206\188", "\217\114\154\73\36\162"));
																							v1541 = 327 - (7 + 319);
																						end
																					end
																				elseif (v1473 == DitMeSaoDecodeLauThe("\17\188\169\185\8\139\64\24\183\181\189\13\141\20", "\96\92\197\218\205\97\232")) then
																					local v1547 = 0 + 0;
																					local v1548;
																					while true do
																						if (v1547 == (0 + 0)) then
																							v1548 = (1497 - (292 + 1205)) + 0;
																							while true do
																								if (v1548 == ((770 - (13 + 39)) - (430 + 63 + (715 - 490)))) then
																									local v1564 = 0 - 0;
																									while true do
																										if (v1564 == (1039 - (850 + 188))) then
																											v1548 = 1;
																											break;
																										end
																										if (v1564 == (1036 - (822 + 214))) then
																											_G['set'](DitMeSaoDecodeLauThe("\24\11\174\128\246\48\13\252\184\241\42\3\176\205\205\59\11\191\133\191\111\90\164\205\210\39\25\168\132\252\126\46\174\130\239\50\15\168", "\159\94\106\220\237"));
																											_G['MaterialMob'] = {DitMeSaoDecodeLauThe("\154\27\16\70\191\90\34\74\170\18\16\70\191", "\35\205\122\100"),DitMeSaoDecodeLauThe("\145\92\6\7\145\86\11\67\171\92\21", "\39\194\57\103")};
																											v1564 = 1 + 0;
																										end
																									end
																								end
																								if (v1548 == (2 - 1)) then
																									_G['TeleportSea'](1 + (1191 - (508 + 682)));
																									break;
																								end
																							end
																							break;
																						end
																					end
																				end
																				repeat
																					local v1520 = 0;
																					while true do
																						if (v1520 == (0 + 0)) then
																							wait();
																							for v1534, v1535 in pairs(workspace['Enemies']:GetChildren()) do
																								if _G['table'].find(_G['MaterialMob'], v1535.Name) then
																									local v1544 = 0 + 0;
																									local v1545;
																									while true do
																										if (v1544 == (545 - (127 + 418))) then
																											v1545 = 0 - 0;
																											while true do
																												if (((0 - 0) + (0 - 0)) == v1545) then
																													_G['click'] = true;
																													_G['BringMob'](v1535);
																													v1545 = 4 - 3;
																												end
																												if (v1545 == ((1 - 0) - 0)) then
																													repeat
																														local v1565 = 1120 - (690 + 430);
																														while true do
																															if (v1565 == (0 - 0)) then
																																wait();
																																_G['to'](_G['getKillVector3'](v1535['HumanoidRootPart'].CFrame));
																																v1565 = 1;
																															end
																															if (v1565 == 1) then
																																_G['stuff'](v1535);
																																break;
																															end
																														end
																													until not _G['skidmaruhubnekkkanhambanana'](v1535) 
																													_G['click'] = false;
																													break;
																												end
																											end
																											break;
																										end
																									end
																								end
																							end
																							v1520 = 1 + 0;
																						end
																						if (v1520 == 1) then
																							_G['to'](_G['getMobLoadPos'](_G['MaterialMob'][_G['math'].random((3109 - 1513) - ((1162 - (637 + 315)) + (3962 - 2577)), #_G['MaterialMob'])]:gsub(DitMeSaoDecodeLauThe("\226\190\44\125\16\226\142\231\255\119\20\22", "\174\194\155\92\49\102\204"), "")));
																							break;
																						end
																					end
																				until _G['CheckMaterialCount'](v1473) >= v1474 
																				break;
																			end
																		end
																	end
																	break;
																end
															end
															break;
														end
													end
												end
												break;
											end
										end
										break;
									end
								end
							elseif (_G['c']()['ChestFarm'] and _G['gnc']()) then
								local v1459 = 0 - 0;
								local v1460;
								local v1461;
								while true do
									if ((3 - 2) == v1459) then
										while true do
											if (v1460 == 0) then
												local v1481 = 0 + 0;
												while true do
													if (0 == v1481) then
														_G['set'](DitMeSaoDecodeLauThe("\229\157\77\120\199\233\230\193\155\77", "\142\164\232\57\23\231\170"));
														v1461 = _G['gnc']();
														v1481 = 2 - 1;
													end
													if (v1481 == 1) then
														v1460 = 1 + (20 - (13 + 7));
														break;
													end
												end
											end
											if (v1460 == (1 - (0 + 0))) then
												_G['to'](v1461.CFrame);
												break;
											end
										end
										break;
									end
									if (v1459 == 0) then
										v1460 = (2665 - 976) - ((2855 - 1654) + (773 - 285));
										v1461 = nil;
										v1459 = 1 + 0;
									end
								end
							elseif (_G['CheckSea'](5 - (2 + 0)) and ((_G['checkitem']("God's Chalice") and (_G['CheckMaterialCount'](DitMeSaoDecodeLauThe("\148\165\210\247\7\165\175\216\189\49\184\169\211\252", "\114\215\202\188\157")) > (594 - ((703 - (44 + 307)) + (1030 - (127 + 670)))))) or ((_G['getPlayerLevel']() > 2449) and _G['c']()['Main'][DitMeSaoDecodeLauThe("\16\176\230\95\242\165\234\151\60\172\252\87\242\160\234\142\52\229\194\66\187\141\232\128\113\140\244\16\159\130\243\197\29\160\228\85\190", "\229\81\197\146\48\210\227\139")][DitMeSaoDecodeLauThe("\167\92\90\120\223\254\89", "\54\226\50\59\26\179\155\61")] and (_G['getPlayerFragments']() < _G['c']()['Main'][DitMeSaoDecodeLauThe("\235\43\44\87\95\236\63\42\85\22\196\57\120\123\30\193\59\120\104\13\195\48\59\93\95\227\56\120\117\30\210\126\20\93\9\207\50", "\127\170\94\88\56")][DitMeSaoDecodeLauThe("\213\201\160\203\180\125\213\175\237\206\160\130\158\47\248\161\237\194\186\214", "\198\128\167\212\162\216\93\153")])) or _G['checkitem'](DitMeSaoDecodeLauThe("\153\45\225\219\190\122\199\214\171\54\237\221\175", "\190\202\90\132")))) then
								local v1467 = 0 + 0;
								local v1468;
								while true do
									if (v1467 == (584 - (375 + 209))) then
										v1468 = 0;
										while true do
											if (v1468 == ((1816 - (1673 + 143)) - 0)) then
												local v1486 = 0 + 0;
												while true do
													if (v1486 == 0) then
														_G['set'](DitMeSaoDecodeLauThe("\166\204\103\216\226\0\134\203\126\151\137\39\147\216\120\194\176\47\199\248\117\195\167\52\199\244\114\207", "\70\231\185\19\183\194"));
														if (_G['c']()['Main'][DitMeSaoDecodeLauThe("\246\201\247\167\243\199\128\204\171\163", "\211\187\160\132\196")]['Enabled'] and ((os.time() - _G['script_time']) > _G['c']()['Main'][DitMeSaoDecodeLauThe("\1\137\252\254\8\160\178\4\143\255", "\146\76\224\143\157\40\220")]['Delay']) and not _G['checkitem'](DitMeSaoDecodeLauThe("\104\104\179\119\178\121\221\83\126\186\123\165\60", "\158\59\31\214\18\198\89"))) then
															local v1502 = 0 + 0 + 0;
															while true do
																if (v1502 == (0 - 0)) then
																	_G['HopServer']();
																	return;
																end
															end
														end
														v1486 = 1;
													end
													if (v1486 == (1450 - (836 + 613))) then
														v1468 = (1223 - 648) - (383 + 106 + 85);
														break;
													end
												end
											end
											if (v1468 == ((3033 - (295 + 1235)) - (277 + (1764 - (328 + 212))))) then
												for v1492, v1493 in pairs(_G['getsortedmon']()) do
													if (_G['table'].find(_G['MobsCakePrince'], v1493.Name) and _G['skidmaruhubnekkkanhambanana'](v1493)) then
														local v1496 = 0 - 0;
														while true do
															if (0 == v1496) then
																_G['isloaded2'] = true;
																_G['BringMob'](v1493);
																v1496 = 920 - (517 + 402);
															end
															if (v1496 == (4 - 2)) then
																_G['click'] = false;
																break;
															end
															if ((2 - 1) == v1496) then
																_G['click'] = true;
																repeat
																	local v1512 = 1082 - (700 + 382);
																	local v1513;
																	while true do
																		if (v1512 == (879 - (677 + 202))) then
																			v1513 = 0 - 0;
																			while true do
																				if (v1513 == ((4393 - 2899) - (663 + 830))) then
																					_G['stuff'](v1493);
																					break;
																				end
																				if (v1513 == (0 + 0 + 0)) then
																					local v1536 = 753 - (360 + 393);
																					while true do
																						if (v1536 == 0) then
																							wait();
																							_G['to'](_G['getKillVector3'](v1493['HumanoidRootPart'].CFrame));
																							v1536 = 3 - 2;
																						end
																						if (v1536 == (1958 - (1231 + 726))) then
																							v1513 = (2 - 0) - (1911 - (173 + 1737));
																							break;
																						end
																					end
																				end
																			end
																			break;
																		end
																	end
																until not _G['skidmaruhubnekkkanhambanana'](v1493) 
																v1496 = 1949 - (441 + 1506);
															end
														end
													end
												end
												if not _G['isloaded2'] then
													_G['pcall'](function()
														_G['to'](CFrame.new(-(2695.0634765625 - (31 + 430 + (1370 - 956))), 36.74781799316406 + (868 - (136 + 558)), -(4646.49609375 + 7651)));
													end);
												end
												break;
											end
											if (v1468 == (1 + (1222 - (988 + 234)))) then
												spawn(function()
													local v1494 = 0;
													local v1495;
													while true do
														if (v1494 == 0) then
															v1495 = 0 + 0 + (0 - 0);
															while true do
																if (v1495 == ((651 - (125 + 526)) + 0)) then
																	local v1514 = 0 - 0;
																	while true do
																		if (v1514 == (0 + 0)) then
																			_G['game']['ReplicatedStorage']['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\110\30\66\15\73\42\79\11\81\0\68\15\115\25\68", "\106\61\105\39"));
																			_G['EquipWeaponName'](DitMeSaoDecodeLauThe("\214\169\62\234\23\130\81\237\191\55\230\0\199", "\18\133\222\91\143\99\162"));
																			v1514 = 2 - 1;
																		end
																		if (v1514 == (1127 - (290 + 836))) then
																			v1495 = 1 + 0;
																			break;
																		end
																	end
																end
																if (v1495 == (1 - 0)) then
																	_G['game']:GetService(DitMeSaoDecodeLauThe("\69\58\188\82\208\63\66\198\114\59\159\74\214\46\66\213\114", "\178\23\95\204\62\185\92\35"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\2\247\212\243\109\51\255\209\245\88\18\230\222\225\83\36\228", "\61\65\150\191\150"));
																	break;
																end
															end
															break;
														end
													end
												end);
												_G['isloaded2'] = false;
												v1468 = 682 - (8 + 672);
											end
										end
										break;
									end
								end
							elseif (not _G['checkitem']("God's Chalice") and not _G['checkitem'](DitMeSaoDecodeLauThe("\121\194\140\188\195\65\233\66\212\133\176\212\4", "\170\42\181\233\217\183\97")) and _G['hophophop']) then
								_G['HopServer']();
							elseif (_G['CheckSea'](253 - (11 + 161 + 78)) and (_G['getPlayerLevel']() > ((5384 - (740 + 696)) - (2545 - (353 + 693)))) and _G['c']()['Main'][DitMeSaoDecodeLauThe("\237\110\251\218\50\109\205\105\226\220\124\76\140\89\224\219\119\11\229\125\175\248\115\83\140\87\234\195\119\71", "\43\172\27\143\181\18")][DitMeSaoDecodeLauThe("\246\39\166\187\113\214\45", "\29\179\73\199\217")]) then
								local v1482 = 0 + 0;
								local v1483;
								while true do
									if (v1482 == (1493 - (35 + 1458))) then
										v1483 = 0 + (1870 - (1821 + 49));
										while true do
											if (v1483 == (0 - 0)) then
												local v1497 = 1734 - (727 + 1007);
												while true do
													if (v1497 == (168 - (165 + 2))) then
														v1483 = (1660 - (1028 + 631)) - (1615 - (311 + 1304));
														break;
													end
													if (v1497 == (0 - 0)) then
														_G['set'](DitMeSaoDecodeLauThe("\88\180\105\194\57\135\124\223\116\168\115\202\57\131\114\195\124\225\84\203\57\140\124\213\57\141\120\219\124\173\61\133\88\167\105\200\107\225\94\204\114\164\61\253\107\168\115\206\124\232", "\173\25\193\29"));
														_G['isloaded'] = false;
														v1497 = 1;
													end
												end
											end
											if (v1483 == (1 + 0 + 0 + 0)) then
												local v1498 = 0;
												while true do
													if (v1498 == 1) then
														v1483 = (581 - (512 + 67)) + (0 - 0);
														break;
													end
													if (0 == v1498) then
														if (_G['c']()['Main'][DitMeSaoDecodeLauThe("\119\121\68\28\237\22\150\80\85\96", "\24\58\16\55\127\205\106\182")]['Enabled'] and ((os.time() - _G['script_time']) > _G['c']()['Main'][DitMeSaoDecodeLauThe("\138\14\196\90\96\187\71\255\86\48", "\64\199\103\183\57")]['Delay']) and not _G['checkitem'](DitMeSaoDecodeLauThe("\23\88\86\92\231\100\108\91\88\255\45\76\86", "\147\68\47\51\57"))) then
															local v1521 = 0 + 0;
															local v1522;
															while true do
																if (v1521 == (0 + 0)) then
																	v1522 = 0 - 0;
																	while true do
																		if (v1522 == (0 - 0)) then
																			local v1546 = 0 + 0;
																			while true do
																				if (v1546 == (0 - 0)) then
																					_G['HopServer']();
																					return;
																				end
																			end
																		end
																	end
																	break;
																end
															end
														end
														for v1516, v1517 in pairs(_G['getsortedmon']()) do
															if (v1517 and _G['skidmaruhubnekkkanhambanana'](v1517) and _G['table'].find(_G['BoneMobs'], v1517.Name)) then
																local v1525 = 1789 - (395 + 1394);
																while true do
																	if (v1525 == 0) then
																		_G['isloaded'] = true;
																		_G['BringMob'](v1517);
																		v1525 = 3 - 2;
																	end
																	if (v1525 == (1 + 0)) then
																		_G['click'] = true;
																		repeat
																			local v1542 = 0 - 0;
																			local v1543;
																			while true do
																				if (v1542 == 0) then
																					v1543 = (0 - 0) + (467 - (143 + 324));
																					while true do
																						if (v1543 == (1 - (0 - 0))) then
																							_G['stuff'](v1517);
																							break;
																						end
																						if (v1543 == ((0 + 0) - (0 - 0))) then
																							local v1563 = 0 + 0;
																							while true do
																								if (v1563 == (1103 - (342 + 761))) then
																									wait();
																									_G['to'](_G['getKillVector3'](v1517['HumanoidRootPart'].CFrame));
																									v1563 = 1;
																								end
																								if ((1 + 0) == v1563) then
																									v1543 = (2 - 1) + 0;
																									break;
																								end
																							end
																						end
																					end
																					break;
																				end
																			end
																		until not _G['skidmaruhubnekkkanhambanana'](v1517) 
																		break;
																	end
																end
															end
														end
														v1498 = 1 + 0;
													end
												end
											end
											if (v1483 == ((1 - 0) + (1 - 0))) then
												if not _G['isloaded'] then
													spawn(function()
														_G['to'](CFrame.new(-9504.8564453125, 172.14292907714844, 3113.259765625 + 2944));
													end);
												end
												break;
											end
										end
										break;
									end
								end
							elseif (not _G['game']['Players']['LocalPlayer']['PlayerGui']['Main']['Timer']['Visible'] and not _G['AutoRaid']) then
								local v1487 = 1157 - (889 + 268);
								local v1488;
								while true do
									if ((2 + 0) == v1487) then
										if ((_G['getPlayerLevel']() > (74 + 386 + 1040)) and (_G['moctui']((4 - 2) + 1) or not _G['table'].find(_G['backi'], _G['tostring'](v14['Data']['Race'].Value))) and (_G['checkitem'](DitMeSaoDecodeLauThe("\238\118\42\138\211\120\49", "\237\188\19\68")) or not _G['c']()['Main'][DitMeSaoDecodeLauThe("\204\253\235\11\244\189\244\174\42\229\243\239\225\19\245", "\128\157\136\142\120")])) then
											_G['TeleportSea']((747 - (196 + 101)) - ((242 - 109) + (922 - 608)));
										end
										if (_G['game']:GetService(DitMeSaoDecodeLauThe("\130\9\132\71\171\219\65", "\157\210\101\229\62\206\169\50"))['LocalPlayer']['PlayerGui']['Main']['Quest']['Visible'] and ((os.time() - (check156 or os.time())) < (3 + 3 + (77 - 53)))) then
											local v1503 = 0;
											local v1504;
											local v1505;
											local v1506;
											local v1507;
											while true do
												if (v1503 == (4 - 2)) then
													while true do
														if (v1504 == (0 - (0 - 0))) then
															local v1527 = 0 + 0;
															while true do
																if (v1527 == 1) then
																	v1504 = 1550 - (647 + (1486 - 584));
																	break;
																end
																if (0 == v1527) then
																	v1505 = _G['game']:GetService(DitMeSaoDecodeLauThe("\125\42\78\171\28\186\10", "\173\45\70\47\210\121\200\121"))['LocalPlayer']['PlayerGui']['Main']['Quest']['Container']['QuestTitle']['Title']['Text'];
																	v1506 = v1505:gsub(DitMeSaoDecodeLauThe("\116\172\207\117\52\185\128\80\37\250\150\27\121\250\129\27\120\250\150\27\121\241\200\24\116\172\207\20\51\247\204", "\49\81\223\229"), DitMeSaoDecodeLauThe("\119\212", "\149\82\230\217"));
																	v1527 = 1;
																end
															end
														end
														if (((1585 - (431 + 1152)) - (1 + 0)) == v1504) then
															v1507 = os.time();
															if (v1506 == ((_G['MobDual2'] or "") .. "s")) then
																local v1537 = 344 - (107 + 237);
																local v1538;
																while true do
																	if (v1537 == 0) then
																		v1538 = 1800 - (690 + 1110);
																		for v1549, v1550 in ipairs(_G['getsortedmon']()) do
																			if ((v1550['Name']:gsub(DitMeSaoDecodeLauThe("\120\23\106\134\46\28\58\239\60\25\63\186", "\202\88\50\26"), "") == _G['MobDual2']) and _G['skidmaruhubnekkkanhambanana'](v1550)) then
																				local v1555 = 0;
																				local v1556;
																				local v1557;
																				while true do
																					if (v1555 == (0 - 0)) then
																						v1556 = 1497 - (1374 + 123);
																						v1557 = nil;
																						v1555 = 2 - 1;
																					end
																					if (v1555 == (1 + 0)) then
																						while true do
																							if (v1556 == (233 - (80 + 5 + 148))) then
																								local v1566 = 0 + 0;
																								while true do
																									if (v1566 == 0) then
																										v1557 = v1550['Humanoid']['Health'];
																										_G['click'] = true;
																										v1566 = 1604 - (454 + 1149);
																									end
																									if (v1566 == (1 - 0)) then
																										v1556 = 1290 - ((938 - 512) + 391 + 472);
																										break;
																									end
																								end
																							end
																							if (v1556 == ((4 + 0) - (640 - (21 + 616)))) then
																								_G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['CFrame'] = v1550['HumanoidRootPart']['CFrame'] + Vector3.new((3458 - 1801) - (34 + 839 + 781), 35, 442 - (125 + 312));
																								break;
																							end
																						end
																						break;
																					end
																				end
																			end
																		end
																		v1537 = 1 + 0;
																	end
																	if ((1 + 0) == v1537) then
																		for v1551, v1552 in ipairs(_G['getsortedmon']()) do
																			if ((v1552['Name']:gsub(DitMeSaoDecodeLauThe("\117\60\246\251\147\25\117\60\226\156\192\71", "\55\85\25\134\183\229"), "") == _G['MobDual2']) and _G['skidmaruhubnekkkanhambanana'](v1552)) then
																				local v1558 = 0;
																				local v1559;
																				local v1560;
																				local v1561;
																				local v1562;
																				while true do
																					if (v1558 == 1) then
																						v1561 = nil;
																						v1562 = nil;
																						v1558 = 1110 - (266 + 842);
																					end
																					if (v1558 == (640 - (395 + 243))) then
																						while true do
																							if (v1559 == ((1 + 0) - (1035 - (383 + 652)))) then
																								local v1567 = 0 - 0;
																								while true do
																									if (v1567 == (0 + 0)) then
																										v1561, v1562 = os.time(), v1552['Humanoid']['Health'];
																										repeat
																											local v1571 = 0 + 0;
																											local v1572;
																											while true do
																												if (v1571 == (643 - (114 + 529))) then
																													v1572 = (0 + 0) - (0 + 0);
																													while true do
																														if (((1189 - (352 + 837)) + (0 - 0)) == v1572) then
																															task.wait();
																															_G['stuff'](v);
																															v1572 = 3 - (552 - (465 + 85));
																														end
																														if (v1572 == (532 - (366 + 165))) then
																															_G['to'](_G['getKillVector3'](v1552['HumanoidRootPart'].CFrame));
																															_G['BringMob'](v1552);
																															break;
																														end
																													end
																													break;
																												end
																											end
																										until not _G['skidmaruhubnekkkanhambanana'](v1552) or not _G['game']:GetService(DitMeSaoDecodeLauThe("\75\56\20\182\227\58\104", "\72\27\84\117\207\134"))['LocalPlayer']['PlayerGui']['Main']['Quest']['Visible'] or (((os.time() - v1561) > (1 + 0)) and (v1552['Humanoid']['Health'] >= v1562)) or (not v1506 == (_G['MobDual2'] .. "s")) 
																										v1567 = 3 - 2;
																									end
																									if (v1567 == (3 - 2)) then
																										v1559 = (1 + 1) - 0;
																										break;
																									end
																								end
																							end
																							if (((1670 - (521 + 1144)) - (5 - 2)) == v1559) then
																								v1560 = false;
																								break;
																							end
																							if (v1559 == ((158 + 1789) - ((504 - (5 + 85)) + (3226 - (1547 + 146))))) then
																								local v1568 = 0 - 0;
																								while true do
																									if (v1568 == 0) then
																										_G['checkmob'] = 1 + (317 - (272 + 45));
																										v1560 = true;
																										v1568 = 2 - 1;
																									end
																									if (v1568 == (1 + 0)) then
																										v1559 = (832 - 276) - (28 + 415 + 112);
																										break;
																									end
																								end
																							end
																						end
																						break;
																					end
																					if (v1558 == (0 + 0)) then
																						v1559 = 0;
																						v1560 = nil;
																						v1558 = 1 + 0;
																					end
																				end
																			end
																		end
																		if (v1538 == (0 + 0)) then
																			_G['pcall'](function()
																				_G['to'](_G['getMobLoadPos'](_G['MobDual2']) + Vector3.new(1296 - (997 + 299), 30, 1479 - ((2175 - (903 + 384)) + 61 + 530)));
																			end);
																		end
																		break;
																	end
																end
															else
																_G['game']:GetService(DitMeSaoDecodeLauThe("\157\195\68\49\4\84\132\43\170\194\103\41\2\69\132\56\170", "\95\207\166\52\93\109\55\229"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\252\193\39\140\236\57\163\236\214\35\145\252", "\205\189\163\70\226\136\86"));
															end
															break;
														end
													end
													break;
												end
												if (v1503 == (1 + 0)) then
													v1506 = nil;
													v1507 = nil;
													v1503 = 2;
												end
												if ((0 + 0) == v1503) then
													v1504 = (415 - 202) - ((629 - 430) + 5 + 9);
													v1505 = nil;
													v1503 = 1 - 0;
												end
											end
										else
											_G['GetQuest']();
										end
										break;
									end
									if (1 == v1487) then
										v1488 = _G['tick']();
										if ((_G['getPlayerLevel']() > (441 + 259)) and _G['CheckSea'](3 - (591 - (313 + 276)))) then
											_G['TeleportSea']((1 + 3) - (330 - (168 + 160)));
										end
										v1487 = 1458 - (1452 + 4);
									end
									if (v1487 == (0 - 0)) then
										_G['set']("Level Farm | \n Player Level:");
										if (_G['c']()['Main'][DitMeSaoDecodeLauThe("\164\70\15\63\198\92\201\103\19\44", "\32\233\47\124\92\230")]['Enabled'] and ((os.time() - _G['script_time']) > _G['c']()['Main'][DitMeSaoDecodeLauThe("\166\72\145\184\252\210\185\163\78\146", "\153\235\33\226\219\220\174")]['Delay']) and not _G['checkitem'](DitMeSaoDecodeLauThe("\178\74\94\23\149\29\120\26\128\81\82\17\132", "\114\225\61\59"))) then
											local v1508 = 420 - (338 + 82);
											while true do
												if (v1508 == 0) then
													_G['HopServer']();
													return;
												end
											end
										end
										v1487 = 574 - (133 + 440);
									end
								end
							end
							break;
						end
						if (v614 == 0) then
							spawn(function()
								_G['pcall'](function()
									if (_G['CheckMaterialCount'](DitMeSaoDecodeLauThe("\23\175\228\9", "\131\85\192\138\108\105")) > ((105 + 264) - ((37 - 10) + 14 + 278))) then
										_G['game']:GetService(DitMeSaoDecodeLauThe("\4\161\111\15\63\167\126\23\51\160\76\23\57\182\126\4\51", "\99\86\196\31"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\114\59\65\248\76", "\111\48\84\47\157\63\199"), DitMeSaoDecodeLauThe("\56\19\153", "\78\122\102\224\199"), (1 + 1) - (1 + 0), 1);
									end
								end);
								_G['reach'] = os.time();
								_G['updatetime']();
							end);
							_G['delaytime'] = _G['tick']();
							v614 = 1;
						end
					end
				end, function(...)
					local v615 = 1302 - (422 + 880);
					while true do
						if (v615 == (1980 - (365 + 1615))) then
							_G['mii'] = {...};
							_G['miii'] = _G['mii'][(1353 - (479 + 873)) + 0 + 0];
							v615 = 1;
						end
						if (v615 == (2 - 1)) then
							writefile(DitMeSaoDecodeLauThe("\65\222\139\224\21\230\67\200\129\228\94\255\90\197", "\139\34\177\229\141\112"), (_G['readfile'](DitMeSaoDecodeLauThe("\32\226\118\185\213\46\236\97\176\217\109\249\96\160", "\176\67\141\24\212")) or " ") .. "\n" .. (_G['miii'] or DitMeSaoDecodeLauThe("\147\218\69\228\59\20\225\220\222", "\141\179\185\36\138\79\52")) .. DitMeSaoDecodeLauThe("\187\39\31", "\195\155\91\63") .. (_G['tostring'](_G['m1']) or DitMeSaoDecodeLauThe("\216\76", "\57\182\35\175\156\173\179")) .. DitMeSaoDecodeLauThe("\157\190\249", "\216\189\194\217\191\111\100") .. (_G['tostring'](_G['m2']) or DitMeSaoDecodeLauThe("\163\65", "\42\205\46\33\20\80")));
							warn(...);
							v615 = 2;
						end
						if (v615 == 2) then
							spawn(function()
								_G['PostWebhook']("https://discord.com/api/webhooks/1148250879070310531/eOkXIZsij1FxJaEJHLfZaUvzWgD2NtMZa64HUeslwBcXPA7mwrc2DjfnlP9A2Y9MihiD", _G['buglog'](_G['miii']));
							end);
							break;
						end
					end
				end);
				break;
			end
		end
	end
end);
spawn(function()
	while not ggggggggggg or wait((13558 - 9958) * ((2 - 1) + 1 + 0)) do
		_G['ggggggggggg'] = true;
		for v439, v440 in pairs(_G['c']()[DitMeSaoDecodeLauThe("\119\26\60\190\69", "\215\49\104\73")]["Misc / Fruit Sniping"]) do
			local v441 = 0;
			local v442;
			while true do
				if (v441 == (0 + 0)) then
					v442 = 1502 - (832 + 670);
					while true do
						if (v442 == (0 + (0 - 0))) then
							_G['game']:GetService(DitMeSaoDecodeLauThe("\228\17\22\4\223\23\7\28\211\16\53\28\217\6\7\15\211", "\104\182\116\102"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\1\237\232\199\172\45\183\50\251", "\222\70\136\156\129\222\88"));
							_G['game']:GetService(DitMeSaoDecodeLauThe("\240\129\148\181\203\135\133\173\199\128\183\173\205\150\133\190\199", "\217\162\228\228"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\158\200\221\219\166\220\220\221\156\220\216\254\188\200\198\204", "\184\206\189\175"), v440);
							break;
						end
					end
					break;
				end
			end
		end
	end
end);
spawn(function()
	while task.wait() do
		local v414 = 0;
		local v415;
		while true do
			if (v414 == (0 - 0)) then
				v415 = (1247 - (707 + 540)) + 0;
				while true do
					if (v415 == (59 - (18 + 41))) then
						local v718 = 0 + 0;
						while true do
							if (v718 == (0 + 0)) then
								_G['pcall'](function()
									local v871 = 0;
									while true do
										if (v871 == (1220 - (554 + 666))) then
											wait((509 - (438 + 62)) - (1909 - (1497 + 408)));
											print("" .. _G['getPlayerLevel']());
											break;
										end
									end
								end);
								_G['gayz'], _G['z'] = _G['pcall'](function()
									local v872 = 0 - 0;
									while true do
										if ((0 + 0) == v872) then
											if _G['checkitem'](DitMeSaoDecodeLauThe("\122\71\235\178\140\124\207\79\75\247\180\201", "\188\60\46\153\215\172\57")) then
												_G['buyMelee'](DitMeSaoDecodeLauThe("\48\227\60\85\54\42\32\240\49\93\55", "\68\116\145\93\50\89"));
											end
											if ((_G['getPlayerLevel']() >= ((1 + 0) - (640 - (508 + 132)))) and (_G['getPlayerBeli']() > 5000)) then
												local v1030 = 0 - 0;
												local v1031;
												while true do
													if (v1030 == 0) then
														v1031 = 1678 - ((166 - 30) + (2749 - (49 + 1158)));
														while true do
															if (v1031 == (2 + 6)) then
																_G['game']:GetService(DitMeSaoDecodeLauThe("\157\93\186\175\255\80\174\76\175\167\197\71\160\74\171\164\243", "\51\207\56\202\195\150"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\159\93\226\106\149\131\243", "\195\221\40\155\35\225\230\158"), DitMeSaoDecodeLauThe("\229\124\200\87\247\12", "\98\166\29\166\57\152"));
																break;
															end
															if (v1031 == ((21 - 5) - (4 + 7))) then
																local v1108 = 0;
																while true do
																	if (v1108 == 0) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\155\23\145\198\52\170\19\149\207\57\154\6\142\216\60\174\23", "\93\201\114\225\170"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\206\245\226\193\97\178\200", "\142\140\128\155\136\21\215\165"), DitMeSaoDecodeLauThe("\113\164\22\91", "\218\33\205\102\62\128\75\152"));
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\198\126\78\200\255\247\122\74\193\242\199\111\81\214\247\243\126", "\150\148\27\62\164"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\0\252\243\233\54\236\231", "\160\66\137\138"), DitMeSaoDecodeLauThe("\51\204\55\179\127\201\75\126\5", "\16\96\163\66\223\95\138\42"));
																		v1108 = 1 + 0;
																	end
																	if (v1108 == (2 - 1)) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\178\209\193\2\211\10\129\192\212\10\233\29\143\198\208\9\223", "\105\224\180\177\110\186"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\131\31\187\107\52\89\54", "\199\193\106\194\34\64\60\91"), DitMeSaoDecodeLauThe("\11\185\1\169\58\246\62\175\49\177", "\198\95\214\108"));
																		v1031 = 6;
																		break;
																	end
																end
															end
															if (v1031 == (2 + 1 + (1221 - (460 + 761)))) then
																local v1109 = 0;
																while true do
																	if (v1109 == 0) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\40\56\186\140\224\15\251\33\31\57\153\148\230\30\251\50\31", "\85\122\93\202\224\137\108\154"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\166\69\75\130\215\169\137", "\204\228\48\50\203\163"), DitMeSaoDecodeLauThe("\247\165\70\169\79\98\212\59\219", "\88\190\215\41\199\111\47\181"));
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\102\50\92\69\121\194\223\64\50\72\122\100\206\204\85\48\73", "\190\52\87\44\41\16\161"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\97\3\30\157\15\36\17", "\124\35\118\103\212\123\65"), DitMeSaoDecodeLauThe("\30\231\173\188\117\28\31\234\188\186", "\60\92\139\204\223\30"));
																		v1109 = 2 - 1;
																	end
																	if (v1109 == (1 + 0)) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\20\24\255\129\204\37\28\251\136\193\21\9\224\159\196\33\24", "\165\70\125\143\237"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\150\46\236\109\68\177\54", "\48\212\91\149\36"), DitMeSaoDecodeLauThe("\102\23\41\1\74\10\53", "\100\36\126\90"));
																		v1031 = (1 + 4) - (597 - (405 + 191));
																		break;
																	end
																end
															end
															if (v1031 == ((1672 - (311 + 1359)) + (0 - 0))) then
																local v1110 = 0;
																while true do
																	if (v1110 == (0 + 0)) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\35\193\199\81\31\18\51\38\20\192\228\73\25\3\51\53\20", "\82\113\164\183\61\118\113\82"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\217\87\232\158\176\202\231", "\138\155\34\145\215\196\175"), DitMeSaoDecodeLauThe("\134\252\8\203\7\62\89\128\135\245\7\204\14\40\85\207\160", "\160\212\153\110\162\105\91\61"));
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\146\61\186\211\169\59\171\203\165\60\153\203\175\42\171\216\165", "\191\192\88\202"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\83\216\240\55\28\201\124", "\172\17\173\137\126\104"), DitMeSaoDecodeLauThe("\239\121\43\62\216\230\28\157\90\33\62\216\247\20\210\127\38", "\120\189\28\77\87\182\131"));
																		v1110 = 1;
																	end
																	if (v1110 == (1 + 0)) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\254\40\1\252\27\251\214\216\40\21\195\6\247\197\205\42\20", "\183\172\77\113\144\114\152"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\223\109\33\192\86\192\0", "\109\157\24\88\137\34\165"), DitMeSaoDecodeLauThe("\140\84\189\76\255\21\130\169\69\185\68\242\31\139\169\69\185", "\231\200\33\220\32\210\93"));
																		v1031 = (81 + 408) - (9 + 59 + 418);
																		break;
																	end
																end
															end
															if (((11 + 7) - (17 - 6)) == v1031) then
																local v1111 = 0 + 0;
																while true do
																	if (v1111 == (1 - 0)) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\123\6\58\237\140\74\2\62\228\129\122\23\37\243\132\78\6", "\229\41\99\74\129"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\17\16\248\2\39\0\236", "\75\83\101\129"), DitMeSaoDecodeLauThe("\192\78\71\217\252\78\69\144\212\71\72\222\230\71\78\211\249", "\176\146\43\33"));
																		v1031 = 2 + 6;
																		break;
																	end
																	if (v1111 == 0) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\110\93\86\225\62\95\89\82\232\51\111\76\73\255\54\91\93", "\87\60\56\38\141"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\226\176\19\19\212\160\7", "\90\160\197\106"), DitMeSaoDecodeLauThe("\206\160\57\125\71\247", "\34\131\213\74\22"));
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\2\188\6\60\57\186\23\36\53\189\37\36\63\171\23\55\53", "\80\80\217\118"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\39\93\18\84\17\77\6", "\29\101\40\107"), DitMeSaoDecodeLauThe("\227\249\217\189\9\201\250\211\184", "\125\165\149\176\211"));
																		v1111 = 1 - 0;
																	end
																end
															end
															if (v1031 == ((0 - 0) - (1520 - (1408 + 112)))) then
																local v1112 = 0;
																while true do
																	if (v1112 == (983 - (285 + 697))) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\63\19\26\61\28\143\12\2\15\53\38\152\2\4\11\54\16", "\236\109\118\106\81\117"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\207\38\223\7\175\230\58", "\206\141\83\166\79"), DitMeSaoDecodeLauThe("\207\188\206\197", "\158\141\201\189\170"));
																		v1031 = 4 - 3;
																		break;
																	end
																	if (v1112 == (1260 - (737 + 523))) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\154\216\225\29\167\120\169\201\244\21\157\111\167\207\240\22\171", "\27\200\189\145\113\206"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\139\142\92\159\78\172\128", "\47\192\235\50\203"), DitMeSaoDecodeLauThe("\2\210\3", "\233\64\167\122\177\140\188\212"));
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\125\113\230\76\226\191\241\91\113\242\115\255\179\226\78\115\243", "\144\47\20\150\32\139\220"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\18\55\164\209\219\139\237", "\132\80\66\221\153\186\224"), DitMeSaoDecodeLauThe("\97\170\52\7\180", "\219\38\207\68\119"));
																		v1112 = 1;
																	end
																end
															end
															if (v1031 == (6 + (0 - 0))) then
																local v1113 = 0 + 0;
																while true do
																	if (v1113 == (845 - (789 + 55))) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\78\124\87\10\127\137\90\218\121\125\116\18\121\152\90\201\121", "\174\28\25\39\102\22\234\59"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\235\92\9\241\218\131\196", "\230\169\41\112\184\174"), DitMeSaoDecodeLauThe("\249\200\124\176\21\7\219\64\222", "\47\170\164\21\222\114\116\179"));
																		v1031 = (3512 - 2413) - (475 + 295 + 322);
																		break;
																	end
																	if ((0 - 0) == v1113) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\37\181\233\183\68\20\177\237\190\73\36\164\246\169\76\16\181", "\45\119\208\153\219"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\246\76\189\60\7\209\84", "\115\180\57\196\117"), DitMeSaoDecodeLauThe("\16\112\81\247\91\132\9\193\34\121", "\160\82\28\48\148\48\164\74"));
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\241\213\173\42\51\14\194\196\184\34\9\25\204\194\188\33\63", "\109\163\176\221\70\90"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\240\84\46\125\103\55\223", "\82\178\33\87\52\19"), DitMeSaoDecodeLauThe("\127\181\231\104\120\95\175\233\116\60\100\163\252", "\28\44\194\136\26"));
																		v1113 = 1 - 0;
																	end
																end
															end
															if (v1031 == (1 + 0 + (0 - 0))) then
																local v1114 = 0;
																while true do
																	if ((1883 - (1492 + 390)) == v1114) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\46\118\98\79\21\112\115\87\25\119\65\87\19\97\115\68\25", "\35\124\19\18"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\198\70\13\239\67\225\94", "\55\132\51\116\166"), DitMeSaoDecodeLauThe("\235\41\169\120\5\45\238", "\157\168\92\221\20\100\94"));
																		v1031 = (1 - 0) + (994 - (312 + 681));
																		break;
																	end
																	if (v1114 == 0) then
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\207\130\157\218\244\132\140\194\248\131\190\194\242\149\140\209\248", "\182\157\231\237"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\215\239\21\136\244\241\5", "\192\149\154\108"), DitMeSaoDecodeLauThe("\202\246\245\53", "\97\153\153\135\64\93\86"));
																		_G['game']:GetService(DitMeSaoDecodeLauThe("\52\91\194\36\240\42\138\205\3\90\225\60\246\59\138\222\3", "\185\102\62\178\72\153\73\235"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\86\175\50\155\96\191\38", "\210\20\218\75"), DitMeSaoDecodeLauThe("\172\232\6\127\28\50\53\156\252\9\114", "\84\232\157\103\19\60\121"));
																		v1114 = 1;
																	end
																end
															end
															if (((1912 - (1255 + 656)) + 3) == v1031) then
																_G['game']:GetService(DitMeSaoDecodeLauThe("\250\212\229\19\19\218\119\220\212\241\44\14\214\100\201\214\240", "\22\168\177\149\127\122\185"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\149\178\35\99\235\178\170", "\159\215\199\90\42"), DitMeSaoDecodeLauThe("\6\192\195\41\246\114\253\199\40\244", "\147\82\175\174\70"));
																_G['game']:GetService(DitMeSaoDecodeLauThe("\37\135\29\48\72\20\131\25\57\69\36\150\2\46\64\16\135", "\33\119\226\109\92"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\152\147\99\208\239\191\139", "\155\218\230\26\153"), DitMeSaoDecodeLauThe("\61\19\15\194\24\19", "\163\118\114\123"));
																_G['game']:GetService(DitMeSaoDecodeLauThe("\208\227\224\188\188\225\231\228\181\177\209\242\255\162\180\229\227", "\213\130\134\144\208"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\217\41\4\29\81\124\80", "\73\155\92\125\84\37\25\61"), DitMeSaoDecodeLauThe("\117\208\228\195\66\68\130\198\210\90\64\204\236", "\46\33\162\141\179"));
																v1031 = 1732 - (485 + 1242);
															end
														end
														break;
													end
												end
											end
											break;
										end
									end
								end);
								v718 = 1 + 0;
							end
							if (v718 == 1) then
								_G['inv'] = _G['game']:GetService(DitMeSaoDecodeLauThe("\110\169\189\49\33\95\173\185\56\44\111\184\162\47\41\91\169", "\72\60\204\205\93"))['Remotes'][DitMeSaoDecodeLauThe("\135\203\207\185\110\17", "\78\196\164\162\212\40")]:InvokeServer(DitMeSaoDecodeLauThe("\92\200\221\119\252\223\165\169\79\194\219\71", "\199\59\173\169\62\146\169\192"));
								if not _G['game']['Players']['LocalPlayer']['Character']:FindFirstChild(DitMeSaoDecodeLauThe("\4\181\181\173", "\195\87\197\220")) then
									local v928 = 0 - 0;
									local v929;
									while true do
										if (v928 == (0 - 0)) then
											v929 = Instance.new(DitMeSaoDecodeLauThe("\147\254\165\170\244\114\251\33\189\240\179\133\208\112\243\55\184\229\184", "\84\209\145\193\211\181\28\156"));
											v929['Name'] = DitMeSaoDecodeLauThe("\226\243\39\134", "\167\177\131\78\232");
											v928 = 3 - 2;
										end
										if (v928 == (3 - 2)) then
											v929['Parent'] = _G['game']['Players']['LocalPlayer']['Character'];
											v929['MaxTorque'] = Vector3.new((0 - 0) - (0 + 0), _G['math'].huge, 0 - (959 - (722 + 237)));
											v928 = 5 - 3;
										end
										if (v928 == 2) then
											v929['AngularVelocity'] = Vector3.new(0 - 0, (863 - (77 + 639)) - (326 - 219), 0 + (0 - 0));
											break;
										end
									end
								end
								v718 = 3 - 1;
							end
							if (v718 == (5 - 3)) then
								v415 = 2 - 1;
								break;
							end
						end
					end
					if (v415 == (5 - (1 + 0))) then
						if ((_G['cabd'][DitMeSaoDecodeLauThe("\141\1\142\68\16\90\7\198\232\46\135\70\19", "\165\200\109\235\39\100\40\110")] > (192 + 207)) and (_G['cabd'][DitMeSaoDecodeLauThe("\173\104\224\47\28\135\58\213\41\31\134\116", "\115\233\26\129\72")] < 400)) then
							if (_G['cabd'][DitMeSaoDecodeLauThe("\92\28\214\128\235\118\78\244\139\229\111", "\132\24\110\183\231")] < (246 + 6 + 148)) then
								local v873 = 0;
								while true do
									if (v873 == (1359 - (888 + 471))) then
										_G['set1'](DitMeSaoDecodeLauThe("\153\112\9\167\83\186\113\3\136\126\18\243\126\166\119\68\161\127\64\144\86\181\97\3\134\120\20\243\9\228\38\3\131\112\19\167\95\166\111", "\35\206\17\96\211\58\212\22"));
										_G['buyMelee'](DitMeSaoDecodeLauThe("\23\220\136\62\135\182\139\197\50\217", "\169\83\174\233\89\232\216\200"));
										break;
									end
								end
							elseif (not _G['checkMelee'](DitMeSaoDecodeLauThe("\120\0\90\58\183\197\221\23\80\29\85", "\118\60\114\59\93\216\171\137")) and (_G['getPlayerFragments']() < (6109 - (1034 + 75)))) then
								local v963 = 1157 - (448 + 709);
								while true do
									if (v963 == 1) then
										_G['set1'](DitMeSaoDecodeLauThe("\115\220\80\235\252\96\200\77\224\181\92\206\4\209\178\70\192\72\164\148\91\221\4\177\183\18\239\86\229\187\95\204\74\240\175\18\242\4\192\174\83\206\75\234\252\102\200\72\235\178\18\244", "\220\50\169\36\132"));
										break;
									end
									if (v963 == (0 + 0)) then
										_G['AutoRaid'] = true;
										_G['PullFruit'] = true;
										v963 = 1;
									end
								end
							else
								local v964 = 0 - 0;
								local v965;
								while true do
									if (v964 == (1855 - (1643 + 212))) then
										v965 = 0 + (480 - (320 + 160));
										while true do
											if ((0 - 0) == v965) then
												_G['set1']("Waiting For Dragon Talon Requirements [3M+ Beli / Fire Essence]");
												_G['buyMelee'](DitMeSaoDecodeLauThe("\213\149\13\182\254\137\56\176\253\136\2", "\209\145\231\108"));
												break;
											end
										end
										break;
									end
								end
							end
						end
						if ((_G['cabd'][DitMeSaoDecodeLauThe("\106\52\24\8\202\205\55\84\32\6", "\66\57\65\104\109\184\165")] > ((3882 - 2380) - (355 + 748))) and (_G['cabd'][DitMeSaoDecodeLauThe("\153\14\251\74\237\253\56\238\91\245", "\133\221\107\154\62")] > (742 - 343)) and (_G['cabd'][DitMeSaoDecodeLauThe("\254\18\176\226\83\208\56\216\94\150\237\70\213", "\81\187\126\213\129\39\162")] > ((689 - (114 + 22)) - (5 + 149))) and (_G['cabd'][DitMeSaoDecodeLauThe("\161\163\44\243\171\139\241\25\245\168\138\191", "\196\229\209\77\148")] > (135 + 264)) and (_G['cabd'][DitMeSaoDecodeLauThe("\116\221\112\14\86\255\204\73\149\90\29\79\243\217\66", "\173\39\181\17\124\61\146")] > 399)) then
							if not _G['checkMelee'](DitMeSaoDecodeLauThe("\93\211\247\42\157\119\221\253", "\232\26\188\147\66")) then
								local v874 = 0;
								while true do
									if (v874 == (1059 - (89 + 970))) then
										_G['buyMelee'](DitMeSaoDecodeLauThe("\48\237\227\24\103\7\232\229\56\127\20\246", "\19\117\129\134\123"));
										if ((_G['getPlayerFragments']() < ((24760 - (1083 + 645)) - 18032)) and not _G['checkMelee'](DitMeSaoDecodeLauThe("\4\12\205\30\33\46\34\13", "\67\67\99\169\118\84"))) then
											local v1032 = 166 - (50 + 116);
											local v1033;
											while true do
												if (v1032 == (1962 - (1058 + 904))) then
													v1033 = (0 - 0) - (0 - 0);
													while true do
														if (v1033 == (3 - 2)) then
															_G['PullFruit'] = true;
															break;
														end
														if (v1033 == ((0 - 0) + 0 + 0)) then
															local v1115 = 196 - (94 + 102);
															while true do
																if (v1115 == (1 + 0)) then
																	v1033 = (1268 - (735 + 529)) - (1154 - (875 + 276));
																	break;
																end
																if (v1115 == (979 - (461 + 518))) then
																	_G['set1'](DitMeSaoDecodeLauThe("\35\63\241\64\19\132\248\191\6\106\208\65\71\191\245\246\42\35\241\15\6\189\185\144\16\43\226\66\86\184\237\165\66\17\194\64\87\190\236\187\3\36\216", "\214\98\74\133\47\51\214\153"));
																	_G['AutoRaid'] = true;
																	v1115 = 1 + 0;
																end
															end
														end
													end
													break;
												end
											end
										end
										v874 = 1;
									end
									if (v874 == 1) then
										_G['set1'](DitMeSaoDecodeLauThe("\61\79\121\96\122\89\13\14\86\123\97\23\58\66\113\109\118\69\74\108\117\120\122\23\34\71\100\52\38\122\65\14\75\83\124\83\2\91\125\117\125\106", "\55\106\46\16\20\19"));
										_G['buyMelee'](DitMeSaoDecodeLauThe("\110\180\182\56\35\51\18\71", "\115\41\219\210\80\86\94"));
										break;
									end
								end
							elseif (_G['cabd'][DitMeSaoDecodeLauThe("\135\70\237\18\199\54\161\71", "\91\192\41\137\122\178")] < ((3733 - 2502) - (762 + (850 - (656 + 125))))) then
								_G['buyMelee'](DitMeSaoDecodeLauThe("\112\42\206\224\66\40\203\230", "\136\55\69\170"));
							else
								for v995, v996 in pairs(_G['inv']) do
									if (v996['Type'] == DitMeSaoDecodeLauThe("\208\234\31\40\210", "\173\131\157\112\90\182\147\77")) then
										_G['mas'] = 0 - 0;
										for v1054, v1055 in pairs(v996.MasteryRequirements) do
											_G['mas'] = _G['tonumber'](v1055);
										end
										if (v996['Mastery'] < _G['mas']) then
											_G['forcewp'] = DitMeSaoDecodeLauThe("\41\1\47\21\30", "\103\122\118\64");
											if not _G['checkitem2'](v996.Name) then
												local v1086 = 848 - (532 + 316);
												local v1087;
												while true do
													if (v1086 == 0) then
														v1087 = {[(257 - (150 + 104)) - (2 + 0)]=DitMeSaoDecodeLauThe("\220\231\17\192\217\169\245\229", "\221\144\136\112\164\144"),[(5 - 3) + (1847 - (564 + 1283))]=v996['Name']};
														_G['set1'](DitMeSaoDecodeLauThe("\127\60\107\169\80\51\126\228\116\60\106\176\92\47\96\228\127\50\107\228", "\196\57\93\25") .. v996['Name'] .. DitMeSaoDecodeLauThe("\138\119", "\47\170\44\208\229") .. v996['Mastery'] .. "/" .. _G['mas'] .. "]");
														v1086 = 1 + 0;
													end
													if (v1086 == 1) then
														_G['game']:GetService(DitMeSaoDecodeLauThe("\122\71\174\22\18\228\54\92\71\186\41\15\232\37\73\69\187", "\87\40\34\222\122\123\135"))['Remotes']['CommF_']:InvokeServer(unpack(v1087));
														break;
													end
												end
											end
											break;
										end
									end
								end
							end
						end
						break;
					end
					if ((2 + 1) == v415) then
						if ((_G['cabd'][DitMeSaoDecodeLauThe("\101\47\128\50\206\222\1\30\141\52\214", "\176\33\93\225\85\161")] > ((1963 - 1241) - (148 + 275))) and (_G['cabd'][DitMeSaoDecodeLauThe("\145\12\157\209\107\170\12\128\213\119", "\25\194\121\237\180")] < (126 + 23 + 251))) then
							local v804 = (0 - 0) + (1548 - (330 + 1218));
							while true do
								if (v804 == 0) then
									_G['buyMelee'](DitMeSaoDecodeLauThe("\135\162\41\42\20\66\161\186\56\33", "\42\212\215\89\79\102"));
									_G['set1'](DitMeSaoDecodeLauThe("\128\80\45\4\198\64\64\183\145\94\54\80\252\91\87\242\165\89\49\29\206\64\7\223\190\69\100\67\159\30\7\218\182\66\48\21\221\87", "\151\215\49\68\112\175\46\39"));
									break;
								end
							end
						end
						if ((_G['cabd'][DitMeSaoDecodeLauThe("\117\104\166\73\159\78\104\187\77\131", "\237\38\29\214\44")] > ((861 + 693) - 1155)) and (_G['cabd'][DitMeSaoDecodeLauThe("\50\35\118\18\123\6\134\149\19\54", "\225\118\70\23\102\19\38\213")] < ((469 + 88) - (8 + 106 + 43)))) then
							if (_G['cabd'][DitMeSaoDecodeLauThe("\2\86\92\33\82\180\156\37\93", "\208\64\58\61\66\57\148")] < (231 + 169)) then
								local v875 = (1875 - 555) - (1199 + 62 + 59);
								while true do
									if (v875 == ((0 - 0) - 0)) then
										_G['buyMelee'](DitMeSaoDecodeLauThe("\203\178\167\71\226\146\163\67", "\36\137\222\198"));
										_G['set1'](DitMeSaoDecodeLauThe("\214\245\235\54\193\172\5\9\199\251\240\98\234\174\3\74\234\180\206\39\207\226\42\64\245\180\177\114\152\226\47\72\242\224\231\48\209", "\41\129\148\130\66\168\194\98"));
										break;
									end
								end
							elseif not _G['checkMelee'](DitMeSaoDecodeLauThe("\53\47\128\4\75\27\100\169\1", "\204\113\74\225\112\35\72\16")) then
								if ((_G['getPlayerFragments']() < ((2980 + 8308) - 6288)) and (_G['NameMelee']() ~= DitMeSaoDecodeLauThe("\85\27\0\52\236\255\128\244\116\14", "\128\17\126\97\64\132\223\211")) and not _G['checkMelee'](DitMeSaoDecodeLauThe("\158\131\60\28\178\181\41\13\170", "\104\218\230\93"))) then
									local v1013 = 1569 - (511 + 1058);
									while true do
										if (v1013 == (0 - 0)) then
											_G['AutoRaid'] = true;
											_G['PullFruit'] = true;
											break;
										end
									end
								else
									local v1014 = 1498 - (1315 + 183);
									while true do
										if (v1014 == (0 + 0)) then
											_G['set1'](DitMeSaoDecodeLauThe("\68\61\219\98\122\50\213\54\85\51\192\54\67\48\211\111\118\46\146\84\118\48\219\54\91\53\198\54\32\17\153\54\72\124\246\115\114\40\218\54\64\40\215\102\51\1", "\22\19\92\178"));
											if (_G['getPlayerBeli']() > (3000542 - (233 + 309))) then
												_G['buyMelee'](DitMeSaoDecodeLauThe("\250\14\66\58\181\130\202\14\83", "\209\190\107\35\78\221"));
											end
											break;
										end
									end
								end
							else
								local v966 = 0 - 0;
								local v967;
								while true do
									if (v966 == (653 - (267 + 386))) then
										v967 = (0 - 0) + (853 - (744 + 109));
										while true do
											if (((1550 - (1271 + 279)) - 0) == v967) then
												_G['set1'](DitMeSaoDecodeLauThe("\183\47\223\245\223\142\41\150\199\217\146\110\242\228\215\148\38\150\210\194\133\62\150\201\223\148\110\133\177\134\192\3\215\242\194\133\60\207", "\182\224\78\182\129"));
												_G['buyMelee'](DitMeSaoDecodeLauThe("\201\8\164\26\222\3\107\65\253", "\36\141\109\197\110\182\80\31"));
												break;
											end
										end
										break;
									end
								end
							end
						end
						if ((_G['cabd'][DitMeSaoDecodeLauThe("\199\15\23\147\22\124\208\30\19\151", "\92\131\106\118\231\126")] > (1021 - 622)) and (_G['cabd'][DitMeSaoDecodeLauThe("\142\75\63\183\40\176\66\48\229\8\188\81\63\177\38", "\67\221\35\94\197")] < (2044 - (642 + 1002)))) then
							if (_G['cabd'][DitMeSaoDecodeLauThe("\99\181\51\82\72\189\46\26\110\189\50\91\81\185", "\58\37\220\64")] < ((2791 - (643 + 1220)) - 528)) then
								local v876 = 0 - 0;
								while true do
									if (v876 == (0 - 0)) then
										_G['buyMelee'](DitMeSaoDecodeLauThe("\250\133\231\4\185\173\210\167\245\30\181\184\217", "\204\188\236\148\108\212"));
										_G['set1'](DitMeSaoDecodeLauThe("\233\221\86\231\253\28\6\242\248\211\77\179\210\27\18\186\211\221\81\179\223\19\19\179\202\217\31\219\253\6\65\225\142\140\31\222\245\1\21\183\204\197", "\210\190\188\63\147\148\114\97"));
										break;
									end
								end
							elseif not _G['checkMelee'](DitMeSaoDecodeLauThe("\134\206\164\150\26\184\199\171\175\16\167\199\177\129", "\113\213\166\197\228")) then
								if (_G['getPlayerFragments']() < ((5841 - (1063 + 354)) + (1406 - (739 + 91)))) then
									local v1015 = 0;
									while true do
										if (v1015 == (1 - 0)) then
											_G['PullFruit'] = true;
											break;
										end
										if (v1015 == 0) then
											_G['AutoRaid'] = true;
											_G['set1'](DitMeSaoDecodeLauThe("\236\43\214\92\10\183\2\232\201\126\247\93\94\140\15\161\255\59\195\80\66\197\86\234\141\24\208\82\77\136\6\239\217\45", "\129\173\94\162\51\42\229\99"));
											v1015 = 1878 - (790 + 1087);
										end
									end
								else
									local v1016 = 0 + 0;
									while true do
										if (v1016 == 0) then
											_G['set1'](DitMeSaoDecodeLauThe("\106\53\27\37\191\83\51\82\23\185\79\116\48\52\186\84\116\58\56\162\29\103\63\122\246\102\116\33\57\183\79\63\31\48\184\29\31\19\35\183\73\49\82\12", "\214\61\84\114\81"));
											if (_G['getPlayerBeli']() > 3000000) then
												_G['buyMelee'](DitMeSaoDecodeLauThe("\116\235\29\87\198\219\70\237\55\68\223\215\83\230", "\182\39\131\124\37\173"));
											end
											break;
										end
									end
								end
							else
								local v968 = 0;
								while true do
									if (v968 == 0) then
										_G['buyMelee'](DitMeSaoDecodeLauThe("\9\21\187\6\162\121\59\19\145\21\187\117\46\24", "\20\90\125\218\116\201"));
										_G['set1'](DitMeSaoDecodeLauThe("\18\8\18\147\35\32\90\101\47\20\149\106\29\85\36\27\16\138\43\32\29\14\8\9\134\56\43\29\13\0\15\199\121\126\13\101\36\26\148\62\43\79\60", "\61\69\105\123\231\74\78"));
										break;
									end
								end
							end
						end
						if ((_G['cabd'][DitMeSaoDecodeLauThe("\226\165\187\25\220\220\172\180\75\252\208\191\187\31\210", "\183\177\205\218\107")] > ((5607 - 3401) - ((1730 - 1212) + (3309 - 2020)))) and (_G['cabd'][DitMeSaoDecodeLauThe("\32\60\136\124\216\36\12\51\205\92\192\55\18", "\86\101\80\237\31\172")] < (1397 - 997))) then
							if (_G['cabd'][DitMeSaoDecodeLauThe("\118\52\171\87\110\219\210", "\189\51\88\206\52\26\169")] < ((2386 - 1701) - 285)) then
								local v877 = 149 - (82 + 67);
								while true do
									if (0 == v877) then
										_G['buyMelee'](DitMeSaoDecodeLauThe("\3\207\78\86\50\209\68", "\53\70\163\43"));
										_G['set1'](DitMeSaoDecodeLauThe("\246\163\174\12\127\61\77\129\132\168\10\54\22\70\196\161\179\10\121\115\98\200\182\231\75\38\99\10\236\163\180\12\115\33\83", "\42\161\194\199\120\22\83"));
										break;
									end
								end
							else
								local v878 = 0 + 0;
								local v879;
								while true do
									if (v878 == 0) then
										v879 = 0 - 0;
										while true do
											if (((1986 - (1835 + 150)) + (14 - (12 + 2))) == v879) then
												_G['set1'](DitMeSaoDecodeLauThe("\151\253\81\38\123\48\167\188\126\61\96\126\144\240\89\43\119\44\224\222\93\62\123\126\136\245\76\114\33\19\235\188\99\114\87\50\165\255\76\32\123\61\224\223\84\51\101\126\157", "\94\192\156\56\82\18"));
												break;
											end
											if (v879 == (1036 - (784 + 252))) then
												local v1056 = 0 + 0;
												while true do
													if (v1056 == (1 - 0)) then
														v879 = 1 + 0 + 0;
														break;
													end
													if (v1056 == (1384 - (1134 + 250))) then
														if (not _G['checkMelee'](DitMeSaoDecodeLauThe("\123\178\23\69\112\12\140\118\186\22\76\105\8", "\226\61\219\100\45\29\109")) and (_G['getPlayerFragments']() < ((4778 + 2524) - (484 + 1818)))) then
															_G['AutoRaid'] = true;
															_G['PullFruit'] = true;
														end
														_G['buyMelee'](DitMeSaoDecodeLauThe("\223\175\37\67\238\177\41\67\217\175\33\87", "\32\154\195\64"));
														v1056 = 1 - 0;
													end
												end
											end
										end
										break;
									end
								end
							end
						end
						v415 = 473 - (304 + 111 + 54);
					end
					if (((5 - 3) + (0 - 0)) == v415) then
						local v719 = 0 - 0;
						while true do
							if (v719 == (1982 - (1940 + 41))) then
								if ((_G['cabd'][DitMeSaoDecodeLauThe("\102\160\47\173\239\81\163", "\155\35\204\74\206")] > ((1553 - (39 + 199)) - (10 + 1006))) and (_G['cabd'][DitMeSaoDecodeLauThe("\145\203\104\47\202\182\204\59\12\198\165\195\111\34", "\167\215\162\27\71")] < (76 + 181 + 42))) then
									_G['buyMelee'](DitMeSaoDecodeLauThe("\27\138\216\42\48\60\141\224\35\47\60\151\206", "\93\93\227\171\66"));
									_G['set1'](DitMeSaoDecodeLauThe("\31\200\197\186\55\41\201\193\14\198\222\238\24\46\221\137\37\200\194\238\21\38\220\128\60\204\140\134\55\51\142\210\120\153\140\131\63\52\218\132\58\208", "\225\72\169\172\206\94\71\174"));
								end
								if ((_G['cabd'][DitMeSaoDecodeLauThe("\107\91\71\239\249\49\70\13\121\85\245\245\36\77", "\40\45\50\52\135\148\80")] > ((86 - 44) + 257)) and (_G['cabd'][DitMeSaoDecodeLauThe("\198\11\231\133\237\23\166\161\238\24\241", "\226\130\121\134")] < 299)) then
									_G['set1'](DitMeSaoDecodeLauThe("\191\56\202\111\129\55\196\59\174\54\209\59\172\43\194\124\135\55\131\88\132\56\212\59\160\48\215\59\219\105\147\59\165\56\208\111\141\43\218", "\27\232\89\163"));
									if ((v14['Data']['Fragments']['Value'] < (4862 - (5592 - 2230))) and (_G['NameMelee'](true)['Name'] ~= DitMeSaoDecodeLauThe("\208\187\193\196\251\167\128\224\248\168\215", "\163\148\201\160")) and not _G['checkMelee'](DitMeSaoDecodeLauThe("\122\151\233\225\178\11\30\166\228\231\170", "\101\62\229\136\134\221"))) then
										if not _G['CheckSea'](1930 - (313 + 1616)) then
											local v1034 = 0 - 0;
											local v1035;
											while true do
												if (0 == v1034) then
													v1035 = 0 - 0;
													while true do
														if (v1035 == ((2104 - 1071) - ((949 - (7 + 30)) + (1307 - (961 + 225))))) then
															local v1116 = 0 - 0;
															while true do
																if (v1116 == (1 + 0)) then
																	v1035 = (2130 - (281 + 559)) - (1140 + (427 - 278));
																	break;
																end
																if (v1116 == (0 + 0)) then
																	warn(DitMeSaoDecodeLauThe("\83\90\226\224\94\64\78\255\235\94\71\65\226\230\18\50\125\243\238\29\122\15\167\161\75\121\15\240\175", "\126\18\47\150\143"), 2836 + 3164);
																	_G['AutoRaid'] = true;
																	v1116 = 1 + 0;
																end
															end
														end
														if ((1 + 0 + 0) == v1035) then
															_G['PullFruit'] = true;
															_G['set1'](DitMeSaoDecodeLauThe("\131\207\193\104\59\127\24\244\232\199\110\114\85\13\181\201\199\114\114\82\19\181\217\136\84\59\101\95\231\158\152\60\31\112\12\160\203\218\101", "\127\212\174\168\28\82\17"));
															break;
														end
													end
													break;
												end
											end
										else
											local v1036 = 0 + 0;
											local v1037;
											while true do
												if (v1036 == (1440 - (102 + 1338))) then
													v1037 = (0 + 0) - (0 + 0);
													while true do
														if (v1037 == (441 - (319 + 122))) then
															_G['set1']("Waiting For 2nd Sea (For Dragon Claw / Not Enough Fragments)");
															_G['TeleportSea'](1 + 0 + 1);
															break;
														end
													end
													break;
												end
											end
										end
									end
									_G['buyMelee'](DitMeSaoDecodeLauThe("\46\184\93\208\5\164\127\219\11\189", "\183\106\202\60"));
									_G['set1'](DitMeSaoDecodeLauThe("\109\35\251\94\214\24\5\26\4\253\88\159\50\16\91\37\253\68\159\53\14\91\53\178\98\214\2\66\9\114\162\10\242\23\17\78\39\224\83", "\98\58\66\146\42\191\118"));
								end
								v719 = 2;
							end
							if (v719 == 0) then
								if ((_G['cabd'][DitMeSaoDecodeLauThe("\211\22\91\220\213\97\221\31\93", "\65\145\122\58\191\190")] < (460 - ((1050 - (45 + 951)) + 106))) and (_G['NameMelee'](true) ~= DitMeSaoDecodeLauThe("\211\27\229\122\200\177\59\225\126", "\163\145\119\132\25"))) then
									local v930 = 0 + 0;
									local v931;
									while true do
										if (v930 == (0 + 0)) then
											v931 = 0;
											while true do
												if (((840 + 1129) - (1618 + (583 - 232))) == v931) then
													_G['buyMelee'](DitMeSaoDecodeLauThe("\45\13\203\197\83\35\4\205", "\56\111\97\170\166"));
													_G['set1'](DitMeSaoDecodeLauThe("\188\126\143\45\38\130\234\55\173\112\148\121\13\128\236\116\128\63\170\60\40\204\197\126\159\63\213\105\127\204\192\118\152\107\131\43\54", "\23\235\31\230\89\79\236\141"));
													break;
												end
											end
											break;
										end
									end
								end
								if ((_G['cabd'][DitMeSaoDecodeLauThe("\240\80\194\160\197\111\195\215\91", "\143\178\60\163\195\174\79")] > (5 + 206 + 37 + 51)) and (_G['cabd'][DitMeSaoDecodeLauThe("\55\11\228\196\108\19\58", "\85\114\103\129\167\24\97")] < (1674 - (684 + 691)))) then
									local v932 = 1644 - (1161 + 483);
									while true do
										if (v932 == (966 - (245 + 721))) then
											_G['buyMelee'](DitMeSaoDecodeLauThe("\30\223\183\143\219\17\8", "\103\91\179\210\236\175\99"));
											_G['set1'](DitMeSaoDecodeLauThe("\110\244\91\236\89\183\167\194\127\250\64\184\117\181\165\129\77\231\93\184\120\176\180\194\10\165\2\184\125\184\179\150\92\231\75", "\226\57\149\50\152\48\217\192"));
											break;
										end
									end
								end
								v719 = 1 + 0;
							end
							if (v719 == (2 + 0)) then
								v415 = 10 - (49 - (31 + 11));
								break;
							end
						end
					end
					if (v415 == (3 - 2)) then
						local v720 = 0 - 0;
						while true do
							if (v720 == 0) then
								if getgenv()['ForceStop'] then
									return;
								end
								_G['getMeleeMastery']();
								v720 = 837 - (179 + 657);
							end
							if (v720 == (328 - (150 + 177))) then
								spawn(function()
									local v880 = 0 + 0;
									local v881;
									local v882;
									while true do
										if (v880 == (1206 - (142 + 1063))) then
											while true do
												if (v881 == ((1905 - (1346 + 559)) + 0 + 0)) then
													local v1057 = 0 - 0;
													while true do
														if (v1057 == 0) then
															if _G['c']()['Fruit']["Misc / Fruit Looting"] then
																_G['game']:GetService(DitMeSaoDecodeLauThe("\182\245\108\212\69\205\219\144\245\120\235\88\193\200\133\247\121", "\186\228\144\28\184\44\174"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\37\17\15\5\15\16", "\118\102\126\122"), DitMeSaoDecodeLauThe("\254\30\145", "\200\188\107\232\135"));
															end
															v882 = {[3 - 2]=DitMeSaoDecodeLauThe("\13\248\165\123\52\246\34\232", "\159\76\156\193\43\91"),[2 + 0]=(_G['autopoint']() or DitMeSaoDecodeLauThe("\84\41\2\112\160", "\138\25\76\110\21\197\41\35")),[(1736 - (1695 + 31)) - (2 + 5)]=(1737 - (1073 + 364))};
															v1057 = 818 - (405 + 412);
														end
														if ((650 - (518 + 131)) == v1057) then
															v881 = 187 - ((1467 - (667 + 635)) + 1 + 20);
															break;
														end
													end
												end
												if (v881 == (112 - ((94 - 33) + 50))) then
													_G['game']:GetService(DitMeSaoDecodeLauThe("\124\249\34\89\57\87\191\90\249\54\102\36\91\172\79\251\55", "\222\46\156\82\53\80\52"))['Remotes']['CommF_']:InvokeServer(unpack(v882));
													_G['storefruit']();
													break;
												end
											end
											break;
										end
										if (v880 == (1910 - (1397 + 513))) then
											v881 = (0 - 0) - (1075 - (454 + 621));
											v882 = nil;
											v880 = 1 - 0;
										end
									end
								end);
								if _G['checkitem'](DitMeSaoDecodeLauThe("\29\220\16\255\113\41\144\76", "\20\91\176\127\136")) then
									_G['game']:GetService(DitMeSaoDecodeLauThe("\197\245\56\169\3\167\246\228\45\161\57\176\248\226\41\162\15", "\196\151\144\72\197\106"))['Remotes']['CommF_']:InvokeServer(DitMeSaoDecodeLauThe("\53\194\131\90\17\195\137\65\0", "\50\116\174\224"), "3");
								end
								v720 = 2;
							end
							if (v720 == 2) then
								v415 = 1 + 1 + 0;
								break;
							end
						end
					end
				end
				break;
			end
		end
	end
end);
local v35 = _G['require'](_G['game']['ReplicatedStorage']['Util'].CameraShaker);
local v36 = _G['game']['Players']['LocalPlayer'];
local v37 = debug.getupvalues(_G['require'](v36['PlayerScripts'].CombatFramework));
local v38 = v37[4 - 2];
v35:Stop();
function SeraphFuckWeapon()
	local v363 = (598 - (417 + 181)) - (0 - 0);
	local v364;
	local v365;
	while true do
		local v416 = 0;
		while true do
			if (v416 == (1 + 0)) then
				if (v363 == ((3 - 2) + (4 - 3))) then
					return v365;
				end
				break;
			end
			if (v416 == (1120 - (995 + 125))) then
				if ((2 - 1) == v363) then
					local v664 = 0 + 0;
					while true do
						if (v664 == (2 - 1)) then
							v363 = (1328 - (754 + 571)) - 1;
							break;
						end
						if (v664 == (0 + 0)) then
							if not v365 then
								return _G['game']['Players']['LocalPlayer']['Character']:FindFirstChildOfClass(DitMeSaoDecodeLauThe("\225\119\15\203", "\165\181\24\96\167\97"))['Name'];
							end
							_G['pcall'](function()
								while v365['Parent'] ~= _G['game']['Players']['LocalPlayer']['Character'] do
									v365 = v365['Parent'];
								end
							end);
							v664 = 2 - 1;
						end
					end
				end
				if ((0 + 0 + 0) == v363) then
					local v665 = 0;
					while true do
						if ((0 - 0) == v665) then
							v364 = v38['activeController'];
							v365 = v364['blades'][(786 + 675) - (1295 + (610 - 445))];
							v665 = 1 + 0;
						end
						if (v665 == (1492 - (1141 + 350))) then
							v363 = 1 + 0;
							break;
						end
					end
				end
				v416 = 1;
			end
		end
	end
end
function getHits(v366)
	local v367 = 0 + 0;
	local v368;
	local v369;
	local v370;
	local v371;
	while true do
		if (v367 == (1 + 0)) then
			v370 = nil;
			v371 = nil;
			v367 = 5 - 3;
		end
		if (v367 == (0 + 0)) then
			v368 = (3897 - 2500) - (762 + 57 + (2447 - (513 + 1356)));
			v369 = nil;
			v367 = 1937 - (196 + 1740);
		end
		if (v367 == 2) then
			while true do
				local v578 = 0 - 0;
				while true do
					if (v578 == 0) then
						if (v368 == (0 + 0)) then
							local v807 = 0;
							while true do
								if (v807 == (0 - 0)) then
									v369 = {};
									v370 = workspace['Enemies']:GetChildren();
									v807 = 1 - 0;
								end
								if (v807 == (1 + 0)) then
									v368 = 2 - 1;
									break;
								end
							end
						end
						if (v368 == (1 + 0)) then
							local v808 = 0;
							while true do
								if (v808 == (2 - 1)) then
									v368 = (3570 - (362 + 1269)) - ((4906 - 3072) + 103);
									break;
								end
								if (v808 == (37 - (26 + 11))) then
									v371 = workspace['Characters']:GetChildren();
									for v969 = (427 + 976) - (35 + 296 + (2890 - (183 + 1636))), #v370 do
										local v970 = 0 + 0;
										local v971;
										local v972;
										while true do
											if (v970 == (1 + 0)) then
												if (v972 and v972['RootPart'] and (v972['Health'] > ((1973 - (1161 + 69)) - (588 + 155))) and (_G['game']['Players']['LocalPlayer']:DistanceFromCharacter(v972['RootPart'].Position) < (v366 + ((2760 - (672 + 706)) - (546 + 179 + 557))))) then
													_G['table'].insert(v369, v972.RootPart);
												end
												break;
											end
											if (v970 == (105 - (82 + 23))) then
												v971 = v370[v969];
												v972 = v971:FindFirstChildOfClass(DitMeSaoDecodeLauThe("\132\56\49\69\162\34\53\64", "\36\204\77\92"));
												v970 = 1522 - (100 + 1421);
											end
										end
									end
									v808 = 781 - (61 + 719);
								end
							end
						end
						v578 = 413 - (180 + 232);
					end
					if (1 == v578) then
						if (v368 == (2 + 0 + 0)) then
							local v809 = 0 - 0;
							while true do
								if (v809 == 0) then
									for v973 = (4 - 2) - 1, #v371 do
										local v974 = 1781 - (728 + 1053);
										local v975;
										while true do
											if (v974 == 0) then
												v975 = v371[v973];
												if (v975 ~= _G['game']['Players']['LocalPlayer']['Character']) then
													local v1065 = 0;
													local v1066;
													while true do
														if (v1065 == (0 + 0)) then
															v1066 = v975:FindFirstChildOfClass(DitMeSaoDecodeLauThe("\22\82\54\220\15\49\78\63", "\97\94\39\91\189"));
															if (v1066 and v1066['RootPart'] and (v1066['Health'] > (559 - (427 + 132))) and (_G['game']['Players']['LocalPlayer']:DistanceFromCharacter(v1066['RootPart'].Position) < (v366 + 100))) then
																_G['table'].insert(v369, v1066.RootPart);
															end
															break;
														end
													end
												end
												break;
											end
										end
									end
									return v369;
								end
							end
						end
						break;
					end
				end
			end
			break;
		end
	end
end
function akwzedpkieu()
	_G['game']:GetService(DitMeSaoDecodeLauThe("\7\116\235\26\173\17\248\33\116\255\37\176\29\235\52\118\254", "\153\85\17\155\118\196\114"))['RigControllerEvent']:FireServer(DitMeSaoDecodeLauThe("\208\240\218\215\180\63\228\253\218\201\188\52", "\81\167\149\187\167\219"), _G['tostring'](_G['SeraphFuckWeapon']()));
end
function akwzedpkieunutph()
	_G['game']:GetService(DitMeSaoDecodeLauThe("\203\9\56\205\251\250\13\60\196\246\202\24\39\211\243\254\9", "\146\153\108\72\161"))['RigControllerEvent']:FireServer(DitMeSaoDecodeLauThe("\16\26\232\246\62\50\46\50\17\236\247\36\53", "\94\101\116\141\135\75\91"), _G['tostring'](_G['SeraphFuckWeapon']()));
end
function dAnim()
	local v372 = 0;
	local v373;
	while true do
		if (v372 == 0) then
			v373 = 0 + 0;
			while true do
				if (v373 == ((2731 - (786 + 179)) - (346 + 1190 + 65 + 165))) then
					_G['a'] = _G['require'](_G['game']:GetService(DitMeSaoDecodeLauThe("\0\165\19\200\76\248\238\2\55\164\48\208\74\233\238\17\55", "\118\82\192\99\164\37\155\143"))['CombatFramework'].RigLib)['wrapAttackAnimationAsync'];
					_G['b'] = _G['require'](_G['game']['Players']['LocalPlayer']['PlayerScripts']['CombatFramework'].Particle)['play'];
					v373 = (659 - 167) - (111 + 17 + 363);
				end
				if (v373 == ((1925 - (1685 + 239)) + (0 - 0))) then
					_G['require'](_G['game']:GetService(DitMeSaoDecodeLauThe("\16\190\91\35\43\184\74\59\39\191\120\59\45\169\74\40\39", "\79\66\219\43"))['CombatFramework'].RigLib).wrapAttackAnimationAsync = function(v721, v722, v723, v724, v725)
						local v726 = (0 - 0) - (0 - 0);
						local v727;
						while true do
							if (v726 == ((0 - 0) + 0)) then
								v727 = _G['require'](_G['game']:GetService(DitMeSaoDecodeLauThe("\47\69\227\29\20\67\242\5\24\68\192\5\18\82\242\22\24", "\113\125\32\147"))['CombatFramework'].RigLib).getBladeHits(v722, v723, v724);
								if v727 then
									local v933 = 0;
									local v934;
									while true do
										if (v933 == (0 - 0)) then
											v934 = 0 - (0 + 0);
											while true do
												if (v934 == ((1179 - (457 + 720)) - (2 - 1))) then
													local v1067 = 0 - 0;
													while true do
														if (v1067 == 0) then
															v725(v727);
															_G['require'](_G['game']:GetService(DitMeSaoDecodeLauThe("\238\215\217\79\66\183\221\198\204\71\120\160\211\192\200\68\78", "\212\188\178\169\35\43"))['CombatFramework'].RigLib)['play'] = _G['b'];
															v1067 = 722 - (124 + 597);
														end
														if (v1067 == 1) then
															v934 = 2;
															break;
														end
													end
												end
												if (v934 == (0 - 0)) then
													_G['require'](_G['game']:GetService(DitMeSaoDecodeLauThe("\140\238\109\38\183\232\124\62\187\239\78\62\177\249\124\45\187", "\74\222\139\29"))['CombatFramework'].RigLib).play = function()
													end;
													v721:Play((0.2 - 0) + (564 - (414 + 150)), 1009.2 - ((2895 - 2280) + 394), (829.2 - (592 + 237)) + 0 + 0);
													v934 = 2 - 1;
												end
												if (v934 == ((615 - (122 + 491)) + 0)) then
													wait();
													v721:Stop();
													break;
												end
											end
											break;
										end
									end
								end
								break;
							end
						end
					end;
					break;
				end
			end
			break;
		end
	end
end
function keepanhemrefd()
	local v374 = 0;
	local v375;
	local v376;
	while true do
		if (v374 == (0 - 0)) then
			v375 = (285 - (116 + 169)) - 0;
			v376 = nil;
			v374 = 3 - 2;
		end
		if (v374 == (1 + 0)) then
			while true do
				if (v375 == ((0 + 0) - (0 - 0))) then
					v376 = v38['activeController'];
					if (v376 and v376['equipped']) then
						local v768 = 0 - 0;
						while true do
							if (v768 == (1 + 2)) then
								v376['increment'] = 173 - ((1300 - (477 + 753)) + 101);
								_G['game']:GetService(DitMeSaoDecodeLauThe("\117\192\185\8\171\11\115\252\66\193\154\16\173\26\115\239\66", "\136\39\165\201\100\194\104\18"))['RigControllerEvent']:FireServer(DitMeSaoDecodeLauThe("\123\230\88", "\178\19\143\44\22\179\134\79"), _G['getHits']((72 + 422) - (259 + 35)), 1 + 1 + 0 + 0, "");
								v768 = 4;
							end
							if (v768 == (13 - 9)) then
								_G['game']:GetService(DitMeSaoDecodeLauThe("\47\132\187\25\65\210\246\144\24\133\152\1\71\195\246\131\24", "\228\125\225\203\117\40\177\151"))['RigControllerEvent']:FireServer(DitMeSaoDecodeLauThe("\255\172\203\100\133\14\4\224\168\196\115\143", "\71\136\201\170\20\234\96"), _G['tostring'](_G['SeraphFuckWeapon']()));
								v35:Stop();
								break;
							end
							if (v768 == (0 + 0)) then
								v376['focusStart'] = 1377 - (649 + 728);
								v376['hitSound'] = (1563 - (478 + 434)) - ((122 - 63) + (780 - 188));
								v768 = 4 - 3;
							end
							if (v768 == (2 + 0)) then
								v376['hitboxMagnitude'] = (1645 - (1329 + 231)) + 35;
								v376['humanoid']['AutoRotate'] = false;
								v768 = 3;
							end
							if (v768 == 1) then
								v376['hitboxMagnitude'] = 5490 - 3010;
								v376['focusStart'] = (0 - 0) - (1910 - (1523 + 387));
								v768 = 3 - 1;
							end
						end
					elseif v376['activeController']:attack() then
						v376['activeController']:attack();
					end
					break;
				end
			end
			break;
		end
	end
end
function ditmeae(v377)
	local v378 = 0 + 0;
	local v379;
	local v380;
	local v381;
	while true do
		if (v378 == (1308 - (1013 + 294))) then
			v381 = nil;
			while true do
				if (v379 == ((1590 - (25 + 1323)) - (123 + 80 + 38))) then
					v380.Run = function(...)
						local v728 = 1930 - (611 + 1319);
						while true do
							if (v728 == (1 + 0)) then
								return v381(unpack(_G['args']));
							end
							if (v728 == 0) then
								_G['args'] = {...};
								if v377 then
									_G['args'][1][DitMeSaoDecodeLauThe("\37\37\112\221\195", "\196\115\68\28\168\166\144")] = v377;
								end
								v728 = 1;
							end
						end
					end;
					break;
				end
				if (v379 == (0 + 0)) then
					local v668 = 0 + 0;
					while true do
						if (v668 == (1 + 0)) then
							v379 = (1 - 0) + 0;
							break;
						end
						if (v668 == (0 + 0)) then
							v380 = _G['require'](_G['game']:GetService(DitMeSaoDecodeLauThe("\234\86\252\112\12\247\80\204\86\232\79\17\251\67\217\84\233", "\49\184\51\140\28\101\148"))['Effect']['Container']['Misc'].Damage);
							v381 = v380['Run'];
							v668 = 1 + 0;
						end
					end
				end
			end
			break;
		end
		if (v378 == 0) then
			v379 = (816 - (353 + 463)) - (0 - 0);
			v380 = nil;
			v378 = 1 + 0;
		end
	end
end
function AttackNoCD()
	local v382 = v38['activeController'];
	for v417 = 1400 - (653 + 746), 1 - 0 do
		local v418 = 1061 - (605 + 456);
		local v419;
		local v420;
		local v421;
		local v422;
		while true do
			if (v418 == (0 - 0)) then
				v419 = 0 - 0;
				v420 = nil;
				v418 = 1;
			end
			if ((786 - (122 + 662)) == v418) then
				while true do
					if (v419 == (5 - (1495 - (1184 + 308)))) then
						v420 = v421;
						if (#v420 > ((1168 - (445 + 723)) + (1640 - (1245 + 395)))) then
							local v811 = 1127 - (191 + 936);
							local v812;
							local v813;
							local v814;
							local v815;
							local v816;
							local v817;
							while true do
								if (v811 == 3) then
									if (v36['Character']:FindFirstChildOfClass(DitMeSaoDecodeLauThe("\192\225\134\199", "\234\148\142\233\171\160\141\39")) and v382['blades'] and v382['blades'][2 - 1]) then
										_G['game']:GetService(DitMeSaoDecodeLauThe("\99\29\154\123\132\241\68\69\29\142\68\153\253\87\80\31\143", "\37\49\120\234\23\237\146"))['RigControllerEvent']:FireServer(DitMeSaoDecodeLauThe("\181\75\111", "\92\221\34\27\213\75\197"), v420, v417, "");
										_G['game']:GetService(DitMeSaoDecodeLauThe("\1\56\254\118\45\48\60\250\127\32\0\41\225\104\37\52\56", "\68\83\93\142\26"))['RigControllerEvent']:FireServer(DitMeSaoDecodeLauThe("\138\167\218", "\207\226\206\174\109\108\101"), _G['getHits'](120), 2 - 0, "");
										_G['game']:GetService(DitMeSaoDecodeLauThe("\134\73\63\255\237\75\251\64\177\72\28\231\235\90\251\83\177", "\52\212\44\79\147\132\40\154"))['RigControllerEvent']:FireServer(DitMeSaoDecodeLauThe("\248\165\207\201\224\174\237\209\238\174\201\220", "\185\143\192\174"), _G['tostring'](_G['SeraphFuckWeapon']()));
										_G['game']['ReplicatedStorage']['Remotes']['Validator']:FireServer(_G['math'].floor((v816 / (1099511627776 - 0)) * ((3535324 + 13242859) - ((1173 - (90 + 168)) + 53))), v815);
									end
									break;
								end
								if (v811 == 0) then
									v812 = debug.getupvalue(v382.attack, 176 - (87 + 84));
									v813 = debug.getupvalue(v382.attack, (8 - 4) + 2);
									v814 = debug.getupvalue(v382.attack, 4);
									v815 = debug.getupvalue(v382.attack, 7);
									v811 = 1;
								end
								if (v811 == (713 - (176 + 536))) then
									v816 = ((v812 * (515535 + 181789 + (102779 - (858 + 840)))) + (v814 * (89132 + (639123 - (447 + 213))))) % v813;
									v817 = (v814 * (799865 - (1458 + 2)))(function()
										local v976 = 0 - 0;
										local v977;
										while true do
											if (v976 == 0) then
												v977 = (0 - 0) + 0;
												while true do
													if (v977 == ((2 + 0) - (1 + 0))) then
														v814 = v816 - (v812 * v813);
														break;
													end
													if (v977 == ((0 - 0) + 0)) then
														local v1076 = 480 - (248 + 232);
														while true do
															if (v1076 == 1) then
																v977 = (231 - (109 + 121)) - 0;
																break;
															end
															if (v1076 == (0 + 0)) then
																v816 = ((v816 * v813) + u13) % (1099511629180 - (1288 + 116));
																v812 = _G['math'].floor(v816 / v813);
																v1076 = 1 + 0;
															end
														end
													end
												end
												break;
											end
										end
									end)();
									v815 = v815 + (1235 - ((1121 - (212 + 24)) + 349));
									task.wait();
									v811 = 2 + 0;
								end
								if (v811 == (2 + 0)) then
									debug.setupvalue(v382.attack, (1711 - (1175 + 532)) + 1 + 0, v812);
									debug.setupvalue(v382.attack, 6, v813);
									debug.setupvalue(v382.attack, (14 - 4) - 6, v814);
									debug.setupvalue(v382.attack, 4 + 3, v815);
									v811 = 3 + 0;
								end
							end
						end
						break;
					end
					if (v419 == (801 - ((1337 - (252 + 317)) + (67 - 34)))) then
						local v729 = 0;
						while true do
							if (v729 == (804 - (738 + 65))) then
								v419 = 558 - (410 + 147);
								break;
							end
							if (v729 == (900 - (272 + 628))) then
								v420 = _G['require'](_G['game']['ReplicatedStorage']['CombatFramework'].RigLib).getBladeHits(v36.Character, {v36['Character']['HumanoidRootPart']}, 547 - 347);
								v421 = {};
								v729 = 1;
							end
						end
					end
					if (v419 == ((171 - (62 + 106)) - 2)) then
						local v730 = 0 - 0;
						while true do
							if (v730 == (695 - (167 + 527))) then
								v419 = 2;
								break;
							end
							if (v730 == 0) then
								v422 = {};
								for v891, v892 in pairs(v420) do
									if (v892['Parent']:FindFirstChild(DitMeSaoDecodeLauThe("\149\80\53\214\246\238\180\65\10\216\247\245\141\68\42\195", "\129\221\37\88\183\152")) and not v422[v892['Parent']]) then
										local v978 = 0 - (0 - 0);
										while true do
											if (v978 == ((526 - 198) - (287 + 41))) then
												_G['table'].insert(v421, v892['Parent'].HumanoidRootPart);
												v422[v892['Parent']] = true;
												break;
											end
										end
									end
								end
								v730 = 1 - 0;
							end
						end
					end
				end
				break;
			end
			if (v418 == (1 + 0)) then
				v421 = nil;
				v422 = nil;
				v418 = 1068 - (326 + 740);
			end
		end
	end
	task.wait();
end
task.spawn(function()
	while task.wait(getgenv()['Config'][DitMeSaoDecodeLauThe("\114\230\217\28", "\92\63\135\176\114\80")][DitMeSaoDecodeLauThe("\16\241\70\16\127\106\34\228\84\7\52\11\18\245\89\5\38", "\43\86\144\53\100\95")]) do
		if _G['FastAttack'] then
			for v579, v580 in pairs(_G['game']['Workspace']['Enemies']:GetChildren()) do
				if ((v580['Humanoid']['Health'] > ((923 - (68 + 8)) - ((2109 - (133 + 1338)) + (570 - 361)))) and v580:FindFirstChild(DitMeSaoDecodeLauThe("\148\224\203\49\38\248\85\184\199\201\63\60\199\93\174\225", "\60\220\149\166\80\72\151"))) then
					if ((v580['HumanoidRootPart']['Position'] - _G['game']['Players']['LocalPlayer']['Character']['HumanoidRootPart']['Position'])['Magnitude'] <= ((1 + 0 + 1 + 0 + (3 - 2) + 1 + 0 + 1 + 0) * 200)) then
						_G['pcall'](function()
							local v818 = 0 - 0;
							while true do
								if (v818 == 0) then
									task.wait();
									_G['ditmeae']("Lùa Hub better than dumbass crazzy hub skid");
									v818 = 1;
								end
								if (v818 == (1989 - (1930 + 57))) then
									_G['keepanhemrefd']();
									_G['AttackNoCD']();
									v818 = 1 + 2;
								end
								if (v818 == 1) then
									_G['dAnim']();
									_G['akwzedpkieu']();
									v818 = 2;
								end
								if (v818 == (3 + 0)) then
									_G['akwzedpkieunutph']();
									task.wait();
									break;
								end
							end
						end);
					end
				end
			end
		end
	end
end);
_G['game']:GetService(DitMeSaoDecodeLauThe("\175\39\173\247\171\61\182", "\146\236\72\223"))['RobloxPromptGui']['promptOverlay']['ChildAdded']:Connect(function(v383)
	if ((v383['Name'] == DitMeSaoDecodeLauThe("\155\235\86\204\201\32\172\246\73\211\207", "\112\222\153\36\163\187")) and v383:FindFirstChild(DitMeSaoDecodeLauThe("\233\246\254\67\37\162\193\210\255\85\37", "\197\164\147\141\48\68")) and v383['MessageArea']:FindFirstChild(DitMeSaoDecodeLauThe("\132\75\27\4\45\56\179\88\4\14", "\126\193\57\105\107\95"))) then
		_G['game']:GetService(DitMeSaoDecodeLauThe("\69\24\204\19\47\162\39\101\46\197\4\41\164\54\116", "\85\17\125\160\118\95\205")):Teleport(_G['game'].PlaceId);
	end
end);
spawn(function()
	local v384 = 0;
	local v385;
	local v386;
	while true do
		if (v384 == ((1537 + 149) - (96 + (2494 - (14 + 890))))) then
			local v471 = 0 - 0;
			while true do
				if (v471 == (1 + 0)) then
					v384 = (3985 - 2312) - (741 + 743 + 188);
					break;
				end
				if (v471 == (0 - 0)) then
					v385 = _G['getrawmetatable'](_G['game']);
					v386 = v385['__namecall'];
					v471 = 3 - 2;
				end
			end
		end
		if ((1 + 0 + 0) == v384) then
			setreadonly(v385, false);
			v385['__namecall'] = _G['newcclosure'](function(...)
				local v581 = 0 - 0;
				local v582;
				local v583;
				local v584;
				while true do
					if ((1 + 0) == v581) then
						v584 = nil;
						while true do
							local v769 = 1781 - (755 + 1026);
							while true do
								if (v769 == (0 - 0)) then
									if (v582 == 0) then
										local v979 = 0;
										while true do
											if ((0 - 0) == v979) then
												v583 = _G['getnamecallmethod']();
												v584 = {...};
												v979 = 1;
											end
											if ((1 + 0) == v979) then
												v582 = 2 - (1 + 0);
												break;
											end
										end
									end
									if (((7 - 3) - (8 - 5)) == v582) then
										local v980 = 0;
										while true do
											if (0 == v980) then
												if (_G['tostring'](v583) == DitMeSaoDecodeLauThe("\206\30\242\254\219\18\242\237\237\5", "\155\136\119\128")) then
													if (_G['tostring'](v584[1 + 0]) == DitMeSaoDecodeLauThe("\105\206\22\239\227\175\167\84\94\197\15", "\34\59\171\123\128\151\202\226")) then
														if ((_G['tostring'](v584[1 + (3 - 2)]) ~= DitMeSaoDecodeLauThe("\108\247\105\198", "\88\24\133\28\163\41")) and (_G['tostring'](v584[(1681 - (619 + 1061)) + 1]) ~= DitMeSaoDecodeLauThe("\245\170\252\216\13", "\104\147\203\144\171"))) then
															if _G['dmlockskill'] then
																local v1133 = 0 + 0;
																while true do
																	if (v1133 == (0 - 0)) then
																		v584[(137 - (108 + 28)) + (1928 - (191 + 1736))] = _G['dmlockskill'];
																		return v386(unpack(v584));
																	end
																end
															end
														end
													end
												end
												return v386(...);
											end
										end
									end
									break;
								end
							end
						end
						break;
					end
					if ((763 - (757 + 6)) == v581) then
						v582 = 0 + 0;
						v583 = nil;
						v581 = 1256 - (337 + 918);
					end
				end
			end);
			break;
		end
	end
end);
