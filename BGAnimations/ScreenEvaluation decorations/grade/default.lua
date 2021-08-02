local t = Def.ActorFrame {
--P1--
--GOOD FULL COMBO
	LoadActor("scre_result_rsring00_good_full.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-328;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
		local pssp1 = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1")
			if pssp1:FullComboOfScore('TapNoteScore_W4') then

					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);

			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("scre_result_rsring01_good_full.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-328;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
		local pssp1 = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1")
			if pssp1:FullComboOfScore('TapNoteScore_W4') then

					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);

			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
--GREAT FULL COMBO
	LoadActor("scre_result_rsring00_great_full.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-328;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
		if staw ~= nil then
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") or string.find(staw,"W3") ) then

					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);

			end;
		end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("scre_result_rsring01_great_full.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-328;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
		if staw ~= nil then
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") or string.find(staw,"W3")) then

					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);

			end;
		end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
--PERFECT FULL COMBO
	LoadActor("scre_result_rsring00_perfect_full.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-328;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("scre_result_rsring01_perfect_full.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-328;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then

					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);

			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
--MARVELOUS FULL COMBO
	LoadActor("scre_result_rsring00_mar_full.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-328;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then

					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);

			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("scre_result_rsring01_mar_full.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-328;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then

					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);

			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

--GRADEP1---
	LoadActor("scre_result_rank_l_aaa.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier01") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("scre_result_rank_l_aaa.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier02") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("scre_result_rank_l_aa_p.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier03") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_aa.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier04") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_aa_m.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier05") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_a_p.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier06") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_a.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier07") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_a_m.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier08") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_b_p.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier09") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_b.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier10") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_b_m.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier11") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_c_p.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier12") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_c.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier13") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_c_m.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier14") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_d_p.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier16") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_d.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier15") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_e.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier17") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_e.png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-408;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Failed") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};


--P2--
--FCRingP2--
--GOOD FULL COMBO
	LoadActor("scre_result_rsring00_good_full.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+352;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
		local pssp2 = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2")
			if pssp2:FullComboOfScore('TapNoteScore_W4') then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);

			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("scre_result_rsring01_good_full.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+352;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
		local pssp1 = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2")
			if pssp1:FullComboOfScore('TapNoteScore_W4') then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,-170))(self);

			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
--GREAT FULL COMBO
	LoadActor("scre_result_rsring00_great_full.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+352;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
		if staw ~= nil then
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") or string.find(staw,"W3")) then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);

			end;
		end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};	
	LoadActor("scre_result_rsring01_great_full.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+352;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
		if staw ~= nil then
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") or string.find(staw,"W3") ) then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,-170))(self);

			end;
		end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
--PERFECT FULL COMBO
	LoadActor("scre_result_rsring00_perfect_full.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+352;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);

			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};	
	LoadActor("scre_result_rsring01_perfect_full.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+352;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,-170))(self);

			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
--MARVELOUS FULL COMBO
	LoadActor("scre_result_rsring00_mar_full.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+352;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,170))(self);

			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("scre_result_rsring01_mar_full.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+352;y,SCREEN_CENTER_Y-88;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				--if not GAMESTATE:PlayerIsUsingModifier(PLAYER_2,'little') then
					(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,-170))(self);

			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

--GradeP2--
	LoadActor("scre_result_rank_l_aaa.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+272;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier01") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_aaa.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier02") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_aa_p.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier03") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_aa.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier04") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_aa_m.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier05") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_a_p.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier06") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_a.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier07") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_a_m.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier08") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_b_p.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier09") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_b.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier10") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_b_m.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier11") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_c_p.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier12") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_c.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier13") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_c_m.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier14") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_d_p.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier16") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_d.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier15") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_e.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier17") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("scre_result_rank_l_e.png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+318-60;y,SCREEN_CENTER_Y-100;zoom,1;diffusealpha,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Failed") then
				(cmd(sleep,0.2;linear,0.2;diffusealpha,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
};
return t;