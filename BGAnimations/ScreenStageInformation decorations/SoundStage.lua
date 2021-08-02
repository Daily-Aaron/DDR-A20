local sStage = GAMESTATE:GetCurrentStage();
local tRemap = {
	Stage_1st		= 1,
	Stage_2nd		= 2,
	Stage_3rd		= 3,
	Stage_4th		= 4,
	Stage_5th		= 5,
	Stage_6th		= 6,
};
if tRemap[sStage] == PREFSMAN:GetPreference("SongsPerPlay") then
	sStage = "Stage_Final";
else
	sStage = sStage;
end;

local t = Def.ActorFrame{};

SOUND:PlayAnnouncer("stage")

if GAMESTATE:IsEventMode() or (GAMESTATE:GetPlayMode()=='PlayMode_Oni') or (GAMESTATE:GetPlayMode()=='PlayMode_Nonstop') then

elseif GAMESTATE:GetCurrentStage() == 'Stage_1st' then
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("ScreenStageInformation","1st")).. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

elseif GAMESTATE:GetCurrentStage() == 'Stage_2nd' then
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("ScreenStageInformation","2nd")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

elseif GAMESTATE:GetCurrentStage() == 'Stage_3rd' and (PREFSMAN:GetPreference("SongsPerPlay") == 5 or PREFSMAN:GetPreference("SongsPerPlay") == 4) then
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("ScreenStageInformation","3rd")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

elseif GAMESTATE:GetCurrentStage() == 'Stage_4th' then
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("ScreenStageInformation","4th")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

elseif GAMESTATE:GetCurrentStage() == 'Stage_Final' then
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("ScreenStageInformation","Final")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

elseif GAMESTATE:IsExtraStage() then
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("ScreenStageInformation","Extra")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

elseif GAMESTATE:IsExtraStage2() then
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("ScreenStageInformation","Encore")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

end;

return t;