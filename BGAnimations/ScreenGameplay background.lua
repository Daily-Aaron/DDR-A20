-- DO NOT USE THIS IN ANOTHER THEME! STRICTLY PROHIBITED!
--ÚLTIMA MODIFICACIÓN: 28072021 1337

local background = Def.ActorFrame{};
local BGChanges = GAMESTATE:GetCurrentSong():HasBGChanges() == false
local Video1 = FILEMAN:DoesFileExist(GAMESTATE:GetCurrentSong():GetMusicPath():sub(1, -4).."avi") == false
local Video2 = FILEMAN:DoesFileExist(GAMESTATE:GetCurrentSong():GetMusicPath():sub(1, -4).."mp4") == false

local t = Def.ActorFrame{
	InitCommand=function(self)
		self:Center():fov(90):rotationy(180):z( WideScale(300,400) ):addy(10);
	end;
	OnCommand=function(self) Camera = self; end;
};


local StagesFolder="/DanceStages/"

if Video1 and Video2 then

-------------RELACIÓN DE CANCIONES CON SU RESPECTIVO ESCENARIO-----------------------

CurrentSong = GAMESTATE:GetCurrentSong():GetDisplayFullTitle()

if
-- BOOM BLUE (A)
	-- 2014
	CurrentSong == "chaos eater" or
	-- A
	CurrentSong == "Neutrino" or
	CurrentSong == "POSSESSION (20th Anniversary Mix)" or
	-- A20
	CurrentSong == "ナイト・オブ・ナイツ (Ryu☆Remix)" or
	CurrentSong == "ALPACORE" or
	CurrentSong == "Avenger" or
	CurrentSong == "The History of the Future" or
	-- DDR A20 PLUS		
	CurrentSong == "Evans" or 
	CurrentSong == "Next Phase" 
	then
		if GetUserPref("OptionRowBoom")=='false' then
			DanceStage = "BOOM BLUE (A)"
		else
			DanceStage = "BOOM BLUE (2014)"	
		end;
-- BOOM DARK (A)
elseif
	-- 2nd Mix
	CurrentSong == "PARANOiA KCET ～clean mix～" or
	CurrentSong == "PARANOiA MAX～DIRTY MIX～" or
	-- 3rd Mix
	CurrentSong == "DEAD END" or
	-- MAX 2
	CurrentSong == "MAXX UNLIMITED" or
	CurrentSong == "革命" or
	-- Extreme
	CurrentSong == "PARANOIA survivor MAX" or
	CurrentSong == "The legend of MAX" or
	-- SuperNOVA
	CurrentSong == "CHAOS" or
	CurrentSong == "Fascination ～eternal love mix～" or
	CurrentSong == "Fascination MAXX" or
	CurrentSong == "Healing-D-Vision" or
	CurrentSong == "MAX 300 (Super-Max-Me Mix)" or
	CurrentSong == "月光蝶" or
	-- SuperNOVA 2
	CurrentSong == "DEAD END (GROOVE RADAR Special)" or
	CurrentSong == "NGO" or
	CurrentSong == "PARANOiA ～HADES～" or
	CurrentSong == "Pluto" or
	CurrentSong == "TRIP MACHINE PhoeniX" or
	-- X2
	CurrentSong == "dirty digital" or
	CurrentSong == "Pluto The First" or
	-- X3 vs 2nd Mix
	CurrentSong == "Amalgamation" or
	CurrentSong == "NEPHILIM DELTA" or
	CurrentSong == "New York EVOLVED (Type A)" or
	CurrentSong == "New York EVOLVED (Type B)" or
	CurrentSong == "New York EVOLVED (Type C)" or
	CurrentSong == "PARANOiA (kskst mix)" or
	CurrentSong == "TRIP MACHINE (xac nanoglide mix)" or
	CurrentSong == "Until the End" or
	CurrentSong == "雫" or
	-- 2013
	CurrentSong == "Another Phase" or
	CurrentSong == "Blew My Mind" or
	CurrentSong == "Elemental Creation" or
	CurrentSong == "Monkey Business" or
	-- 2014
	CurrentSong == "Idola" or
	CurrentSong == "IMANOGUILTS" or
	CurrentSong == "IX" or
	CurrentSong == "嘆きの樹" or
	-- 2015
	CurrentSong == "FUNKY SUMMER BEACH" or
	CurrentSong == "Plan 8" or
	CurrentSong == "Remain" or
	CurrentSong == "Truare!" or
	CurrentSong == "クリムゾンゲイト" or
	CurrentSong == "ドーパミン" or
	CurrentSong == "天空の華" or
	CurrentSong == "妖隠し -あやかしかくし-" or
	CurrentSong == "海神" or 
	-- A
	CurrentSong == "Boss Rush" or
	CurrentSong == "Cytokinesis" or
	CurrentSong == "Far east nightbird kors k Remix -DDR edit ver-" or
	CurrentSong == "First Time" or
	CurrentSong == "Illegal Function Call" or
	CurrentSong == "Puberty Dysthymia" or
	CurrentSong == "Reach The Sky, Without you" or
	CurrentSong == "ナイト・オブ・ナイツ" or
	CurrentSong == "輪廻転生" or
	-- A20
	CurrentSong == "Drop The Bounce" or
	CurrentSong == "Splash Gold" or
	CurrentSong == "ホーンテッド★メイドランチ"or
	-- A20 PLUS
	CurrentSong == "PANIC HOLIC" 
	then
		if GetUserPref("OptionRowBoom")=='false' then
			DanceStage = "BOOM DARK (A)"
		else
			DanceStage = "BOOM DARK (2014)"
		end;
-- BOOM GREEN (A)
elseif
	-- 2014
	CurrentSong == "Destination" or
	-- A
	CurrentSong == "Emera" or
	CurrentSong == "New Century" or
	CurrentSong == "out of focus"
	then
		if GetUserPref("OptionRowBoom")=='false' then
			DanceStage = "BOOM GREEN (A)"	
		else
			DanceStage = "BOOM GREEN (2014)"	
		end;
-- BOOM LIGHT (X2)
elseif
	-- 2nd MiX
	CurrentSong == "EL RITMO TROPICAL" or
	CurrentSong == "KEEP ON MOVIN'" or
	-- 3rd Mix
	CurrentSong == "La Señorita" or
	-- 4th Mix
	CurrentSong == "Don't Stop!～AMD 2nd MIX～" or
	CurrentSong == "HIGHER" or
	CurrentSong == "MY SUMMER LOVE" or
	CurrentSong == "ORION.78(AMeuro-MIX)" or
	-- 5th Mix
	CurrentSong == "ABSOLUTE" or
	-- MAX 2
	CurrentSong == "BRE∀K DOWN！" or
	CurrentSong == "HIGHER(next morning mix)" or
	CurrentSong == "MY SUMMER LOVE(TOMMY'S SMILE MIX)" or
	-- Extreme
	CurrentSong == "Destiny lovers" or
	CurrentSong == "Gamelan de Couple" or
	CurrentSong == "GRADUATION ～それぞれの明日～" or
	CurrentSong == "jane jana" or
	CurrentSong == "LA BAMBA" or
	CurrentSong == "LOVE♥SHINE" or
	CurrentSong == "STAY (Organic house Version)" or
	-- SuperNOVA
	CurrentSong == "cachaca" or
	CurrentSong == "Fly away" or
	CurrentSong == "Forever Sunshine" or
	CurrentSong == "HAPPY☆ANGEL" or
	CurrentSong == "KEEP ON MOVIN' ～DMX MIX～" or
	CurrentSong == "Make A Difference" or
	CurrentSong == "murmur twins" or
	CurrentSong == "rainbow flyer" or
	CurrentSong == "Tomorrow Perfume" or
	CurrentSong == "Under the Sky" or
	CurrentSong == "チカラ" or
	CurrentSong == "ヒマワリ" or
	-- SuperNOVA 2
	CurrentSong == "A thing called LOVE" or
	CurrentSong == "Fly away -mix del matador-" or
	CurrentSong == "Raspberry♡Heart(English version)" or
	CurrentSong == "Trust -DanceDanceRevolution mix-" or
	-- X
	CurrentSong == "30 Lives (Up-Up-Down-Dance Mix)" or
	CurrentSong == "Dream Machine" or
	CurrentSong == "LOVING YOU (Epidemik remix)" or
	CurrentSong == "Slip Out (bounce in beat mix)" or
	CurrentSong == "The flower in your smile" or
	CurrentSong == "凛として咲く花の如く" or
	-- X2
	CurrentSong == "Dazzlin' Darlin" or
	CurrentSong == "DROP" or
	CurrentSong == "I'm so Happy" or
	CurrentSong == "La libertad" or
	CurrentSong == "Melody Life" or
	CurrentSong == "real-high-SPEED" or
	CurrentSong == "She is my wife" or
	CurrentSong == "Shine" or
	CurrentSong == "Taking It To The Sky" or
	-- X3 vs 2nd Mix
	CurrentSong == "HEART BEAT FORMULA" or
	CurrentSong == "In The Air" or
	CurrentSong == "KEEP ON MOVIN' (Y&amp;Co. DJ BOSS remix)" or
	CurrentSong == "message" or
	CurrentSong == "Share The Love" or
	CurrentSong == "TIME" or
	CurrentSong == "TWINKLE♡HEART" or
	CurrentSong == "アルストロメリア (walk with you remix)" or
	CurrentSong == "ビューティフル レシート" or
	-- 2013
	CurrentSong == "ACROSS WORLD" or
	CurrentSong == "Beautiful Dream" or
	CurrentSong == "Chinese Snowy Dance" or
	CurrentSong == "Find The Way" or
	CurrentSong == "sola" or
	CurrentSong == "キケンな果実" or
	CurrentSong == "ラキラキ" or
	CurrentSong == "創世ノート" or
	-- 2014
	CurrentSong == "Do The Evolution" or
	CurrentSong == "Follow Tomorrow" or
	CurrentSong == "FUJIMORI -祭- FESTIVAL" or
	CurrentSong == "One Sided Love" or
	CurrentSong == "SPECIAL SUMMER CAMPAIGN!" or
	CurrentSong == "セツナトリップ" or
	CurrentSong == "マインド・ゲーム" or
	CurrentSong == "灼熱Beach Side Bunny" or
	CurrentSong == "轟け！恋のビーンボール！！" or
	CurrentSong == "阿波おどり -Awaodori- やっぱり踊りはやめられない" or
	-- 2015
	CurrentSong == "Go↓Go↑Girls&amp;Boys!" or
	CurrentSong == "女言葉の消失" or
	CurrentSong == "激アツ☆マジヤバ☆チアガール" or
	-- A
	CurrentSong == "#OurMemories" or
	CurrentSong == "39" or
	CurrentSong == "ALL MY HEART -この恋に、わたしの全てを賭ける-" or
	CurrentSong == "Be a Hero!" or
	CurrentSong == "Eternal Summer" or
	CurrentSong == "High School Love" or
	CurrentSong == "Jewelry days" or
	CurrentSong == "Rejoin" or
	CurrentSong == "Shut Up and Dance" or
	CurrentSong == "SUN² SUMMER STEP!" or
	CurrentSong == "Triple Counter" or
	CurrentSong == "Twin memories W" or
	CurrentSong == "イーディーエム・ジャンパーズ" or
	CurrentSong == "ハルイチバン" or
	CurrentSong == "ようこそジャパリパークへ" or
	CurrentSong == "ロンロンへ　ライライライ！" or
	CurrentSong == "倉野川音頭" or
	CurrentSong == "初音ミクの消失" or
	CurrentSong == "向日葵サンセット" or
	CurrentSong == "天ノ弱" or
	CurrentSong == "恋する☆宇宙戦争っ!!" or
	CurrentSong == "放課後ストライド" or
	CurrentSong == "春風ブローインウィンド" or
	CurrentSong == "朧" or
	-- A20
	CurrentSong == "Afterimage d'automne" or
	CurrentSong == "BUTTERFLY (20th Anniversary Mix)" or
	CurrentSong == "CARTOON HEROES (20th Anniversary Mix)" or
	CurrentSong == "HAVE YOU NEVER BEEN MELLOW (20th Anniversary Mix)" or
	CurrentSong == "I Love You" or
	CurrentSong == "Neverland" or
	CurrentSong == "Right Time Right Way" or
	CurrentSong == "SKY HIGH (20th Anniversary Mix)" or
	CurrentSong == "ヒカリユリイカ" or
	CurrentSong == "ベビーステップ" or
	CurrentSong == "令和" or
	-- DDR A20 PLUS
	CurrentSong == "彼方のリフレシア" or
	CurrentSong == "追憶のアリア" or
	CurrentSong == "彼方のリフレシア" or
    CurrentSong == "追憶のアリア" or
    CurrentSong == "take me higher" or
    CurrentSong == "Taking It To The Sky (PLUS step)"
	then
	DanceStage = "BOOM LIGHT (X2)"
	
