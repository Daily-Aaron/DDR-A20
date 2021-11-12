local t = Def.ActorFrame {
  LoadActor(THEME:GetPathB("ScreenLogo","decorations/"..ddrgame.."back"))..{
    InitCommand=function(s) s:x(_screen.cx)
	if version == "A20_" then
		s:y(_screen.cy-54)
	else
		s:y(_screen.cy-30) 
	end;
	end,
  };
  LoadActor(THEME:GetPathB("ScreenLogo","decorations/"..version.."copyright"))..{
    InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-148;zoom,0.8);
  };
   LoadActor(THEME:GetPathB("","ModDate.lua"));

};

t[#t+1] = LoadActor(THEME:GetPathB("ScreenLogo","decorations/"..version..ddrgame.."logo"))..{
	InitCommand=cmd(CenterX;y,_screen.cy-54;zoom,1);
};

if version == "A20+_" then
t[#t+1] = LoadActor(THEME:GetPathB("ScreenLogo","decorations/"..ddrgame.."logo_eff"))..{
	InitCommand=cmd(x,_screen.cx;y,_screen.cy-54;diffuse,color("1,1,1,0.5");blend,Blend.Add);
	OnCommand=cmd(diffusealpha,0;sleep,0.6;linear,0.1;diffusealpha,0.5;linear,0.1;diffusealpha,0);
};
end
	
--Cellphone
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/deeaif_icon_cellphone" ))..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-44;y,SCREEN_TOP+107);

		};
	};

--Free Play
if GAMESTATE:GetCoinMode() == "CoinMode_Free" or GAMESTATE:IsEventMode() or GAMESTATE:GetCoinMode() == "CoinMode_Home" then
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/deeaif_icon_firstfree" ))..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-44;y,SCREEN_TOP+170);
		};
	};
end

--Doubles Premium
if GAMESTATE:GetPremium() == "Premium_2PlayersFor1Credit" or GAMESTATE:GetPremium() == "Premium_DoubleFor1Credit" then
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/deeaif_icon_double_premium" ))..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-44;y,SCREEN_TOP+233);
		};
	};
end

--Paseli
t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/deeaif_icon_paseli" ))..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-44;y,SCREEN_TOP+296);
		};
};

--Ecomode
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/"..lang.."_deeaif_icon_ecomode"))..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-107.5;y,SCREEN_TOP+640);
		};
	};

--Passtr
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/"..lang.."_deti_paseli"))..{
			OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-111;y,SCREEN_TOP+678);
		};
	};


	
--Frame BG
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/"..ddrgame.."deeaif_bt_base" ))..{
			OnCommand=cmd(x,SCREEN_CENTER_X+2;y,SCREEN_BOTTOM-78;zoomx,1;zoomy,0.97);
		};
	};
--messages
--hope this works	
if GAMESTATE:GetCoinMode() == "CoinMode_Free" then --if 1
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/"..ddrgame..lang.."_deti_bt_decision_off" ))..{
			OnCommand=cmd(zoom,0.9;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+282);
		};
	};
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/"..ddrgame..lang.."_deti_bt_decision_on"))..{
			InitCommand=cmd(zoom,0.9;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+282);
			OnCommand=cmd(queuecommand,"Anim";);
			AnimCommand=cmd(linear,1;diffusealpha,1;linear,1;diffusealpha,0;diffusealpha,0;queuecommand,"Anim";);
		};
	};
	else
	if GAMESTATE:GetCoinMode() == "CoinMode_Home" then --if 2
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/"..ddrgame..lang.."_deti_bt_decision_off" ))..{
			OnCommand=cmd(zoom,0.9;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+282);
		};
	};
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/"..ddrgame..lang.."_deti_bt_decision_on"))..{
			InitCommand=cmd(zoom,0.9;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+282);
			OnCommand=cmd(queuecommand,"Anim";);
			AnimCommand=cmd(linear,1;diffusealpha,1;linear,1;diffusealpha,0;diffusealpha,0;queuecommand,"Anim";);
		};
	};
	else
		if GAMESTATE:EnoughCreditsToJoin() == true then --if 3
		  t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/"..ddrgame..lang.."_deti_bt_decision_off" ))..{
			OnCommand=cmd(zoom,0.9;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+282);
		};
	};
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/"..ddrgame..lang.."_deti_bt_decision_on"))..{
			InitCommand=cmd(zoom,0.9;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+282);
			OnCommand=cmd(queuecommand,"Anim";);
			AnimCommand=cmd(linear,1;diffusealpha,1;linear,1;diffusealpha,0;diffusealpha,0;queuecommand,"Anim";);
		};
	};
		else
		t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/deti_bt_coin_off" ))..{
			OnCommand=cmd(zoom,1;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+280);
		};
	};
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathB("","_Arcade decorations/deti_bt_coin_on"))..{
			InitCommand=cmd(zoom,1;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+280);
			OnCommand=cmd(queuecommand,"Anim";);
			AnimCommand=cmd(linear,1;diffusealpha,1;linear,1;diffusealpha,0;diffusealpha,0;queuecommand,"Anim";);
		};
	};
		end --if 3
	end -- if 2
end--if 1

t[#t+1] = Def.Quad{
		InitCommand=cmd(diffuse,Color("White");setsize,SCREEN_WIDTH,SCREEN_HEIGHT;Center;);
		OnCommand=cmd(linear,0.25;diffusealpha,0);
	
};
  
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("ScreenLogo","Voice")) .. {
	OnCommand=cmd(queuecommand,"Play");
	PlayCommand=cmd(play);
	};
};

return t
