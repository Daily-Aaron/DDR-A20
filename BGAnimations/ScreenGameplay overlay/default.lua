local t = Def.ActorFrame{};


-- Full combo
for pn in ivalues(GAMESTATE:GetHumanPlayers()) do
	t[#t+1] = LoadActor("FullCombo", pn) .. {
	};
end;

t[#t+1] = LoadActor("OniGameOverDisplay");

t[#t+1] = LoadActor("../../Other/_/alphaMembers")..{};


return t;