-- BOOM RED (A)
elseif
	--2014
	CurrentSong == "Samurai Shogun vs. Master Ninja" or
	-- A
	CurrentSong == "Come to Life" or
	CurrentSong == "Ishtar" or
	CurrentSong == "Love You More" or
	CurrentSong == "MAX 360" or
	CurrentSong == "Pursuer" or
	CurrentSong == "RISING FIRE HAWK" or
	-- A20
	CurrentSong == "50th Memorial Songs -Beginning Story-" or
	CurrentSong == "ORCA" or
	CurrentSong == "Rampage Hero" or
	CurrentSong == "SWEET HOME PARTY" or
	-- DDR A20 PLUS
	CurrentSong == "DIGITALIZER" or
	CurrentSong == "DEADLOCK -Out Of Reach-" or
	CurrentSong == "MUTEKI BUFFALO" or 
	CurrentSong == "Sword of Vengeance" 
	then
		if GetUserPref("OptionRowBoom")=='false' then
			DanceStage ="BOOM RED (A)"	
		else
			DanceStage ="BOOM RED (2014)"
		end;
-- BOOM WHITE (A)
elseif
	-- 2014
	CurrentSong == "HAPPY☆LUCKY☆YEAPPY" or
	-- A
	CurrentSong == "Astrogazer" or
	CurrentSong == "Cosy Catastrophe" or
	CurrentSong == "Start a New Day" or
	CurrentSong == "Vanquish The Ghost" or
	-- A20
	CurrentSong == "Glitch Angel" or
	CurrentSong == "Lachryma《Re:Queen’M》" or
	CurrentSong == "The World Ends Now" or
	-- DDR A20 PLUS
	CurrentSong == "Going Hypersonic" or
	CurrentSong == "Last Card" or
	-- User
	CurrentSong == "Re:Elemental Creation"
	then
		if GetUserPref("OptionRowBoom")=='false' then
			DanceStage = "BOOM WHITE (A)"	
		else
			DanceStage = "BOOM WHITE (2014)" 	
		end;
-- BOOM YELLOW (A)
elseif
	-- 2014
	CurrentSong == "Sand Blow" or
	-- A
	CurrentSong == "CHAOS Terror-Tech Mix" or
	CurrentSong == "IN BETWEEN" or
	-- A20
	CurrentSong == "Ace out" or
	CurrentSong == "Firestorm" or
	CurrentSong == "New Era" or
	CurrentSong == "ランカーキラーガール" or
	CurrentSong == "未完成ノ蒸氣驅動乙女 (DDR Edition)" or
	-- DDR A20 PLUS
	CurrentSong == "世界の果てに約束の凱歌を -DDR Extended Megamix-" or 
	CurrentSong == "Lightspeed" 
	then
		if GetUserPref("OptionRowBoom")=='false' then
			DanceStage = "BOOM YELLOW (A)"	
		else
			DanceStage = "BOOM YELLOW (2014)"
		end;
-- BOOM BOOM BOOM (X)
elseif
	-- 2nd Mix
	CurrentSong == "e-motion" or
	CurrentSong == "PUT YOUR FAITH IN ME" or
	-- 3rd Mix
	CurrentSong == "AFRONOVA" or
	-- 4th Mix
	CurrentSong == "DROP OUT" or
	CurrentSong == "HYSTERIA" or
	CurrentSong == "LEADING CYBER" or
	-- 5th Mix
	CurrentSong == "AFRONOVA PRIMEVAL" or
	CurrentSong == "ECSTASY" or
	CurrentSong == "STILL IN MY HEART" or
	-- MAX
	CurrentSong == "exotic ethnic" or
	-- MAX 2
	CurrentSong == "BURNING HEAT！（3 Option MIX）" or
	CurrentSong == "DIVE TO THE NIGHT" or
	CurrentSong == "rain of sorrow" or
	CurrentSong == "TSUGARU" or
	-- Extreme
	CurrentSong == "321STARS" or
	CurrentSong == "Across the nightmare" or
	CurrentSong == "AM-3P -303 BASS MIX-" or
	CurrentSong == "I'm gonna get you!" or
	CurrentSong == "PARANOIA survivor" or
	CurrentSong == "The Least 100sec" or
	CurrentSong == "xenon" or
	-- SuperNOVA
	CurrentSong == "A Stupid Barber" or
	CurrentSong == "Bad Routine" or
	CurrentSong == "Brazilian Anthem" or
	CurrentSong == "CENTAUR" or
	CurrentSong == "Dragon Blade" or
	CurrentSong == "iFUTURELIST(DDR VERSION)" or
	CurrentSong == "MIDNIGHT SPECIAL" or
	CurrentSong == "Monkey Punk" or
	CurrentSong == "PASSION OF LOVE" or
	CurrentSong == "rainbow rainbow" or
	CurrentSong == "Star Gate Heaven" or
	CurrentSong == "TOMORROW" or
	CurrentSong == "You gotta move it (feat. Julie Rugaard)" or
	CurrentSong == "カゲロウ" or
	CurrentSong == "この子の七つのお祝いに" or
	CurrentSong == "男々道" or
	-- SuperNOVA 2
	CurrentSong == "FIRE" or
	CurrentSong == "Saturn" or
	CurrentSong == "SOUL CRASH" or
	CurrentSong == "STARS☆☆☆（Re-tuned by HΛL） - DDR EDITION -" or
	CurrentSong == "Venus" or
	CurrentSong == "volcano" or
	CurrentSong == "Why not" or
	-- X
	CurrentSong == "Chance and Dice" or
	CurrentSong == "Dance Celebration (System 7 Remix)" or
	CurrentSong == "Horatio" or
	CurrentSong == "puzzle" or
	CurrentSong == "S・A・G・A" or
	CurrentSong == "零 - ZERO -" or
	-- X2
	CurrentSong == "going up" or
	CurrentSong == "La receta" or
	CurrentSong == "What Will Come of Me" or
	-- X3 vs 2nd Mix
	CurrentSong == "CRAZY♥LOVE" or
	CurrentSong == "Seule" or
	-- 2013
	CurrentSong == "虹色の花" or
	-- 2014
	CurrentSong == "Electronic or Treat!" or
	CurrentSong == "Engraved Mark" or
	CurrentSong == "Summer fantasy (Darwin remix)" or
	CurrentSong == "SUPER HERO" or
	-- 2015
	CurrentSong == "In The Breeze" or
	CurrentSong == "夏色DIARY -DDR mix-" or
	CurrentSong == "漆黒のスペシャルプリンセスサンデー" or
	-- A
	CurrentSong == "ACE FOR ACES" or
	CurrentSong == "bass 2 bass" or
	CurrentSong == "Catch Our Fire!" or
	CurrentSong == "Grand Chariot" or
	CurrentSong == "Help me, ERINNNNNN!!" or
	CurrentSong == "Hillbilly Shoes" or
	CurrentSong == "Lesson by DJ" or
	CurrentSong == "Life is beautiful" or
	CurrentSong == "Wake Me Up" or
	CurrentSong == "ありふれたせかいせいふく" or
	CurrentSong == "きゅん×きゅんばっきゅん☆LOVE" or
	CurrentSong == "プレインエイジア -PHQ remix-" or
	CurrentSong == "ロストワンの号哭" or
	CurrentSong == "千年ノ理" or
	CurrentSong == "君氏危うくも近うよれ" or
	CurrentSong == "宇宙(ソラ)への片道切符" or
	CurrentSong == "幸せになれる隠しコマンドがあるらしい" or
	CurrentSong == "恋時雨" or
	CurrentSong == "色は匂へど散りぬるを" or
	-- A20
	CurrentSong == "CROSS" or
	CurrentSong == "Dead Heat" or
	CurrentSong == "Hunny Bunny" or
	CurrentSong == "SODA GALAXY" or
	CurrentSong == "toy boxer" or
	CurrentSong == "ΩVERSOUL" or
	CurrentSong == "すきなことだけでいいです" or
	CurrentSong == "タイガーランペイジ" or
	CurrentSong == "毒占欲" or
	CurrentSong == "革命パッショネイト" or
	-- DDR A20 PLUS 
	CurrentSong == "蒼が消えるとき" or
	CurrentSong == "鋳鉄の檻" or
	CurrentSong == "イノセントバイブル" or
	CurrentSong == "ウソツキ横丁は雨模様" or 
	CurrentSong == "御伽噺に幕切れを" or
	CurrentSong == "至上のラトゥーリア" or
	CurrentSong == "思想犯" or 
	CurrentSong == "ノルエピネフリン" or 
	CurrentSong == "花は折りたし梢は高し" or
	CurrentSong == "叛逆のディスパレート" or
	CurrentSong == "In the past" or
	CurrentSong == "LET'S CHECK YOUR LEVEL!" or
	CurrentSong == "Riot of Color"
	then
	DanceStage = "BOOM BOOM BOOM (X)"

