local t = LoadFallbackB();

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("","Profile In"))..{
		OnCommand=cmd(play);
	};
	
	LoadActor(THEME:GetPathS("","Profile Load"))..{
		OnCommand=cmd(sleep,0.35;queuecommand,"Play");
		PlayCommand=cmd(play);
	};

	LoadActor( THEME:GetPathS("","Profile Start") )..{
		OffCommand=cmd(play);
	};
};

if GetUserPref("OptionRowModel")=='GOLD' then
	if GetUserPref("OptionRowGoldenLeague")=='BRONZE' or 
	   GetUserPref("OptionRowGoldenLeague")=='SILVER' or 
	   GetUserPref("OptionRowGoldenLeague")=='GOLD' 
	then
		t[#t+1] = LoadActor("doors_gl_bluebg");
	else
		t[#t+1] = LoadActor("_bluebg");
	end;
else
	t[#t+1] = LoadActor("_bluebg");
end;

return t