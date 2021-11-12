local t = Def.ActorFrame{};
local song = GAMESTATE:GetCurrentSong();

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("","Open")) .. {
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

t[#t+1] = Def.ActorFrame {
	Def.Quad{
		InitCommand=cmd(FullScreen;diffusealpha,1);
		OnCommand=cmd(linear,0.2;diffusealpha,0);
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_stair"..gl))..{
	OnCommand = function(self)
		self:zoom(2);
		self:diffusealpha(1)
		self:Center()
		self:linear(0.2);
		self:diffusealpha(0);
	end;
	};
	--Down
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoom(1);
			self:xy(_screen.cx+279,_screen.cy+180);
			self:linear(0.2);
			self:addx(30);
			self:zoom(1.1);
			self:diffusealpha(0)
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoomy(1);
			self:zoomx(-1);
			self:xy(_screen.cx-279,_screen.cy+180);
			self:linear(0.2);
			self:addx(-30);
			self:zoomy(1.1);
			self:zoomx(-1.1);
			self:diffusealpha(0)
		end;
	};
	--Up
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoomy(-1);
			self:zoomx(1);
			self:xy(_screen.cx+520,_screen.cy-257);
			self:linear(0.2);
			self:addx(30);
			self:zoomy(-1.1);
			self:zoomx(1.1);
			self:diffusealpha(0)
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_01"))..{
		OnCommand = function(self)
			self:zoom(-1);
			self:xy(_screen.cx-520,_screen.cy-257);
			self:linear(0.2);
			self:addx(-30);
			self:zoom(-1.1)
			self:diffusealpha(0)
		end;
	};
};

return t