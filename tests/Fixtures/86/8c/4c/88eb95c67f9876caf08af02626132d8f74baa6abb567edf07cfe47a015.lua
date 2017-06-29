
BugGrabberDB = {
	["stopnag"] = 50001,
	["throttle"] = true,
	["limit"] = 50,
	["errors"] = {
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'cargBags_Nivaya' tried to call the protected function 'PickupContainerItem()'.",
			["time"] = "2017/04/09 12:52:25",
			["locals"] = "",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `PickupContainerItem'\nInterface\\AddOns\\cargBags_Nivaya\\style.lua:738: in function <Interface\\AddOns\\cargBags_Nivaya\\style.lua:735>",
			["session"] = 1696,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\Tongues\\comm.lua:198: bad argument #1 to 'random' (interval is empty)",
			["time"] = "2017/04/13 20:02:08",
			["stack"] = "[C]: in function `random'\nInterface\\AddOns\\Tongues\\comm.lua:198: in function `TonguesReceiveMessage'\nInterface\\AddOns\\Tongues\\comm.lua:22: in function `TonguesRecieveRawMessage'\nInterface\\AddOns\\Tongues\\comm.lua:7: in function <Interface\\AddOns\\Tongues\\comm.lua:7>\n[string \"safecall Dispatcher[4]\"]:4: in function <[string \"safecall Dispatcher[4]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[4]\"]:13: in function `?'\n...que\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\n...nterface\\AddOns\\GHI\\Libs\\AceComm-3.0\\AceComm-3.0-9.lua:261: in function <...nterface\\AddOns\\GHI\\Libs\\AceComm-3.0\\AceComm-3.0.lua:243>",
			["session"] = 1721,
			["counter"] = 10,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'nibRealUI' tried to call the protected function 'UIParent:SetScale()'.",
			["time"] = "2017/04/04 20:28:33",
			["locals"] = "",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `SetScale'\nInterface\\AddOns\\nibRealUI\\Core\\UIScaler.lua:42: in function `?'\n...que\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:145: in function <...que\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...que\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\n...ce\\AddOns\\BagSync\\libs\\AceEvent-3.0\\AceEvent-3.0-3.lua:120: in function <...ce\\AddOns\\BagSync\\libs\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 1745,
			["counter"] = 6,
		}, -- [3]
		{
			["message"] = "SendChatMessage(): Chat message must be UTF-8 text",
			["time"] = "2017/04/23 20:57:24",
			["locals"] = "(*temporary) = \"|cff1eff00|Hitem:10034::::::::60:72::::::|h[Tuxedo Shirt]|h|r|cffffffff|Hitem:10035::::::::60:72::::::|h[Tuxedo Pants]|h|r|cffffffff|Hitem:6836::::::::60:72::::::|h[Dress Shoes]|h|r|cff0070ddppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp »\"\n(*temporary) = \"WHISPER\"\n(*temporary) = 7\n(*temporary) = \"Evs-ArgentDawn\"\n",
			["stack"] = "[C]: ?\n[C]: in function `SendChatMessage'\nInterface\\AddOns\\GHI\\UI\\GHI_LinksUI.lua:99: in function `SendChatMessage'\nInterface\\AddOns\\PhanxChat\\Core.lua:302: in function `SendChatMessage'\nInterface\\AddOns\\EmoteSplitter\\EmoteSplitter-1.2.8.lua:416: in function `CommitChat'\nInterface\\AddOns\\EmoteSplitter\\EmoteSplitter-1.2.8.lua:393: in function `SendChat'\nInterface\\AddOns\\EmoteSplitter\\EmoteSplitter-1.2.8.lua:223: in function <Interface\\AddOns\\EmoteSplitter\\EmoteSplitter.lua:200>\n(tail call): ?\nInterface\\FrameXML\\ChatFrame.lua:4075: in function `ChatEdit_SendText'\nInterface\\FrameXML\\ChatFrame.lua:4101: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 1771,
			["counter"] = 2,
		}, -- [4]
		{
			["message"] = "Interface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:835: attempt to compare number with nil",
			["time"] = "2017/04/14 19:45:02",
			["locals"] = "val1 = \"Captain\"\nval2 = \"On trial\"\n(*temporary) = 1\n(*temporary) = nil\n(*temporary) = \"attempt to compare number with nil\"\nrankTable = <table> {\n Bosun = 4\n Quartermistress = 2\n Surgeon = 5\n Master = 3\n Sailor = 6\n Carlton = 10\n - = 8\n OOC/ALT = 9\n Swabbie = 7\n Captain = 1\n}\n",
			["stack"] = "Interface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:835: in function <Interface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:833>\nInterface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:205: in function <Interface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:196>\n[C]: in function `sort'\nInterface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:235: in function <Interface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:215>",
			["session"] = 1772,
			["counter"] = 5,
		}, -- [5]
		{
			["message"] = "Interface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:835: attempt to compare nil with number",
			["time"] = "2017/04/24 23:07:49",
			["locals"] = "val1 = \"Quartermaster\"\nval2 = \"Surgeon\"\n(*temporary) = nil\n(*temporary) = 5\n(*temporary) = \"attempt to compare nil with number\"\nrankTable = <table> {\n Bosun = 4\n Quartermistress = 2\n On trial = 8\n Surgeon = 5\n Master = 3\n Sailor = 6\n Carlton = 10\n OOC/ALT = 9\n Swabbie = 7\n Captain = 1\n}\n",
			["stack"] = "Interface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:835: in function <Interface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:833>\nInterface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:205: in function <Interface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:196>\n[C]: in function `sort'\nInterface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:235: in function <Interface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:215>",
			["session"] = 1772,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'BadBoy' tried to call the protected function 'Search()'.",
			["time"] = "2017/04/28 12:15:43",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `Search'\nInterface\\AddOns\\BadBoy\\BadBoy-v7.2.60.lua:518: in function <Interface\\AddOns\\BadBoy\\BadBoy.lua:511>",
			["session"] = 1784,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "...nterface\\AddOns\\totalRP3\\core\\impl\\configuration.lua:80: Unknown config key: nameplates_enable",
			["time"] = "2017/05/09 20:47:30",
			["locals"] = "(*temporary) = false\n(*temporary) = \"Unknown config key: nameplates_enable\"\n",
			["stack"] = "[C]: ?\n...nterface\\AddOns\\totalRP3\\core\\impl\\configuration.lua:80: in function <...nterface\\AddOns\\totalRP3\\core\\impl\\configuration.lua:79>\n...ns\\totalRP3_KuiNameplates\\totalRP3_KuiNameplates-1.2.lua:75: in function `func'\nInterface\\AddOns\\Kui_Nameplates\\messages.lua:33: in function `DispatchMessage'\nInterface\\AddOns\\Kui_Nameplates\\nameplate.lua:74: in function `OnShow'\nInterface\\AddOns\\Kui_Nameplates\\nameplate.lua:68: in function `OnUnitAdded'\nInterface\\AddOns\\Kui_Nameplates\\addon.lua:62: in function `?'\nInterface\\AddOns\\Kui_Nameplates\\addon.lua:106: in function <Interface\\AddOns\\Kui_Nameplates\\addon.lua:103>",
			["session"] = 1818,
			["counter"] = 3,
		}, -- [8]
		{
			["message"] = "Interface\\AddOns\\totalRP3\\core\\impl\\locale\\locale_deDE.lua:28: '}' expected (to close '{' at line 24) near '='",
			["time"] = "2017/05/09 20:38:13",
			["locals"] = "",
			["stack"] = "",
			["session"] = 1821,
			["counter"] = 4,
		}, -- [9]
		{
			["message"] = "Interface\\AddOns\\totalRP3\\core\\impl\\locale\\locale_frFR.lua:27: '}' expected (to close '{' at line 22) near '='",
			["time"] = "2017/05/09 20:38:13",
			["locals"] = "",
			["stack"] = "",
			["session"] = 1821,
			["counter"] = 4,
		}, -- [10]
		{
			["message"] = "Interface\\AddOns\\totalRP3\\core\\impl\\locale\\locale_esES.lua:25: '}' expected (to close '{' at line 21) near '='",
			["time"] = "2017/05/09 20:38:13",
			["locals"] = "",
			["stack"] = "",
			["session"] = 1821,
			["counter"] = 4,
		}, -- [11]
		{
			["message"] = "Interface\\AddOns\\totalRP3\\core\\impl\\locale\\locale_esMX.lua:25: '}' expected (to close '{' at line 21) near '='",
			["time"] = "2017/05/09 20:38:13",
			["locals"] = "",
			["stack"] = "",
			["session"] = 1821,
			["counter"] = 4,
		}, -- [12]
		{
			["message"] = "Interface\\AddOns\\totalRP3\\core\\impl\\locale\\locale_zhCN.lua:24: '}' expected (to close '{' at line 20) near '='",
			["time"] = "2017/05/09 20:38:13",
			["locals"] = "",
			["stack"] = "",
			["session"] = 1821,
			["counter"] = 4,
		}, -- [13]
		{
			["message"] = "Interface\\AddOns\\totalRP3\\core\\impl\\locale\\locale_ruRU.lua:24: '}' expected (to close '{' at line 20) near '='",
			["time"] = "2017/05/09 20:38:13",
			["locals"] = "",
			["stack"] = "",
			["session"] = 1821,
			["counter"] = 4,
		}, -- [14]
		{
			["message"] = "Interface\\AddOns\\totalRP3\\core\\impl\\locale\\locale_ptBR.lua:24: '}' expected (to close '{' at line 20) near '='",
			["time"] = "2017/05/09 20:38:13",
			["locals"] = "",
			["stack"] = "",
			["session"] = 1821,
			["counter"] = 4,
		}, -- [15]
		{
			["message"] = "Interface\\AddOns\\totalRP3\\core\\impl\\locale\\locale_itIT.lua:24: '}' expected (to close '{' at line 20) near '='",
			["time"] = "2017/05/09 20:38:13",
			["locals"] = "",
			["stack"] = "",
			["session"] = 1821,
			["counter"] = 4,
		}, -- [16]
		{
			["message"] = "integer overflow attempting to store -1.#IND",
			["time"] = "2017/04/03 23:48:54",
			["locals"] = "(*temporary) = \"%s/%s (%d%%)\"\n(*temporary) = \"0\"\n(*temporary) = \"0\"\n(*temporary) = -1.#IND\n",
			["stack"] = "[C]: in function `format'\nInterface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:1445: in function `SetTooltip'\nInterface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:1708: in function `OnEnter'\nInterface\\AddOns\\nibRealUI\\Infobar\\Bar.lua:62: in function <Interface\\AddOns\\nibRealUI\\Infobar\\Bar.lua:47>",
			["session"] = 1823,
			["counter"] = 14,
		}, -- [17]
		{
			["message"] = "Interface\\AddOns\\Aurora\\AddOns\\Blizzard_TalentUI.lua:124: attempt to get length of local 'bonuses' (a nil value)",
			["time"] = "2017/06/04 11:38:28",
			["locals"] = "self = PlayerTalentFrameSpecialization {\n 0 = <userdata>\n previewSpec = 2\n disabled = false\n specButton2 = PlayerTalentFrameSpecializationSpecButton2 {\n }\n specButton3 = PlayerTalentFrameSpecializationSpecButton3 {\n }\n specButton1 = PlayerTalentFrameSpecializationSpecButton1 {\n }\n previewSpecCost = 0\n MainHelpButton = PlayerTalentFrameSpecializationTutorialButton {\n }\n spellsScroll = PlayerTalentFrameSpecializationSpellScrollFrame {\n }\n learnButton = PlayerTalentFrameSpecializationLearnButton {\n }\n playLearnAnim = false\n bg = <unnamed> {\n }\n specButton4 = PlayerTalentFrameSpecializationSpecButton4 {\n }\n}\nspec = nil\nplayerTalentSpec = 2\nshownSpec = 2\nid = nil\n_ = nil\n_ = nil\nicon = nil\nscrollChild = PlayerTalentFrameSpecializationSpellScrollFrameScrollChild {\n 0 = <userdata>\n description = PlayerTalentFrameSpecializationSpellScrollFrameScrollChildDescription {\n }\n primaryStat = <unnamed> {\n }\n specIcon = PlayerTalentFrameSpecializationSpellScrollFrameScrollChildSpecIcon {\n }\n scrollwork_bottomleft = bottom-scrollworkLeft {\n }\n abilityButton1 = PlayerTalentFrameSpecializationSpellScrollFrameScrollChildAbility1 {\n }\n specName = PlayerTalentFrameSpecializationSpellScrollFrameScrollChildSpecName {\n }\n ring = PlayerTalentFrameSpecializationSpellScrollFrameScrollChildRing {\n }\n roleIcon = PlayerTalentFrameSpecializationSpellScrollFrameScrollChildRoleIcon {\n }\n scrollwork_topleft = top-scrollworkLeft {\n }\n abilityButton2 = PlayerTalentFrameSpecializationSpellScrollFrameScrollChildAbility2 {\n }\n abilityButton3 = PlayerTalentFrameSpecializationSpellScrollFrameScrollChildAbility3 {\n }\n abilityButton6 = PlayerTalentFrameSpecializationSpellScrollFrameScrollChildAbility6 {\n }\n abilityButton5 = PlayerTalentFrameSpecializationSpellScrollFrameScrollChildAbility5 {\n }\n abilityButton4 = PlayerTalentFrameSpecializationSpellScrollFrameScrollChildAbility4 {\n }\n scrollwork_bottomright = bottom-scrollworkRight {\n }\n scrollwork_topright = top-scrollworkRight {\n }\n gradient = <unnamed> {\n }\n roleName = <unnamed> {\n }\n Seperator = <unnamed> {\n }\n}\nindex = 1\nbonuses = nil\n(*temporary) = 1\n(*temporary) = true\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to get length of local 'bonuses' (a nil value)\"\nF = <table> {\n CreateBG = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:131\n colourArrow = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:301\n colorTex = <function> defined @Interface\\AddOns\\!Aurora_RealUI\\!Aurora.lua:164\n ReskinPortraitFrame = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:609\n Reskin = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:180\n ReskinAtlas = <function> defined @Interface\\AddOns\\!Aurora_RealUI\\!Aurora.lua:178\n ReskinDropDown = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:314\n clearTex = <function> defined @Interface\\AddOns\\!Aurora_RealUI\\!Aurora.lua:172\n dummy = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:118\n ReskinNavBar = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:701\n ReskinFilterButton = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:691\n ReskinIcon = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:746\n ReskinArrow = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:443\n AddPlugin = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:758\n ReskinGarrisonPortrait = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:722\n ReskinStretchButton = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:677\n colourExpandOrCollapse = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:559\n CreateBDFrame = <function> defined @Interface\\AddOns\\!Aurora_RealUI\\!Aurora.lua:106\n clearExpandOrCollapse = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:566\n clearArrow = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:307\n ReskinTab = <function> defined @Interface\\AddOns\\Aurora\\aurora.lua:202\n SetBD = <function> defined @Interface\\AddOns\\Aurora\\auro",
			["stack"] = "Interface\\AddOns\\Aurora\\AddOns\\Blizzard_TalentUI.lua:124: in function <Interface\\AddOns\\Aurora\\AddOns\\Blizzard_TalentUI.lua:107>\n[C]: in function `PlayerTalentFrame_UpdateSpecFrame'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:510: in function `PlayerTalentFrame_Refresh'\n...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:409: in function <...rface\\AddOns\\Blizzard_TalentUI\\Blizzard_TalentUI.lua:400>",
			["session"] = 1897,
			["counter"] = 1,
		}, -- [18]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'nibRealUI' tried to call the protected function '<unnamed>:Hide()'.",
			["time"] = "2017/04/14 16:34:42",
			["locals"] = "",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `Hide'\nInterface\\FrameXML\\WorldMapActionButton.lua:58: in function `Clear'\nInterface\\FrameXML\\WorldMapActionButton.lua:67: in function `Refresh'\nInterface\\FrameXML\\WorldMapActionButton.lua:19: in function `SetMapAreaID'\nInterface\\FrameXML\\WorldMapFrame.lua:428: in function <Interface\\FrameXML\\WorldMapFrame.lua:390>\n[C]: ?\n[C]: in function `Hide'\nInterface\\FrameXML\\UIParent.lua:2404: in function `SetUIPanel'\nInterface\\FrameXML\\UIParent.lua:2431: in function `MoveUIPanel'\nInterface\\FrameXML\\UIParent.lua:2462: in function `HideUIPanel'\nInterface\\FrameXML\\UIParent.lua:2136: in function <Interface\\FrameXML\\UIParent.lua:2128>\n[C]: in function `SetAttribute'\nInterface\\FrameXML\\UIParent.lua:2930: in function `HideUIPanel'\nInterface\\FrameXML\\UIParent.lua:2896: in function `ToggleFrame'\nInterface\\FrameXML\\WorldMapFrame.lua:244: in function `ToggleWorldMap'\n[string \"TOGGLEWORLDMAP\"]:1: in function <[string \"TOGGLEWORLDMAP\"]:1>",
			["session"] = 1897,
			["counter"] = 8,
		}, -- [19]
		{
			["message"] = "...nterface\\AddOns\\Aurora\\FrameXML\\QueueStatusFrame.lua:113: bad argument #1 to 'pairs' (table expected, got nil)",
			["time"] = "2017/04/09 12:42:29",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"table expected, got nil\"\n = <function> defined =[C]:-1\n",
			["stack"] = "[C]: ?\n...nterface\\AddOns\\Aurora\\FrameXML\\QueueStatusFrame.lua:113: in function <...nterface\\AddOns\\Aurora\\FrameXML\\QueueStatusFrame.lua:109>\n[C]: in function `QueueStatusEntry_SetFullDisplay'\nInterface\\FrameXML\\QueueStatusFrame.lua:443: in function `QueueStatusEntry_SetUpLFG'\nInterface\\FrameXML\\QueueStatusFrame.lua:216: in function `QueueStatusFrame_Update'\nInterface\\FrameXML\\QueueStatusFrame.lua:149: in function <Interface\\FrameXML\\QueueStatusFrame.lua:148>",
			["session"] = 1898,
			["counter"] = 1236,
		}, -- [20]
		{
			["message"] = "...nterface\\AddOns\\Aurora\\FrameXML\\QueueStatusFrame.lua:20: attempt to index field 'StatusEntries' (a nil value)",
			["time"] = "2017/04/09 12:42:14",
			["locals"] = "self = QueueStatusFrame {\n 0 = <userdata>\n BorderTop = <unnamed> {\n }\n BorderBottomLeft = <unnamed> {\n }\n BorderTopRight = <unnamed> {\n }\n BorderLeft = <unnamed> {\n }\n BorderRight = <unnamed> {\n }\n statusEntriesPool = <table> {\n }\n Background = <unnamed> {\n }\n tex = <unnamed> {\n }\n BorderBottom = <unnamed> {\n }\n BorderBottomRight = <unnamed> {\n }\n BorderTopLeft = <unnamed> {\n }\n}\nentryIndex = 1\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index field 'StatusEntries' (a nil value)\"\npairs = <function> defined =[C]:-1\nC = <table> {\n defaults = <table> {\n }\n classcolours = <table> {\n }\n media = <table> {\n }\n is72 = true\n frames = <table> {\n }\n themes = <table> {\n }\n r = 0.78\n g = 0.61\n TOC = 70200\n b = 0.43\n}\ntinsert = <function> defined =[C]:-1\n",
			["stack"] = "...nterface\\AddOns\\Aurora\\FrameXML\\QueueStatusFrame.lua:20: in function <...nterface\\AddOns\\Aurora\\FrameXML\\QueueStatusFrame.lua:19>\n[C]: in function `QueueStatusFrame_GetEntry'\nInterface\\FrameXML\\QueueStatusFrame.lua:215: in function `QueueStatusFrame_Update'\nInterface\\FrameXML\\QueueStatusFrame.lua:149: in function <Interface\\FrameXML\\QueueStatusFrame.lua:148>",
			["session"] = 1898,
			["counter"] = 4196,
		}, -- [21]
		{
			["message"] = "...nterface\\AddOns\\Aurora\\FrameXML\\QueueStatusFrame.lua:103: bad argument #1 to 'pairs' (table expected, got nil)",
			["time"] = "2017/04/09 12:42:14",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"table expected, got nil\"\n = <function> defined =[C]:-1\n",
			["stack"] = "[C]: ?\n...nterface\\AddOns\\Aurora\\FrameXML\\QueueStatusFrame.lua:103: in function <...nterface\\AddOns\\Aurora\\FrameXML\\QueueStatusFrame.lua:101>\n[C]: in function `QueueStatusEntry_SetMinimalDisplay'\nInterface\\FrameXML\\QueueStatusFrame.lua:452: in function `QueueStatusEntry_SetUpLFG'\nInterface\\FrameXML\\QueueStatusFrame.lua:216: in function `QueueStatusFrame_Update'\nInterface\\FrameXML\\QueueStatusFrame.lua:149: in function <Interface\\FrameXML\\QueueStatusFrame.lua:148>",
			["session"] = 1898,
			["counter"] = 2940,
		}, -- [22]
		{
			["message"] = "Interface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:835: attempt to compare two nil values",
			["time"] = "2017/04/28 01:06:01",
			["locals"] = "val1 = \"Courier\"\nval2 = \"Not a member\"\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to compare two nil values\"\nrankTable = <table> {\n}\n",
			["stack"] = "Interface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:835: in function <Interface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:833>\nInterface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:205: in function <Interface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:196>\n[C]: in function `sort'\nInterface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:235: in function <Interface\\AddOns\\nibRealUI\\Infobar\\Blocks.lua:215>",
			["session"] = 1907,
			["counter"] = 15,
		}, -- [23]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'GHI' tried to call the protected function 'SetTargetClampingInsets()'.",
			["time"] = "2017/04/09 12:50:00",
			["locals"] = "",
			["stack"] = "Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:573>\n[C]: in function `SetTargetClampingInsets'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:234: in function `SetupClassNameplateBars'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:87: in function `OnNamePlateAdded'\n...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:44: in function <...e\\AddOns\\Blizzard_NamePlates\\Blizzard_NamePlates.lua:35>",
			["session"] = 1914,
			["counter"] = 31,
		}, -- [24]
		{
			["message"] = "...ace\\AddOns\\nibRealUI\\HuD\\UnitFrames\\Groups\\Arena-Arena.lua:93: attempt to index local 'opp' (a nil value)",
			["time"] = "2017/04/03 01:58:54",
			["locals"] = "self = <unnamed> {\n 0 = <userdata>\n icon = <unnamed> {\n }\n}\nevent = \"ARENA_OPPONENT_UPDATE\"\nunit = 6\nstatus = \"cleared\"\nnotVisible = \"Hide\"\nopp = nil\n(*temporary) = <function> defined @Interface\\AddOns\\nibRealUI_Init\\Init.lua:71\n(*temporary) = nil\n(*temporary) = \"Arena Opp Cleared\"\n(*temporary) = 6\n(*temporary) = nil\n(*temporary) = \"UnitFrames\"\n(*temporary) = <table> {\n numDuped = 0\n prevLine = \"Arena Opp Cleared     6     nil     \"\n}\n(*temporary) = \"Arena Opp Cleared     6     nil     \"\n(*temporary) = <function> defined @Interface\\AddOns\\nibRealUI_Init\\Libs\\LibTextDump-1.0\\LibTextDump-1.0.lua:296\n(*temporary) = <table> {\n numDuped = 0\n prevLine = \"Arena Opp Cleared     6     nil     \"\n}\n(*temporary) = \"Arena Opp Cleared     6     nil     \"\n(*temporary) = \"%H:%M:%S\"\n(*temporary) = false\n(*temporary) = LibTextDump-1.0_CopyFrame19 {\n 0 = <userdata>\n TitleText = LibTextDump-1.0_CopyFrame19TitleText {\n }\n portraitFrame = LibTextDump-1.0_CopyFrame19PortraitFrame {\n }\n TopTileStreaks = LibTextDump-1.0_CopyFrame19TopTileStreaks {\n }\n leftBorderBar = LibTextDump-1.0_CopyFrame19LeftBorder {\n }\n edit_box = <unnamed> {\n }\n Inset = LibTextDump-1.0_CopyFrame19Inset {\n }\n portrait = LibTextDump-1.0_CopyFrame19Portrait {\n }\n topBorderBar = LibTextDump-1.0_CopyFrame19TopBorder {\n }\n title = LibTextDump-1.0_CopyFrame19TitleText {\n }\n scrollArea = LibTextDump-1.0_CopyFrame19Scroll {\n }\n CloseButton = LibTextDump-1.0_CopyFrame19CloseButton {\n }\n topLeftCorner = LibTextDump-1.0_CopyFrame19TopLeftCorner {\n }\n Bg = LibTextDump-1.0_CopyFrame19Bg {\n }\n lineDummy = <unnamed> {\n }\n}\n(*temporary) = \"attempt to index local 'opp' (a nil value)\"\nUnitFrames = <table> {\n SetDefaultModuleLibraries = <function> defined @Interface\\AddOns\\Masque\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:398\n Enable = <function> defined @Interface\\AddOns\\Masque\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:325\n UnregisterAllEvents = <function> defined @Interface\\AddOns\\Masque\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:200\n PowerOverride = <function> defined @Interface\\AddOns\\nibRealUI\\HuD\\UnitFrames\\Shared.lua:473\n EnableModule = <function> defined @Interface\\AddOns\\Masque\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:363\n modules = <table> {\n }\n GetModule = <function> defined @Interface\\AddOns\\Masque\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:241\n IterateEmbeds = <function> defined @Interface\\AddOns\\Masque\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:473\n target = <function> defined @Interface\\AddOns\\nibRealUI\\HuD\\UnitFrames\\Units\\Target.lua:369\n defaultModuleLibraries = <table> {\n }\n textures = <table> {\n }\n HealthOverride = <function> defined @Interface\\AddOns\\nibRealUI\\HuD\\UnitFrames\\Shared.lua:341\n UpdateSteps = <function> defined @Interface\\AddOns\\nibRealUI\\HuD\\UnitFrames\\Shared.lua:243\n SetDefaultModulePrototype = <function> defined @Interface\\AddOns\\Masque\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:440\n db = <table> {\n }\n baseName = \"nibRealUI\"\n player = <function> defined @Interface\\AddOns\\nibRealUI\\HuD\\UnitFrames\\Units\\Player.lua:277\n name = \"nibRealUI_UnitFrames\"\n pet = <function> defined @Interface\\AddOns\\nibRealUI\\HuD\\UnitFrames\\Units\\Pet.lua:117\n IsEnabled = <function> defined @Interface\\AddOns\\Masque\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:482\n orderedModules = <table> {\n }\n focustarget = <function> defined @Interface\\AddOns\\nibRealUI\\HuD\\UnitFrames\\Units\\FocusTarget.lua:123\n DisableModule = <function> defined @Interface\\AddOns\\Masque\\Libs\\AceAddon-3.0\\AceAddon-3.0.lua:381\n RefreshUnits = <function> defined @Interface\\AddOns\\nibRealUI\\HuD\\UnitFrames\\UnitFrames.lua:51\n focus = <function> defined @Interface\\AddOns\\nibRealUI\\HuD\\UnitFrames\\Units\\Focus.lua:127\n AbrvName = <function> defined @Interface\\AddOns\\nibRealUI\\HuD\\UnitFrames\\UnitFrames.lua:28\n InitializeLayout = <function> defined @Interface\\AddOns\\nibRealUI\\HuD\\UnitFrames\\Shared.lua:671\n RegisterMessage = <function> defined @Interface\\AddOns\\Masque\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:116\n UnregisterMessage = <function> defined @Interface\\AddOns\\Masque\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:179\n SetHealthColor = <function> defined @In",
			["stack"] = "...ace\\AddOns\\nibRealUI\\HuD\\UnitFrames\\Groups\\Arena-Arena.lua:93: in function <...ace\\AddOns\\nibRealUI\\HuD\\UnitFrames\\Groups\\Arena.lua:56>",
			["session"] = 1944,
			["counter"] = 972,
		}, -- [25]
		{
			["message"] = "...erface\\AddOns\\Aurora\\AddOns\\Blizzard_Collections-1.0.lua:542: attempt to index field 'borderLeft' (a nil value)",
			["time"] = "2017/06/14 18:04:49",
			["locals"] = "r = 0.78\ng = 0.61\nb = 0.43\nPetJournal = PetJournal {\n 0 = <userdata>\n LeftInset = PetJournalLeftInset {\n }\n FindBattleButton = PetJournalFindBattle {\n }\n loadoutBorder = PetJournalLoadoutBorder {\n }\n listScroll = PetJournalListScrollFrame {\n }\n SpellSelect = PetJournalSpellSelect {\n }\n RightInset = PetJournalRightInset {\n }\n SummonButton = PetJournalSummonButton {\n }\n PetCard = PetJournalPetCard {\n }\n AchievementStatus = PetJournalAchievementStatus {\n }\n PetCount = <unnamed> {\n }\n Loadout = PetJournalLoadout {\n }\n MainHelpButton = PetJournalTutorialButton {\n }\n petOptionsMenu = PetJournalPetOptionsMenu {\n }\n PetCardInset = PetJournalPetCardInset {\n }\n HealPetButton = PetJournalHealPetButton {\n }\n searchBox = PetJournalSearchBox {\n }\n}\nMountJournal = MountJournal {\n 0 = <userdata>\n MountDisplay = <unnamed> {\n }\n searchBox = MountJournalSearchBox {\n }\n SummonRandomFavoriteButton = MountJournalSummonRandomFavoriteButton {\n }\n MountCount = <unnamed> {\n }\n mountOptionsMenu = MountJournalMountOptionsMenu {\n }\n RightInset = <unnamed> {\n }\n ListScrollFrame = MountJournalListScrollFrame {\n }\n MountButton = MountJournalMountButton {\n }\n LeftInset = <unnamed> {\n }\n}\nscrollFrames = <table> {\n 1 = <table> {\n }\n 2 = <table> {\n }\n}\nupdateMountScroll = <function> defined @Interface\\AddOns\\Aurora\\AddOns\\Blizzard_Collections.lua:119\nupdatePetScroll = <function> defined @Interface\\AddOns\\Aurora\\AddOns\\Blizzard_Collections.lua:144\ncard = PetJournalPetCard {\n 0 = <userdata>\n CannotBattleText = <unnamed> {\n }\n SpeedFrame = PetJournalPetCardSpeedFrame {\n }\n PetInfo = PetJournalPetCardPetInfo {\n }\n AbilitiesBG3 = PetJournalPetCardAbilitiesBG3 {\n }\n AbilitiesBG1 = PetJournalPetCardAbilitiesBG1 {\n }\n AbilitiesBG2 = PetJournalPetCardAbilitiesBG2 {\n }\n spell6 = PetJournalPetCardSpell6 {\n }\n petIndex = 1\n spell5 = PetJournalPetCardSpell5 {\n }\n shadows = PetJournalPetCardShadows {\n }\n displayID = 2955\n petID = \"BattlePet-0-0000079E30F4\"\n speciesID = 74\n PowerFrame = PetJournalPetCardPowerFrame {\n }\n HealthFrame = PetJournalPetCardHealthFrame {\n }\n QualityFrame = PetJournalPetCardQualityFrame {\n }\n spell1 = PetJournalPetCardSpell1 {\n }\n xpBar = PetJournalPetCardXPBar {\n }\n spell4 = PetJournalPetCardSpell4 {\n }\n spell3 = PetJournalPetCardSpell3 {\n }\n modelScene = <unnamed> {\n }\n spell2 = PetJournalPetCardSpell2 {\n }\n TypeInfo = PetJournalPetCardTypeInfo {\n }\n}\nToyBox = ToyBox {\n PagingFrame = <unnamed> {\n }\n searchBox = <unnamed> {\n }\n newToys = <table> {\n }\n progressBar = <unnamed> {\n }\n iconsFrame = <unnamed> {\n }\n OnPageChanged = <function> defined @Interface\\AddOns\\Blizzard_Collections\\Blizzard_ToyBox.lua:15\n favoriteHelpBox = <unnamed> {\n }\n mousewheelPagingHelpBox = <unnamed> {\n }\n toyOptionsMenu = ToyBoxToyOptionsMenu {\n }\n 0 = <userdata>\n firstCollectedToyID = 0\n}\ntoyIcons = <unnamed> {\n 0 = <userdata>\n ShadowCornerTopRight = <unnamed> {\n }\n BackgroundTile = <unnamed> {\n }\n spellButton10 = <unnamed> {\n }\n watermark = <unnamed> {\n }\n BGCornerBottomRight = <unnamed> {\n }\n InsetBorderTopLeft = ToyBoxInsetTopLeftCorner {\n }\n OverlayShadowTop = <unnamed> {\n }\n spellButton6 = <unnamed> {\n }\n OverlayShadowTopRight = <unnamed> {\n }\n ShadowCornerLeft = <unnamed> {\n }\n InsetBorderRight = ToyBoxInsetRightBorder {\n }\n spellButton18 = <unnamed> {\n }\n spellButton17 = <unnamed> {\n }\n BGCornerTopLeft = <unnamed> {\n }\n BGCornerFilagreeBottomRight = <unnamed> {\n }\n spellButton16 = <unnamed> {\n }\n BGCornerFilagreeBottomLeft = <unnamed> {\n }\n spellButton15 = <unnamed> {\n }\n InsetBorderTopRight = ToyBoxInsetTopRightCorner {\n }\n spellButton7 = <unnamed> {\n }\n spellButton13 = <unnamed> {\n }\n ShadowCornerRight = <unnamed> {\n }\n spellButton3 = <unnamed> {\n }\n spellButton12 = <unnamed> {\n }\n spellButton11 = <unnamed> {\n }\n InsetBorderTop = ToyBoxInsetTopBorder {\n }\n Bg = ToyBoxBg {\n }\n BGCornerBottomLeft = <unnamed> {\n }\n OverlayShadowBottom = <unnamed> {\n }\n spellButton14 = <unnamed> {\n }\n spellButton5 = <unnamed> {\n }\n BGCornerTopRight = <unnamed> {\n }\n spellButton4 = <unnamed> {\n }\n ShadowCornerBottomLeft = <unnamed> {\n }\n InsetBorderBottomRight = ToyBoxInsetBotRigh",
			["stack"] = "...erface\\AddOns\\Aurora\\AddOns\\Blizzard_Collections-1.0.lua:542: in function `addonModule'\nInterface\\AddOns\\Aurora\\aurora-7.2.0.lua:860: in function <Interface\\AddOns\\Aurora\\aurora.lua:770>\n[C]: in function `LoadAddOn'\nInterface\\FrameXML\\UIParent.lua:420: in function `UIParentLoadAddOn'\nInterface\\FrameXML\\UIParent.lua:562: in function `CollectionsJournal_LoadUI'\nInterface\\FrameXML\\UIParent.lua:854: in function `ToggleCollectionsJournal'\n[string \"TOGGLECOLLECTIONS\"]:1: in function <[string \"TOGGLECOLLECTIONS\"]:1>",
			["session"] = 1945,
			["counter"] = 2,
		}, -- [26]
	},
	["save"] = false,
	["session"] = 1945,
	["lastSanitation"] = 3,
}
