function onCreate()
	-- background shit
	makeLuaSprite('regular', 'regular/regular', -800, -1200);
	setLuaSpriteScrollFactor('regular', 0.9, 0.9);
	scaleObject('regular', 1.1, 1.1);

	addLuaSprite('regular', false);
	makeAnimatedLuaSprite('Bop', 'regular/background', -800, 0);
	scaleObject('regular', 1.1, 1.1);
	addAnimationByPrefix('Bop','Bopp','Boppin',24,true)
	addLuaSprite('Bop', false);
	setLuaSpriteScrollFactor('Boppin',0.9,0.9)
	
	makeAnimatedLuaSprite('ebop', 'regular/ebop', -1200, 300);
	scaleObject('regular', 1.1, 1.1);
	addAnimationByPrefix('ebop','ebopp','Boppin',24,true)
	addLuaSprite('ebop', true);
	setLuaSpriteScrollFactor('ebop',0.9,0.9)
	
end

function  onBeatHit()
	-- body
	objectPlayAnimation('Bop','Bopp',false)
	objectPlayAnimation('ebop','ebopp',false)
end