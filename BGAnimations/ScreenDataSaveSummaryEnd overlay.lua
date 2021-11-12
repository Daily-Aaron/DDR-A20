local x = Def.ActorFrame{};

x[#x+1] = Def.Actor {
		BeginCommand=function(self)
		if SCREENMAN:GetTopScreen():HaveProfileToSave() then self:sleep(0); end;
		self:queuecommand("Load");
	end;
	LoadCommand=function() SCREENMAN:GetTopScreen():Continue(); end;
};

if GetUserPref("OptionRowModel")=='GOLD' then
	if GetUserPref("OptionRowGoldenLeague")=='BRONZE' or 
	   GetUserPref("OptionRowGoldenLeague")=='SILVER' or 
	   GetUserPref("OptionRowGoldenLeague")=='GOLD' 
	then
		x[#x+1] = LoadActor("doors_gl_bluebg");
	else
		x[#x+1] = LoadActor("_bluebg");
	end;
else
	x[#x+1] = LoadActor("_bluebg");
end;
 
return x;