-- CLUB (X2)
elseif
	-- 
	-- 4th Mix
	CurrentSong == "BURNIN' THE FLOOR" or
	-- MAX 2
	CurrentSong == "AFRONOVA(FROM NONSTOP MEGAMIX)" or
	-- X
	CurrentSong == "SUPER SAMURAI" or
	-- X2
	CurrentSong == "Love Again" or
	-- X3 vs 2nd Mix
	CurrentSong == "Chronos" or
	CurrentSong == "dreaming can make a wish come true" or
	CurrentSong == "Fever" or
	CurrentSong == "Find You Again" or
	CurrentSong == "Get Back Up!" or
	CurrentSong == "Haunted Rhapsody" or
	CurrentSong == "HEARTBREAK (Sound Selektaz remix)" or
	CurrentSong == "London EVOLVED Ver.A" or
	CurrentSong == "London EVOLVED Ver.B" or
	CurrentSong == "London EVOLVED Ver.C" or
	CurrentSong == "osaka EVOLVED -毎度、おおきに！- (TYPE1)" or
	CurrentSong == "osaka EVOLVED -毎度、おおきに！- (TYPE2)" or
	CurrentSong == "osaka EVOLVED -毎度、おおきに！- (TYPE3)" or
	CurrentSong == "Rescue Me" or
	CurrentSong == "Rhythms Inside" or
	CurrentSong == "SigSig" or
	CurrentSong == "tokyoEVOLVED (TYPE1)" or
	CurrentSong == "tokyoEVOLVED (TYPE2)" or
	CurrentSong == "tokyoEVOLVED (TYPE3)" or
	-- 2013
	CurrentSong == "Back In Your Arms" or
	-- A
	CurrentSong == "*ハロー、プラネット。" or
	CurrentSong == "Believe" or
	CurrentSong == "無頼ック自己ライザー" or
	-- A20
	CurrentSong == "BLACK JACKAL" or
	CurrentSong == "DIGITAL LUV" or
	CurrentSong == "Play Hard" or
	CurrentSong == "Seta Para Cima↑↑" or
	CurrentSong == "Small Steps" or
	CurrentSong == "Something Just Like This (Alesso Remix) " or
	CurrentSong == "Starlight in the Snow" or
	CurrentSong == "熱情のサパデアード" or
	-- DDR A20 PLUS
	CurrentSong == "CONNECT-" or
	CurrentSong == "CONNECT-" or
    CurrentSong == "Good Looking" or
    CurrentSong == "Midnight Amaretto"
	then
	DanceStage = "CLUB (X2)"	

