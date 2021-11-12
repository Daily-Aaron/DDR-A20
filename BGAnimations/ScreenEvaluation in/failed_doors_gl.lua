local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("","SwooshEvaluation")) .. {
		OnCommand=cmd(sleep,0.03;queuecommand,"Play");
		PlayCommand=cmd(play);
	};
	LoadActor(THEME:GetPathS("","Open")) .. {
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
	LoadActor(THEME:GetPathS("","Open")) .. {
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

if ddrgame=="gold_" then
	t[#t+1] = Def.Quad{
		InitCommand=cmd(FullScreen;diffusealpha,1);
		OnCommand=cmd(linear,0.2;diffusealpha,0);
	};
end;

t[#t+1] = Def.ActorFrame {
	Def.Quad{
		InitCommand=function(s)
			s:diffuse(color("#1f2e45")):FullScreen():Center():diffusealpha(1):linear(0.2):diffusealpha(0) end,
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
	LoadActor(THEME:GetPathB("","_blue doors/scsh_darkSeat"..gl))..{
	OnCommand = function(self)
		--self:blend('BlendMode_Add')
		self:diffusealpha(1)
		self:FullScreen()
		self:Center()
		self:linear(0.2)
		self:diffusealpha(0);
	end;
	};
	--Down
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_02"))..{
		OnCommand = function(self)
			self:zoom(1);
			self:xy(_screen.cx+279,_screen.cy+180);
			self:linear(0.2);
			self:addx(30);
			self:zoom(1.1);
			self:diffusealpha(0)
		end;
	};
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_02"))..{
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
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_02"))..{
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
	LoadActor(THEME:GetPathB("","_blue doors/scsh_frame"..gl.."_02"))..{
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


t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathB("ScreenGameplay","failed/redbg"))..{
	InitCommand=cmd(Center;zoomy,1;diffusealpha,0.6;);
	OnCommand=cmd(linear,0.1;zoomy,0;zoomx,2;diffusealpha,0.6);
	};
};
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathB("ScreenGameplay","failed/"..ddrgame.."failed"))..{
	InitCommand=cmd(Center;zoomy,1;diffusealpha,1;);
	OnCommand=cmd(linear,0.1;zoomy,0;zoomx,2;diffusealpha,1);
	};
};


return t
