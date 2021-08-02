local t = Def.ActorFrame{}

if not GAMESTATE:IsDemonstration() then
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathB("ScreenGameplay","in/jacket.lua"))..{
	InitCommand=cmd(draworder,99);
	};
	LoadActor(THEME:GetPathB("ScreenGameplay","in/doors.lua"));
};
end;

return t