-- CRYSTALDIUM (X)
elseif
	-- 1st Mix
	CurrentSong == "PARANOiA" or
	CurrentSong == "TRIP MACHINE" or
	-- 2nd Mix
	CurrentSong == "SP-TRIP MACHINE～JUNGLE MIX～" or
	-- 3rd Mix
	CurrentSong == "La Señorita Virtual" or
	CurrentSong == "PARANOiA Rebirth" or
	CurrentSong == "TRIP MACHINE～luv mix～" or
	-- 4th Mix
	CurrentSong == "0.59" or
	CurrentSong == "era (nostalmix)" or
	CurrentSong == "PARANOIA EVOLUTION" or
	CurrentSong == "TRIP MACHINE CLIMAX" or
	CurrentSong == "WILD RUSH" or
	-- 5th Mix
	CurrentSong == "Abyss" or
	CurrentSong == "CAN'T STOP FALLIN' IN LOVE ～SPEED MIX～" or
	CurrentSong == "Healing Vision" or
	-- MAX
	CurrentSong == "Healing Vision ～Angelic mix～" or
	-- MAX 2
	CurrentSong == "BURNIN' THE FLOOR(BLUE FIRE mix)" or
	CurrentSong == "CELEBRATE NITE(EURO TRANCE STYLE)" or
	CurrentSong == "DESTINY" or
	CurrentSong == "ECSTASY (midnight blue mix)" or
	CurrentSong == "i feel ..." or
	CurrentSong == "SEXY PLANET(FROM NONSTOP MEGAMIX)" or
	CurrentSong == "STILL IN MY HEART(MOMO MIX)" or
	CurrentSong == "WILD RUSH(FROM NONSTOP MEGAMIX)" or
	-- Extreme
	CurrentSong == "air" or
	CurrentSong == "DROP THE BOMB(SyS.F. Mix)" or
	CurrentSong == "Frozen Ray ～for EXTREME～" or
	CurrentSong == "TEARS" or
	CurrentSong == "TRIP MACHINE survivor" or
	CurrentSong == "V ～for EXTREME～" or
	CurrentSong == "桜" or
	-- SuperNOVA
	CurrentSong == "CAN'T STOP FALLIN' IN LOVE -super euro version-" or
	CurrentSong == "CURUS" or
	CurrentSong == "Flow (True Style)" or
	CurrentSong == "INNOCENCE OF SILENCE" or
	CurrentSong == "PARANOiA-Respect-" or
	CurrentSong == "Quick Master" or
	CurrentSong == "SEDUCTION(Vocal Remix)" or
	CurrentSong == "THE SHINING POLARIS" or
	CurrentSong == "Xepher" or
	CurrentSong == "華爛漫 -Flowers-" or
	CurrentSong == "虹色" or
	-- SuperNOVA 2
	CurrentSong == "AM-3P (CHAOS Special)" or
	CurrentSong == "Arrabbiata" or
	CurrentSong == "B4U (VOLTAGE Special)" or
	CurrentSong == "Blind Justice ～Torn souls, Hurt Faiths ～" or
	CurrentSong == "BRILLIANT 2U (STREAM Special)" or
	CurrentSong == "CaptivAte～誓い～" or
	CurrentSong == "D2R (FREEZE Special)" or
	CurrentSong == "DYNAMITE RAVE (AIR Special)" or
	CurrentSong == "Freeway Shuffle" or
	CurrentSong == "L'amour et la liberté(Darwin &amp; DJ Silver remix)" or
	CurrentSong == "Pluto Relinquish" or
	CurrentSong == "Poseidon" or
	CurrentSong == "Shades of Grey" or
	CurrentSong == "Silver Platform - I wanna get your heart -" or
	CurrentSong == "Star Gate Heaven (FUTURE LOVE Mix)" or
	CurrentSong == "stealth" or
	CurrentSong == "switch" or
	CurrentSong == "Trim" or
	CurrentSong == "Uranus" or
	CurrentSong == "Votum stellarum -forest #25 DDR RMX-" or
	-- X
	CurrentSong == "AFRONOVA(X-Special)" or
	CurrentSong == "Beautiful Inside (Cube::Hard Mix)" or
	CurrentSong == "CANDY☆(X-Special)" or
	CurrentSong == "dazzle" or
	CurrentSong == "Flight of the Phoenix" or
	CurrentSong == "Healing Vision(X-Special)" or
	CurrentSong == "Inspiration" or
	CurrentSong == "MAXX UNLIMITED(X-Special)" or
	CurrentSong == "on the bounce" or
	CurrentSong == "PARANOiA ETERNAL(X-Special)" or
	CurrentSong == "PARANOIA EVOLUTION(X-Special)" or
	CurrentSong == "PARANOiA MAX～DIRTY MIX～(X-Special)" or
	CurrentSong == "PARANOiA Rebirth(X-Special)" or
	CurrentSong == "PARANOiA(X-Special)" or
	CurrentSong == "SABER WING (Akira Ishihara Headshot mix)" or
	CurrentSong == "SP-TRIP MACHINE～JUNGLE MIX～(X-Special)" or
	CurrentSong == "The legend of MAX(X-Special)" or
	CurrentSong == "TimeHollow" or
	CurrentSong == "Tracers (4Beat Remix)" or
	CurrentSong == "Trigger" or
	CurrentSong == "TRIP MACHINE CLIMAX(X-Special)" or
	CurrentSong == "TRIP MACHINE(X-Special)" or
	CurrentSong == "will" or
	CurrentSong == "革命(X-Special)" or
	-- X2
	CurrentSong == "Dazzlin' Darlin-秋葉工房mix-" or
	CurrentSong == "Freeze" or
	CurrentSong == "only my railgun" or
	CurrentSong == "Theory of Eternity" or
	CurrentSong == "Your Angel" or
	-- X3 vs 2nd Mix
	CurrentSong == "Cosmic Hurricane" or
	CurrentSong == "Diamond Dust" or
	CurrentSong == "ever snow" or
	CurrentSong == "FLOWER" or
	CurrentSong == "Let's Get Away" or
	CurrentSong == "MAGIC PARADE" or
	CurrentSong == "Mermaid girl" or
	CurrentSong == "New Beginning" or
	CurrentSong == "Private Eye" or
	CurrentSong == "Resurrection" or
	CurrentSong == "SILVER☆DREAM" or
	CurrentSong == "snow prism" or
	CurrentSong == "The Heavens Above" or
	CurrentSong == "Tohoku EVOLVED" or
	CurrentSong == "Wings of an Angel (Fly With Me)" or
	CurrentSong == "恋閃繚乱" or
	CurrentSong == "紅焔" or
	CurrentSong == "隅田川夏恋歌" or
	-- 2013
	CurrentSong == "Empathetic" or
	CurrentSong == "nightbird lost wing" or
	CurrentSong == "PRANA" or
	CurrentSong == "printemps" or
	CurrentSong == "Qipchāq" or
	CurrentSong == "Sucka Luva" or
	CurrentSong == "Triple Journey -TAG EDITION-" or
	CurrentSong == "フー・フローツ" or
	CurrentSong == "晴天Bon Voyage" or
	-- 2014
	CurrentSong == "ÆTHER" or
	CurrentSong == "Cleopatrysm" or
	CurrentSong == "Daily Lunch Special" or
	CurrentSong == "Dreamin’" or
	CurrentSong == "Habibe (Antuh muhleke)" or
	CurrentSong == "JOMANDA" or
	CurrentSong == "Nostalgia Is Lost" or
	CurrentSong == "SABER WING (satellite silhouette remix)" or
	CurrentSong == "Starlight Fantasia" or
	CurrentSong == "Stella Sinistra" or
	CurrentSong == "True Blue" or
	CurrentSong == "VEGA" or
	CurrentSong == "ドキドキ☆流星トラップガール!!" or
	CurrentSong == "ヤマトなでなで♡かぐや姫" or
	CurrentSong == "幻想系世界修復少女" or
	CurrentSong == "星屑のキロク" or
	-- 2015
	CurrentSong == "AWAKE" or
	CurrentSong == "Sakura Mirage" or
	CurrentSong == "Struggle" or
	CurrentSong == "TSUBASA" or
	CurrentSong == "ミライプリズム" or
	CurrentSong == "突撃！ガラスのニーソ姫！" or
	-- A
	CurrentSong == "Chronos (walk with you remix)" or
	CurrentSong == "HANDS UP IN THE AIR" or
	CurrentSong == "I Want You To Know" or
	CurrentSong == "More One Night" or
	CurrentSong == "SHION" or
	CurrentSong == "siberite" or
	CurrentSong == "STERLING SILVER (U1 overground mix)" or
	CurrentSong == "STERLING SILVER" or
	CurrentSong == "The Night Away (MK Remix)" or
	CurrentSong == "Towards the TOWER" or
	CurrentSong == "ZEPHYRANTHES" or
	CurrentSong == "この青空の下で" or
	CurrentSong == "さよならトリップ ～夏陽 EDM edition～" or
	CurrentSong == "すろぉもぉしょん" or
	CurrentSong == "チルノのパーフェクトさんすう教室 (EDM REMIX)" or
	CurrentSong == "チルノのパーフェクトさんすう教室" or
	CurrentSong == "十二星座の聖域" or
	CurrentSong == "恋のパズルマジック" or
	CurrentSong == "星座が恋した瞬間を。" or
	CurrentSong == "朧 (dj TAKA Remix)" or
	CurrentSong == "炉心融解" or
	CurrentSong == "魔法のたまご ～心菜 ELECTRO POP edition～" or
	CurrentSong == "黒髪乱れし修羅となりて～凛 edition～" or
	-- A20
	CurrentSong == "Helios" or
	CurrentSong == "LEVEL UP" or
	CurrentSong == "Mythomane" or
	CurrentSong == "No Tears Left to Cry" or
	CurrentSong == "Procyon" or
	CurrentSong == "Re:GENERATION" or
	CurrentSong == "Six String Proof" or
	CurrentSong == "Waiting" or
	CurrentSong == "星屑の夜果て" or
	CurrentSong == "腐れ外道とチョコレゐト" or
	-- DDR A20 PLUS
	CurrentSong == "アリスサイド・キャスリング" or
	CurrentSong == "梅雪夜" or
	CurrentSong == "City Never Sleeps" or
	CurrentSong == "DeStRuCtIvE FoRcE" or
	CurrentSong == "HYPERDRIVE" or
	CurrentSong == "Last Twilight" or
	CurrentSong == "Never See You Again" or
	CurrentSong == "Red Cape Theorem" or
	CurrentSong == "ROOM" or
	CurrentSong == "We're so Happy"
	then
	DanceStage = "CRYSTALDIUM (X)"

