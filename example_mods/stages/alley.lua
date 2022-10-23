function onCreate()
	makeLuaText('watermark', " PORTEADO POR | PEREZ SEN                                                          FOREVER ENGINE V0.5.2H ", 0, 2, 700); -- You can edit the created by Prisma Text just dont change anything else
		setTextSize('watermark', 20);
		addLuaText('watermark');
  -- Backround shit
  makeLuaSprite('bg','lullulaby/background',-1000,-300)
  setScrollFactor('bg',0.9,0.9)
  makeLuaSprite('mg','lullulaby/midground',-300,-575)
  scaleObject('mg',0.7,0.7)
  makeLuaSprite('fg','lullulaby/foregroud',-350,-700)
  scaleObject('fg',0.7,0.7)
  makeLuaSprite('fog','lullulaby/fog',-350,-700)
  scaleObject('fog',0.7,0.7)
  
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

  addLuaSprite('bg',false)
  addLuaSprite('mg',false)
  addLuaSprite('fog',false)
  addLuaSprite('fg',true)
  end
  end