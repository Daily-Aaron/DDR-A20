local song = GAMESTATE:GetCurrentSong();
local background = THEME:GetPathG("Common", "fallback background");

return Def.ActorFrame{	
--Background
	Def.ActorFrame {
		InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y);
		Def.Sprite {
			--InitCommand=cmd(draworder,1;Center;zoomto,SCREEN_WIDTH+38,SCREEN_HEIGHT+38;);
			OnCommand=function(self)
				if song then	
					if song:HasBackground() then
						self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
						self:zoomto(SCREEN_WIDTH,SCREEN_HEIGHT);
					else
						self:Load(background);
						self:zoomto(SCREEN_WIDTH,SCREEN_HEIGHT);
					end;
				end;
			end;
		};
	};
	Def.Quad{
		InitCommand=cmd(FullScreen;diffuse,color("0,0,0,0.5"));
	};
};