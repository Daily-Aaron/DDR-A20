return Def.ActorFrame {
	InitCommand=function(self)
		self:x(2);
		self:y(-12);
	end;
	LoadActor(ddrgame.."coti_base_tri")..{
		InitCommand=cmd(zoom,1);
		OffCommand=cmd(linear,0.25;zoom,1.1;diffusealpha,0);
	};
	LoadActor("coti_base_tri_line")..{
		OnCommand=cmd(playcommand,"Animate");
		AnimateCommand=cmd(zoom,0.75;diffusealpha,1;linear,0.2;zoom,1.1;diffusealpha,1;linear,0.2;diffusealpha,0;sleep,0.6;queuecommand,"Animate");
		OffCommand=cmd(stoptweening,linear,0.25;zoom,1.15;diffusealpha,0);
	};
	Def.ActorFrame{
		OnCommand=cmd(playcommand,"Tick");
		TickCommand=cmd(diffusealpha,1;linear,0.4;diffusealpha,0;sleep,0.6;queuecommand,"Tick");
		OffCommand=cmd(stoptweening;linear,0.25;zoom,1.1;diffusealpha,0);
		Def.Sprite{
			Texture="coti_base_tri_center_light",
		};
		Def.Sprite{
			Texture="coti_base_tri_eff",
		};	
	}
	
}