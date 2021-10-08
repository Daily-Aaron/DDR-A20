local t = Def.ActorFrame {};

if ddrgame=="gold_" then
t[#t+1] = Def.ActorFrame{
	AnimOffCommand=cmd(diffusealpha,1;accelerate,0.4;diffusealpha,0);
	Def.Sprite{
		Texture=THEME:GetPathB("","_blue doors/scsh_background 4x3.png"),
		InitCommand=function(self)
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
		Texture=THEME:GetPathB("","_blue doors/bluebg"),
		InitCommand=function(self)
			self:FullScreen()
		end;
	};
};
end;


t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+98;zoom,1);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-98;zoomy,-1;);
	};
}
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+98;zoomx,-1);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-98;zoomx,1;zoom,-1);
	};
}



--Glow
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	OnCommand=cmd(queuecommand,"Animate");
	AnimateCommand=cmd(diffuseshift;effectcolor1,1,1,1,1;effectcolor2,1,1,1,0.4;effectperiod,5);
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+75;diffusealpha,0.5;zoomx,-1;linear,1.5;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-75;diffusealpha,0.5;zoomy,-1;linear,1.5;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+75;diffusealpha,0.5;zoom,1;linear,1.5;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-75;zoomy,-1;diffusealpha,0.5;zoom,-1;linear,1.5;diffusealpha,1;);
	};	
};

return t;
