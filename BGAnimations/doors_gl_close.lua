local t = Def.ActorFrame{};
local dt = 0;

t[#t+1] = LoadActor(THEME:GetPathS("","Close")) .. {
	OnCommand=cmd(sleep,dt;queuecommand,"Play");
	PlayCommand=cmd(play);
};

t[#t+1] = Def.ActorFrame{
	AnimOffCommand=cmd(diffusealpha,1;accelerate,0.4;diffusealpha,0);
	Def.Sprite{
		Texture=THEME:GetPathB("","_blue doors/scsh_background"..gl.." 4x3.png"),
		InitCommand=function(self)
			self:sleep(dt);
			self:FullScreen()
			self:SetAllStateDelays(0.09)
		end;
	};
};


t[#t+1] = Def.ActorFrame{
	LoadActor(THEME:GetPathB("","_blue doors/scsh_stair"..gl))..{
	OnCommand = function(self)
		self:zoom(2.5);
		self:Center()
		self:diffusealpha(0);
		self:sleep(dt);
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
		self:sleep(dt);
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
		self:diffusealpha(0);
		self:sleep(dt);
		self:linear(0.2);
		self:diffusealpha(0.9)
		self:blend('BlendMode_Add')
	end;
	};

	LoadActor(THEME:GetPathB("","_blue doors/scsh_light1"..gl))..{
		InitCommand=function(s) s:Center() end,
		OnCommand=function(self)
			self:blend('BlendMode_Add');
			self:diffusealpha(0);
			self:sleep(dt);
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
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoom(1.5);
			self:xy(_screen.cx+279,_screen.cy+180);
			self:sleep(dt);
			self:decelerate(0.8);
			self:zoom(1);
			self:decelerate(0.4);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_03"))..{
		OnCommand = function(self)
			self:zoom(1.5);
			self:xy(_screen.cx+279,_screen.cy+180);
			self:sleep(dt);
			self:decelerate(0.8);
			self:zoom(1);
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
			self:xy(_screen.cx-279,_screen.cy+180);
			self:sleep(dt);
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
			self:sleep(dt);
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
			self:zoomy(-1.5);
			self:zoomx(1.5);
			self:xy(_screen.cx+520,_screen.cy-257);
			self:sleep(dt);
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
			self:sleep(dt);
			self:decelerate(0.8);
			self:zoomy(-1);
			self:zoomx(1);
			self:diffusealpha(0.7);
			self:linear(0.3);
			self:diffusealpha(0);
		end;
	};
	--Up
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoom(-1.5);
			self:xy(_screen.cx-520,_screen.cy-257);
			self:sleep(dt);
			self:decelerate(0.8);
			self:zoom(-1);
			self:decelerate(0.4);
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_03"))..{
		OnCommand = function(self)
			self:zoom(-1.5);
			self:xy(_screen.cx-520,_screen.cy-257);
			self:sleep(dt);
			self:decelerate(0.8);
			self:zoom(-1);
			self:diffusealpha(0.7);
			self:linear(0.3);
			self:diffusealpha(0);
		end;
	};
	
};

return t