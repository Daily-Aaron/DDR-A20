local t = Def.ActorFrame {};

if ThemePrefs.Get("Version") == "A20 PLUS" then
t[#t+1] =  Def.ActorFrame {
	OnCommand=cmd(sleep,1);
	LoadActor(THEME:GetPathS("ScreenEvaluation","Out"))..{
		OffCommand=cmd(play);
	};
};
else
t[#t+1] =  Def.ActorFrame {
	OnCommand=cmd(sleep,1);
	LoadActor(THEME:GetPathS("","_silent"))..{
		OffCommand=cmd(play);
	};
};
end;

return t;