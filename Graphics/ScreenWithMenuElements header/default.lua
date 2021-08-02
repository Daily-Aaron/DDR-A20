local t = Def.ActorFrame{};

local screenName = Var "LoadingScreen"

local sStage = GAMESTATE:GetCurrentStage();
local tRemap = {
	Stage_1st		= 1,
	Stage_2nd		= 2,
	Stage_3rd		= 3,
	Stage_4th		= 4,
	Stage_5th		= 5,
	Stage_6th		= 6,
};

if tRemap[sStage] == PREFSMAN:GetPreference("SongsPerPlay") then
  sStage = Stage_Final;
else
	sStage = sStage;
end;


local headerTextImage

if screenName == "ScreenSelectStyle" then
  headerTextImage = "SELECT STYLE.png"
elseif screenName == "ScreenSelectProfile" then
  headerTextImage = "LOGIN.png"
elseif screenName == "ScreenEvaluationSummary" then
  headerTextImage = "TOTAL RESULT"
elseif screenName == "ScreenDataSaveSummary" then
  headerTextImage = "LOGOUT.png"
elseif screenName == "ScreenSelectCharacters" then
  headerTextImage = "LOGIN.png"
end;

t[#t+1] = LoadActor(ddrgame.."base")..{
InitCommand=function(self)
      self:y(6)
	  self:zoom(1)
    end;
OffCommand=function(self)
      self:addy(-6)
    end;
};

if headerTextImage then
  t[#t+1] = LoadActor(ddrgame.."text/"..headerTextImage)..{
    InitCommand=function(self)
      self:y(2)
    end;
  };
end

return t;
