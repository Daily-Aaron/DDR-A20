return Def.ActorFrame{

	LoadActor(THEME:GetPathS("ScreenGameOver","A20+ music.ogg"))..{
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
	
	Def.Quad{
		InitCommand=function(s) s:FullScreen():diffusecolor(color("1,1,1,1")) end,
		OnCommand=function(s) s:diffusealpha(1):linear(0.5):diffusealpha(0) end,
	};
	
	--Thank
	LoadActor(THEME:GetPathB("ScreenGameOver","underlay/A20 PLUS/"..ddrgame.."scgov_thnk_text_1"))..{
		InitCommand=function(s) s:xy(_screen.cx-183,_screen.cy-88) end,
		OnCommand=function(s) s:addy(70):zoom(0):linear(0.5):addy(-70):zoom(1):sleep(4):linear(0.45):addx(183):addy(70):zoom(0) end,
	};
	
	--You
	LoadActor(THEME:GetPathB("ScreenGameOver","underlay/A20 PLUS/"..ddrgame.."scgov_thnk_text_2"))..{
		InitCommand=function(s) s:xy(_screen.cx+315,_screen.cy-88) end,
		OnCommand=function(s) s:addy(50):zoom(0):sleep(0.1):linear(0.5):addy(-50):zoom(1):sleep(4):linear(0.45):addx(-315):addy(70):zoom(0) end,
	};
	
	--For
	LoadActor(THEME:GetPathB("ScreenGameOver","underlay/A20 PLUS/"..ddrgame.."scgov_thnk_text_3"))..{
		InitCommand=function(s) s:xy(_screen.cx-348,_screen.cy+90) end,
		OnCommand=function(s) s:addy(-70):zoom(0):sleep(0.2):linear(0.5):addy(70):zoom(1):sleep(4):linear(0.45):addx(348):addy(-50):zoom(0) end,
	};
	
	--Playing
	LoadActor(THEME:GetPathB("ScreenGameOver","underlay/A20 PLUS/"..ddrgame.."scgov_thnk_text_4"))..{
		InitCommand=function(s) s:xy(_screen.cx+206,_screen.cy+90) end,
		OnCommand=function(s) s:addy(-50):zoom(0):sleep(0.25):linear(0.5):addy(50):zoom(1):sleep(4):linear(0.45):addx(-190):addy(-50):zoom(0) end,
	};
	
	--Sparkles
	LoadActor(THEME:GetPathB("ScreenGameOver","underlay/A20 PLUS/"..ddrgame.."scgov_light"))..{
		InitCommand=function(s) s:xy(_screen.cx-370,_screen.cy-145):blend(('BlendMode_Add')) end,
		OnCommand=function(s) s:playcommand("Animate") end,
		AnimateCommand=function(s) s:zoom(0):sleep(0.9):linear(0.1):zoom(1):linear(0.1):zoom(0):sleep(1):queuecommand("Animate") end,
	};
	LoadActor(THEME:GetPathB("ScreenGameOver","underlay/A20 PLUS/"..ddrgame.."scgov_light"))..{
		InitCommand=function(s) s:xy(_screen.cx-66,_screen.cy+45):blend(('BlendMode_Add')) end,
		OnCommand=function(s) s:playcommand("Animate") end,
		AnimateCommand=function(s) s:zoom(0):sleep(1.2):linear(0.1):zoom(1):linear(0.1):zoom(0):sleep(0.7):queuecommand("Animate") end,
	};
	LoadActor(THEME:GetPathB("ScreenGameOver","underlay/A20 PLUS/"..ddrgame.."scgov_light"))..{
		InitCommand=function(s) s:xy(_screen.cx+380,_screen.cy-140):blend(('BlendMode_Add')) end,
		OnCommand=function(s) s:playcommand("Animate") end,
		AnimateCommand=function(s) s:zoom(0):sleep(1.8):linear(0.1):zoom(1):linear(0.1):zoom(0):sleep(0.1):queuecommand("Animate") end,
	};
	LoadActor(THEME:GetPathB("ScreenGameOver","underlay/A20 PLUS/"..ddrgame.."scgov_light"))..{
		InitCommand=function(s) s:xy(_screen.cx+430,_screen.cy+35):blend(('BlendMode_Add')) end,
		OnCommand=function(s) s:playcommand("Animate") end,
		AnimateCommand=function(s) s:zoom(0):sleep(2.1):linear(0.1):zoom(1):linear(0.1):zoom(0):sleep(0):queuecommand("Animate") end,
	};
	
	Def.Quad{
		InitCommand=function(s) s:FullScreen():diffusecolor(color("1,1,1,1")) end,
		OnCommand=function(s) s:diffusealpha(0):sleep(5):linear(0.4):diffusealpha(1) end,
	};
};