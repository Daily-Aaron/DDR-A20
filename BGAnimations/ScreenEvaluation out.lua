local t = Def.ActorFrame {};

if version == "A20+_" then
	t[#t+1] = LoadActor(THEME:GetPathS("ScreenEvaluation","out"))..{
		OnCommand=cmd(sleep,2.5);
		OffCommand=cmd(play);
	};
else
	t[#t+1] =  LoadActor(THEME:GetPathS("","_silent"))..{
		OnCommand=cmd(sleep,1);
		OffCommand=cmd(play);
	};
end;

return t;