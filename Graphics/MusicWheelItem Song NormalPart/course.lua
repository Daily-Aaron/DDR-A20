local t = Def.ActorFrame {
	OnCommand=cmd(zoomy,0;sleep,0.2;accelerate,0.1;zoomy,1.1;decelerate,0.2;zoomy,1);
	OffCommand=cmd(sleep,0.2;accelerate,0.1;zoom,1.4;decelerate,0.1;zoom,0);
	--Main
	Def.Sprite{
		Name="Banner";
		InitCommand=cmd(scaletoclipped,256,256);
		SetCommand=function(self,param)
			local Course = param.Course;
			if Course then
				if Course:HasBanner() then
					self:Load(Course:GetBannerPath());
				else
					self:Load(THEME:GetPathG("","Common fallback Jacket"));
				end;
			end;
		end;
	};
	Def.Sprite{
		Name="BannerReflection";
		InitCommand=cmd(scaletoclipped,256,256;y,256;rotationx,180;croptop,0.5;diffusealpha,0.6;diffusetopedge,1,1,1,0);
		SetCommand=function(self,param)
			local Course = param.Course;
			if Course then
				if Course:HasBanner() then
					self:Load(Course:GetBannerPath());
				else
					self:Load(THEME:GetPathG("","Common fallback Jacket"));
				end;
			end;
		end;
	};
};

for _, pn in pairs(GAMESTATE:GetEnabledPlayers()) do
	table.insert(t, WheelBadge(pn, true))
end

return t;
