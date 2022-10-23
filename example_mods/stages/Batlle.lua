function onCreate()
	-- Backround shit
	makeLuaSprite('bg', 'buried/bg', -655, 162);
	scaleObject('bg', 4.7, 3.9);
	setProperty('bg.antialiasing', false);
	addLuaSprite('bg', false);

	makeLuaSprite('floor', 'buried/floor', -655, 162);
	scaleObject('floor', 4.7, 3.9);
	setProperty('floor.antialiasing', false);
	addLuaSprite('floor', false);

	makeLuaSprite('graves', 'buried/graves', -505, 192);
	scaleObject('graves', 4.1, 3.3);
	setProperty('graves.antialiasing', false);
	addLuaSprite('graves', false);

	makeLuaSprite('negro', 'buried/negro', -355, 0);
	scaleObject('negro', 4.7, 3.9);
	setProperty('negro.antialiasing', false);
	addLuaSprite('negro', true);
	setObjectCamera('negro', 'other');

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeLuaSprite('bg - copia', 'buried/bg - copia', -355, 0);
	scaleObject('bg - copia', 4.7, 3.9);
	setProperty('bg - copia.antialiasing', false);
	addLuaSprite('bg - copia', true);
	setObjectCamera('bg - copia', 'other');


	end
	addLuaSprite('fog', true);
	setProperty('bg - copia.visible', false);
	setProperty('negro.visible', false);

	setObjetOrder('gf',3);

	end

	function onEvent(name,value1)
		if name == 'Trigger BG Ghouls' then 
			
			if value1 == '1' then
		setProperty('bg - copia.visible', true);
		setProperty('defaultCamZoom', 1.17);
		
			end
	
			if value1 == '2' then
		setProperty('bg - copia.visible', false);
		setProperty('negro.visible', false);
		setProperty('defaultCamZoom', 0.9);

	
			end

			if value1 == '3' then
				setProperty('negro.visible', true);
			
			end
			
		end

	end
	function onCreatePost()

		--for i=0,getProperty('unspawnNotes.length') do
		
		--end
		
		for i=0, 3 do
			setPropertyFromGroup('opponentStrums',i,'downScroll',false)
			setPropertyFromGroup('opponentStrums',i,'y',80)
		
		
		end
		
		function onUpdate()
		
			if ratingName == '?' and botPlay == true then
				setRatingName('PEREZ SEN BOTPLAY')
			end
		end
		
		end