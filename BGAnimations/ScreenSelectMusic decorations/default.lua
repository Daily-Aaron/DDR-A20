local t = Def.ActorFrame{
	PlayerJoinedMessageCommand=function(self,param)
		SCREENMAN:GetTopScreen():SetNextScreenName("ScreenSelectMusic"):StartTransitioningScreen("SM_GoToNextScreen")
  	end;
	loadfile(THEME:GetPathB("ScreenSelectMusic","decorations/InputHandler.lua"))();
	OffCommand=function(s)
		SOUND:PlayOnce(THEME:GetPathB("","_music_out"))
	end,
	StandardDecorationFromFileOptional("Footer","Footer");
	LoadActor(THEME:GetPathO("","_/alphaMembers"));
}

--local Music = THEME:GetPathS("","ScreenSelectMusic music (loop).redir")
local Music = "/Themes/DDR A20/Sounds/ScreenSelectMusic music (loop).redir"
local file = RageFileUtil.CreateRageFile()

if GetUserPref("OptionRowVersion")=='A20' then
    file:Open(Music,2)
    file:Write("MenuMusic/selmus/A20 Selmus (loop).ogg")
    file:Close()
    file:destroy()
else
	file:Open(Music,2)
    file:Write("MenuMusic/selmus/A20+ Selmus (loop).ogg")
    file:Close()
    file:destroy()
end;

return t;