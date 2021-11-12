local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame {
	
	Def.Quad{
		InitCommand=function(s)
			s:diffuse(color("#1f2e45")):FullScreen():Center():diffusealpha(1) end,
	};


	LoadActor(THEME:GetPathB("","_blue doors/scsh_stair"..gl))..{
		OnCommand = function(self)
			self:zoom(2.5);
			self:Center()
			self:diffusealpha(0);
			self:sleep(0.1);
			self:linear(0.2);
			self:zoom(2.3)
			self:diffusealpha(1);
			self:decelerate(1);
			self:zoom(2)
		end;
	};

	LoadActor(THEME:GetPathB("","_blue doors/scsh_stair"..gl))..{
		OnCommand = function(self)
			self:blend('BlendMode_Add')
			self:zoom(2.5);
			self:Center()
			self:diffusealpha(0);
			self:sleep(0.1);
			self:linear(0.2);
			self:zoom(2.3)
			self:diffusealpha(1);
			self:decelerate(1);
			self:zoom(2)
			self:diffusealpha(0)
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_flare1"..gl))..{
		InitCommand=function(s) s:xy(_screen.cx,_screen.cy-200):zoom(2.5) end,
		OnCommand=function(self)
			self:diffusealpha(0);
			self:zoom(3);
			self:linear(0.3);
			self:diffusealpha(0.4);
			self:zoom(2.5);
			self:blend('BlendMode_Add');
			self:linear(2.5);
			self:rotationz(-100);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_light1"..gl))..{
		InitCommand=function(s) s:Center() end,
		OnCommand=function(self)
			self:blend('BlendMode_Add');
			self:diffusealpha(0);
			self:sleep(0.1);
			self:linear(0.7);
			self:addx(100);
			self:addy(-60);
			self:diffusealpha(0.6);
			self:linear(0.7);
			self:addx(100);
			self:addy(-60);
			self:diffusealpha(0);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_light1"..gl))..{
		InitCommand=function(s) s:Center() end,
		OnCommand=function(self)
			self:blend('BlendMode_Add');
			self:diffusealpha(0);
			self:sleep(0.1);
			self:linear(0.7);
			self:addx(-60);
			self:addy(-100);
			self:diffusealpha(0.6);
			self:linear(0.7);
			self:addx(-60);
			self:addy(-100);
			self:diffusealpha(0);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_light1"..gl))..{
		InitCommand=function(s) s:Center() end,
		OnCommand=function(self)
			self:blend('BlendMode_Add');
			self:diffusealpha(0);
			self:sleep(0.1);
			self:linear(0.7);
			self:addx(100);
			self:addy(100);
			self:diffusealpha(0.6);
			self:linear(0.7);
			self:addx(100);
			self:addy(100);
			self:diffusealpha(0);
		end;
	};
	Def.ActorFrame{
	InitCommand=cmd(CenterX);
		LoadActor(THEME:GetPathB("","_blue doors/coch_hud"))..{
			InitCommand=cmd(x,-295.5;y,SCREEN_CENTER_Y;diffusealpha,0.4);
			OnCommand=cmd(zoom,0;sleep,0.7;linear,0.083;zoom,1);
		};
		LoadActor(THEME:GetPathB("","_blue doors/coch_hud"))..{
			InitCommand=cmd(x,295.5;y,SCREEN_CENTER_Y;diffusealpha,0.4);
			OnCommand=cmd(zoom,0;sleep,0.7;linear,0.083;zoomx,-1;zoomy,1);
		};
	};
	Def.ActorFrame{
		AnimOffCommand=cmd(diffusealpha,1;accelerate,0.4;diffusealpha,0);
		Def.Quad{
			InitCommand=cmd(FullScreen;diffuse,Color.White;diffusealpha,0.1;);
		};
		Def.Sprite{
			Texture=THEME:GetPathB("","_blue doors/gold_scsh_back_inter (stretch).png"),
			InitCommand=function(self)
				self:FullScreen():diffusealpha(0.2)
				local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
				local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
				self:customtexturerect(2,0.8,w,h);
				self:texcoordvelocity(0,1);
			end;
		};
	};
	--Down
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoom(1.5);
			self:xy(_screen.cx+279,_screen.cy+150);
			self:sleep(0.1);
			self:decelerate(0.8);
			self:zoom(1);
			self:decelerate(0.4);
			self:addy(-10);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_03"))..{
		OnCommand = function(self)
			self:zoom(1.5);
			self:xy(_screen.cx+279,_screen.cy+150);
			self:sleep(0.1);
			self:decelerate(0.8);
			self:zoom(1);
			self:diffusealpha(0.7);
			self:linear(0.3);
			self:diffusealpha(0);
		end;
	};
	--Up
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoomy(-1.5);
			self:zoomx(1.5);
			self:xy(_screen.cx+279,_screen.cy-160);
			self:sleep(0.1);
			self:decelerate(0.8);
			self:zoomy(-1);
			self:zoomx(1);
			self:decelerate(0.4);
			self:addy(10);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_03"))..{
		OnCommand = function(self)
			self:zoomy(-1.5);
			self:zoomx(1.5);
			self:xy(_screen.cx+279,_screen.cy-150);
			self:sleep(0.1);
			self:decelerate(0.8);
			self:zoomy(-1);
			self:zoomx(1);
			self:diffusealpha(0.7);
			self:linear(0.3);
			self:diffusealpha(0);
		end;
	};
	--Down
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoomy(1.5);
			self:zoomx(-1.5);
			self:xy(_screen.cx-279,_screen.cy+150);
			self:sleep(0.1);
			self:decelerate(0.8);
			self:zoomy(1);
			self:zoomx(-1);
			self:decelerate(0.4);
			self:addy(-10);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_03"))..{
		OnCommand = function(self)
			self:zoomy(1.5);
			self:zoomx(-1.5);
			self:xy(_screen.cx-279,_screen.cy+150);
			self:sleep(0.1);
			self:decelerate(0.8);
			self:zoomy(1);
			self:zoomx(-1);
			self:diffusealpha(0.7);
			self:linear(0.3);
			self:diffusealpha(0);
		end;
	};
	--Up
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoom(-1.5);
			self:xy(_screen.cx-279,_screen.cy-160);
			self:sleep(0.1);
			self:decelerate(0.8);
			self:zoom(-1);
			self:decelerate(0.4);
			self:addy(10);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_03"))..{
		OnCommand = function(self)
			self:zoom(-1.5);
			self:xy(_screen.cx-279,_screen.cy-160);
			self:sleep(0.1);
			self:decelerate(0.8);
			self:zoom(-1);
			self:diffusealpha(0.7);
			self:linear(0.3);
			self:diffusealpha(0);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/coch_arrow1"))..{
		InitCommand = function(self)
			self:x(SCREEN_CENTER_X);
			self:y(SCREEN_CENTER_Y);
			self:vertalign(bottom);
			self:rotationz(0);
			self:zoom(0.7);
			self:blend('BlendMode_Add');
		end;
		OnCommand=function(self)
			self:sleep(1.2-0.6);
			self:rotationz(0);
			self:decelerate(0.6);
			self:rotationz(720);
			self:sleep(0.06);
			self:diffusealpha(0);
			self:sleep(0.06);
			self:diffusealpha(0.5);
			self:sleep(0.06);
			self:diffusealpha(0);
			self:sleep(0.06);
			self:diffusealpha(0.5);
			self:sleep(0.06);
			self:diffusealpha(0);
			self:sleep(0.06);
			self:diffusealpha(0.5);
			self:decelerate(0.2);
			self:addy(-155);
			self:zoom(1);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/coch_arrow1"))..{
		InitCommand = function(self)
			self:x(SCREEN_CENTER_X);
			self:y(SCREEN_CENTER_Y);
			self:vertalign(bottom);
			self:rotationz(90);
			self:zoom(0.7);
			self:blend('BlendMode_Add');
		end;
		OnCommand=function(self)
			self:sleep(1.2-0.6);
			self:rotationz(90+0);
			self:decelerate(0.6);
			self:rotationz(90+720);
			self:sleep(0.06);
			self:diffusealpha(0);
			self:sleep(0.06);
			self:diffusealpha(0.5);
			self:sleep(0.06);
			self:diffusealpha(0);
			self:sleep(0.06);
			self:diffusealpha(0.5);
			self:sleep(0.06);
			self:diffusealpha(0);
			self:sleep(0.06);
			self:diffusealpha(0.5);
			self:decelerate(0.2);
			self:addx(490);
			self:zoom(1);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/coch_arrow1"))..{
		InitCommand = function(self)
			self:x(SCREEN_CENTER_X);
			self:y(SCREEN_CENTER_Y);
			self:vertalign(bottom);
			self:rotationz(180);
			self:zoom(0.7);
			self:blend('BlendMode_Add');
		end;
		OnCommand=function(self)
			self:sleep(1.2-0.6);
			self:rotationz(180+0);
			self:decelerate(0.6);
			self:rotationz(180+720);
			self:sleep(0.06);
			self:diffusealpha(0);
			self:sleep(0.06);
			self:diffusealpha(0.5);
			self:sleep(0.06);
			self:diffusealpha(0);
			self:sleep(0.06);
			self:diffusealpha(0.5);
			self:sleep(0.06);
			self:diffusealpha(0);
			self:sleep(0.06);
			self:diffusealpha(0.5);
			self:decelerate(0.2);
			self:addy(155);
			self:zoom(1);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/coch_arrow1"))..{
		InitCommand = function(self)
			self:x(SCREEN_CENTER_X);
			self:y(SCREEN_CENTER_Y);
			self:vertalign(bottom);
			self:rotationz(270);
			self:zoom(0.7);
			self:blend('BlendMode_Add');
		end;
		OnCommand=function(self)
			self:sleep(1.2-0.6);
			self:rotationz(270+0);
			self:decelerate(0.6);
			self:rotationz(270+720);
			self:sleep(0.06);
			self:diffusealpha(0);
			self:sleep(0.06);
			self:diffusealpha(0.5);
			self:sleep(0.06);
			self:diffusealpha(0);
			self:sleep(0.06);
			self:diffusealpha(0.5);
			self:sleep(0.06);
			self:diffusealpha(0);
			self:sleep(0.06);
			self:diffusealpha(0.5);
			self:decelerate(0.2);
			self:addx(-490);
			self:zoom(1);
		end;
	};
	
};

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
	LoadActor(THEME:GetPathB("","_blue doors/scch_edge_flash"..gl)) .. {
		InitCommand=cmd(x,-379;y,SCREEN_TOP+87;diffusealpha,0;);
    OnCommand=cmd(sleep,0.6;linear,0.133;y,SCREEN_TOP+123;sleep,0.033;accelerate,0.3;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_blue doors/scch_edge_flash"..gl)) .. {
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
	LoadActor(THEME:GetPathB("","_blue doors/scch_edge_flash"..gl)) .. {
		InitCommand=cmd(x,-379;y,SCREEN_BOTTOM-87;diffusealpha,0;zoomy,-1);
    OnCommand=cmd(sleep,0.6;linear,0.133;y,SCREEN_BOTTOM-123;sleep,0.033;accelerate,0.3;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_blue doors/scch_edge_flash"..gl)) .. {
		InitCommand=cmd(x,379;y,SCREEN_BOTTOM-87;diffusealpha,0;zoom,-1);
    OnCommand=cmd(sleep,0.6;linear,0.133;y,SCREEN_BOTTOM-123;sleep,0.033;accelerate,0.3;diffusealpha,1;);
	};
	
};

t[#t+1] = LoadActor(THEME:GetPathB("","_blue doors/cosh_burst_flare"..gl)) .. {
    InitCommand=cmd(Center;FullScreen);
    OnCommand=cmd(zoomy,500;diffusealpha,0;blend,Blend.Add;draworder,3;sleep,1.100;linear,0.1;diffusealpha,1;linear,0.2;diffusealpha,0;zoom,2.44*1;);
};

return t