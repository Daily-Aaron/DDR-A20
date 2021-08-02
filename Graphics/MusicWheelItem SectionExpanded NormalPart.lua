return Def.ActorFrame {
	SetMessageCommand=function(self,params)
		if params.HasFocus then
			self:zoom(2.2);
		else
			self:zoom(1.7);
		end
	end;
	Def.Sprite{
		Texture=THEME:GetPathG("","_shared/"..ddrgame.."00di_folder_lump_hole"),
		InitCommand=function(s) s:xy(-160,-30) end,
	};
	Def.Sprite{
		Texture=THEME:GetPathG("","_shared/"..ddrgame.."00di_folder_lump_hole"),
		InitCommand=function(s) s:xy(160,-30) end,
	};
	--DefaultBG
	Def.Sprite{
		Texture=THEME:GetPathG("","MusicWheelItem/"..ddrgame.."00di_folder.png"),
		InitCommand=function(s) s:y(-8) end,
	};
	Def.Sprite{
		Texture=THEME:GetPathG("","MusicWheelItem/"..ddrgame.."00di_folder_on"),
		InitCommand=function(s) s:y(-8) end,
	};
	Def.Sprite{
		Texture=THEME:GetPathG("","MusicWheelItem/"..ddrgame.."00di_folder_y.png"),
		InitCommand=function(s) s:y(-8) end,
		SetMessageCommand=function(self,params)
			if params.HasFocus then
				self:zoom(1)
				self:diffuseshift():effectcolor1(color("1,1,1,1")):effectcolor2(color("1,1,1,0.5")):effectclock('beatnooffset')
			else
				self:zoom(0)
			end
		end;
	};
	LoadFont("_dfghsgothic-w9 20px")..{
		InitCommand=cmd(y,-10;maxwidth,320);
		SetMessageCommand=function(self, params)
			local group = params.Text;
			  self:settext(SongAttributes.GetGroupName(group));
			  self:diffuse(Color.Black)
		end;
	  };
	LoadActor(THEME:GetPathG("","_shared/"..ddrgame.."cursor"))..{
			InitCommand=cmd(x,-240);
			SetCommand=function(self,params)
				(cmd(bounce;effectmagnitude,12,0,0;effectperiod,0.8))(self);
				if params.HasFocus then
					self:zoom(0.7);
				else
					self:zoom(0);
				end
			end;
			OffCommand=cmd();
			StartSelectingStepsMessageCommand=cmd(diffusealpha,0);
		};
	LoadActor(THEME:GetPathG("","_shared/"..ddrgame.."cursor"))..{
			InitCommand=cmd(zoomx,-1;x,240;);
			SetCommand=function(self,params)
				(cmd(bounce;effectmagnitude,-12,0,0;effectperiod,0.8))(self);
				if params.HasFocus then
					self:zoomy(0.7);
					self:zoomx(-0.7);
				else
					self:zoom(0);
				end
			end;
			OffCommand=cmd();
			StartSelectingStepsMessageCommand=cmd(diffusealpha,0);
		};
};