-- CYBER (X2)
elseif
	-- 2nd Mix
	CurrentSong == "AM-3P" or
	CurrentSong == "BRILLIANT 2U" or
	CurrentSong == "BRILLIANT 2U(Orchestra Groove)" or
	CurrentSong == "GENOM SCREAMS" or
	-- 3rd Mix
	CurrentSong == "CAPTAIN JACK (GRANDALE REMIX)" or
	CurrentSong == "DAM DARIRAM" or
	CurrentSong == "DROP THE BOMB" or
	CurrentSong == "DYNAMITE RAVE" or
	CurrentSong == "GRADIUSIC CYBER ～AMD G5 MIX～" or
	CurrentSong == "LOVE THIS FEELIN'" or
	-- 4th Mix
	CurrentSong == "B4U" or
	CurrentSong == "CAN'T STOP FALLIN' IN LOVE" or
	CurrentSong == "Holic" or
	CurrentSong == "SEXY PLANET" or
	-- 5th Mix
	CurrentSong == "BROKEN MY HEART" or
	CurrentSong == "DXY!" or
	CurrentSong == "Electro Tuned ( the SubS Mix )" or
	CurrentSong == "INSERTiON" or
	CurrentSong == "PARANOiA ETERNAL" or
	-- MAX 2
	CurrentSong == "B4U(B4 ZA BEAT MIX)" or
	CurrentSong == "BRILLIANT 2U(K.O.G G3 MIX)" or
	CurrentSong == "D2R" or
	CurrentSong == "DROP OUT(FROM NONSTOP MEGAMIX)" or
	CurrentSong == "SUPER STAR(FROM NONSTOP MEGAMIX)" or
	CurrentSong == "TSUGARU (APPLE MIX)" or
	-- Extreme
	CurrentSong == "1998" or
	CurrentSong == "A" or
	CurrentSong == "bag" or
	CurrentSong == "BE LOVIN" or
	CurrentSong == "Colors ～for EXTREME～" or
	CurrentSong == "Kiss me all night long" or
	CurrentSong == "L'amour et la liberté(DDR Ver.)" or
	CurrentSong == "Pink Rose" or
	CurrentSong == "stoic (EXTREME version)" or
	CurrentSong == "sync (EXTREME version)" or
	CurrentSong == "Twin Bee -Generation X-" or
	CurrentSong == "VANITY ANGEL" or
	CurrentSong == "大見解" or
	CurrentSong == "蒼い衝動 ～for EXTREME～" or
	-- SuperNOVA
	CurrentSong == "AA" or
	CurrentSong == "Flow" or
	CurrentSong == "Freedom" or
	CurrentSong == "INSIDE YOUR HEART" or
	CurrentSong == "Jam &amp; Marmalade" or
	CurrentSong == "LOGICAL DASH" or
	CurrentSong == "MARIA(I believe...)" or
	CurrentSong == "MAXIMIZER" or
	CurrentSong == "Mind Parasite" or
	CurrentSong == "My Only Shining Star" or
	CurrentSong == "No.13" or
	CurrentSong == "Polovtsian Dances And Chorus" or
	CurrentSong == "Quickening" or
	CurrentSong == "RED ZONE" or
	CurrentSong == "SEDUCTION" or
	CurrentSong == "STARS☆☆☆(2nd NAOKI's style)" or
	CurrentSong == "un deux trois" or
	CurrentSong == "夢幻ノ光" or
	CurrentSong == "怒れる大きな白い馬" or
	-- SuperNOVA 2
	CurrentSong == "Bloody Tears(IIDX EDITION)" or
	CurrentSong == "Electrified" or
	CurrentSong == "Feelings Won't Fade(Extend Trance Mix)" or
	CurrentSong == "MARS WAR 3" or
	CurrentSong == "Music In The Rhythm" or
	CurrentSong == "Unreal" or
	-- X
	CurrentSong == "Blue Rain" or
	CurrentSong == "Malacca" or
	CurrentSong == "On The Break" or
	CurrentSong == "SABER WING" or
	CurrentSong == "Waiting 4 u" or
	-- X2
	CurrentSong == "888" or
	CurrentSong == "A Brighter Day" or
	CurrentSong == "aftershock!!" or
	CurrentSong == "CG Project" or
	CurrentSong == "Dummy" or
	CurrentSong == "oarfish" or
	CurrentSong == "resonance" or
	CurrentSong == "roppongi EVOLVED ver.A" or
	CurrentSong == "roppongi EVOLVED ver.B" or
	CurrentSong == "roppongi EVOLVED ver.C" or
	CurrentSong == "Sacred Oath" or
	CurrentSong == "smooooch･∀･" or
	CurrentSong == "You are a Star" or
	CurrentSong == "ΔMAX" or
	-- X3 vs 2nd Mix
	CurrentSong == "BRILLIANT 2U (AKBK MIX)" or
	CurrentSong == "COME BACK TO MY HEART" or
	CurrentSong == "I/O" or
	CurrentSong == "Programmed Universe" or
	CurrentSong == "REBORN MAGIC" or
	CurrentSong == "Take A Step Forward" or
	CurrentSong == "UNBELIEVABLE (Sparky remix)" or
	CurrentSong == "Wicked Plastik" or
	CurrentSong == "天上の星～黎明記～" or
	-- 2013
	CurrentSong == "GAIA" or
	CurrentSong == "heron" or
	CurrentSong == "Magnetic" or
	CurrentSong == "STULTI" or
	CurrentSong == "Synergy For Angels" or
	CurrentSong == "The Wind of Gold" or
	CurrentSong == "Windy Fairy" or
	CurrentSong == "お米の美味しい炊き方、そしてお米を食べることによるその効果。" or
	-- 2014
	CurrentSong == "Adularia" or
	CurrentSong == "Dispersion Star" or
	CurrentSong == "HYENA" or
	CurrentSong == "KHAMEN BREAK" or
	CurrentSong == "PUNISHER" or
	CurrentSong == "Romancing Layer" or
	CurrentSong == "Squeeze" or
	CurrentSong == "エンドルフィン" or
	CurrentSong == "バンブーソード・ガール" or
	CurrentSong == "御千手メディテーション" or
	-- 2015
	CurrentSong == "M.A.Y.U." or
	CurrentSong == "朝色の紙飛行機" or
	-- A
	CurrentSong == "ALGORITHM" or
	CurrentSong == "ANNIVERSARY ∴∵∴ ←↓↑→" or
	CurrentSong == "Bad Apple!! feat. nomico" or
	CurrentSong == "DANCE ALL NIGHT (DDR EDITION)" or
	CurrentSong == "Electric Dance System Music" or
	CurrentSong == "Far east nightbird" or
	CurrentSong == "Fly far bounce" or
	CurrentSong == "Ha・lle・lu・jah" or
	CurrentSong == "Hopeful" or
	CurrentSong == "Poochie" or
	CurrentSong == "Prey" or
	CurrentSong == "S!ck" or
	CurrentSong == "Sakura Reflection" or
	CurrentSong == "Sephirot" or
	CurrentSong == "TECH-NOID" or
	CurrentSong == "ロールプレイングゲーム" or
	CurrentSong == "六兆年と一夜物語" or
	CurrentSong == "妄想税" or
	CurrentSong == "脳漿炸裂ガール" or
	-- A20
	CurrentSong == "50th Memorial Songs -The BEMANI History-" or
	CurrentSong == "Alone" or
	CurrentSong == "BLSTR" or
	CurrentSong == "Bounce Trippy" or
	CurrentSong == "Clarity" or
	CurrentSong == "CyberConnect" or
	CurrentSong == "District of the Shadows" or
	CurrentSong == "IRON HEART" or
	CurrentSong == "Our Soul" or
	CurrentSong == "Skywalking" or
	CurrentSong == "The Light" or
	CurrentSong == "最小三倍完全数" or
	-- DDR A20 PLUS
	CurrentSong == "Bang Pad(Werk Mix)" or
	CurrentSong == "Draw the Savage" or
	CurrentSong == "Hyper Bomb" or
	CurrentSong == "If" or
	CurrentSong == "Inner Spirit -GIGA HiTECH MIX-" or
	CurrentSong == "ONYX" or
	CurrentSong == "Our Love" or
	CurrentSong == "Rave Accelerator" or
	CurrentSong == "Run The Show" or
	CurrentSong == "STEP MACHINE" or
	CurrentSong == "Vertigo"		
	then
	DanceStage = "CYBER (X2)"		

-- DANCING RAYS (X)
elseif
	-- 1st Mix
	CurrentSong == "MAKE IT BETTER" or
	-- 3rd Mix
	CurrentSong == "AFTER THE GAME OF LOVE" or
	CurrentSong == "Silent Hill" or
	CurrentSong == "think ya better D" or
	-- 4th Mix
	CurrentSong == "BABY BABY GIMME YOUR LOVE" or
	CurrentSong == "CELEBRATE NITE" or
	CurrentSong == "LOVE AGAIN TONIGHT～For Melissa MIX～" or
	-- 5th Mix
	CurrentSong == "サナ・モレッテ・ネ・エンテ" or
	-- MAX
	CurrentSong == "Let the beat hit em!(CLASSIC R&amp;B STYLE)" or
	CurrentSong == "ORION.78～civilization mix～" or
	-- MAX 2
	CurrentSong == "AM-3P(AM EAST mix)" or
	CurrentSong == "Secret Rendez-vous" or
	CurrentSong == "Silent Hill (3rd christmas mix)" or
	-- Extreme
	CurrentSong == "CUTIE CHASER(MORNING MIX)" or
	CurrentSong == "Dance Dance Revolution" or
	CurrentSong == "Happy Wedding" or
	CurrentSong == "Heaven is a '57 metallic gray ～gimmix～" or
	CurrentSong == "HYPER EUROBEAT" or
	CurrentSong == "JET WORLD" or
	CurrentSong == "KISS KISS KISS" or
	CurrentSong == "Miracle Moon ～L.E.D.LIGHT STYLE MIX～" or
	CurrentSong == "SO IN LOVE" or
	CurrentSong == "三毛猫ロック" or
	-- SuperNOVA
	CurrentSong == "Baile Le Samba" or
	CurrentSong == "BALLAD FOR YOU～想いの雨～" or
	CurrentSong == "Can Be Real" or
	CurrentSong == "DoLL" or
	CurrentSong == "GORGEOUS 2012" or
	CurrentSong == "I Need You" or
	CurrentSong == "LA BAMBA" or
	CurrentSong == "LOVE IS ORANGE" or
	CurrentSong == "MOON" or
	CurrentSong == "PUT YOUR FAITH IN ME ～SATURDAY NIGHT MIX～" or
	CurrentSong == "Saturday Night Love" or
	CurrentSong == "TIERRA BUENA" or
	CurrentSong == "Try 2 Luv. U" or
	-- SuperNOVA 2
	CurrentSong == "dream of love" or
	CurrentSong == "Every Day, Every Night(NM STYLE)" or
	CurrentSong == "Flow (Jammin' Ragga Mix)" or
	CurrentSong == "MOONSTER" or
	CurrentSong == "Vem brincar" or
	-- X
	CurrentSong == "A Geisha's Dream" or
	CurrentSong == "Dance Floor" or
	CurrentSong == "Flourish" or
	CurrentSong == "INTO YOUR HEART (Ruffage remix)" or
	CurrentSong == "Lift You Up" or
	CurrentSong == "Party Lights" or
	CurrentSong == "Playa (Original Mix)" or
	CurrentSong == "Slip Out" or
	CurrentSong == "Take A Chance" or
	CurrentSong == "Ticket to Bombay" or
	CurrentSong == "Till the lonely's gone" or
	CurrentSong == "Übertreffen" or
	CurrentSong == "Xmix5 (Overcrush)" or
	-- X2
	CurrentSong == "GOLD RUSH" or
	CurrentSong == "Gotta Dance" or
	CurrentSong == "Heatstroke" or
	CurrentSong == "in love wit you" or
	CurrentSong == "THIS NIGHT" or
	-- X3 vs 2nd Mix
	CurrentSong == "LOVE IS THE POWER -Re:born-" or
	CurrentSong == "PUT YOUR FAITH IN ME (DA's Twinkly Disco Remix)" or
	CurrentSong == "Seasons" or
	CurrentSong == "Something Special" or
	CurrentSong == "Tribe" or
	-- 2013
	CurrentSong == "†渚の小悪魔ラヴリィ～レイディオ†" or
	CurrentSong == "Ah La La La" or
	CurrentSong == "Air Heroes" or
	CurrentSong == "Bombay Bomb" or
	CurrentSong == "Children of the Beat" or
	CurrentSong == "Condor" or
	CurrentSong == "Confession" or
	CurrentSong == "Desert Journey" or
	CurrentSong == "Diamond Night" or
	CurrentSong == "escape" or
	CurrentSong == "Everything I Need" or
	CurrentSong == "Hoping To Be Good" or
	CurrentSong == "New Generation" or
	CurrentSong == "New Gravity" or
	CurrentSong == "Right on time (Ryu☆Remix)" or
	CurrentSong == "RЁVOLUTIФN" or
	CurrentSong == "Somehow You Found Me" or
	CurrentSong == "south" or
	CurrentSong == "Spanish Snowy Dance" or
	CurrentSong == "Starry HEAVEN" or
	CurrentSong == "Straight Oath" or
	CurrentSong == "Summer Fairytale" or
	CurrentSong == "Sweet Rain" or
	CurrentSong == "Tell me what to do" or
	CurrentSong == "The Island Song" or
	CurrentSong == "THE REASON" or
	CurrentSong == "Top The Charts" or
	CurrentSong == "WILD SIDE" or
	CurrentSong == "Wow Wow VENUS" or
	CurrentSong == "You" or
	CurrentSong == "ずっとみつめていて (Ryu☆Remix)" or
	-- 2014
	CurrentSong == "Dance Partay" or
	CurrentSong == "Din Don Dan" or
	CurrentSong == "Elysium" or
	CurrentSong == "esrev:eR" or
	CurrentSong == "Party Lights (Tommie Sunshine's Brooklyn Fire Remix)" or
	CurrentSong == "second spring storm" or
	CurrentSong == "Thank You Merry Christmas" or
	CurrentSong == "デッドボヲルdeホームラン" or
	CurrentSong == "野球の遊び方　そしてその歴史　～決定版～" or
	-- 2015
	CurrentSong == "8000000" or
	CurrentSong == "Scarlet Moon" or
	CurrentSong == "はなまるぴっぴはよいこだけ" or
	CurrentSong == "ビビットストリーム" or
	-- A
	CurrentSong == "Break Free" or
	CurrentSong == "Dancer in the flare" or
	CurrentSong == "DDR MEGAMIX" or
	CurrentSong == "DREAMING-ING!!" or
	CurrentSong == "Grip &amp; Break down !!" or
	CurrentSong == "Show me your moves" or
	CurrentSong == "Special One" or
	CurrentSong == "StrayedCatz" or
	CurrentSong == "Yeah! Yeah!" or
	CurrentSong == "いーあるふぁんくらぶ" or
	CurrentSong == "エイリアンエイリアン" or
	CurrentSong == "ハッピーシンセサイザ" or
	CurrentSong == "ルミナスデイズ" or
	CurrentSong == "打打打打打打打打打打" or
	CurrentSong == "闘え！ダダンダーンＶ" or
	CurrentSong == "風鈴花火" or
	-- A20
	CurrentSong == "DOWNER &amp; UPPER" or
	CurrentSong == "ENDLESS" or
	CurrentSong == "F4SH10N" or
	CurrentSong == "Get On Da Floor" or
	CurrentSong == "Golden Arrow" or
	CurrentSong == "I'm an Albatraoz" or
	CurrentSong == "New Rules" or
	CurrentSong == "Starry Sky" or
	CurrentSong == "Stay 4 Ever" or
	CurrentSong == "voltississimo" or
	CurrentSong == "ライアーダンス" or
	CurrentSong == "妄想感傷代償連盟" or
	CurrentSong == "未来（ダ）FUTURE" or
	-- DDR A20 PLUS	
	CurrentSong == "恋"	or
	CurrentSong == "Crazy Hot"	or
	CurrentSong == "Feidie"	or
	CurrentSong == "GUILTY DIAMONDS"	or
	CurrentSong == "HyperTwist"	or
	CurrentSong == "No Life Queen [DJ Command Remix]"	or
	CurrentSong == "PARTY ALL NIGHT(DJ KEN-BOW MIX)"	or
	CurrentSong == "Together Going My Way"	or
	CurrentSong == "X-ray binary" or
	CurrentSong == "Yuni's Nocturnal Days"	
	then
	DanceStage = "DANCING RAYS (X)"	

