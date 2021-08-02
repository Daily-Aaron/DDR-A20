local t = Def.ActorFrame{
  LoadActor(ddrgame.."back")..{
    InitCommand=cmd(CenterX;y,_screen.cy-54;zoom,1);
  };
  LoadActor("copyright2020")..{
    InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-148;zoom,0.8);
  };
  LoadActor(THEME:GetPathB("","ModDate.lua"));
  
};


t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathB("ScreenLogo","decorations/"..version..ddrgame.."logo"))..{
		InitCommand=cmd(CenterX;y,_screen.cy-54;zoom,1);
		};
	};

t[#t+1] = Def.ActorFrame {
Def.Quad{
		InitCommand=cmd(diffuse,Color("White");setsize,SCREEN_WIDTH,SCREEN_HEIGHT;Center;);
		OnCommand=cmd(linear,0.25;diffusealpha,0;sleep,9.5;linear,0.25;diffusealpha,1;);
	
  };
  LoadActor("../_arcade decorations/default.lua")..{
  };
};

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("ScreenLogo","Voice")) .. {
	OnCommand=cmd(queuecommand,"Play");
	PlayCommand=cmd(play);
	};
};

return t;
