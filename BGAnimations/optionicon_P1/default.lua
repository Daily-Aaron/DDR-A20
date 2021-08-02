return Def.ActorFrame {
	-- Speed
	Def.Sprite {
		OnCommand=function(self)
			self:x(-186);
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'0.25x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x025"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'0.5x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x050"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'0.75x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x075"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'1x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x100"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'1.25x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x125"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'1.5x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x150"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'1.75x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x175"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'2x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x200"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'2.25x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x225"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'2.5x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x250"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'2.75x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x275"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'3x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x300"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'3.25x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x325"));        
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'3.5x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x350"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'3.75x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x375"));        
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'4x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x400"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'4.25x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x425"));         
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'4.5x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x450"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'4.75x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x475"));         
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'5x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x500"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'5.25x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x525"));        
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'5.5x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x550"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'5.75x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x575"));        
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'6x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x600"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'6.25x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x625"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'6.5x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x650"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'6.75x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x675"));        
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'7x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x700"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'7.25x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x725"));        
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'7.5x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x750"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'7.75x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x775"));  
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'8x') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_speed_x800"));
			end;
		end;
		PlayerJoinedMessageCommand=function(self, params)
			if params.Player == PLAYER_1 then
				self:playcommand("On");
			end;
		end;
		CodeMessageCommand=function(self, params)
			if params.PlayerNumber == PLAYER_1 then
				self:playcommand("On");
			end;
		end;
	};
	-- Boost
	Def.Sprite {
		InitCommand=function(self)
			self:x(-153);
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'boost') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_boost_boost"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'brake') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_boost_brake"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'wave') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_boost_wave"));
			end;
		end;
		PlayerJoinedMessageCommand=function(self, params)
			if params.Player == PLAYER_1 then
				self:playcommand("Init");
			end;
		end;
	};
	-- Appearance
	Def.Sprite {
		InitCommand=function(self)
			self:x(-119);
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'hidden') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_appear_hidden"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'sudden') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_appear_sudden"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'stealth') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_appear_stealth"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'visible') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_off"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'hidden+') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_hidden+"));
            elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'sudden+') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_sudden+"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'hidden+&sudden+') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_appear_hs+"));
			end;
		end;
		PlayerJoinedMessageCommand=function(self, params)
			if params.Player == PLAYER_1 then
				self:playcommand("Init");
			end;
		end;
	};
	-- Turn
	Def.Sprite {
		InitCommand=function(self)
			self:x(-85);
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'mirror') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_turn_mirror"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'left') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_turn_left"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'right') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_turn_right"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'shuffle') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_turn_shuffle"));
			end;
		end;
		PlayerJoinedMessageCommand=function(self, params)
			if params.Player == PLAYER_1 then
				self:playcommand("Init");
			end;
		end;
	};
	-- Dark
	Def.Sprite {
		InitCommand=function(self)
			self:x(-51);
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'dark') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_dark_off"));
			end;
		end;
		PlayerJoinedMessageCommand=function(self, params)
			if params.Player == PLAYER_1 then
				self:playcommand("Init");
			end;
		end;
	};
	-- Scroll
	Def.Sprite {
		InitCommand=function(self)
			self:x(-18);
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'reverse') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_scroll_reverse"));
			end;
		end;
		PlayerJoinedMessageCommand=function(self, params)
			if params.Player == PLAYER_1 then
				self:playcommand("Init");
			end;
		end;
	};
	-- Arrow
	Def.Sprite {
		InitCommand=function(self)
			self:x(16);
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'BUTTERFLY_FLAT')  
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'CLASSIC_FLAT')
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'CYBER_FLAT')
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'NORMAL_FLAT')
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'X_FLAT')then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_arrow_flat"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'BUTTERFLY_NOTE')  
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'CLASSIC_NOTE')
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'CYBER_NOTE')
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'NORMAL_NOTE')
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'X_NOTE')then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_arrow_note"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'BUTTERFLY_RAINBOW')  
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'CLASSIC_RAINBOW')
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'CYBER_RAINBOW')
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'NORMAL_RAINBOW')
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'X_RAINBOW')then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_off"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'BUTTERFLY_VIVID')  
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'CLASSIC_VIVID')
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'CYBER_VIVID')
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'NORMAL_VIVID')
			or GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'X_VIVID')then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_arrow_vivid"));
			else
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_arrow_note"));
			end;
		end;
		PlayerJoinedMessageCommand=function(self, params)
			if params.Player == PLAYER_1 then
				self:playcommand("Init");
			end;
		end;
	};
	-- Cut
	Def.Sprite {
		InitCommand=function(self)
			self:x(49);
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'little') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_cut_on1"));
			end;
		end;
		PlayerJoinedMessageCommand=function(self, params)
			if params.Player == PLAYER_1 then
				self:playcommand("Init");
			end;
		end;
	};
	-- Freeze arrow
	Def.Sprite {
		InitCommand=function(self)
			self:x(83);
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'noholds') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_freeze_off"));
			end;
		end;
		PlayerJoinedMessageCommand=function(self, params)
			if params.Player == PLAYER_1 then
				self:playcommand("Init");
			end;
		end;
	};
	-- Jump
	Def.Sprite {
		InitCommand=function(self)
			self:x(116);
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'nojumps') then
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_jump_on2"));
			end;
		end;
		PlayerJoinedMessageCommand=function(self, params)
			if params.Player == PLAYER_1 then
				self:playcommand("Init");
			end;
		end;
	};
	-- Risky
	Def.Sprite {
		InitCommand=function(self)
			self:x(151);
			if GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'4 lives,battery') then			
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_gauge_life4"));
			elseif GAMESTATE:PlayerIsUsingModifier(PLAYER_1,'1 life,battery') then			
				self:Load(THEME:GetPathB("","optionicon_P1/daopic0000_1p_gauge_risky"));                                			
			end;
		end;
		PlayerJoinedMessageCommand=function(self, params)
			if params.Player == PLAYER_1 then
				self:playcommand("Init");
			end;
		end;
	};
};