local t = Def.ActorFrame{};
local dt = 1.235;

if not GAMESTATE:IsDemonstration() then

	if GetUserPref("OptionRowModel")=='GOLD' then
		if GetUserPref("OptionRowGoldenLeague")=='BRONZE' or 
		   GetUserPref("OptionRowGoldenLeague")=='SILVER' or 
	       GetUserPref("OptionRowGoldenLeague")=='GOLD' 
		then
			t[#t+1] = LoadActor("doors_gl")..{
				InitCommand=cmd(diffusealpha,0;sleep,dt;);
				OnCommand=cmd(sleep,dt;diffusealpha,1;);
			};
		else
			t[#t+1] = LoadActor("doors_normal")..{
				InitCommand=cmd(diffusealpha,0;sleep,dt;);
				OnCommand=cmd(sleep,dt;diffusealpha,1;);
			};
		end;
	else
		t[#t+1] = LoadActor("doors_normal")..{
			InitCommand=cmd(diffusealpha,0;sleep,dt;);
			OnCommand=cmd(sleep,dt;diffusealpha,1;);
		};
	end;

	t[#t+1] = LoadActor( "bluebg" )..{
		InitCommand=function(s) s:Center():zoomy(1):diffusealpha(0)
			if ddrgame == "gold_" then
				s:blend(('BlendMode_Add'));
			end;
		end,
		OnCommand=function(s) s:sleep(dt):linear(0.2):diffusealpha(1)
			if ddrgame == "gold_" then
				s:blend(('BlendMode_Add'))
			end;
		end,
	};
	
	t[#t+1] = LoadActor("blueline")..{
		OnCommand=cmd(Center;zoomx,0;sleep,dt;sleep,0.2;linear,0.2;diffusealpha,1;zoomx,1;linear,0.1;diffusealpha,0;zoomx,1;);
	};
	
	local Cleared;
	if GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Tohoku EVOLVED" or GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "COVID" then
		Cleared = THEME:GetPathB("ScreenGameplay","out/"..ddrgame.."prayforall.png");
	else
		Cleared = THEME:GetPathB("ScreenGameplay","out/"..ddrgame.."clear.png");
	end;
	t[#t+1] = Def.Sprite{
		InitCommand=function(s) s:diffusealpha(0):Center():Load(Cleared) end,
		OnCommand=function(s) 
			s:zoom(0.5):sleep(0.96):sleep(0.283):linear(0):diffusealpha(1):linear(0.2):diffusealpha(1)
			s:zoomx(1):zoomy(1.15):linear(0.05):diffusealpha(1)
			s:zoomx(1.1):zoomy(1.5):linear(0.1):diffusealpha(1)
			s:zoomx(1.15):zoomy(1.15):linear(0.1)
			s:zoomx(1.1):zoomy(1.1):linear(0.1)
			s:zoomx(1.05):zoomy(1.05) 
		end,
	};
	t[#t+1] = Def.Sprite{
		InitCommand=function(s) s:diffusealpha(0):Center():Load(Cleared) end,
		OnCommand=function(s) 
			s:zoom(2.5):sleep(0.96):sleep(0.283):linear(0):diffusealpha(0.3):linear(0.2):diffusealpha(1)
			s:zoomx(1):zoomy(1.15):linear(0.05):diffusealpha(0.3)
			s:zoomx(1.1):zoomy(1.5):linear(0.1):diffusealpha(0.3)
			s:zoomx(2.5):zoomy(2.3):linear(0.5):diffusealpha(0)
			s:zoomx(4):zoomy(3.45) 
		end,
	};
	t[#t+1] = Def.Sprite{
		InitCommand=function(s) s:diffusealpha(0):Center():Load(Cleared) end,
		OnCommand=function(s) 
			s:zoom(0.5):sleep(0.96):sleep(0.283):linear(0):diffusealpha(0):linear(0.2):diffusealpha(0)
			s:zoomx(1):zoomy(1.1):linear(0.05):diffusealpha(0):zoomx(1.1):zoomy(1.5):linear(0.1):diffusealpha(0)
			s:zoomx(1.15):zoomy(1.15):linear(0.1):linear(0.1):zoomx(1.1):zoomy(1.1):linear(0.1)
			s:zoomx(1.05):zoomy(1.05):sleep(0.1):linear(0):diffusealpha(0.25)
			s:zoom(1.4):linear(0.2):diffusealpha(0.05)
			s:zoom(1.35):linear(0.2):diffusealpha(0.25)
			s:zoom(1.3):linear(0.2):diffusealpha(0.05)
			s:zoom(1.25):linear(0.2):diffusealpha(0.25)
			s:zoom(1.2):linear(0.2):diffusealpha(0.05)
			s:zoom(1.15):linear(0.2):diffusealpha(0.25)
			s:zoom(1.1):linear(0):diffusealpha(0)
			s:zoom(1.4):linear(0.2):diffusealpha(0.25)
			s:zoom(1.4):linear(0.2):diffusealpha(0.05)
			s:zoom(1.35):linear(0.2):diffusealpha(0.25)
			s:zoom(1.3):linear(0.2):diffusealpha(0.05)
			s:zoom(1.25):linear(0.2):diffusealpha(0.25)
			s:zoom(1.2):linear(0.2):diffusealpha(0.05)
			s:zoom(1.15):linear(0.2):diffusealpha(0.25)
			s:zoom(1.1):linear(0):diffusealpha(0)
			s:zoom(1.1):linear(0.2):diffusealpha(0.25)
			s:zoom(1.1) 
		end,
	};
end

return t;