-- DAWN STREETS (X)
elseif
	-- 4th Mix
	CurrentSong == "SUPER STAR" or
	-- MAX 2
	CurrentSong == "HYSTERIA 2001" or
	-- SuperNOVA
	CurrentSong == "Funk Boogie" or
	CurrentSong == "Scorching Moon" or
	CurrentSong == "Ska Ska No.3" or
	-- SuperNOVA 2
	CurrentSong == "GIRIGILI門前雀羅" or
	-- X
	CurrentSong == "Dance Celebration" or
	CurrentSong == "Taj He Spitz (Tommie Sunshine's Brooklyn Fire Re-Touch)" or
	CurrentSong == "Taj He Spitz" or
	-- X2
	CurrentSong == "Crazy Control" or
	-- X3 vs 2nd Mix
	CurrentSong == "IN THE ZONE" or
	-- 2014
	CurrentSong == "The Lonely Streets" or
	CurrentSong == "ラクガキスト" or
	-- A
	CurrentSong == "Determination" or
	CurrentSong == "Happy" or
	CurrentSong == "invisible rain" or
	CurrentSong == "MAKE A JAM!" or
	CurrentSong == "SUPER SUMMER SALE" or
	CurrentSong == "Time Of Our Lives" or
	-- A20
	CurrentSong == "50th Memorial Songs -Flagship medley-" or
	CurrentSong == "Crazy Shuffle" or
	CurrentSong == "LONG TRAIN RUNNIN' (20th Anniversary Mix)" or
	CurrentSong == "Party Rock Anthem" or
	CurrentSong == "This Beat Is....." or
	CurrentSong == "Trill auf G" or
	-- DDR A20 PLUS
	CurrentSong == "DANCERUSH STARDOM ANTHEM" or
	CurrentSong == "GHOST KINGDOM"	
	then
	DanceStage = "DAWN STREETS (X)"	

-- LOVE SWEETS (X)
elseif
	-- 3rd Mix
	CurrentSong == "CUTIE CHASER" or
	-- MAX
	CurrentSong == "CANDY☆" or
	-- MAX 2
	CurrentSong == "CANDY♡" or
	CurrentSong == "Sweet Sweet ♥ Magic" or
	-- Extreme
	CurrentSong == "♥Love²シュガ→♥" or
	-- SuperNOVA
	CurrentSong == "TRUE♥LOVE" or
	-- SuperNOVA 2
	CurrentSong == "SUNKiSS♥DROP" or
	-- X2
	CurrentSong == "MAX LOVE" or
	-- X3
	CurrentSong == "ヘビーローテーション" or
	-- 2013
	CurrentSong == "JOKER" or
	CurrentSong == "ちくわパフェだよ☆CKP" or
	CurrentSong == "めうめうぺったんたん！！" or
	CurrentSong == "凛として咲く花の如く ～ひなビタ♪ edition～" or
	-- 2014
	CurrentSong == "ちゅ～いん☆バニー" or
	CurrentSong == "恋はどう？モロ◎波動OK☆方程式！！" or
	-- 2015
	CurrentSong == "HEART BEAT FORMULA (Vinyl Mix)" or
	CurrentSong == "neko＊neko" or
	CurrentSong == "PRANA+REVOLUTIONARY ADDICT (U1 DJ Mix)" or
	CurrentSong == "Starlight Fantasia (Endorphins Mix)" or
	CurrentSong == "チョコレートスマイル" or
	CurrentSong == "パ→ピ→プ→Yeah!" or
	CurrentSong == "ホメ猫☆センセーション" or
	CurrentSong == "乙女繚乱 舞い咲き誇れ" or
	CurrentSong == "地方創生☆チクワクティクス" or
	CurrentSong == "滅亡天使 † にこきゅっぴん" or
	CurrentSong == "爆なな☆てすとロイヤー" or
	-- A
	CurrentSong == "Angelic Jelly" or
	CurrentSong == "CHOCOLATE PHILOSOPHY" or
	CurrentSong == "Love♡Shine わんだふるmix" or
	CurrentSong == "Smiling Passion" or
	CurrentSong == "Strawberry Chu♡Chu♡" or
	CurrentSong == "エキサイティング！！も・ちゃ・ちゃ☆" or
	CurrentSong == "おねがいダーリン" or
	CurrentSong == "しゃかりきリレーション" or
	CurrentSong == "シュレーディンガーの猫" or
	CurrentSong == "ハピ恋☆らぶりぃタイム!!" or
	CurrentSong == "ベィスドロップ・フリークス" or
	CurrentSong == "恋愛観測" or
	CurrentSong == "愛言葉" or
	CurrentSong == "魔理沙は大変なものを盗んでいきました" or
	-- A20
	CurrentSong == "50th Memorial Songs -二人の時 ～under the cherry blossoms～-" or
	CurrentSong == "Give Me" or
	CurrentSong == "Toy Box Factory" or
	CurrentSong == "Une mage blanche" or
	CurrentSong == "おーまい！らぶりー！すうぃーてぃ！だーりん！" or
	CurrentSong == "スイーツはとまらない♪" or
	CurrentSong == "どきドキ バレンタイン" or
	CurrentSong == "び" or
	CurrentSong == "ミッドナイト☆WAR" or
	-- DDR A20 PLUS 
	CurrentSong == "逆さま♥シンデレラパレード" or
	CurrentSong == "ハラショー！おにぎりサーカス団☆" or
	CurrentSong == "I Want To Do This Keep" or
	CurrentSong == "Poppin' Soda" or 
	CurrentSong == "Uh-Oh"
	then
	DanceStage = "LOVE SWEETS (X)"		

-- BIG SCREEN (X2)
elseif
	-- 1st Mix
	CurrentSong == "Butterfly" or
	CurrentSong == "Have You Never Been Mellow" or
	-- 2nd Mix
	CurrentSong == "BAD GIRLS" or
	CurrentSong == "Boys" or
	CurrentSong == "DUB-I-DUB" or
	CurrentSong == "I Believe In Miracles (The Lisa Marie Experience Radio Edit)" or
	CurrentSong == "IF YOU WERE HERE" or
	-- X2
	CurrentSong == "☆shining☆" or
	CurrentSong == "All My Love" or
	CurrentSong == "KIMONO♥PRINCESS" or
	CurrentSong == "sakura storm" or
	CurrentSong == "someday..." or
	-- 2013
	CurrentSong == "からふるぱすてる" or
	-- 2014
	CurrentSong == "LoveLove DokiDoki" or
	CurrentSong == "MITOれて！いばらきっしゅだ～りん" or
	CurrentSong == "starmine" or
	CurrentSong == "回レ！雪月花" 
	then
	DanceStage = "BIG SCREEN (X2)"	
	
