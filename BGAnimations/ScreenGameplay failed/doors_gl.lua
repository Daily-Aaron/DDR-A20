local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame{
	Def.Quad{
		InitCommand=function(s)
			s:diffuse(color("#1f2e45")):FullScreen():Center():diffusealpha(1) end,
	};
	
	LoadActor(THEME:GetPathB("","_blue doors/scsh_stair"..gl))..{
	OnCommand = function(self)
		self:zoom(2.5);
		self:Center()
		self:diffusealpha(0);
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
		self:linear(0.2);
		self:zoom(2.3)
		self:diffusealpha(1);
		self:decelerate(1);
		self:zoom(2)
		self:diffusealpha(0)
	end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_darkSeat"..gl))..{
	OnCommand = function(self)
		self:FullScreen()
		self:Center()
		self:linear(0.2)
		self:blend('BlendMode_Add')
	end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_light1"..gl))..{
		InitCommand=function(s) s:Center() end,
		OnCommand=function(self)
			self:blend('BlendMode_Add');
			self:diffusealpha(0);
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
	--Down
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_02"))..{
		OnCommand = function(self)
			self:zoom(1.5);
			self:xy(_screen.cx+279,_screen.cy+180);
			self:decelerate(0.8);
			self:zoom(1);
			self:decelerate(0.4);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_03"))..{
		OnCommand = function(self)
			self:zoom(1.5);
			self:xy(_screen.cx+279,_screen.cy+180);
			self:decelerate(0.8);
			self:zoom(1);
			self:diffusealpha(0.7);
			self:linear(0.3);
			self:diffusealpha(0);
		end;
	};
	--Down
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_02"))..{
		OnCommand = function(self)
			self:zoomy(1.5);
			self:zoomx(-1.5);
			self:xy(_screen.cx-279,_screen.cy+180);
			self:decelerate(0.8);
			self:zoomy(1);
			self:zoomx(-1);
			self:decelerate(0.4);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_03"))..{
		OnCommand = function(self)
			self:zoomy(1.5);
			self:zoomx(-1.5);
			self:xy(_screen.cx-279,_screen.cy+180);
			self:decelerate(0.8);
			self:zoomy(1);
			self:zoomx(-1);
			self:diffusealpha(0.7);
			self:linear(0.3);
			self:diffusealpha(0);
		end;
	};
	--Up
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_02"))..{
		OnCommand = function(self)
			self:zoomy(-1.5);
			self:zoomx(1.5);
			self:xy(_screen.cx+520,_screen.cy-257);
			self:decelerate(0.8);
			self:zoomy(-1);
			self:zoomx(1);
			self:decelerate(0.4);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_03"))..{
		OnCommand = function(self)
			self:zoomy(-1.5);
			self:zoomx(1.5);
			self:xy(_screen.cx+520,_screen.cy-257);
			self:decelerate(0.8);
			self:zoomy(-1);
			self:zoomx(1);
			self:diffusealpha(0.7);
			self:linear(0.3);
			self:diffusealpha(0);
		end;
	};
	--Up
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_02"))..{
		OnCommand = function(self)
			self:zoom(-1.5);
			self:xy(_screen.cx-520,_screen.cy-257);
			self:decelerate(0.8);
			self:zoom(-1);
			self:decelerate(0.4);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_03"))..{
		OnCommand = function(self)
			self:zoom(-1.5);
			self:xy(_screen.cx-520,_screen.cy-257);
			self:decelerate(0.8);
			self:zoom(-1);
			self:diffusealpha(0.7);
			self:linear(0.3);
			self:diffusealpha(0);
		end;
	};
	
};

return t
