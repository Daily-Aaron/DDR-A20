return Def.ActorFrame {
--Sound
	LoadActor(THEME:GetPathS("","Open")) .. {
		OnCommand=cmd(play);
	};
	
	Def.Quad{
		InitCommand=function(s)
			s:diffuse(color("#1f2e45")):FullScreen():Center():diffusealpha(1) end,
		OnCommand=function(s) s:linear(0.05):diffusealpha(0) end,
	};
	LoadActor(THEME:GetPathB("","_blue doors/gold_scsh_back_inter"))..{
		InitCommand=function(self)
			self:FullScreen():diffusealpha(0.4)
			local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
			local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
			self:customtexturerect(2,8.3,w,h);
			self:texcoordvelocity(0,0);
		end;
		OnCommand=cmd(linear,0.05;diffusealpha,0);
	};
	--Down
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoom(1);
			self:xy(_screen.cx+279,_screen.cy+140);
			self:linear(0.2);
			self:addx(90);
			self:addy(40);
			self:zoom(1.3);
			self:diffusealpha(0)
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoomy(1);
			self:zoomx(-1);
			self:xy(_screen.cx-279,_screen.cy+140);
			self:linear(0.2);
			self:addx(-90);
			self:addy(40);
			self:zoomy(1.3);
			self:zoomx(-1.3);
			self:diffusealpha(0)
		end;
	};
	--Up
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoomy(-1);
			self:zoomx(1);
			self:xy(_screen.cx+279,_screen.cy-150);
			self:linear(0.2);
			self:addx(90);
			self:addy(-40);
			self:zoomy(-1.3);
			self:zoomx(1.3);
			self:diffusealpha(0)
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoom(-1);
			self:xy(_screen.cx-279,_screen.cy-150);
			self:linear(0.2);
			self:addx(-90);
			self:addy(-40);
			self:zoom(-1.3)
			self:diffusealpha(0)
		end;
	};
	Def.ActorFrame{
		InitCommand=cmd(CenterX);	
	--UP
		LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_frame")) .. {
			InitCommand=cmd(x,-379;y,SCREEN_TOP+123);
			OnCommand=cmd(linear,0.45;y,SCREEN_TOP-87;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_frame")) .. {
			InitCommand=cmd(x,379;y,SCREEN_TOP+123;zoomx,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_TOP-87;diffusealpha,0);
		};
	--Flash
		LoadActor(THEME:GetPathB("","_blue doors/scch_edge_flash"..gl)) .. {
			InitCommand=cmd(x,-379;y,SCREEN_TOP+123);
			OnCommand=cmd(linear,0.45;y,SCREEN_TOP-87;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_blue doors/scch_edge_flash"..gl)) .. {
			InitCommand=cmd(x,379;y,SCREEN_TOP+123;zoomx,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_TOP-87;diffusealpha,0);
		};
	--DOWN
		LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_frame")) .. {
			InitCommand=cmd(x,-379;y,SCREEN_BOTTOM-123;zoomy,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+87;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_frame")) .. {
			InitCommand=cmd(x,379;y,SCREEN_BOTTOM-123;zoom,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+87;diffusealpha,0);
		};
	--Flash
		LoadActor(THEME:GetPathB("","_blue doors/scch_edge_flash"..gl)) .. {
			InitCommand=cmd(x,-379;y,SCREEN_BOTTOM-123;zoomy,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+87;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_blue doors/scch_edge_flash"..gl)) .. {
			InitCommand=cmd(x,379;y,SCREEN_BOTTOM-123;zoom,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+87;diffusealpha,0);
		};
	};
	LoadActor(THEME:GetPathB("","_blue doors/cosh_burst_flare"..gl)) .. {
		InitCommand=cmd(Center;FullScreen;blend,Blend.Add;diffusealpha,0.5);
		OnCommand=function(self)
			self:linear(0.45):diffusealpha(0):zoom(9*1);
		end;
	};
};