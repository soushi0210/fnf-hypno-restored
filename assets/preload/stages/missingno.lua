function onCreate()
	makeLuaText('watermark', " PORTEADO POR | PEREZ SEN - XendrackYT                                              FOREVER ENGINE V0.5.2H ", 0, 2, 700); -- You can edit the created by Prisma Text just dont change anything else
		setTextSize('watermark', 20);
		addLuaText('watermark');
        
  makeAnimatedLuaSprite('bg','missingno/BG_assets',-800,-350)
  addAnimationByPrefix('bg','idle','Bg Sky',24,true)
  objectPlayAnimation('bg','idle',true)
  scaleObject('bg',6,6)
  setProperty('bg.antialiasing', false);


  makeAnimatedLuaSprite('floor','missingno/BG_assets',-750,-250)
  addAnimationByPrefix('floor','idle','Bg Wave',24,true)
  objectPlayAnimation('floor','idle',true)
  scaleObject('floor',6,6)
  setProperty('floor.antialiasing', false);


  makeAnimatedLuaSprite('sky','missingno/BG_assets',-800,-350)
  addAnimationByPrefix('sky','idle','Bg Ocean',24,true)
  objectPlayAnimation('sky','idle',true)
  setProperty('sky.antialiasing', false);
  scaleObject('sky',6,6)

  addLuaSprite('bg',false)
  addLuaSprite('sky',false)
  addLuaSprite('floor',false)

  end

  local xx = 300;
local yy = 150;
local xx2 = 670;
local yy2 = 390;
local ofs = 20;
local followchars = false;
local del = 0;
local del2 = 0;


function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end

if followchars == false then
  if mustHitSection == false then
      if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
          triggerEvent('Camera Follow Pos',xx-ofs,yy)
      end
      if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
          triggerEvent('Camera Follow Pos',xx+ofs,yy)
      end
      if getProperty('dad.animation.curAnim.name') == 'singUP' then
          triggerEvent('Camera Follow Pos',xx,yy-ofs)
      end
      if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
          triggerEvent('Camera Follow Pos',xx,yy+ofs)
      end
      if getProperty('dad.animation.curAnim.name') == 'idle' then
          triggerEvent('Camera Follow Pos',xx,yy)
      end
  else

      if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
          triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
          triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
          triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
          triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
      end
if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
          triggerEvent('Camera Follow Pos',xx2,yy2)
      end
  end
else
  triggerEvent('Camera Follow Pos','','')
end
end