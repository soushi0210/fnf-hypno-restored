function onCreate()
	makeLuaText('watermark', " PORTEADO POR | PEREZ SEN                                                          FOREVER ENGINE V0.5.2H ", 0, 2, 700); -- You can edit the created by Prisma Text just dont change anything else
		setTextSize('watermark', 20);
		addLuaText('watermark');

	makeLuaSprite('Gold_Jumpscare', 'monochrome/Gold_Jumpscare', -155, -34);
	scaleObject('Gold_Jumpscare', 0.4, 0.37);
	setProperty('Gold_Jumpscare.antialiasing', false);
	addLuaSprite('Gold_Jumpscare', false);
	setObjectCamera('Gold_Jumpscare', 'other');
	setProperty('Gold_Jumpscare.visible', false);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	end
	
function onUpdate()
		
	if ratingName == '?' and botPlay == true then
		setRatingName('PEREZ SEN BOTPLAY')
	end
end

end
function onEvent(name,value1)
	if name == 'Trigger BG Ghouls' then 

		
		if value1 == '1' then
			setProperty('Gold_Jumpscare.visible', true);
		end
		
		if value1 == '2' then
	setProperty('Gold_Jumpscare.visible', false);
		end
		
	end

end