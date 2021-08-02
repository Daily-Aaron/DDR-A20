local t = Def.ActorFrame{};

--Hacky way to get the transition.
t[#t+1] = Def.ActorFrame {
	LoadActor("__swooshDDRA") .. {
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
	
	
};

t[#t+1] = LoadActor(THEME:GetPathB("","_door/black"))..{
	OnCommand=cmd(Center;diffusealpha,1;diffusealpha,1;linear,0.083;zoom,1.0;sleep,0;linear,0.03;diffusealpha,0;);
		};



t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/backflashvert (doubleres)"))..{
		InitCommand=cmd(y,SCREEN_TOP+1100;diffusealpha,1;zoom,-2;);
    OnCommand=cmd(linear,0.2;addy,-1500;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/backflashvert (doubleres)"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-1100;diffusealpha,1;zoom,2;);
    OnCommand=cmd(linear,0.2;addy,1500;diffusealpha,1;);
	};
}

--Those Weird Curved Things
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,-320.25;y,SCREEN_TOP+0;diffusealpha,1;;zoomx,-1);
    OnCommand=cmd(addy,99;sleep,0.1;linear,0.1;addy,-198;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,320.25;y,SCREEN_BOTTOM-0;diffusealpha,1;zoomy,-1);
    OnCommand=cmd(addy,-99;sleep,0.1;linear,0.1;addy,198;diffusealpha,1;);
	};
}
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,320.25;y,SCREEN_TOP+0;diffusealpha,1;;zoom,1);
    OnCommand=cmd(addy,99;sleep,0.1;linear,0.1;addy,-198;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/scsh_back02_blue"))..{
		InitCommand=cmd(x,-320.25;y,SCREEN_BOTTOM-0;zoomy,-1;diffusealpha,1;zoom,-1);
    OnCommand=cmd(addy,-99;sleep,0.1;linear,0.1;addy,198;diffusealpha,1;);
	};
}
--More Of THose Weird Curved Things




--Glow
--t[#t+1] = Def.ActorFrame{
--	InitCommand=cmd(CenterX;queuecommand,"Animate");
--	AnimateCommand=cmd(diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,0.9;effectperiod,2.5);
--	LoadActor(THEME:GetPathB("","_door/glow"))..{
--		InitCommand=cmd(y,SCREEN_TOP+172;zoom,1.5);
--		OnCommand=cmd(sleep,0.4;linear,0.2;addy,-115;diffusealpha,0;);
--	};
--	LoadActor(THEME:GetPathB("","_door/glow"))..{
--		InitCommand=cmd(y,SCREEN_BOTTOM-172;zoom,-1.5);
--		OnCommand=cmd(sleep,0.4;linear,0.2;addy,115;diffusealpha,0;);
--	};
--};


	



return t
