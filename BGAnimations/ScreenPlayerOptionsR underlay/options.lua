local args = {...};
local pn = args[1];

local function p(text)
    return text:gsub("%%", ToEnumShortString(pn));
end

local function base_x()
    if pn == PLAYER_1 then
        return SCREEN_CENTER_X-215;
    elseif pn == PLAYER_2 then
        return SCREEN_CENTER_X+215;
    else
        error("Pass a valid player number, dingus.",2)
    end
end

local screen = SCREENMAN:GetTopScreen();

local rownames = {
	"Speed",
	"Accel",
	"Appearance",
	"Turn",
	"Hide",
	"Scroll",
	"NoteSkins",
	"Freeze",
	"Jump",
	"Remove",
	"Filter",
};

local function GetOptionName(screen, idx)
    return screen:GetOptionRow(idx-1):GetName();
end

local exitIndex = #rownames

function setting(self,screen)
	local screen = SCREENMAN:GetTopScreen();
	local index = screen:GetCurrentRowIndex(pn);
	local row = screen:GetOptionRow(index);
	local name = row:GetName();
	local choice = row:GetChoiceInRowWithFocus(pn);
	if THEME:GetMetric( "ScreenOptionsMaster",name.."Explanation" ) then
		self:settext(THEME:GetString("OptionItemExplanations",name..tostring(choice)));
	else self:settext("");
	end;
end;

local function MakeRow(rownames, idx)
     --the first row begins with focus
     local hasFocus = idx == 1;
     local function IsExitRow()
         return idx == exitIndex;
     end
	return Def.ActorFrame{
		Name="Row"..idx;
		OnCommand=function(self)
			self:playcommand(hasFocus and "GainFocus" or "LoseFocus");
		end;
		ChangeRowMessageCommand=function(self,param)
            if param.PlayerNumber ~= pn then return end
			if param.RowIndex+1 == idx then
                if not hasFocus then
                    hasFocus = true;
				    self:stoptweening();
				    self:queuecommand("GainFocus");
                end;
			elseif hasFocus then
                hasFocus = false;
				self:queuecommand("LoseFocus");
			end;
		end;
		LoadActor("base")..{
			InitCommand=cmd(diffuse,color("0,0,0,1"));
			GainFocusCommand=cmd(diffuse,color("#ffed00"));
			LoseFocusCommand=cmd(diffuse,color("0,0,0,1"));
		};
		--RIGHT
		Def.Quad{
			InitCommand=cmd(setsize,4,15;diffuse,color("0,0,0,1");xy,-132,0);
			GainFocusCommand=cmd(diffuse,color("0,0,0,1"));
			LoseFocusCommand=function(self)
				if ddrgame=="gold_" then
					self:diffuse(color("#8b000e"));
				else
					self:diffuse(color("#00d8ff"));
				end;
			end;
		};
		LoadActor("type.png")..{
			InitCommand=cmd(diffuse,color("0,0,0,1");x,64;setsize,142,30);
		};
		--LINE
		LoadActor("type line.png")..{
		 InitCommand=function(self)
			if ddrgame=="gold_" then
				self:diffuse(color("#dac42e"));
			else
				self:diffuse(color("#00d8ff"));
			end;
			self:x(64);
			self:setsize(142,30);
		end;
		};
		LoadActor("bsln");
		LoadFont("_avenirnext lt pro bold Bold 20px")..{
			InitCommand=cmd(x,-120;uppercase,true;halign,0;zoom,0.7);
			OnCommand=function(s) s:queuecommand("Set") end,
			SetCommand=function(self)
                local screen = SCREENMAN:GetTopScreen();
                if screen then
                     self:settext(THEME:GetString("OptionTitles",GetOptionName(screen, idx)));
                 else
                     --okay my theory here is if the top screen isn't ready
                     --yet for some reason we should keep trying until it is.
                     --is that right? -tertu
                     self:queuecommand("Set");
                end;
			end;
			GainFocusCommand=cmd(diffuse,color("0,0,0,1"));
			LoseFocusCommand=cmd(diffuse,color("1,1,1,1"));
		};
		LoadFont("_avenirnext lt pro bold Bold 20px")..{
			InitCommand=cmd(x,64;uppercase,true;zoom,0.85;maxwidth,120);
			OnCommand=cmd(queuecommand,"Set");
			SetCommand=function(self)
				local screen = SCREENMAN:GetTopScreen();
				if screen then
					local name = GetOptionName(screen, idx);
                    local choice = screen:GetOptionRow(idx-1):GetChoiceInRowWithFocus(pn);
                    local function ChoiceToText(choice)
                        if THEME:GetMetric("ScreenOptionsMaster",name.."Explanation") then
                            return THEME:GetString("OptionItemNames",name..tostring(choice))
                        else
                            return ""
                        end
                    end
					if name ~= "NoteSkins" and name ~= "Characters" then
						--normal option, handle default choice coloring.
                        local ChoiceText = ChoiceToText(choice)
                        --for most options, 0 is the default choice, for Speed it is 3.
						if ChoiceText and ChoiceText == ChoiceToText(name == "Speed" and 3 or 0) then
							self:diffuse(color("#06ff06")):diffusetopedge(color("#74ff74"));
						else
							if ChoiceText == "LIFE4" or ChoiceText == "RISKY" then
								self:diffuse(color("#ff0606")):diffusetopedge(color("#ff7474"));
							else
								self:diffuse(color("1,1,1,1"));
							end
						end;
                        self:settext(ChoiceText);
					elseif name == "NoteSkins" then
						self:settext(NOTESKIN:GetNoteSkinNames()[choice+1])
					elseif name == "Characters" then
						if choice == 0 then
							self:settext(THEME:GetString('OptionNames','Off')):diffuse(color("#06ff06")):diffusetopedge(color("#74ff74"));
						else
							self:settext(Characters.GetAllCharacterNames()[choice]):diffuse(color("1,1,1,1"));
						end;
					else
						self:settext("")
					end;
				end;
			end;
			[p"MenuLeft%MessageCommand"]=function(s) s:queuecommand("Set") end,
	        [p"MenuRight%MessageCommand"]=function(s) s:queuecommand("Set") end,
		};
		LoadActor(THEME:GetPathG("","_shared/"..ddrgame.."cursor"))..{
			InitCommand=cmd(zoom,0.7;x,-20;diffusealpha,1;bounce;effectmagnitude,3,0,0;effectperiod,1);
			GainFocusCommand=cmd(visible,true);
			LoseFocusCommand=cmd(visible,false);
		};
		LoadActor(THEME:GetPathG("","_shared/"..ddrgame.."cursor"))..{
			InitCommand=cmd(zoom,0.7;x,146;diffusealpha,1;zoomx,-0.7;bounce;effectmagnitude,-3,0,0;effectperiod,1);
			GainFocusCommand=cmd(visible,true);
			LoseFocusCommand=cmd(visible,false);
		};
	};
