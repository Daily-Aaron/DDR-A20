local t = Def.ActorFrame{};
local song = GAMESTATE:GetCurrentSong();

--Hacky way to get the transition.
t[#t+1] = Def.ActorFrame {
	LoadActor("CS") .. {
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
t[#t+1] = LoadActor("_doors open");


t[#t+1] = Def.ActorFrame {
	LoadActor( "ScreenGameplay out/bluebg" )..{
		InitCommand=function(self)
			self:xy(SCREEN_CENTER_X,SCREEN_CENTER_Y):zoomy(1):diffusealpha(1)
				if ddrgame=="gold_" then
					self:blend(('BlendMode_Add'));
				end;
		end;
	OnCommand=cmd(linear,0.1;zoomy,0;zoomx,2;diffusealpha,1);
	};
};


if song:GetDisplayFullTitle() == "Tohoku EVOLVED" or song:GetDisplayFullTitle() == "COVID" then
t[#t+1] = Def.ActorFrame {
	LoadActor( "ScreenGameplay out/"..ddrgame.."prayforall" )..{
	InitCommand=cmd(Center;zoomy,1;diffusealpha,1;);
	OnCommand=cmd(linear,0.1;zoomy,0;zoomx,2;diffusealpha,1);
	};
};
else
t[#t+1] = Def.ActorFrame {
	LoadActor( "ScreenGameplay out/"..ddrgame.."clear" )..{
	InitCommand=cmd(Center;zoomy,1;diffusealpha,1;);
	OnCommand=cmd(linear,0.1;zoomy,0;zoomx,2;diffusealpha,1);
	};
};
end




return t
