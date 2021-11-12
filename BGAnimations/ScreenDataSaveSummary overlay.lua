local x = Def.ActorFrame{

	CodeMessageCommand = function(self, params)
		if params.Name == 'Start' or params.Name == 'Center' then
			MESSAGEMAN:Broadcast("StartButton");
			SCREENMAN:GetTopScreen():Finish();
		end;
	end;

};

local regionPath = "/Themes/"

function LoadPlayerStuff(Player)
	
	local t = {};
	local pn = (Player == PLAYER_1) and 1 or 2;
	local strpn = tostring(pn);
	
	t[#t+1] = Def.ActorFrame {
	OffCommand=cmd(linear,0.1;zoomy,0);
	LoadActor( THEME:GetPathG("","ScreenSelectProfile/BG01") ) .. {
			InitCommand=function(self)
				(cmd(y,-2;shadowlength,0;zoomy,0))(self);
			end;
			OnCommand=cmd(linear,0.3;zoomy,0.85;);
		};
	LoadActor( THEME:GetPathG("","ScreenSelectProfile/BG02") ) .. {
			InitCommand=function(self)
				(cmd(y,-0;zoomy,0))(self);
			end;
			OnCommand=cmd(linear,0.3;zoomy,1;);
		};
	};
	t[#t+1] =Def.ActorFrame{
      Name="Topper";
      InitCommand=function(self)
        (cmd(shadowlength,0))(self);
      end;
      OnCommand=cmd(y,0;linear,0.3;y,-238;);
      OffCommand=cmd(linear,0.1;y,0;sleep,0;diffusealpha,0);
	  LoadActor( THEME:GetPathG("","ScreenSelectProfile/"..ddrgame.."sceawi_frame_top") )..{
        InitCommand=function(self)
			self:valign(1.04)
			if ddrgame=="blue_" then
				self:y(5);
			end;
			self:zoomy(0.9);
		end;
      };
      Def.Sprite{
        InitCommand=function(self)
          self:y(-26)
          if Player == PLAYER_1 then
            self:Load(THEME:GetPathG("","ScreenSelectProfile/"..ddrgame.."sceawi_frame_head_1p"))
          else
            self:Load(THEME:GetPathG("","ScreenSelectProfile/"..ddrgame.."sceawi_frame_head_2p"))
          end;
        end;
      };
    };
    t[#t+1] =Def.ActorFrame{
      Name="Bottom";
      InitCommand=function(self)
        (cmd(shadowlength,0))(self);
      end;
      OnCommand=cmd(y,0;linear,0.3;y,224;);
      OffCommand=cmd(linear,0.1;y,0;sleep,0;diffusealpha,0);
      LoadActor( THEME:GetPathG("","ScreenSelectProfile/"..ddrgame.."sceawi_frame_bottom") )..{
        InitCommand=cmd(valign,0);
      };
    };
	t[#t+1] = Def.ActorFrame {
		Name = 'SmallFrame';
		InitCommand=cmd(y,96);
	};
	t[#t+1] = LoadActor( THEME:GetPathG("","ScreenSelectProfile/"..lang.."_sceawi_card_save_data_save_end") )..{
      InitCommand=cmd(diffusealpha,0;zoom,0.75;y,-164);
      OnCommand=function(self)
        if IsJoinFrame then
          (cmd(linear,0.3;diffusealpha,0))(self);
        else
          self:sleep(0.7):linear(0.1):diffusealpha(1):zoom(1.1):linear(0.1):zoom(1)
        end
      end;
      OffCommand=function(self)
        self:diffusealpha(0)
      end;
    };
	t[#t+1] = LoadActor(THEME:GetPathB("GameDecoration","9 Stars"))..{
      InitCommand=cmd(diffusealpha,0;zoom,0.75;y,-24);
      OnCommand=function(self)
        if IsJoinFrame then
          (cmd(linear,0.3;diffusealpha,0))(self);
        else
          self:sleep(0.7):linear(0.1):diffusealpha(1):zoom(1.1):linear(0.1):zoom(0.98)
        end
      end;
      OffCommand=function(self)
        self:diffusealpha(0)
      end;
    };
	t[#t+1] = LoadActor( THEME:GetPathG("","ScreenSelectProfile/"..ddrgame.."sceawi_player_base") )..{
      InitCommand=cmd(diffusealpha,0;zoom,0.75;y,-84);
      OnCommand=function(self)
        if IsJoinFrame then
          (cmd(linear,0.3;diffusealpha,0))(self);
        else
          self:sleep(0.7):linear(0.1):diffusealpha(1):zoom(1.1):linear(0.1):zoom(1)
        end
      end;
      OffCommand=function(self)
        self:diffusealpha(0)
      end;
    };
	t[#t+1] = LoadActor( THEME:GetPathG("","ScreenSelectProfile/"..ddrgame..lang.."_sceawi_player_grade_base") )..{
      InitCommand=cmd(diffusealpha,0;zoom,0.75;y,40);
      OnCommand=function(self)
        if IsJoinFrame then
          (cmd(linear,0.3;diffusealpha,0))(self);
        else
          self:sleep(0.7):linear(0.1):diffusealpha(1):zoom(1.1):linear(0.1):zoom(1)
        end
      end;
      OffCommand=function(self)
        self:diffusealpha(0)
      end;
    };
	t[#t+1] = LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_league_none") )..{
      InitCommand=cmd(diffusealpha,0;zoom,0.75;x,-44;y,58);
      OnCommand=function(self)
        if IsJoinFrame then
          (cmd(linear,0.3;diffusealpha,0))(self);
        else
          self:sleep(0.7):linear(0.1):diffusealpha(1):zoom(1)
        end
      end;
      OffCommand=function(self)
        self:diffusealpha(0)
      end;
    };
	t[#t+1] = LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_league_none") )..{
      InitCommand=cmd(diffusealpha,0;zoom,0.75;x,134;y,58);
      OnCommand=function(self)
        if IsJoinFrame then
          (cmd(linear,0.3;diffusealpha,0))(self);
        else
          self:sleep(0.7):linear(0.1):diffusealpha(1):zoom(1)
        end
      end;
      OffCommand=function(self)
        self:diffusealpha(0)
      end;
    };
	t[#t+1] = LoadActor( THEME:GetPathG("","ScreenSelectProfile/"..ddrgame.."sceawi_player_league_base") )..{
      InitCommand=cmd(diffusealpha,0;zoom,0.75;y,140);
      OnCommand=function(self)
        if IsJoinFrame then
          (cmd(linear,0.3;diffusealpha,0))(self);
        else
          self:sleep(0.7):linear(0.1):diffusealpha(1):zoom(1.1):linear(0.1):zoom(1)
        end
      end;
      OffCommand=function(self)
        self:diffusealpha(0)
      end;
    };
	t[#t+1] = LoadActor(regionPath.."Region.lua")..{
      InitCommand=cmd(diffusealpha,0;zoom,1;x,135;y,-87);
      OnCommand=function(self)
          self:sleep(0.7):linear(0.1):diffusealpha(1):zoom(1.1):linear(0.1):zoom(1)
      end;
      OffCommand=function(self)
        self:diffusealpha(0)
      end;
    };
	t[#t+1] = LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_league_emblem"..gl) )..{ 
      InitCommand=cmd(diffusealpha,0;zoom,0.35;x,70;y,140);
      OnCommand=function(self)
        if IsJoinFrame then
          (cmd(linear,0.3;diffusealpha,0))(self);
        else
          self:sleep(0.7):linear(0.1):diffusealpha(1)
        end
      end;
      OffCommand=function(self)
        self:diffusealpha(0)
      end;
    };
	t[#t+1] = LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_league_none") )..{
      InitCommand=cmd(diffusealpha,0;zoom,1;x,134;y,140);
      OnCommand=function(self)
        if IsJoinFrame then
          (cmd(linear,0.3;diffusealpha,0))(self);
        else
			if GetUserPref("OptionRowGoldenLeague")=='OFF' then
				self:sleep(0.7):linear(0.1):diffusealpha(1):zoom(1)
			end;
        end
      end;
      OffCommand=function(self)
        self:diffusealpha(0)
      end;
    };
	t[#t+1] = LoadActor( THEME:GetPathG("","ScreenSelectProfile/sceawi_league"..gl) )..{ 
      InitCommand=cmd(diffusealpha,0;zoom,0.58;x,145;y,142);
      OnCommand=function(self)
        if IsJoinFrame then
          (cmd(linear,0.3;diffusealpha,0))(self);
        else
          self:sleep(0.7):linear(0.1):diffusealpha(1)
        end
      end;
      OffCommand=function(self)
        self:diffusealpha(0)
      end;
    };
	t[#t+1] = LoadActor( THEME:GetPathG("","ScreenSelectProfile/"..ddrgame..lang.."_sceawi_scene_guide_skip") )..{
		Name = "FrameInstWord";
		InitCommand=function(s) s:x(0):zoom(1)
			if ddrgame=="gold_" then
				s:y(270)
			else
				s:y(275)
			end;
		end,
		OnCommand=cmd(diffusealpha,0;sleep,0.8;linear,0.3;diffusealpha,1);
		OffCommand=function(self)
		(cmd(stoptweening;linear,0.05;;diffusealpha,0))(self);
		end;
	};
	t[#t+1] = LoadFont("ProfileText 24px") .. {
		Name = 'SelectedProfileText';
    InitCommand=function(self)
      (cmd(uppercase,true;xy,-180,-96;halign,0;zoomy,0.7;diffusealpha,0;maxwidth,250))(self);
    end;
		OnCommand=cmd(sleep,0.7;linear,0.2;diffusealpha,1);
    OffCommand=function(self)
      self:diffusealpha(0)
    end;
	};
	t[#t+1] = LoadFont("ProfileText 24px") .. {
		Name = 'selectPlayerUID';
		InitCommand=cmd(zoomy,0.7;diffusealpha,0;xy,58,-60);
    OnCommand=function(self)
      if IsJoinFrame then
        (cmd(linear,0.3;diffusealpha,0))(self);
      else
        self:sleep(0.7):linear(0.1):diffusealpha(1):zoomx(1.5):zoomy(1.2):linear(0.1):zoomx(1.25):zoomy(0.8)
      end
    end;
    OffCommand=function(self)
      self:diffusealpha(0)
    end;
	};
	return t;
