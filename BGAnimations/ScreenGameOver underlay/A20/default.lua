local t = Def.ActorFrame{}
local sound = math.random(1,4);

t[#t+1] = LoadActor(THEME:GetPathS("","Announcer/ScreenGameOver "..sound))..{
	OnCommand=cmd(queuecommand,"Play");
	PlayCommand=cmd(play);
};

t[#t+1] = LoadActor(THEME:GetPathS("ScreenGameOver","A20 music.ogg"))..{
	OnCommand=cmd(queuecommand,"Play");
	PlayCommand=cmd(play);
};

t[#t+1] = Def.ActorFrame {
	Def.Quad{
		InitCommand=cmd(Center;FullScreen;diffusecolor,color("Black");diffusealpha,0.6;sleep,1.7;linear,0.8;diffusealpha,0);
	};
	Def.Quad{
		InitCommand=cmd(Center;FullScreen;diffusecolor,color("White");diffusealpha,0;sleep,1.8;linear,1.4;diffusealpha,1);
	};

	Def.Quad{
		InitCommand=cmd(Center;FullScreen;diffusecolor,color("White");sleep,0.9;diffusealpha,0);
	};
	LoadActor(ddrgame.."thank_you" )..{
		InitCommand=cmd(diffusealpha,0.35;zoom,2.2;x,SCREEN_CENTER_X-4000;y,SCREEN_CENTER_Y-60;linear,0.933;diffusealpha,0;zoom,2.2;x,SCREEN_CENTER_X+2000;y,SCREEN_CENTER_Y-60);
	};
	LoadActor(ddrgame.."for_playing" )..{
		InitCommand=cmd(diffusealpha,0.35;zoom,2.2;x,SCREEN_CENTER_X+4000;y,SCREEN_CENTER_Y+60;sleep,0.400;linear,0.933;diffusealpha,0;zoom,2.2;x,SCREEN_CENTER_X-2000;y,SCREEN_CENTER_Y+60);
	};

	LoadActor(ddrgame.."thank_you" )..{
		InitCommand=cmd(zoom,1.1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-80;diffusealpha,0;sleep,0.95;linear,0.05;diffusealpha,1;linear,0.4;zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-70;linear,0.01;diffusealpha,0);
	};
	LoadActor(ddrgame.."for_playing" )..{
		InitCommand=cmd(zoom,1.1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;diffusealpha,0;sleep,0.95;linear,0.05;diffusealpha,1;linear,0.4;zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+70;linear,0.01;diffusealpha,0);
	};
	Def.Quad{
		InitCommand=cmd(Center;FullScreen;diffusecolor,color("White");diffusealpha,0;sleep,0.9;linear,0.05;diffusealpha,1;linear,0.35;diffusealpha,0);
	};

	LoadActor(ddrgame.."thank_you" )..{
		InitCommand=cmd(zoom,0.8;x,SCREEN_CENTER_X-1100;y,SCREEN_CENTER_Y-80;sleep,1.42;linear,0.05;linear,0.4;zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-70;sleep,0.4;linear,0.6;diffusealpha,0.7;linear,0.5;diffusealpha,1;linear,3;diffusealpha,0);
	};
	LoadActor(ddrgame.."for_playing" )..{
		InitCommand=cmd(zoom,0.8;x,SCREEN_CENTER_X+1100;y,SCREEN_CENTER_Y+80;sleep,1.42;linear,0.05;linear,0.4;zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+70;sleep,0.4;linear,0.6;diffusealpha,0.7;linear,0.5;diffusealpha,1;linear,3;diffusealpha,0);
	};
	LoadActor(ddrgame.."thank_you" )..{
		InitCommand=cmd(zoom,0.8;x,SCREEN_CENTER_X-1100;y,SCREEN_CENTER_Y-80;sleep,1.42;linear,0.05;linear,0.4;zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-70;linear,1;zoom,1.6;diffusealpha,0);
	};
	LoadActor(ddrgame.."for_playing" )..{
		InitCommand=cmd(zoom,0.8;x,SCREEN_CENTER_X+1100;y,SCREEN_CENTER_Y+80;sleep,1.42;linear,0.05;linear,0.4;zoom,0.8;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+70;linear,1;zoom,1.6;diffusealpha,0);
	};
	Def.Quad{
		InitCommand=cmd(Center;FullScreen;diffusecolor,color("White");diffusealpha,0;sleep,6;linear,0.233;diffusealpha,1;);
	};
};

return t;