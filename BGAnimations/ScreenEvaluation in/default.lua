local t = Def.ActorFrame {
	
	LoadActor(THEME:GetPathS("ScreenEvaluation","Score"))..{
		StartTransitioningCommand=cmd(stop;sleep,0.5;play);
	};
};

if (STATSMAN:GetCurStageStats():AllFailed()) then
	if GetUserPref("OptionRowModel")=='GOLD' then
		if GetUserPref("OptionRowGoldenLeague")=='BRONZE' or 
		   GetUserPref("OptionRowGoldenLeague")=='SILVER' or 
	       GetUserPref("OptionRowGoldenLeague")=='GOLD' 
		then
			t[#t+1]=LoadActor("failed_doors_gl");
		else
			t[#t+1]=LoadActor("failed_doors_normal");
		end;
	else
		t[#t+1]=LoadActor("failed_doors_normal");
	end;
else
	if GetUserPref("OptionRowModel")=='GOLD' then
		if GetUserPref("OptionRowGoldenLeague")=='BRONZE' or 
		   GetUserPref("OptionRowGoldenLeague")=='SILVER' or 
		   GetUserPref("OptionRowGoldenLeague")=='GOLD' 
		then
			t[#t+1]=LoadActor("cleared_doors_gl");
		else
			t[#t+1]=LoadActor("cleared_doors_normal");
		end;
	else
		t[#t+1]=LoadActor("cleared_doors_normal");
	end;
end



return t;
