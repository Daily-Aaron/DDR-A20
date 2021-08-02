local t = Def.ActorFrame {};

--[[local lang = "en";
if THEME:GetCurLanguage() == "ja" then
	lang = "jp";
elseif THEME:GetCurLanguage() == "kor" then
	lang = "kor";
end;]]

t[#t+1] = Def.ActorFrame {
  InitCommand=cmd();
	Def.ActorFrame {
		Def.Quad{
			InitCommand=cmd(diffuse,color("#CC0000");setsize,SCREEN_WIDTH,SCREEN_HEIGHT;Center;sleep,1;linear,0.25;diffusealpha,1;);
		};
	}
};

if ThemePrefs.Get("Version") == "A20" then
t[#t+1] = Def.ActorFrame {
  InitCommand=cmd();
		LoadActor(ddrgame..lang.."_background")..{
			InitCommand=cmd(FullScreen;sleep,3;linear,0.25;diffusealpha,0;);
		};
};
else
t[#t+1] = Def.ActorFrame {
  InitCommand=cmd();
		LoadActor("a20+_"..ddrgame.."background")..{
			InitCommand=cmd(FullScreen;sleep,3;linear,0.25;diffusealpha,0;);
		};
};
end;

t[#t+1] = Def.ActorFrame {
  InitCommand=cmd();
		Def.Quad{
			InitCommand=cmd(diffuse,Color("White");setsize,SCREEN_WIDTH,SCREEN_HEIGHT;Center;sleep,0.5;linear,0.25;diffusealpha,0;);
		};
};
	
return t