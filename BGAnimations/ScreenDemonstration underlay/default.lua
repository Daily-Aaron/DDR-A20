local t = Def.ActorFrame {};

--ScreenFilter P1
	t[#t+1] = LoadActor("dance_filter0000_filter")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-360;y,SCREEN_CENTER_Y;diffusealpha,0.8;draworder,0;zoom,1);
		OffCommand=cmd();
	};

--ScreenFilter P2
	t[#t+1] = LoadActor("dance_filter0000_filter")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+360;y,SCREEN_CENTER_Y;diffusealpha,0.8;draworder,0;zoom,1);
		OffCommand=cmd();
	};

return t