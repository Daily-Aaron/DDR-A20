local t = Def.ActorFrame{};

if GetUserPref("OptionRowModel")=='GOLD' then
	if GetUserPref("OptionRowGoldenLeague")=='BRONZE' or 
	   GetUserPref("OptionRowGoldenLeague")=='SILVER' or 
	   GetUserPref("OptionRowGoldenLeague")=='GOLD' 
	then
		t[#t+1] = LoadActor("doors_gl_close");
	else
		t[#t+1] = LoadActor("_normal_door_close");
	end;
else
	t[#t+1] = LoadActor("_normal_door_close");
end;

return t