end;

local RowList = {};
for i=1,#rownames do
	RowList[#RowList+1] = MakeRow(rownames[i],i)
end;

local t = Def.ActorFrame{
	InitCommand=function(s) s:x(base_x()) end,
	OnCommand=cmd(diffusealpha,1;sleep,0.05;diffusealpha,0;sleep,0.05;diffusealpha,1;sleep,0.05;diffusealpha,0;sleep,0.05;diffusealpha,1;sleep,0.05;diffusealpha,0;sleep,0.05;linear,0.05;diffusealpha,1);
	OffCommand=cmd(diffusealpha,1;sleep,0.05;diffusealpha,0;sleep,0.05;diffusealpha,1;sleep,0.05;diffusealpha,0;sleep,0.05;diffusealpha,1;sleep,0.05;diffusealpha,0;sleep,0.05);

	Def.ActorScroller{
		Name="ListScroller";
		SecondsPerItem=0.1;
		NumItemsToDraw=30;
		InitCommand=cmd(y,SCREEN_CENTER_Y-26);
		TransformFunction=function(self,offsetFromCenter,itemIndex,numItems)
			self:y( offsetFromCenter * 40 );
		end;
		children = RowList;
        ChangeRowMessageCommand=function(s,param)
            local screen = SCREENMAN:GetTopScreen{};
			if param.PlayerNumber == pn then
				s:SetDestinationItem(screen:GetCurrentRowIndex(param.PlayerNumber))
            end
		end
	};
	Def.ActorFrame{
		InitCommand=cmd(x,11;y,SCREEN_CENTER_Y-150);
		LoadActor(ddrgame.."optionheader")..{
            InitCommand=function(s) s:zoomx(pn==PLAYER_2 and 1 or -1) end,
        };
		LoadActor(lang.."_headertext")..{
            InitCommand=function(self) 
				if ddrgame=="gold_" then
				self:xy(pn==PLAYER_2 and 0 or 10,-9); 
				else
				self:xy(pn==PLAYER_2 and -20 or 30,4);
				end;
			end;
		};
	};
	Def.ActorFrame{
		InitCommand=cmd(y,SCREEN_CENTER_Y+215);
		LoadActor(ddrgame.."exp.png");
		LoadFont("_avenirnext lt pro bold Bold 20px")..{
	    InitCommand=cmd(wrapwidthpixels,200;zoom,1);
		BeginCommand=function(s) s:queuecommand("Set") end,
	    SetCommand=function(self)
	      local screen = SCREENMAN:GetTopScreen();
	      if screen then
	        setting(self,screen);
	      end;
	    end;
	    [p"MenuLeft%MessageCommand"]=function(s) s:queuecommand("Set") end,
	    [p"MenuRight%MessageCommand"]=function(s) s:queuecommand("Set") end,
	    ChangeRowMessageCommand=function(s,param)
            if param.PlayerNumber == pn then s:queuecommand "Set"; end;
        end;
	  };
	};
};


return t;
