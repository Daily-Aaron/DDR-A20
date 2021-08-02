local t = LoadFallbackB()

local customscore=GetCustomScoreMode();
local cscore="A20";
if not GAMESTATE:IsCourseMode() then
 local stepcnt={0,0}
 t[#t+1] = Def.Actor{
     JudgmentMessageCommand = function(self, params)
		if STATSMAN:GetCurStageStats():GetPlayerStageStats(params.Player):GetFailed() == false then
         if params.TapNoteScore and
          params.TapNoteScore ~= 'TapNoteScore_AvoidMine' and
          params.TapNoteScore ~= 'TapNoteScore_HitMine' and
          params.TapNoteScore ~= 'TapNoteScore_CheckpointMiss' and
          params.TapNoteScore ~= 'TapNoteScore_CheckpointHit' and
          params.TapNoteScore ~= 'TapNoteScore_None'
         then
             if customscore=="old" then
                 Scoring[scoreType](params, 
                     STATSMAN:GetCurStageStats():GetPlayerStageStats(params.Player))
             elseif customscore=="5b2" then
                 local pn=((params.Player==PLAYER_1) and 1 or 2);
                 stepcnt[pn]=stepcnt[pn]+1;
                 CustomScore_SM5b2(params,cscore,GAMESTATE:GetCurrentSteps(params.Player),stepcnt[pn]);
             elseif customscore=="5b1" then
                 local pn=((params.Player==PLAYER_1) and 1 or 2);
                 stepcnt[pn]=stepcnt[pn]+1;
                 CustomScore_SM5b1(params,cscore,GAMESTATE:GetCurrentSteps(params.Player),stepcnt[pn]);
             else
                 local pn=((params.Player==PLAYER_1) and 1 or 2);
                 stepcnt[pn]=stepcnt[pn]+1;
                 CustomScore_SM5a2(params,cscore,GAMESTATE:GetCurrentSteps(params.Player),stepcnt[pn]);
             end;
         end
		 end
     end;
     InitCommand=function(self)
         if customscore=="non" then
             CustomScore_SM5a2_Init();
         end;
     end;
     OffCommand=function(self)
         if customscore=="non" then
             CustomScore_SM5a2_Out();
         end;
     end;
 };
 end;
 
t[#t+1] = LoadActor("OptionsHack.lua")..{
	InitCommand=cmd(draworder,1);
};
 

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(draworder,1;);
	StandardDecorationFromFileOptional("StageFrame","StageFrame");
};

if ReadPrefFromFile("UserPrefGameplayShowFastSlow") ~= nil then
	if GetUserPrefB("UserPrefGameplayShowFastSlow") then
		t[#t+1] = LoadActor("TimingJudgements.lua")..{
			InitCommand=cmd(draworder,1);
		};
	end
end



--options--
if not GAMESTATE:IsDemonstration() then
t[#t+1] = LoadActor( THEME:GetPathB("","optionicon_P1") ) .. {
		InitCommand=cmd(player,PLAYER_1;zoomx,0.95;zoomy,0.94;x,WideScale(SCREEN_CENTER_X-221,SCREEN_CENTER_X-296);draworder,1);
		OnCommand=function(self)
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'reverse') then
				if ThemePrefs.Get("Version") == "A20" then
					if ddrgame=="gold_" then
						self:y(SCREEN_CENTER_Y-258);
					else
						self:y(SCREEN_CENTER_Y-255);
					end;
				else
					if ddrgame=="gold_" then
						self:y(SCREEN_CENTER_Y-269);
					else
						self:y(SCREEN_CENTER_Y-267);
					end;
				end;
			else
				self:y(SCREEN_CENTER_Y+245);
			end;
		end;
	};
t[#t+1] = LoadActor( THEME:GetPathB("","optionicon_P2") ) .. {
		InitCommand=cmd(player,PLAYER_2;zoomx,0.95;zoomy,0.94;x,WideScale(SCREEN_CENTER_X+204,SCREEN_CENTER_X+296);draworder,1);
		OnCommand=function(self)
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'reverse') then
				if ThemePrefs.Get("Version") == "A20" then
					if ddrgame=="gold_" then
						self:y(SCREEN_CENTER_Y-258);
					else
						self:y(SCREEN_CENTER_Y-255);
					end;
				else
					if ddrgame=="gold_" then
						self:y(SCREEN_CENTER_Y-269);
					else
						self:y(SCREEN_CENTER_Y-267);
					end;
				end;
			else
				self:y(SCREEN_CENTER_Y+245);
			end;
		end;
};
else
t[#t+1] = LoadActor( THEME:GetPathB("","optionicon_P1/demo") ) .. {
		InitCommand=cmd(player,PLAYER_1;zoomx,0.95;zoomy,0.94;x,WideScale(SCREEN_CENTER_X-221,SCREEN_CENTER_X-296);draworder,1);
		OnCommand=function(self)
				self:y(SCREEN_CENTER_Y+245);
		end;
	};
t[#t+1] = LoadActor( THEME:GetPathB("","optionicon_P2/demo") ) .. {
		InitCommand=cmd(player,PLAYER_2;zoomx,0.95;zoomy,0.94;x,WideScale(SCREEN_CENTER_X+204,SCREEN_CENTER_X+296);draworder,1);
		OnCommand=function(self)
				self:y(SCREEN_CENTER_Y+245);
		end;
};
end

if not GAMESTATE:IsDemonstration() then
	t[#t+1] = StandardDecorationFromFile("StageDisplay","StageDisplay")
end

for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
	t[#t+1] = LoadActor("lifeframe",pn);
end


t[#t+1] = StandardDecorationFromFile("ScoreFrame","ScoreFrame");

return t