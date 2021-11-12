local t = Def.ActorFrame{}

if version == "A20_" then
	t[#t+1] = LoadActor("A20");
else

	t[#t+1] = LoadActor("A20 PLUS");
end;

if GetUserPref("OptionRowModel")=='GOLD' then
	if GetUserPref("OptionRowGoldenLeague")=='BRONZE' or 
	   GetUserPref("OptionRowGoldenLeague")=='SILVER' or 
	   GetUserPref("OptionRowGoldenLeague")=='GOLD' 
	then
		t[#t+1] = LoadActor(THEME:GetPathB("","doors_gl_open.lua"));
	else
		t[#t+1] = LoadActor(THEME:GetPathB("","_doors open.lua"));
	end;
else
	t[#t+1] = LoadActor(THEME:GetPathB("","_doors open.lua"));
end;


return t;