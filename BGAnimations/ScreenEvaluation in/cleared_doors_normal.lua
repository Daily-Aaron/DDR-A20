local t = Def.ActorFrame{};
local song = GAMESTATE:GetCurrentSong();

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("","SwooshEvaluation")) .. {
		OnCommand=cmd(sleep,0.03;queuecommand,"Play");
		PlayCommand=cmd(play);
	};
	LoadActor(THEME:GetPathS("","Open")) .. {
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
	LoadActor(THEME:GetPathS("","Open")) .. {
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

if ddrgame=="gold_" then
t[#t+1] = Def.Quad{
	InitCommand=cmd(FullScreen;diffusealpha,1);
	OnCommand=cmd(linear,0.2;diffusealpha,0);
};
end;


t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/backflashvert (doubleres)"))..{
		InitCommand=cmd(y,SCREEN_TOP+210;diffusealpha,0.75;zoom,-2;);
        OnCommand=cmd(addy,-99;sleep,0;linear,0.2;addy,-300;diffusealpha,1;sleep,0.1;linear,0.2;diffusealpha,0);
	};
	LoadActor(THEME:GetPathB("","_blue doors/backflashvert (doubleres)"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-210;diffusealpha,0.75;zoom,2;);
        OnCommand=cmd(addy,99;sleep,0;linear,0.2;addy,300;diffusealpha,1;sleep,0.1;linear,0.2;diffusealpha,0);
	};
}

	


--Those Weird Curved Things
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+210;diffusealpha,1;zoomx,-1);
    OnCommand=cmd(addy,-99;sleep,0;linear,0.2;addy,-200;diffusealpha,1;sleep,0.1;linear,0.2;diffusealpha,0);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+210;diffusealpha,1;zoom,1);
    OnCommand=cmd(addy,-99;sleep,0;linear,0.2;addy,-200;diffusealpha,1;sleep,0.1;linear,0.2;diffusealpha,0);
	};
	
}
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-210;diffusealpha,1;zoomy,-1);
    OnCommand=cmd(addy,99;sleep,0;linear,0.2;addy,200;diffusealpha,1;sleep,0.1;linear,0.2;diffusealpha,0);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-210;zoomy,-1;diffusealpha,1;zoom,-1);
    OnCommand=cmd(addy,99;sleep,0;linear,0.2;addy,200;diffusealpha,1;sleep,0.1;linear,0.2;diffusealpha,0);
	};
}

--Lines
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+187;diffusealpha,0.7;zoomx,-1);
    OnCommand=cmd(addy,-99;sleep,0;linear,0.2;addy,-200;diffusealpha,0.7;sleep,0.1;linear,0.2;diffusealpha,0);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+187;diffusealpha,0.7;zoom,1);
    OnCommand=cmd(addy,-99;sleep,0;linear,0.2;addy,-200;diffusealpha,0.7;sleep,0.1;linear,0.2;diffusealpha,0);
	};
}

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-187;diffusealpha,0.7;zoomy,-1);
    OnCommand=cmd(addy,99;sleep,0;linear,0.2;addy,200;diffusealpha,0.7;sleep,0.1;linear,0.2;diffusealpha,0);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-187;zoomy,-1;diffusealpha,0.7;zoom,-1);
    OnCommand=cmd(addy,99;sleep,0;linear,0.2;addy,200;diffusealpha,0.7;sleep,0.1;linear,0.2;diffusealpha,0);
	};
}


t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathB("ScreenGameplay","out/bluebg"))..{
		InitCommand=function(self)
			self:xy(SCREEN_CENTER_X,SCREEN_CENTER_Y):zoomy(1):diffusealpha(1)
				if ddrgame=="gold_" then
					self:blend(('BlendMode_Add'));
				end;
		end;
	OnCommand=cmd(linear,0.1;zoomy,0;zoomx,2;diffusealpha,1);
	};
};


if song:GetDisplayFullTitle() == "Tohoku EVOLVED" or song:GetDisplayFullTitle() == "COVID" then
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathB("ScreenGameplay","out/"..ddrgame.."prayforall"))..{
	InitCommand=cmd(Center;zoomy,1;diffusealpha,1;);
	OnCommand=cmd(linear,0.1;zoomy,0;zoomx,2;diffusealpha,1);
	};
};
else
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathB("ScreenGameplay","out/"..ddrgame.."clear"))..{
	InitCommand=cmd(Center;zoomy,1;diffusealpha,1;);
	OnCommand=cmd(linear,0.1;zoomy,0;zoomx,2;diffusealpha,1);
	};
};
end




return t
