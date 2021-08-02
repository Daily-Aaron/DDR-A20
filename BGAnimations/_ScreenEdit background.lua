return Def.ActorFrame {
	LoadActor(THEME:GetPathB("","_bluebg"));
	Def.Quad {
		InitCommand=cmd(FullScreen;diffuse,color("0,0,0,1");diffusealpha,0.5)
	};
};