-- VIDEO BLACK (X2)
elseif	
	-- MAX
	CurrentSong == "MAX 300" or
	-- X2
	CurrentSong == "VANESSA" or
	-- X3 Vs 2nd Mix
	CurrentSong == "PARANOiA Revolution" or
	CurrentSong == "TRIP MACHINE EVOLUTION"
	then
	DanceStage = "VIDEO BLACK (X2)"	

-- VIDEO WHITE (X2)
elseif
	-- 1st Mix
	CurrentSong == "KUNG FU FIGHTING" or
	CurrentSong == "LET'S GET DOWN" or
	CurrentSong == "Little Bitch" or
	CurrentSong == "My Fire (UKS Remix)" or
	CurrentSong == "That's The Way (I Like It)" or
	-- 2nd Mix
	CurrentSong == "Boom Boom Dollar (Red Monster Mix)" or
	CurrentSong == "GET UP'N MOVE" or
	CurrentSong == "MAKE IT BETTER (So-REAL Mix)" or
	CurrentSong == "PUT YOUR FAITH IN ME (Jazzy Groove)" or
	CurrentSong == "Smoke" or
	CurrentSong == "stomp to my beat" or
	-- X2
	CurrentSong == "BALLAD THE FEATHERS" or
	CurrentSong == "Decade" or
	CurrentSong == "EZ DO DANCE" or
	CurrentSong == "FIRE FIRE" or
	CurrentSong == "KISS KISS KISS 秋葉工房 MIX" or
	CurrentSong == "Leaving…" or
	CurrentSong == "Poseidon (kors k mix)" or
	CurrentSong == "roppongi EVOLVED ver.D" or
	CurrentSong == "Second Heaven" or
	CurrentSong == "Sky Is The Limit" or
	CurrentSong == "WH1TE RO5E" or
	CurrentSong == "ZETA～素数の世界と超越者～" or
	CurrentSong == "不沈艦CANDY" or
	CurrentSong == "冥" or
	-- X3 vs 2nd Mix
	CurrentSong == "繚乱ヒットチャート" or
	-- 2015
	CurrentSong == "POSSESSION(EDP Live Mix)" or
	-- A
	CurrentSong == "Star Trail"
	then
	DanceStage = "VIDEO WHITE (X2)"	

-- REPLICANT (X2)
elseif
	-- X2
	CurrentSong == "Pierce The Sky" or
	CurrentSong == "Sakura Sunrise" or
	CurrentSong == "Shiny World" or
	-- X3 vs 2nd Mix
	CurrentSong == "Go For The Top" or
	CurrentSong == "REVOLUTIONARY ADDICT"
	then
	DanceStage = "REPLICANT (X2)"	

-- REPLICANT (X2 POSSESSION)
elseif
	-- X
	CurrentSong == "Dance Dance Revolution(X-Special)" or
	CurrentSong == "MAX 300(X-Special)" or
	-- X2
	CurrentSong == "Anti-Matter" or
	CurrentSong == "New Decade" or
	CurrentSong == "POSSESSION"
	then
	DanceStage = "REPLICANT (X2 POSSESSION)"	

-- REPLICANT (X2 VALKYRIE)
elseif
	-- X2
	CurrentSong == "Valkyrie dimension"
	then
	DanceStage = "REPLICANT (X2 VALKYRIE)"	
	
-- REPLICANT (2014 MAX)
elseif
	-- 2015
	CurrentSong == "MAX.(period)"
	then
	DanceStage = "REPLICANT (2014 MAX)"	
	
-- REPLICANT (A PERIOD)
elseif
	-- 2015
	CurrentSong == "EGOISM 440" or
	CurrentSong == "Over The “Period”"
	then
	DanceStage = "REPLICANT (A PERIOD)"	
	
-- REPLICANT (A ENDYMION)
elseif
	-- A
	CurrentSong == "ENDYMION"
	then
	DanceStage = "REPLICANT (A ENDYMION)"


-- RANDOM STAGE FOR SONGS NON LISTED	
else
	local RDS = math.random(1,7)
	if RDS == 1 then
		DanceStage = "BOOM BOOM BOOM (X)"
	elseif RDS == 2 then
		DanceStage = "BOOM LIGHT (X2)"
	elseif RDS == 3 then
		DanceStage = "CRYSTALDIUM (X)"
	elseif RDS == 4 then
		DanceStage = "CYBER (X2)"
	elseif RDS == 5 then
		DanceStage = "DANCING RAYS (X)"
	elseif RDS == 6 then
		DanceStage = "DAWN STREETS (X)"
	elseif RDS == 7 then
		DanceStage = "LOVE SWEETS (X)"
	end;
end


-------------- CHARACTERS
-------SIZE

Character_1 = GAMESTATE:GetCharacter(PLAYER_1):GetDisplayName()
Character_2 = GAMESTATE:GetCharacter(PLAYER_2):GetDisplayName()

if
    string.match(Character_1, "Rinon")
then
    CharacterSize1=0.67
elseif 
    string.match(Character_1, "Baby")
then
    CharacterSize1=0.4
elseif 
    string.match(Character_1, "Rena")
then
    CharacterSize1=0.82
elseif 
	string.match(Character_1, "PiX")
then
	CharacterSize1=0.38
elseif 
	(string.match(Character_1, "(Ace)") or string.match(Character_1, "(X2)") or string.match(Character_1, "(X)") or string.match(Character_1, "(SN)") or string.match(Character_1, "(2ndMode)"))
then
	CharacterSize1=1
else
    CharacterSize1=0.75
end


if
    string.match(Character_2, "Rinon")
then
    CharacterSize2=0.67
elseif 
    string.match(Character_2, "Baby")
then
    CharacterSize2=0.4
elseif 
    string.match(Character_2, "Rena")
then
    CharacterSize2=0.82
elseif 
	string.match(Character_2, "PiX")
then
	CharacterSize2=0.38
elseif 
	(string.match(Character_2, "(Ace)") or string.match(Character_2, "(X2)") or string.match(Character_2, "(X)") or string.match(Character_2, "(SN)") or string.match(Character_2, "(2ndMode)"))
then
	CharacterSize2=1
else
    CharacterSize2=0.75
end


-------GENRE AND CHOREO

if BothPlayersEnabled() then

	Choreo = ""

	-------GENRE

	if
		string.match(Character_1, "Jenny") or
		string.match(Character_1, "Alice") or
		string.match(Character_1, "Yuni") or
		string.match(Character_1, "PiX") or
		string.match(Character_1, "Zukin") or
		string.match(Character_1, "Jun") or
		string.match(Character_1, "Rena") or
		string.match(Character_1, "Emi") or
		string.match(Character_1, "Janet")
	then
		Char1_Gen="F"
	elseif
		string.match(Character_1, "Rage") or
		string.match(Character_1, "Disco") or
		string.match(Character_1, "Baby") or
		string.match(Character_1, "Gus") or
		string.match(Character_1, "Victory") or
		string.match(Character_1, "Dred")
	then
		Char1_Gen="M"
	elseif
		string.match(Character_1, "Rinon")
	then
		Char1_Gen="R"
	end


	if
		string.match(Character_2, "Jenny") or
		string.match(Character_2, "Alice") or
		string.match(Character_2, "Yuni") or
		string.match(Character_2, "PiX") or
		string.match(Character_2, "Zukin") or
		string.match(Character_2, "Jun") or
		string.match(Character_2, "Rena") or
		string.match(Character_2, "Emi") or
		string.match(Character_2, "Janet")
	then
		Char2_Gen="F"
	elseif
		string.match(Character_2, "Rage") or
		string.match(Character_2, "Disco") or
		string.match(Character_2, "Baby") or
		string.match(Character_2, "Gus") or
		string.match(Character_2, "Victory") or
		string.match(Character_2, "Dred")
	then
		Char2_Gen="M"
	elseif
		string.match(Character_2, "Rinon")
	then
		Char2_Gen="R"
	end

	
	-------CHOREO


	if (Char1_Gen == "M" and Char2_Gen == "F") or
		(Char1_Gen == "M" and Char2_Gen == "R") or
		(Char1_Gen == "F" and Char2_Gen == "M") or
		(Char1_Gen == "R" and Char2_Gen == "M")
	then
		DoubleGenre_Choreo = math.random(1,10)
		if DoubleGenre_Choreo == 1 then Choreo = "Embarr"
		elseif DoubleGenre_Choreo == 2 then Choreo = "Higher"
		elseif DoubleGenre_Choreo == 3 then Choreo = "River"
		elseif DoubleGenre_Choreo == 4 then Choreo = "Love"
		elseif DoubleGenre_Choreo == 5 then Choreo = "Teo1"
		elseif DoubleGenre_Choreo == 6 then Choreo = "Wave"
		elseif DoubleGenre_Choreo == 7 then Choreo = "Phantasma"
		elseif DoubleGenre_Choreo == 8 then Choreo = "Cute"
		elseif DoubleGenre_Choreo == 9 then Choreo = "Kimi"
		elseif DoubleGenre_Choreo == 10 then Choreo = "Marginal"
		end

	elseif (Char1_Gen == "F" and Char2_Gen == "F") or
	(Char1_Gen == "R" and Char2_Gen == "R") or
	(Char1_Gen == "R" and Char2_Gen == "F") or
	(Char1_Gen == "F" and Char2_Gen == "R")
	then
		DoubleGenre_Choreo = math.random(1,12)
		if DoubleGenre_Choreo == 1 then Choreo = "Yume"
		elseif DoubleGenre_Choreo == 2 then Choreo = "Brain"
		elseif DoubleGenre_Choreo == 3 then Choreo = "Embarr"
		elseif DoubleGenre_Choreo == 4 then Choreo = "Higher"
		elseif DoubleGenre_Choreo == 5 then Choreo = "Love"
		elseif DoubleGenre_Choreo == 6 then Choreo = "Luka"
		elseif DoubleGenre_Choreo == 7 then Choreo = "River"
		elseif DoubleGenre_Choreo == 8 then Choreo = "Teo1"
		elseif DoubleGenre_Choreo == 9 then Choreo = "Wave"
		elseif DoubleGenre_Choreo == 10 then Choreo = "Cute"
		elseif DoubleGenre_Choreo == 11 then Choreo = "Kimi"
		elseif DoubleGenre_Choreo == 12 then Choreo = "Marginal"
		end


	elseif (Char1_Gen == "M" and Char2_Gen == "M") then
		DoubleGenre_Choreo = math.random(1,13)
		if DoubleGenre_Choreo == 1 then Choreo = "Embarr"
		elseif DoubleGenre_Choreo == 2 then Choreo = "Specialist"
		elseif DoubleGenre_Choreo == 3 then Choreo = "Higher"
		elseif DoubleGenre_Choreo == 4 then Choreo = "Life"
		elseif DoubleGenre_Choreo == 5 then Choreo = "Love"
		elseif DoubleGenre_Choreo == 6 then Choreo = "River"
		elseif DoubleGenre_Choreo == 7 then Choreo = "Seisou"
		elseif DoubleGenre_Choreo == 8 then Choreo = "Snowman"
		elseif DoubleGenre_Choreo == 9 then Choreo = "Chaos"
		elseif DoubleGenre_Choreo == 10 then Choreo = "Teo1"
		elseif DoubleGenre_Choreo == 11 then Choreo = "Wave"
		elseif DoubleGenre_Choreo == 12 then Choreo = "Kimi"
		elseif DoubleGenre_Choreo == 13 then Choreo = "Marginal"
		end
	end
