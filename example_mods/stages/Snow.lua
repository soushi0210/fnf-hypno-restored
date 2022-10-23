function onCreate()
	-- Backround shit
	makeLuaSprite('bg', 'mountain/bg', -760, 80);
	scaleObject('bg', 0.8, 0.8);
	setProperty('bg.antialiasing', false);
	addLuaSprite('bg', false);
	
	makeLuaSprite('Pikachu', 'mountain/Pikachu', -155, -34);
	scaleObject('Pikachu', 0.4, 0.37);
	setProperty('Pikachu.antialiasing', false);
	addLuaSprite('Pikachu', false);
	setObjectCamera('Pikachu', 'other');
	setProperty('Pikachu.visible', false);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeLuaSprite('fog', 'mountain/fog', -100, -10);
	scaleObject('fog', 1.1, 1.0);
	setObjectCamera('fog', 'other');
	setProperty('fog.antialiasing', false);

	makeLuaSprite('Blastoise', 'mountain/Blastoise', -1090, 140);
	scaleObject('Blastoise', 0.5, 0.5);
	setProperty('Blastoise.antialiasing', false);

	makeLuaSprite('Charizard', 'mountain/Charizard', -650, -110);
	scaleObject('Charizard', 0.7, 0.7);
	setProperty('Charizard.antialiasing', false);

	makeLuaSprite('Pokemons', 'mountain/Pokemons', -170, 220);
	scaleObject('Pokemons', 0.35, 0.35);
	setProperty('Pokemons.antialiasing', false);

	addLuaSprite('Blastoise', false);
	addLuaSprite('Charizard', false); 
	addLuaSprite('Pokemons', false);
	addLuaSprite('fog', true);

	end
	
function onUpdate()
		
	if ratingName == '?' and botPlay == true then
		setRatingName('PEREZ SEN BOTPLAY')
	end
end

end
function onEvent(name,value1)
	if name == 'SIN HUD' then 

		
		if value1 == '1' then
			setProperty('Pikachu.visible', true);
		end
		
		if value1 == '2' then
	setProperty('Pikachu.visible', false);
		end
		
	end

end