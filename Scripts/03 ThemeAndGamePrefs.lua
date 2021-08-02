function Game_ComboUnderField()
	return GetUserPrefB("OptionRowComboUnderField")
end
function Game_JudgmentUnderField()
	return GetUserPrefB("OptionRowJudgmentUnderField")
end
function Game_BeatBars()
	return GetUserPrefB("OptionRowBeatBars")
end
function Game_ShockArrows()
	return GetUserPrefB("OptionRowShockArrows")
end

function ScreenGameplay_P1X()
	local st = GAMESTATE:GetCurrentStyle():GetStepsType();
	if st == "StepsType_Dance_Solo" then
		return SCREEN_CENTER_X;
	elseif st == "StepsType_Dance_Couple" then
		return WideScale(SCREEN_CENTER_X-180,SCREEN_CENTER_X-160);
	else
		return WideScale(SCREEN_CENTER_X-180,SCREEN_CENTER_X-240);
	end
end
function ScreenGameplay_P2X()
	local st = GAMESTATE:GetCurrentStyle():GetStepsType();
	if st == "StepsType_Dance_Solo" then
		return SCREEN_CENTER_X;
	elseif st == "StepsType_Dance_Couple" then
		return WideScale(SCREEN_CENTER_X+180,SCREEN_CENTER_X+160);
	else
		return WideScale(SCREEN_CENTER_X+180,SCREEN_CENTER_X+240);
	end
end

function RollingNumbersJudgment_TextFormat()
	if GAMESTATE:IsCourseMode() or (Var "LoadingScreen") == "ScreenEvaluationSummary2" or (Var "LoadingScreen") == "ScreenEvaluationSummary2Rave" then
		return "%05.0f";
	else
		return "%04.0f";
	end;
end


function OptionRowComboJudgmentUnderField()
	local t = {
		Name = "OptionRowComboJudgmentUnderField";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = false;
		Choices = {THEME:GetString("OptionNames","Background"),THEME:GetString("OptionNames","Foreground")};
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowComboUnderField") ~= nil and ReadPrefFromFile("OptionRowJudgmentUnderField") ~= nil then
				if GetUserPref("OptionRowComboUnderField")=='true' and GetUserPref("OptionRowJudgmentUnderField")=='true' then
					list[1] = true
				elseif GetUserPref("OptionRowComboUnderField")=='false' and GetUserPref("OptionRowJudgmentUnderField")=='false' then
					list[2] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowComboUnderField",true);
				WritePrefToFile("OptionRowJudgmentUnderField",true);
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowComboUnderField",true);
				WritePrefToFile("OptionRowJudgmentUnderField",true);
			elseif list[2] then
				WritePrefToFile("OptionRowComboUnderField",false);
				WritePrefToFile("OptionRowJudgmentUnderField",false);
			else
				WritePrefToFile("OptionRowComboUnderField",true);
				WritePrefToFile("OptionRowJudgmentUnderField",true);
			end;
			THEME:ReloadMetrics();
		end;
	};
	setmetatable( t, t );
	return t;
end

function OptionRowBeatBars()
	local t = {
		Name = "BeatBars";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = false;
		Choices = {THEME:GetString("OptionNames","BeatBarsOff"),THEME:GetString("OptionNames","BeatBarsOn")};
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowBeatBars") ~= nil then
				if GetUserPref("OptionRowBeatBars")=='false' then
					list[1] = true
				elseif GetUserPref("OptionRowBeatBars")=='true' then
					list[2] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowBeatBars",false);
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowBeatBars",false);
			elseif list[2] then
				WritePrefToFile("OptionRowBeatBars",true);
			else
				WritePrefToFile("OptionRowBeatBars",false);
			end;
			THEME:ReloadMetrics();
		end;
	};
	setmetatable( t, t );
	return t;
end

function OptionRowShockArrows()
	local t = {
		Name = "ShockArrows";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = false;
		Choices = {THEME:GetString("OptionNames","ShockArrowsOff"),THEME:GetString("OptionNames","ShockArrowsOn")};
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowShockArrows") ~= nil then
				if GetUserPref("OptionRowShockArrows")=='false' then
					list[1] = true
				elseif GetUserPref("OptionRowShockArrows")=='true' then
					list[2] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowShockArrows",false);
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowShockArrows",false);
			elseif list[2] then
				WritePrefToFile("OptionRowShockArrows",true);
			else
				WritePrefToFile("OptionRowShockArrows",false);
			end;
			THEME:ReloadMetrics();
		end;
	};
	setmetatable( t, t );
	return t;
end

function OptionRowScreenFilter()
	local t = {
		Name = "ScreenFilter";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = false;
		Choices = {"OFF", "DARK", "DARKER", "DARKEST", };
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowScreenFilter") ~= nil then
				if GetUserPref("OptionRowScreenFilter")=='OFF' then
					list[1] = true
				elseif GetUserPref("OptionRowScreenFilter")=='DARK' then
					list[2] = true
				elseif GetUserPref("OptionRowScreenFilter")=='DARKER' then
					list[3] = true
				elseif GetUserPref("OptionRowScreenFilter")=='DARKEST' then
					list[4] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowScreenFilter",'OFF');
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowScreenFilter",'OFF');
			elseif list[2] then
				WritePrefToFile("OptionRowScreenFilter",'DARK');
			elseif list[3] then
				WritePrefToFile("OptionRowScreenFilter",'DARKER');
			elseif list[4] then
				WritePrefToFile("OptionRowScreenFilter",'DARKEST');
			else
				WritePrefToFile("OptionRowScreenFilter",'OFF');
			end;
		end;
	};
	setmetatable( t, t );
	return t;
end

function OptionRowCutin()
	local t = {
		Name = "Cutin";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = false;
		Choices = {THEME:GetString("OptionNames","CutinOff"),THEME:GetString("OptionNames","CutinOn")};
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowCutin") ~= nil then
				if GetUserPref("OptionRowCutin")=='false' then
					list[1] = true
				elseif GetUserPref("OptionRowCutin")=='true' then
					list[2] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowCutin",false);
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowCutin",false);
			elseif list[2] then
				WritePrefToFile("OptionRowCutin",true);
			else
				WritePrefToFile("OptionRowCutin",false);
			end;
			THEME:ReloadMetrics();
		end;
	};
	setmetatable( t, t );
	return t;
end

function OptionRowBoom()
	local t = {
		Name = "BoomType";
		LayoutType = "ShowAllInRow";
		SelectType = "SelectOne";
		OneChoiceForAllPlayers = true;
		ExportOnChange = false;
		Choices = {THEME:GetString("OptionNames","BOOM1"),THEME:GetString("OptionNames","BOOM2")};
		LoadSelections = function(self, list, pn)
			if ReadPrefFromFile("OptionRowBoom") ~= nil then
				if GetUserPref("OptionRowBoom")=='false' then
					list[1] = true
				elseif GetUserPref("OptionRowBoom")=='true' then
					list[2] = true
				else
					list[1] = true
				end
			else
				WritePrefToFile("OptionRowBoom",false);
				list[1] = true;
			end;
		end;
		SaveSelections = function(self, list, pn)
			if list[1] then
				WritePrefToFile("OptionRowBoom",false);
			elseif list[2] then
				WritePrefToFile("OptionRowBoom",true);
			else
				WritePrefToFile("OptionRowBoom",false);
			end;
			THEME:ReloadMetrics();
		end;
	};
	setmetatable( t, t );
	return t;
end