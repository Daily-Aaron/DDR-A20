return Def.ActorFrame{
	LoadActor(ddrgame.."scrollbar_pointer")..{
	InitCommand=function (self)
			self:x(-8);
			self:zoom(1.6);
			self:rotationz(17);
		end;
	};
	LoadActor(ddrgame.."scrollbar_triangle")..{
	InitCommand=function (self)
			self:x(4);
			self:y(3);
			self:zoom(1.8);
			self:rotationz(17);
		end;
	};
};

