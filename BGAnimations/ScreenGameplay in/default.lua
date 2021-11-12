local t = Def.ActorFrame{}

if not GAMESTATE:IsDemonstration() then
	if GetUserPref("OptionRowModel")=='GOLD' then
		if GetUserPref("OptionRowGoldenLeague")=='BRONZE' or 
		   GetUserPref("OptionRowGoldenLeague")=='SILVER' or 
		   GetUserPref("OptionRowGoldenLeague")=='GOLD' 
		then
			t[#t+1] = LoadActor("doors_gl");
		else
			t[#t+1] = LoadActor("doors_normal");
		end;
	else
		t[#t+1] = LoadActor("doors_normal");
	end;
	t[#t+1] = LoadActor(THEME:GetPathB("ScreenGameplay","in/jacket"));
end;

return t