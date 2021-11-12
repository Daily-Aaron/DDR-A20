local t = Def.ActorFrame{};

--Lines	
if ddrgame=="gold_" then
t[#t+1] = Def.ActorFrame{
	AnimOffCommand=cmd(diffusealpha,1;accelerate,0.4;diffusealpha,0);
	Def.Quad{
		InitCommand=cmd(FullScreen;diffuse,Color.White;diffusealpha,0.1;);
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
}
else
t[#t+1] = Def.ActorFrame{
AnimOffCommand=cmd(diffusealpha,1;accelerate,0.4;diffusealpha,0);
	Def.Quad{
		InitCommand=cmd(FullScreen;diffuse,Color.White;diffusealpha,0.1;);
	};
	Def.Sprite{
		Texture=THEME:GetPathB("","_blue doors/blue_scsh_back_inter (stretch).png"),
		InitCommand=function(self)
			self:FullScreen():diffusealpha(0.4)
			local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
			local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
			self:customtexturerect(2,8.3,w,h);
			self:texcoordvelocity(0,0);
		end;
	};
};
end;

if version == "A20+_" then
t[#t+1] = Def.ActorFrame{
--Shadow for A20+ Version
      Def.Sprite{
      Texture=THEME:GetPathB("","_blue doors/scch_frame_shadow"),
      InitCommand=function(s) s:xy(_screen.cx,SCREEN_TOP):valign(0):zoomtowidth(SCREEN_WIDTH) end,
      };
      Def.Sprite{
      Texture=THEME:GetPathB("","_blue doors/scch_frame_shadow"),
      InitCommand=function(s) s:xy(_screen.cx,SCREEN_BOTTOM):valign(0):zoomy(-1):zoomtowidth(SCREEN_WIDTH) end,
      };
};
end;


t[#t+1] = Def.ActorFrame{	
InitCommand=cmd(CenterX);
	--UpDoor
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_frame")) .. {
		InitCommand=cmd(x,-379;y,SCREEN_TOP+87;diffusealpha,0;);
    OnCommand=cmd(sleep,0.333;linear,0.133;y,SCREEN_TOP+123;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_frame")) .. {
		InitCommand=cmd(x,379;y,SCREEN_TOP+87;diffusealpha,0;zoomx,-1);
    OnCommand=cmd(sleep,0.333;linear,0.133;y,SCREEN_TOP+123;diffusealpha,1;);
	};
	--Flash
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_edge_flash")) .. {
		InitCommand=cmd(x,-379;y,SCREEN_TOP+87;diffusealpha,0;);
    OnCommand=cmd(sleep,0.6;linear,0.133;y,SCREEN_TOP+123;sleep,0.033;accelerate,0.3;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_edge_flash")) .. {
		InitCommand=cmd(x,379;y,SCREEN_TOP+87;diffusealpha,0;zoomx,-1);
    OnCommand=cmd(sleep,0.6;linear,0.133;y,SCREEN_TOP+123;sleep,0.033;accelerate,0.3;diffusealpha,1;);
	};
	--DownDoor
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_frame")) .. {
		InitCommand=cmd(x,-379;y,SCREEN_BOTTOM-87;diffusealpha,0;zoomy,-1);
    OnCommand=cmd(sleep,0.333;linear,0.133;y,SCREEN_BOTTOM-123;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_frame")) .. {
		InitCommand=cmd(x,379;y,SCREEN_BOTTOM-87;diffusealpha,0;zoom,-1);
    OnCommand=cmd(sleep,0.333;linear,0.133;y,SCREEN_BOTTOM-123;diffusealpha,1;);
	};
	--Flash
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_edge_flash")) .. {
		InitCommand=cmd(x,-379;y,SCREEN_BOTTOM-87;diffusealpha,0;zoomy,-1);
    OnCommand=cmd(sleep,0.6;linear,0.133;y,SCREEN_BOTTOM-123;sleep,0.033;accelerate,0.3;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_edge_flash")) .. {
		InitCommand=cmd(x,379;y,SCREEN_BOTTOM-87;diffusealpha,0;zoom,-1);
    OnCommand=cmd(sleep,0.6;linear,0.133;y,SCREEN_BOTTOM-123;sleep,0.033;accelerate,0.3;diffusealpha,1;);
	};
	--Center
	LoadActor(THEME:GetPathB("","_blue doors/coch_hud"))..{
		InitCommand=cmd(x,-295.5;y,SCREEN_CENTER_Y;diffusealpha,0.7);
		OnCommand=cmd(zoom,0;sleep,0.7;linear,0.083;zoom,1);
	};
	LoadActor(THEME:GetPathB("","_blue doors/coch_hud"))..{
		InitCommand=cmd(x,295.5;y,SCREEN_CENTER_Y;diffusealpha,0.7);
		OnCommand=cmd(zoom,0;sleep,0.7;linear,0.083;zoomx,-1;zoomy,1);
	};
	LoadActor(THEME:GetPathB("","_blue doors/cosh_burst_flare.png")) .. {
    InitCommand=cmd(y,SCREEN_TOP+35;zoom,0.7);
		OnCommand=cmd(zoomx,1.2;diffusealpha,0;blend,Blend.Add;sleep,1.658;linear,0.2;diffusealpha,1;diffuseshift;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0.9");effectperiod,0.02);
	};
	LoadActor(THEME:GetPathB("","_blue doors/cosh_burst_flare.png")) .. {
    InitCommand=cmd(y,SCREEN_BOTTOM-35;zoom,0.7);
		OnCommand=cmd(zoomx,1.2;diffusealpha,0;blend,Blend.Add;sleep,1.658;linear,0.2;diffusealpha,1;diffuseshift;effectcolor1,color("1,1,1,1");effectcolor2,color("1,1,1,0.9");effectperiod,0.02);
	};
};

t[#t+1] = LoadActor(THEME:GetPathB("","_blue doors/cosh_burst_flare.png")) .. {
    InitCommand=cmd(Center;FullScreen);
    OnCommand=cmd(zoomy,500;diffusealpha,0;blend,Blend.Add;draworder,3;sleep,1.100;linear,0.1;diffusealpha,1;linear,0.2;diffusealpha,0;zoom,2.44*1;);
};

return t