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


SOUND:PlayOnce(THEME:GetPathS("","Announcer/Crowd X"));

if GAMESTATE:IsEventMode() or (GAMESTATE:GetPlayMode()=='PlayMode_Oni') or (GAMESTATE:GetPlayMode()=='PlayMode_Nonstop') then

elseif GAMESTATE:GetCurrentStage() == 'Stage_1st' then
	t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/1st Stage")).. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};

elseif GAMESTATE:GetCurrentStage() == 'Stage_2nd' then
t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/2nd Stage")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};

elseif GAMESTATE:GetCurrentStage() == 'Stage_3rd' then
t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/3rd Stage")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};

elseif GAMESTATE:GetCurrentStage() == 'Stage_4th' then
t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/4th Stage")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};

elseif GAMESTATE:GetCurrentStage() == 'Stage_Final' then
t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/Final Stage")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};

elseif GAMESTATE:IsExtraStage() then
t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/Extra Stage")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};

elseif GAMESTATE:IsExtraStage2() then
t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/Encore Extra Stage")) .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};

end;

return t;