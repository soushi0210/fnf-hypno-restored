
state = true;
shouldAdd = true;

function onUpdate()
	if (getMouseX('camHUD') > 170 and getMouseX('camHUD') < 180) and (getMouseY('camHUD') > 502.5 and getMouseY('camHUD') < 700 and mousePressed('left')) or keyPressed('right') then--debugPrint(trance)
		objectPlayAnimation('Hipo', 'Pressed', false);
	else
		objectPlayAnimation('Hipo', 'nonPress', false);
	end
end

function onCreate()
	makeAnimatedLuaSprite('Hipo', 'Hipo', 1150, 582.5);
	addAnimationByPrefix('Hipo', 'nonPress', 'nonPress', 24, false);
	addAnimationByPrefix('Hipo', 'Pressed', 'Pressed', 12, false);
	addLuaSprite('Hipo', false);
	setObjectCamera('Hipo', 'other');
end