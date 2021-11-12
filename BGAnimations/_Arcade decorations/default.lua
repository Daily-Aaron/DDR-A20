local t = Def.ActorFrame {};

--Cellphone
t[#t+1] = LoadActor( "deeaif_icon_cellphone" )..{
	OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-44;y,SCREEN_TOP+107);
};

--Free Play
if GAMESTATE:GetCoinMode() == "CoinMode_Free" or GAMESTATE:IsEventMode() or GAMESTATE:GetCoinMode() == "CoinMode_Home" then
	t[#t+1] = LoadActor( "deeaif_icon_firstfree" )..{
		OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-44;y,SCREEN_TOP+170);
	};
end

--Doubles Premium
if GAMESTATE:GetPremium() == "Premium_2PlayersFor1Credit" or GAMESTATE:GetPremium() == "Premium_DoubleFor1Credit" then
	t[#t+1] = LoadActor( "deeaif_icon_double_premium" )..{
		OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-44;y,SCREEN_TOP+233);
	};
end

--Paseli
t[#t+1] = LoadActor( "deeaif_icon_paseli" )..{
	OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-44;y,SCREEN_TOP+296);
};

--Ecomode
t[#t+1] = LoadActor(lang.."_deeaif_icon_ecomode" )..{
	OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-107.5;y,SCREEN_TOP+640);
};

--Passtr
t[#t+1] = LoadActor(lang.."_deti_paseli" )..{
	OnCommand=cmd(diffusealpha,1;zoom,1;x,SCREEN_RIGHT-111;y,SCREEN_TOP+678);
};

--Frame BG
t[#t+1] = LoadActor(ddrgame.."deeaif_bt_base" )..{
	OnCommand=cmd(x,SCREEN_CENTER_X+2;y,SCREEN_BOTTOM-78;zoomx,1;zoomy,0.97);
};

--Press Start
if GAMESTATE:GetCoinMode() == "CoinMode_Free" then --if 1
	t[#t+1] = LoadActor(ddrgame..lang.."_deti_bt_decision_off" )..{
		OnCommand=cmd(zoom,0.9;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+282);
	};
	t[#t+1] = LoadActor(ddrgame..lang.."_deti_bt_decision_on")..{
		InitCommand=cmd(zoom,0.9;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+282);
		OnCommand=cmd(queuecommand,"Animate";);
		AnimateCommand=cmd(linear,1;diffusealpha,1;linear,1;diffusealpha,0;queuecommand,"Animate";);
	};
else
	if GAMESTATE:GetCoinMode() == "CoinMode_Home" then --if 2
		t[#t+1] = LoadActor(ddrgame..lang.."_deti_bt_decision_off" )..{
			OnCommand=cmd(zoom,0.9;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+282);
		};
		t[#t+1] = LoadActor(ddrgame..lang.."_deti_bt_decision_on")..{
			InitCommand=cmd(zoom,0.9;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+282);
			OnCommand=cmd(queuecommand,"Animate";);
			AnimateCommand=cmd(linear,1;diffusealpha,1;linear,1;diffusealpha,0;queuecommand,"Animate";);
		};
	else
		if GAMESTATE:EnoughCreditsToJoin() == true then --if 3
			t[#t+1] = LoadActor(ddrgame..lang.."_deti_bt_decision_off" )..{
				OnCommand=cmd(zoom,0.9;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+282);
			};
			t[#t+1] = LoadActor(ddrgame..lang.."_deti_bt_decision_on")..{
				InitCommand=cmd(zoom,0.9;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+282);
				OnCommand=cmd(queuecommand,"Animate";);
				AnimateCommand=cmd(linear,1;diffusealpha,1;linear,1;diffusealpha,0;queuecommand,"Animate";);
			};
		else
			t[#t+1] = LoadActor("deti_bt_coin_off" )..{
				OnCommand=cmd(zoom,1;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+280);
			};
			t[#t+1] = LoadActor("deti_bt_coin_on")..{
				InitCommand=cmd(zoom,1;x,SCREEN_CENTER_X+10;y,SCREEN_CENTER_Y+280);
				OnCommand=cmd(queuecommand,"Animate";);
				AnimateCommand=cmd(linear,1;diffusealpha,1;linear,1;diffusealpha,0;queuecommand,"Animate";);
			};
		end --if 3
	end -- if 2
end--if 1

return t;