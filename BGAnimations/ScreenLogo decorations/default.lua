local t = Def.ActorFrame{
  LoadActor(THEME:GetPathB("ScreenLogo","decorations/"..ddrgame.."back"))..{
    InitCommand=function(s) s:x(_screen.cx)
	if version == "A20_" then
		s:y(_screen.cy-54)
	else
		s:y(_screen.cy-30) 
	end;
	end,
  };
  LoadActor(version.."copyright")..{
    InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-148;zoom,0.8);
  };
  LoadActor(THEME:GetPathB("","ModDate.lua"));
  
};


t[#t+1] = LoadActor(THEME:GetPathB("ScreenLogo","decorations/"..version..ddrgame.."logo"))..{
	InitCommand=cmd(CenterX;y,_screen.cy-54;zoom,1);
};

if version == "A20+_" then
t[#t+1] = LoadActor(THEME:GetPathB("ScreenLogo","decorations/"..ddrgame.."logo_eff"))..{
	InitCommand=cmd(x,_screen.cx;y,_screen.cy-54;diffuse,color("1,1,1,0.5");blend,Blend.Add);
	OnCommand=cmd(diffusealpha,0;sleep,0.6;linear,0.1;diffusealpha,0.5;linear,0.1;diffusealpha,0);
};
end


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