end;

--Update Internal Stuff
function UpdateInternal(self, Player)
	local pn = (Player == PLAYER_1) and 1 or 2;
	local style = (GAMESTATE:GetCurrentStyle():GetStepsType() == "StepsType_Dance_Single") and "S" or "D";
	local seltext = self:GetChild('SelectedProfileText');
	local joinframe = self:GetChild('JoinFrame');
	local smallframe = self:GetChild('SmallFrame');
	--local bigframe = self:GetChild('BigFrame');
	local selectRank = self:GetChild('selectRank');
	local selectPlayerUID = self:GetChild('selectPlayerUID');
	local selHonorPic = self:GetChild('selectedHonorPic');
	local selHonorName = self:GetChild('selectHonorName');
	local selPlayerUID;
	selPlayerUID = PROFILEMAN:GetProfile(Player):GetGUID();
	selectPlayerUID:settext(string.upper(string.sub(selPlayerUID,1,4).."-"..string.sub(selPlayerUID,5,8)));
	--bigframe:visible(true);
	seltext:settext(PROFILEMAN:GetProfile(Player):GetDisplayName());
end

if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
x[#x+1] = Def.ActorFrame {
			Name = 'P1Frame';
			InitCommand=cmd(x,SCREEN_CENTER_X-320;y,SCREEN_CENTER_Y;zoom,1);
			OnCommand=function(self)
				UpdateInternal(self, PLAYER_1);
			end;
			OffCommand=cmd();
			children = LoadPlayerStuff(PLAYER_1);
		};
end
if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
x[#x+1] = Def.ActorFrame {
			Name = 'P2Frame';
			InitCommand=cmd(x,SCREEN_CENTER_X+320;y,SCREEN_CENTER_Y;zoom,1);
			OnCommand=function(self)
				UpdateInternal(self, PLAYER_2);
			end;
			OffCommand=cmd();
			children = LoadPlayerStuff(PLAYER_2);
		};
end


return x;