end


-------CHARACTER LOAD
		YND = math.random(1,15)
		if YND == 1 then Yuni = "F AAAgain"
		elseif YND == 2 then Yuni = "F Brain"
		elseif YND == 3 then Yuni = "F Cute"
		elseif YND == 4 then Yuni = "F Embarr"
		elseif YND == 5 then Yuni = "F Higher"
		elseif YND == 6 then Yuni = "F Kimi"
		elseif YND == 7 then Yuni = "F Love"
		elseif YND == 8 then Yuni = "F Luka"
		elseif YND == 9 then Yuni = "F Marginal"
		elseif YND == 10 then Yuni = "F Phantasma"
		elseif YND == 11 then Yuni = "F River"
		elseif YND == 12 then Yuni = "F Saturation"
		elseif YND == 13 then Yuni = "F Teo1"
		elseif YND == 14 then Yuni = "F Wave"
		elseif YND == 15 then Yuni = "F Yume"
		end
	
if CurrentSong == "Yuni's Nocturnal Days" then
	t[#t+1] = Def.Model {
				Meshes="/Characters/(X2) Yuni/model.txt";
				Materials="/Characters/(X2) Yuni/model.txt";
				Bones="/Characters/(X2) Yuni/Dance/"..Yuni..".redir";
				OnCommand=function(self)
				self:cullmode("CullMode_None")
				self:x(0):zoom(1):queuecommand("UpdateRate") end,
				UpdateRateCommand=function(self)
				end,
		};
else


if AnyoneHasChar() then
	for player in ivalues(PlayerNumber) do


		if BothPlayersEnabled() and 
		(string.match(Character_1, "(Ace)") or string.match(Character_1, "(X2)") or string.match(Character_1, "(X)") or string.match(Character_1, "(SN)") or string.match(Character_1, "(2ndMode)")) 
		and
		(string.match(Character_2, "(Ace)") or string.match(Character_2, "(X2)") or string.match(Character_2, "(X)") or string.match(Character_2, "(SN)") or string.match(Character_2, "(2ndMode)"))
		then
			BonesToLoad1=GAMESTATE:GetCharacter(player):GetCharacterDir().."Dance/"..Char1_Gen.." "..Choreo..".redir"
			BonesToLoad2=GAMESTATE:GetCharacter(player):GetCharacterDir().."Dance/"..Char2_Gen.." "..Choreo..".redir"
		else
			BonesToLoad1=GAMESTATE:GetCharacter(player):GetDanceAnimationPath()
			BonesToLoad2=GAMESTATE:GetCharacter(player):GetDanceAnimationPath()
		end
		
		--MODEL LOAD

		if GAMESTATE:IsPlayerEnabled(player) then
		t[#t+1] = Def.Model {
				Meshes=GAMESTATE:GetCharacter(player):GetModelPath(),
				Materials=GAMESTATE:GetCharacter(player):GetModelPath(),
				Bones=(player == PLAYER_1 and BonesToLoad1) or BonesToLoad2,


				OnCommand=function(self)
				self:cullmode("CullMode_None")
				if BothPlayersEnabled() then self:x( (player == PLAYER_1 and 7) or -7 )
				:zoom( (player == PLAYER_1 and CharacterSize1) or CharacterSize2)
				:queuecommand("UpdateRate")
				else
				self:x(0):zoom(CharacterSize1):queuecommand("UpdateRate")
				end
				end,
				UpdateRateCommand=function(self)
				end,
		};
		end
	end
end

end;

-------------- DANCE STAGES
-------CAMERA



CamRan=1
local CameraRandomList = {}
for i = 1, 12 do
CameraRandomList[i] = i
end
for i = 1, 12 do
local CamRandNumber = math.random(1,12)
local TempRand = CameraRandomList[i]
CameraRandomList[i] = CameraRandomList[CamRandNumber]
CameraRandomList[CamRandNumber] = TempRand
end


t[#t+1] = Def.Quad{

	OnCommand=function(self)
		self:visible(false)
		:queuemessage("Camera"..CameraRandomList[6]):sleep(7.8):queuecommand("TrackTime");
	end;

	TrackTimeCommand=function(self)

	DEDICHAR:SetTimingData()

	self:sleep(1/60)
	if AnyoneHasChar() then
			self:queuemessage("Camera"..CameraRandomList[CamRan]):sleep(7.8)
			CurrentStageCamera = CurrentStageCamera
			CamRan=CamRan+1
			if CamRan==12 then
				CamRan = 1
			end
		self:queuecommand("TrackTime")
	end
	end,
};


-------JACKET WRITER


local Animation = "/DanceStages/"..DanceStage.."/Animacion.ini"
local file = RageFileUtil.CreateRageFile()

if GAMESTATE:GetCurrentSong():HasJacket() then
    if string.match(DanceStage, "VIDEO") or DanceStage == "BIG SCREEN (X2)" or string.match(DanceStage, "REPLICANT") then
        file:Open(Animation,2)
        file:Write("[AnimatedTexture]\nFrame0000=../.."..GAMESTATE:GetCurrentSong():GetJacketPath().."\nDelay0000=1")
        file:Close()
        file:destroy()
    end
elseif GAMESTATE:GetCurrentSong():HasBackground() then
    if string.match(DanceStage, "VIDEO") or DanceStage == "BIG SCREEN (X2)" or string.match(DanceStage, "REPLICANT") then
        file:Open(Animation,2)
        file:Write("[AnimatedTexture]\nFrame0000=../.."..GAMESTATE:GetCurrentSong():GetBackgroundPath().."\nDelay0000=1")
        file:Close()
        file:destroy()
    end
end;


-------DANCESTAGE CONFIGURATOR


function CheckStageConfigurationNumber(def,conf)
	local result = def or 0
	local filetoload = StagesFolder..DanceStage.."/MapCfg.cfg";
	local content = Config.Load(conf,filetoload)
	if content then result = tonumber(content) end
	return result
end

-------DANCESTAGE LOADER



if DanceStage == "DANCING RAYS (X)" or DanceStage == "CLUB (X2)" or DanceStage == "BOOM LIGHT (X2)" or DanceStage == "BOOM BOOM BOOM (X)" then

	--LIGHT
	t[#t+1] = Def.ActorFrame{
		Def.Model {
			Meshes=StagesFolder..DanceStage.."/Map_B.txt";
			Materials=StagesFolder..DanceStage.."/Map_B.txt";
			Bones=StagesFolder..DanceStage.."/Map_B.txt";
			OnCommand=function(self)
				self:cullmode(2):zoom(CheckStageConfigurationNumber(1,"StageZoom") )
				self:xy(CheckStageConfigurationNumber(0,"StageXOffset"), CheckStageConfigurationNumber(0,"StageYOffset"))
			end,
		};
	};
	
	--AMBIENT
	t[#t+1] = Def.ActorFrame{
		Def.Model {
			Meshes=StagesFolder..DanceStage.."/Map_A.txt";
			Materials=StagesFolder..DanceStage.."/Map_A.txt";
			Bones=StagesFolder..DanceStage.."/Map_A.txt";
			OnCommand=function(self)
				self:cullmode(1):zoom(CheckStageConfigurationNumber(1,"StageZoom") )
				self:xy(CheckStageConfigurationNumber(0,"StageXOffset"), CheckStageConfigurationNumber(0,"StageYOffset"))
			end,
		};
	};

else

	t[#t+1] = Def.ActorFrame{
		Def.Model {
			Meshes=StagesFolder..DanceStage.."/Map.txt";
			Materials=StagesFolder..DanceStage.."/Map.txt";
			Bones=StagesFolder..DanceStage.."/Map.txt";
			OnCommand=function(self)
				self:cullmode(2):zoom(CheckStageConfigurationNumber(1,"StageZoom") )
				self:xy(CheckStageConfigurationNumber(0,"StageXOffset"), CheckStageConfigurationNumber(0,"StageYOffset"))
			end,
		};
	};

end


	t[#t+1] = LoadActor(StagesFolder..DanceStage.."/Cameras.lua" )

background[#background+1] = t;
end;

return background;
