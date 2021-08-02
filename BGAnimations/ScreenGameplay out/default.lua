local song = GAMESTATE:GetCurrentSong();
local t = Def.ActorFrame{};
local dt = 1.235;
--nt = 3.604 --fct = 4.872

if not GAMESTATE:IsDemonstration() then

t[#t+1] =
	LoadActor( "../_cleared_doors close" )..{
	InitCommand=cmd(diffusealpha,0;sleep,dt;);
	OnCommand=cmd(sleep,dt;diffusealpha,1;);
};

if ddrgame=="gold_" then
t[#t+1] = LoadActor( "bluebg" )..{
InitCommand=cmd(Center;zoomy,1;diffusealpha,0;blend,('BlendMode_Add'));
OnCommand=cmd(sleep,dt;linear,0.2;diffusealpha,1;blend,('BlendMode_Add'));
};	
else
t[#t+1] = LoadActor( "bluebg" )..{
InitCommand=cmd(Center;zoomy,1;diffusealpha,0;);
OnCommand=cmd(sleep,dt;linear,0.2;diffusealpha,1);
};
end;

t[#t+1] = LoadActor("blueline")..{
	OnCommand=cmd(Center;zoomx,0;sleep,dt;sleep,0.2;linear,0.2;diffusealpha,1;zoomx,1;linear,0.1;diffusealpha,0;zoomx,1;);
};

	if not GAMESTATE:IsCourseMode() and song:GetDisplayFullTitle() == "Tohoku EVOLVED" or song:GetDisplayFullTitle() == "COVID" then
		t[#t+1] = Def.ActorFrame {
			--Right
			LoadActor(ddrgame.."prayforall" )..{
				InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
				OnCommand=cmd(zoom,0.5;sleep,0.96;sleep,0.283;linear,0;diffusealpha,1;linear,0.2;diffusealpha,1;zoomx,1;zoomy,1.15;linear,0.05;diffusealpha,1;zoomx,1.1;zoomy,1.5;linear,0.1;diffusealpha,1;zoomx,1.15;zoomy,1.15;linear,0.1;zoomx,1.1;zoomy,1.1;linear,0.1;zoomx,1.05;zoomy,1.05;);
			};
			--Glow
			LoadActor(ddrgame.."prayforall" )..{
				InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
				OnCommand=cmd(zoom,2.5;sleep,0.96;sleep,0.283;linear,0;diffusealpha,0.3;linear,0.2;diffusealpha,1;zoomx,1;zoomy,1.15;linear,0.05;diffusealpha,0.3;zoomx,1.1;zoomy,1.5;linear,0.1;diffusealpha,0.3;zoomx,2.5;zoomy,2.3;linear,0.5;diffusealpha,0;zoomx,4;zoomy,3.45);
			};
			LoadActor(ddrgame.."prayforall" )..{
				InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
				OnCommand=cmd(zoom,0.5;sleep,0.96;sleep,0.283;linear,0;diffusealpha,0;linear,0.2;diffusealpha,0;zoomx,1;zoomy,1.1;linear,0.05;diffusealpha,0;zoomx,1.1;zoomy,1.5;linear,0.1;diffusealpha,0;zoomx,1.15;zoomy,1.15;linear,0.1;linear,0.1;zoomx,1.1;zoomy,1.1;linear,0.1;zoomx,1.05;zoomy,1.05;sleep,0.1;linear,0;diffusealpha,0.25;zoom,1.4;linear,0.2;diffusealpha,0.05;zoom,1.35;linear,0.2;diffusealpha,0.25;zoom,1.3;linear,0.2;diffusealpha,0.05;zoom,1.25;linear,0.2;diffusealpha,0.25;zoom,1.2;linear,0.2;diffusealpha,0.05,zoom,1.15;linear,0.2;diffusealpha,0.25;zoom,1.1;linear,0;diffusealpha,0;zoom,1.4;linear,0.2;diffusealpha,0.25;zoom,1.4;linear,0.2;diffusealpha,0.05;zoom,1.35;linear,0.2;diffusealpha,0.25;zoom,1.3;linear,0.2;diffusealpha,0.05;zoom,1.25;linear,0.2;diffusealpha,0.25;zoom,1.2;linear,0.2;diffusealpha,0.05,zoom,1.15;linear,0.2;diffusealpha,0.25;zoom,1.1;linear,0;diffusealpha,0;zoom,1.1;linear,0.2;diffusealpha,0.25;zoom,1.1;);
			};
		}
		else
		t[#t+1] = Def.ActorFrame {
			--Right
			LoadActor(ddrgame.."clear" )..{
				InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
				OnCommand=cmd(zoom,0.5;sleep,0.96;sleep,0.283;linear,0;diffusealpha,1;linear,0.2;diffusealpha,1;zoomx,1;zoomy,1.15;linear,0.05;diffusealpha,1;zoomx,1.1;zoomy,1.5;linear,0.1;diffusealpha,1;zoomx,1.15;zoomy,1.15;linear,0.1;zoomx,1.1;zoomy,1.1;linear,0.2;zoomx,1;zoomy,1;);
			};
			--Glow
			LoadActor(ddrgame.."clear" )..{
				InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
				OnCommand=cmd(zoom,2.5;sleep,0.96;sleep,0.283;linear,0;diffusealpha,0.3;linear,0.2;diffusealpha,1;zoomx,1;zoomy,1.15;linear,0.05;diffusealpha,0.3;zoomx,1.1;zoomy,1.5;linear,0.1;diffusealpha,0.3;zoomx,2.5;zoomy,2.3;linear,0.5;diffusealpha,0;zoomx,4;zoomy,3.45);
			};
			LoadActor(ddrgame.."clear" )..{
				InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
				OnCommand=cmd(zoom,0.5;sleep,0.96;sleep,0.283;linear,0;diffusealpha,0;linear,0.2;diffusealpha,0;zoomx,1;zoomy,1.1;linear,0.05;diffusealpha,0;zoomx,1.1;zoomy,1.5;linear,0.1;diffusealpha,0;zoomx,1.15;zoomy,1.15;linear,0.1;linear,0.1;zoomx,1.1;zoomy,1.1;linear,0.2;zoomx,1;zoomy,1;sleep,0.1;linear,0;diffusealpha,0.25;zoom,1.4;linear,0.2;diffusealpha,0.05;zoom,1.35;linear,0.2;diffusealpha,0.25;zoom,1.3;linear,0.2;diffusealpha,0.05;zoom,1.25;linear,0.2;diffusealpha,0.25;zoom,1.2;linear,0.2;diffusealpha,0.05,zoom,1.15;linear,0.2;diffusealpha,0.25;zoom,1.1;linear,0;diffusealpha,0;zoom,1.4;linear,0.2;diffusealpha,0.25;zoom,1.4;linear,0.2;diffusealpha,0.05;zoom,1.35;linear,0.2;diffusealpha,0.25;zoom,1.3;linear,0.2;diffusealpha,0.05;zoom,1.25;linear,0.2;diffusealpha,0.25;zoom,1.2;linear,0.2;diffusealpha,0.05,zoom,1.15;linear,0.2;diffusealpha,0.25;zoom,1.1;linear,0;diffusealpha,0;zoom,1.1;linear,0.2;diffusealpha,0.25;zoom,1.1;);
			};
		}
	end


end

return t;