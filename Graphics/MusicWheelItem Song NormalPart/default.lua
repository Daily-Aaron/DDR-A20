local t = Def.ActorFrame{};

if GAMESTATE:IsCourseMode() then
  t[#t+1] = Def.ActorFrame{
    LoadActor("course");
  };
else
  t[#t+1] = Def.ActorFrame{
    LoadActor("normal");
  };
end;

return t
