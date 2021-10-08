local t = Def.ActorFrame{};
local song = GAMESTATE:GetCurrentSong():GetDisplayFullTitle();
local ss = 	song == "NEPHILIM DELTA" or 
			song == "SILVER☆DREAM" or
			song == "恋する☆宇宙戦争っ!!" or
			song == "Over The “Period”" or 
			song == "最小三倍完全数" or
			song == "PANIC HOLIC" or
			song == "Valkyrie dimension" or
			song == "Second Heaven" or
			song == "MAX 360" or
			song == "SABER WING" or
			song == "Triple Journey -TAG EDITION-" or
			song == "Tohoku EVOLVED" or 
			song == "TRIP MACHINE EVOLUTION" or 
			song == "Pluto Relinquish" or 
			song == "MAX.(period)" or
			song == "DEAD END" or 
			song == "DEAD END (GROOVE RADAR Special)";

return Def.ActorFrame {
	LoadActor( "scene_choice_stage_bg_ready_shadow" )..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+10):zoomy(0)
			if ddrgame=="gold_" then
				self:blend(('BlendMode_Add'));
			end;
		end;
		OnCommand=function(self)
			self:diffusealpha(0):zoom(0):linear(0.1):diffusealpha(1):zoom(1.25):linear(0.1):diffusealpha(1):zoom(1)
--THEN SLEEP HAS TO BE 0.4 MORE THAN THE NORMAL SLEEP
			if ss then
				self:sleep(0.4)
			else
				self:sleep(1.1)
			end;
			self:linear(0):diffusealpha(0):zoom(1.5*1.5);
		end;
	};
	--Right
	LoadActor(ddrgame.."scene_choice_ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=function(self)
			self:diffusealpha(1):zoom(0):linear(0.1):zoom(0.618):x(SCREEN_CENTER_X-0):linear(0.1):diffusealpha(1):zoomx(1.42):zoomy(1.6):linear(0.1):diffusealpha(1):zoomx(1.39):zoomy(1.25):sleep(0.1):linear(0.2):zoom(1.209)
--NORMAL SLEEP				
				if ss then
					self:sleep(0)
				else
					self:sleep(0.7)
			end;
			self:linear(0):diffusealpha(0):zoom(1.5*1.5);
		end;
	};
	--Left
	LoadActor(ddrgame.."scene_choice_ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,2.4;linear,0.1;blend,Blend.Add;linear,0.1;diffusealpha,0.5;zoomx,1.42;zoomy,1.6;x,SCREEN_CENTER_X-0;linear,0.1;diffusealpha,0.5;zoomx,2.39;zoomy,2.25;linear,0.1;diffusealpha,0;zoomx,3.2;zoomy,3.1);
	};
};