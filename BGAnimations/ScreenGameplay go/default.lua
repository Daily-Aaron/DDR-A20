local t = Def.ActorFrame{};
local song = GAMESTATE:GetCurrentSong():GetDisplayFullTitle();

return Def.ActorFrame {
	LoadActor( "scene_choice_stage_bg_yellow_here" )..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+10):zoomx(1.5*1.22):zoomy(1.5)
			if ddrgame=="gold_" then
				self:blend(('BlendMode_Add'));
			end;
		end;
		OnCommand=function(self)
			self:diffusealpha(0):zoom(1):linear(0.1):diffusealpha(1):zoom(1.25):linear(0.1):diffusealpha(1):zoom(1)
--THEN SLEEP HAS TO BE 0.35 MORE THAN THE NORMAL SLEEP
			if 	song == "NEPHILIM DELTA" or 
				song == "SILVER☆DREAM" or
				song == "恋する☆宇宙戦争っ!!" or
				song == "Over The “Period”" or 
				song == "最小三倍完全数" or
				song == "PANIC HOLIC" or
				song == "MAX 360" or
				song == "SABER WING" or
				song == "Triple Journey -TAG EDITION-" or
				song == "Tohoku EVOLVED" or 
				song == "TRIP MACHINE EVOLUTION" or 
				song == "Pluto Relinquish" or 
				song == "MAX.(period)" or 
				song == "DEAD END" or 
				song == "DEAD END (GROOVE RADAR Special)" 
			then
				self:sleep(0.35)
			else
				self:sleep(1.05)
			end;
			self:linear(0.1):zoomy(0):diffusealpha(0);
		end;
	};
	--Right
	LoadActor(ddrgame.."scene_choice_here_we_go" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+5);
		OnCommand=function(self)
			self:x(SCREEN_CENTER_X-0):zoom(0):linear(0.15):diffusealpha(1):zoomx(1.3):zoomy(1.9):linear(0.15):diffusealpha(1):zoomx(1.3):zoomy(1.3):sleep(0.1):linear(0.15):zoom(1.18)
--NORMAL SLEEP				
				if 	song == "NEPHILIM DELTA" or 
					song == "SILVER☆DREAM" or
					song == "恋する☆宇宙戦争っ!!" or
					song == "Over The “Period”" or 
					song == "最小三倍完全数" or
					song == "PANIC HOLIC" or
					song == "MAX 360" or
					song == "SABER WING" or
					song == "Triple Journey -TAG EDITION-" or
					song == "Tohoku EVOLVED" or 
					song == "TRIP MACHINE EVOLUTION" or 
					song == "Pluto Relinquish" or 
					song == "MAX.(period)" or
					song == "DEAD END" or 
					song == "DEAD END (GROOVE RADAR Special)"  
				then
					self:sleep(0)
				else
					self:sleep(0.7)
			end;
			self:linear(0.1):diffusealpha(1):zoomy(0);
		end;
	};
	--Left
	LoadActor(ddrgame.."scene_choice_here_we_go" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+5);
		OnCommand=cmd(diffusealpha,0;blend,Blend.Add;zoom,2.6;linear,0.15;diffusealpha,0.5;zoomx,1.3;zoomy,1.9;x,SCREEN_CENTER_X-0;linear,0.15;diffusealpha,0.5;zoomx,2.6;zoomy,2.5;linear,0.15;diffusealpha,0;zoomx,3;zoomy,2.9);
	};
};