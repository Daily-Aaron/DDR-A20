return Def.ActorFrame {
--Sound
	LoadActor(THEME:GetPathS("","Open")) .. {
		OnCommand=cmd(play);
	};
	--BGVideo
	LoadActor(THEME:GetPathB("ScreenWithMenuElements","background"))..{
		OnCommand=cmd(linear,0.05;diffusealpha,0);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back_inter"))..{
		InitCommand=function(self)
			self:FullScreen():diffusealpha(0.4)
			local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
			local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
			self:customtexturerect(2,8.3,w,h);
			self:texcoordvelocity(0,0);
		end;
		OnCommand=cmd(linear,0.05;diffusealpha,0);
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
		LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_edge_flash")) .. {
			InitCommand=cmd(x,-379;y,SCREEN_TOP+123);
			OnCommand=cmd(linear,0.45;y,SCREEN_TOP-87;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_edge_flash")) .. {
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
		LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_edge_flash")) .. {
			InitCommand=cmd(x,-379;y,SCREEN_BOTTOM-123;zoomy,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+87;diffusealpha,0);
		};
		LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scch_edge_flash")) .. {
			InitCommand=cmd(x,379;y,SCREEN_BOTTOM-123;zoom,-1);
			OnCommand=cmd(linear,0.45;y,SCREEN_BOTTOM+87;diffusealpha,0);
		};
	};
	LoadActor(THEME:GetPathB("","_blue doors/cosh_burst_flare")) .. {
		InitCommand=cmd(Center;FullScreen;blend,Blend.Add;diffusealpha,0.5);
		OnCommand=function(self)
			self:linear(0.45):diffusealpha(0):zoom(9*1);
		end;
	};
};