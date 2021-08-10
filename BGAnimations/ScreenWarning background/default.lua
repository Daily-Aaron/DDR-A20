return Def.ActorFrame {
	Def.Quad{
		InitCommand=function(s) s:diffuse(color("#CC0000"))
		:setsize(SCREEN_WIDTH,SCREEN_HEIGHT):Center()
		:sleep(1):linear(0.25):diffusealpha(1) end,
	};

	LoadActor(version..ddrgame..lang.."_background")..{
		InitCommand=function(s) s:FullScreen():sleep(3):linear(0.25):diffusealpha(0) end,
	};

	Def.Quad{
		InitCommand=function(s) s:diffuse(Color("White"))
		:setsize(SCREEN_WIDTH,SCREEN_HEIGHT):Center()
		:sleep(0.5):linear(0.25):diffusealpha(0) end,
	};
};