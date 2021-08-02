local t = LoadFallbackB();


if ThemePrefs.Get("Version") == "A20" then
		t[#t+1] = LoadActor( THEME:GetPathS("","MenuMusic/logout/A20 Logout") ) .. {
			OnCommand=cmd(queuecommand,"Play");
			PlayCommand=cmd(play);
		};
else
		t[#t+1] = LoadActor( THEME:GetPathS("","MenuMusic/logout/A20+ Logout") ) .. {
			PlayCommand=cmd(play);
			OnCommand=cmd(queuecommand,"Play");
		};
end;

t[#t+1] = Def.ActorFrame {
  LoadActor(THEME:GetPathS("","Profile_start"))..{
		OnCommand=cmd(play);
	};
};

t[#t+1] = Def.ActorFrame {
  LoadActor(THEME:GetPathS("","Profile_In"))..{
		OnCommand=cmd(play);
	};
};

t[#t+1] = LoadActor( THEME:GetPathS("","Profile_start") )..{
			OffCommand=cmd(play);
};

t[#t+1] = LoadActor("_bluebg");
  
return t
