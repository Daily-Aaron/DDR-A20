local t = Def.ActorFrame{};
local dt = 0;

t[#t+1] = Def.ActorFrame{
	AnimOffCommand=cmd(diffusealpha,1;accelerate,0.4;diffusealpha,0);
	Def.Sprite{
		Texture=THEME:GetPathB("","_blue doors/scsh_background"..gl.." 4x3.png"),
		InitCommand=function(self)
			self:FullScreen()
			self:SetAllStateDelays(0.09)
		end;
	};
};


t[#t+1] = Def.ActorFrame{
	LoadActor(THEME:GetPathB("","_blue doors/scsh_stair"..gl))..{
	OnCommand = function(self)
		self:Center();
		self:zoom(2)
	end;
	};
	
	LoadActor(THEME:GetPathB("","_blue doors/scsh_darkSeat"..gl))..{
	OnCommand = function(self)
		self:FullScreen()
		self:Center()
		self:diffusealpha(0.9)
		self:blend('BlendMode_Add')
	end;
	};
	
	--Down
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:xy(_screen.cx+279,_screen.cy+180);
		end;
	};
	
	--Down
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoomy(1);
			self:zoomx(-1);
			self:xy(_screen.cx-279,_screen.cy+180);
		end;
	};
	
	--Up
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoomy(-1);
			self:zoomx(1);
			self:xy(_screen.cx+520,_screen.cy-257);
		end;
	};
	--Up
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoom(-1);
			self:xy(_screen.cx-520,_screen.cy-257);
		end;
	};
};

return t