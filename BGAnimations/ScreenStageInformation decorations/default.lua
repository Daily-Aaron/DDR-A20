local playMode = GAMESTATE:GetPlayMode()
if playMode ~= 'PlayMode_Regular' and playMode ~= 'PlayMode_Rave' and playMode ~= 'PlayMode_Battle' then
	curStage = playMode;
end;
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
local song = GAMESTATE:GetCurrentSong();


--Sound
t[#t+1] = Def.ActorFrame {
	LoadActor("zap") .. {		
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("","Close")) .. {
	OnCommand=cmd(sleep,0.3;queuecommand,"Play");
	PlayCommand=cmd(play);
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor("jacketswoosh") .. {
	OnCommand=cmd(sleep,1.55;queuecommand,"Play");
	PlayCommand=cmd(play);
	};
};

t[#t+1] = LoadActor("SoundStage");
t[#t+1] = LoadActor("doors.lua");
	
t[#t+1] = Def.ActorFrame {
	LoadActor("jacket-bg")..{
		InitCommand=cmd(setsize,451,451;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+480/2;vertalign,bottom);
		OnCommand=cmd(
			zoomy,0.0129;diffusealpha,0;zoomx,1.3;
			sleep,1.2;diffusealpha,1;
			sleep,0.017;diffusealpha,0;zoomy,0.0645;
			sleep,0.017;diffusealpha,1;
			sleep,0.017;diffusealpha,0;zoomy,0.1741;
			sleep,0.033;diffusealpha,1;
			sleep,0.017;diffusealpha,0;zoomy,0.2806;zoomx,1.265;
			sleep,0.017;diffusealpha,1;
			sleep,0.017;diffusealpha,0;zoomy,0.407;zoomx,1.245;
			sleep,0.017;diffusealpha,1;
			sleep,0.017;diffusealpha,0;zoomy,0.527;zoomx,1.201;
			sleep,0.017;diffusealpha,1;
			sleep,0.017;diffusealpha,0;zoomy,0.7;zoomx,1.126;
			sleep,0.034;diffusealpha,1;
			sleep,0.017;diffusealpha,0;zoomy,0.790;zoomx,1.116;
			sleep,0.017;diffusealpha,1;
			sleep,0.017;diffusealpha,0;zoomy,0.952;zoomx,1.066;
			sleep,0.017;diffusealpha,1;
			sleep,0.017;diffusealpha,0;
		);
	};
	--Because chaining together a million sleeps causes a tween overflow, a second actor is needed...
	LoadActor("jacket-bg")..{
		InitCommand=cmd(setsize,451,451;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+480/2;vertalign,bottom;diffusealpha,0);
		OnCommand=cmd(
			sleep,1.5;zoomy,1.033;zoomx,1.033;
			sleep,0.034;diffusealpha,1;
			sleep,0.017;diffusealpha,0;
			sleep,0.016;diffusealpha,1;
			sleep,0.018;diffusealpha,0;
			sleep,0.017;diffusealpha,1;
			sleep,0.016;diffusealpha,0;
			sleep,0.018;diffusealpha,1;
			sleep,0.017;diffusealpha,0;
			sleep,0.016;diffusealpha,1;
			sleep,0.018;diffusealpha,0;
			sleep,0.150;diffusealpha,1;
			sleep,0.017;diffusealpha,0;
			--sleep,0.017;
		);
	};
};


--White flash
t[#t+1] = LoadActor(THEME:GetPathB("","_blue doors/whiteflash"))..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0.5;zoom,1.5;sleep,0.5;linear,0.3;diffusealpha,0;);
};

--Normal stage indicator
t[#t+1] = LoadActor("StageDisplay");

--song jacket--
t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(playcommand,'Set';x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+18;diffusealpha,0;zoom,1;sleep,1.6+0.25;linear,0.2;diffusealpha,1;zoom,1;sleep,0.7;diffusealpha,1);
	Def.Sprite {
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			local course = GAMESTATE:GetCurrentCourse();
			if song then
					if song:HasJacket() then
						self:LoadBackground(song:GetJacketPath());
						self:setsize(451,451);
					elseif song:HasBackground() then
						self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
						self:setsize(451,451);
					elseif song:HasBanner() then
						self:LoadFromSongBanner(GAMESTATE:GetCurrentSong());
						self:setsize(451,451);
					else
						self:Load(THEME:GetPathG("","Common fallback jacket"));
						self:setsize(451,451);
					end;
				else
					self:diffusealpha(0);	
				end;
		end;
	};
};


t[#t+1] = LoadActor(THEME:GetPathB("","/_blue doors/cosh_loading.png"))..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-105;zoom,1;sleep,1;linear,0.501;zoom,0.9;addy,5;sleep,0.4;linear,0.033;zoomx,0;zoomy,3);
};

t[#t+1] = LoadActor(THEME:GetPathB("","/_blue doors/cosh_loading_frame.png"))..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-70;zoom,1.2;sleep,1;linear,0.501;zoom,1.05;sleep,0.4;linear,0.033;zoomx,0;zoomy,3);
};

t[#t+1] = LoadActor(THEME:GetPathB("","/_blue doors/cosh_loading_meter.png"))..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-70;zoom,1.2;cropright,1;sleep,1;linear,0.501;zoom,1.05;cropright,0;sleep,0.4;linear,0.033;zoomx,0;zoomy,3);
};

t[#t+1] = LoadActor("ScoreDisplay");

return t