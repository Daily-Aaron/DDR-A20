local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("","Close")) .. {
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
	LoadActor(THEME:GetPathS("","DoorFailed")) .. {
		OnCommand=cmd(sleep,0.25;queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

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

	
t[#t+1] = LoadActor( "redbg" )..{
	InitCommand=cmd(Center;zoomy,1;diffusealpha,0;);
	OnCommand=cmd(linear,0.2;diffusealpha,0.6);
	};
	
	
t[#t+1] = LoadActor("redline")..{
	OnCommand=cmd(Center;zoomx,0;sleep,0.2;linear,0.2;diffusealpha,1;zoomx,1;linear,0.1;diffusealpha,0;zoomx,1;);
	};
	

t[#t+1] = Def.ActorFrame {
	--Right
		LoadActor(ddrgame.."failed" )..{
			InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
			OnCommand=cmd(zoom,0.5;linear,0;diffusealpha,1;linear,0.2;diffusealpha,1;zoomx,1;zoomy,1.15;linear,0.05;diffusealpha,1;zoomx,1.1;zoomy,1.5;linear,0.1;diffusealpha,1;zoomx,1.15;zoomy,1.15;linear,0.1;zoomx,1.1;zoomy,1.1;linear,0.2;zoomx,1;zoomy,1;);
		};
	--Glow
		LoadActor(ddrgame.."failed" )..{
			InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
			OnCommand=cmd(zoom,2.5;linear,0;diffusealpha,0.3;linear,0.2;diffusealpha,1;zoomx,1;zoomy,1.15;linear,0.05;diffusealpha,0.3;zoomx,1.1;zoomy,1.5;linear,0.1;diffusealpha,0.3;zoomx,2.5;zoomy,2.3;linear,0.5;diffusealpha,0;zoomx,4;zoomy,3.45);
		};
		LoadActor(ddrgame.."failed" )..{
			InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
			OnCommand=cmd(zoom,0.5;linear,0;diffusealpha,0;linear,0.2;diffusealpha,0;zoomx,1;zoomy,1.1;linear,0.05;diffusealpha,0;zoomx,1.1;zoomy,1.5;linear,0.1;diffusealpha,0;zoomx,1.15;zoomy,1.15;linear,0.1;linear,0.1;zoomx,1.1;zoomy,1.1;linear,0.2;zoomx,1;zoomy,1;sleep,0.1;linear,0;diffusealpha,0.25;zoom,1.4;linear,0.2;diffusealpha,0.05;zoom,1.35;linear,0.2;diffusealpha,0.25;zoom,1.3;linear,0.2;diffusealpha,0.05;zoom,1.25;linear,0.2;diffusealpha,0.25;zoom,1.2;linear,0.2;diffusealpha,0.05,zoom,1.15;linear,0.2;diffusealpha,0.25;zoom,1.1;linear,0;diffusealpha,0;zoom,1.4;linear,0.2;diffusealpha,0.25;zoom,1.4;linear,0.2;diffusealpha,0.05;zoom,1.35;linear,0.2;diffusealpha,0.25;zoom,1.3;linear,0.2;diffusealpha,0.05;zoom,1.25;linear,0.2;diffusealpha,0.25;zoom,1.2;linear,0.2;diffusealpha,0.05,zoom,1.15;linear,0.2;diffusealpha,0.25;zoom,1.1;linear,0;diffusealpha,0;zoom,1.1;linear,0.2;diffusealpha,0.25;zoom,1.1;);
		};
};
	
return t