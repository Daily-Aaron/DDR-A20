local t = Def.ActorFrame{};
local dt = 1.235;
--Hacky way to get the transition.
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("","Close")) .. {
		OnCommand=cmd(sleep,dt;queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};


if ddrgame=="gold_" then
t[#t+1] = Def.ActorFrame{
	AnimOffCommand=cmd(diffusealpha,1;accelerate,0.4;diffusealpha,0);
	Def.Sprite{
		Texture=THEME:GetPathB("","_blue doors/scsh_background 4x3.png"),
		InitCommand=function(self)
			self:sleep(dt);
			self:FullScreen()
			self:SetAllStateDelays(0.09)
		end;
	};
	Def.Quad{
		InitCommand=cmd(FullScreen;diffuse,Color.Black;diffusealpha,0.4;);
	};
	Def.Sprite{
		Texture=THEME:GetPathB("","_blue doors/gold_scsh_back_inter (stretch).png"),
		InitCommand=function(self)
			self:sleep(dt);
			self:FullScreen():diffusealpha(0.5)
			local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
			local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
			self:customtexturerect(2,0.8,w,h);
			self:texcoordvelocity(0,1);
		end;
	};
};
else
t[#t+1] = Def.ActorFrame{
	Def.Sprite{
		Texture="_blue doors/bluebg";
		InitCommand=function(self)
			self:FullScreen()
		end;
	};
};
end;



t[#t+1] = LoadActor(THEME:GetPathB("","_blue doors/scsh_back03_blue"))..{
	OnCommand=cmd(sleep,dt;FullScreen;diffusealpha,0;diffusealpha,1;linear,0.083;sleep,1;diffusealpha,0;);
		};

t[#t+1] = LoadActor(THEME:GetPathB("","_blue doors/backflashhor (doubleres)"))..{
	InitCommand=cmd(x,-440;y,360;zoom,2;diffusealpha,1;);
	OnCommand=cmd(sleep,1.9;linear,0.3;addx,663;diffusealpha,0.5;linear,0.05;diffusealpha,0;);
		};
t[#t+1] = LoadActor(THEME:GetPathB("","_blue doors/backflashhor (doubleres)"))..{
	InitCommand=cmd(x,1720;y,360;zoom,-2;diffusealpha,1;);
	OnCommand=cmd(sleep,1.9;linear,0.3;addx,-663;diffusealpha,0.5;linear,0.05;diffusealpha,0;);
		};
t[#t+1] = LoadActor(THEME:GetPathB("","_blue doors/backflashvert (doubleres)"))..{
	InitCommand=cmd(x,640;y,-480;zoom,2;diffusealpha,1;);
	OnCommand=cmd(sleep,1.85;linear,0.25;addy,665;diffusealpha,0.5;linear,0.05;diffusealpha,0;);
		};
t[#t+1] = LoadActor(THEME:GetPathB("","_blue doors/backflashvert (doubleres)"))..{
	InitCommand=cmd(x,640;y,1210;zoom,-2;diffusealpha,1;);
	OnCommand=cmd(sleep,1.85;linear,0.25;addy,-660;diffusealpha,0.5;linear,0.05;diffusealpha,0;);
		};

t[#t+1] = LoadActor(THEME:GetPathB("","_blue doors/origwhiteflash"))..{
	OnCommand=cmd(sleep,dt;FullScreen;zoom,2;diffusealpha,0;diffusealpha,0;linear,0.1;sleep,0.9;diffusealpha,1;linear,0.2;diffusealpha,0;);
		};

						



--Those Weird Curved Things
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+87;diffusealpha,0;;zoomx,-1);
    OnCommand=cmd(addy,-99;sleep,1.4;linear,0.1;addy,110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-87;diffusealpha,0;zoomy,-1);
    OnCommand=cmd(addy,99;sleep,1.4;linear,0.1;addy,-110;diffusealpha,1;);
	};
}
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+87;diffusealpha,0;;zoom,1);
    OnCommand=cmd(addy,-99;sleep,1.4;linear,0.1;addy,110;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-87;zoomy,-1;diffusealpha,0;zoom,-1);
    OnCommand=cmd(addy,99;sleep,1.4;linear,0.1;addy,-110;diffusealpha,1;);
	};
}

--Lines
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+75;diffusealpha,0;zoomx,-1);
    OnCommand=cmd(addy,-99;sleep,1.5;linear,0.1;addy,99;diffusealpha,0;sleep,0.1;linear,1.5;diffusealpha,0.5;);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-75;diffusealpha,0;zoomy,-1);
   OnCommand=cmd(addy,99;sleep,1.5;linear,0.1;addy,-99;diffusealpha,0;sleep,0.1;linear,1.5;diffusealpha,0.5;);
	};
};
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+75;diffusealpha,0;zoom,1);
   OnCommand=cmd(addy,-99;sleep,1.5;linear,0.1;addy,99;diffusealpha,0;sleep,0.1;linear,1.5;diffusealpha,0.5;);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-75;zoomy,-1;diffusealpha,0;zoom,-1);
    OnCommand=cmd(addy,99;sleep,1.5;linear,0.1;addy,-99;diffusealpha,0;sleep,0.1;linear,1.5;diffusealpha,0.5;);
	};
};



t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/backflashvert (doubleres)"))..{
		InitCommand=cmd(y,SCREEN_TOP+1100;diffusealpha,0.75;zoom,-2;);
    OnCommand=cmd(sleep,dt;linear,0.2;addy,-1500;diffusealpha,0.75;);
	};
	LoadActor(THEME:GetPathB("","_blue doors/backflashvert (doubleres)"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-1100;diffusealpha,0.75;zoom,2;);
    OnCommand=cmd(sleep,dt;linear,0.2;addy,1500;diffusealpha,0.75;);
	};
}




return t
