return Def.ActorFrame {
	LoadActor("snapshot1")..{
		InitCommand=cmd(FullScreen;diffusealpha,0);
	};
}