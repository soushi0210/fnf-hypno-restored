function onCreate()
	makeLuaText('watermark', " PORTEADO POR | PEREZ SEN                                                          FOREVER ENGINE V0.5.2H ", 0, 2, 700); -- You can edit the created by Prisma Text just dont change anything else
		setTextSize('watermark', 20);
		addLuaText('watermark');
	-- Backround shit
    makeLuaSprite('BG2 Sky', 'feralisleep/BG2 Sky', -555, -304);
	scaleObject('BG2 Sky', 0.8, 0.8);
    setProperty('BG2 Sky.antialiasing', false);


    makeLuaSprite('BG2 Buildings', 'feralisleep/BG2 Buildings', -555, 180);
	scaleObject('BG2 Buildings', 1.0, 1.0);
    setProperty('BG2 Buildings.antialiasing', false);


	makeLuaSprite('Lost_silver_ground', 'feralisleep/Lost_silver_ground', -655, 834);
	scaleObject('Lost_silver_ground', 0.7, 0.7);
    setProperty('Lost_silver_ground.antialiasing', false);



	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

    makeLuaSprite('BG1 Moon', 'feralisleep/BG1 Moon', -255, 204);
	scaleObject('BG1 Moon', 0.4, 0.4);
    setProperty('BG1 Moon.antialiasing', false);

	
	makeLuaSprite('Lost_silver_fog', 'feralisleep/Lost_silver_fog', -655, 600);
	scaleObject('Lost_silver_fog', 0.7, 0.7);
    setProperty('Lost_silver_fog.antialiasing', false);

	
	makeLuaSprite('Lost_silver_lake', 'feralisleep/Lost_silver_lake', -655, 734);
	scaleObject('Lost_silver_lake', 0.7, 0.7);
    setProperty('Lost_silver_lake.antialiasing', false);

	
	makeLuaSprite('Lost_silver_tree', 'feralisleep/Lost_silver_tree', -580, 100);
	scaleObject('Lost_silver_tree', 0.7, 0.7);
    setProperty('Lost_silver_tree.antialiasing', false);

    addLuaSprite('BG2 Sky', false);
    addLuaSprite('BG1 Moon', false);
    addLuaSprite('BG2 Buildings', false);
	addLuaSprite('Lost_silver_lake', false);
	addLuaSprite('Lost_silver_fog', false);
	addLuaSprite('Lost_silver_ground', false); 
	addLuaSprite('Lost_silver_tree', false); 

    end

    function onEvent(name,value1)
		if name == 'Trigger BG Ghouls' then 
			
			if value1 == '1' then
		setProperty('defaultCamZoom', 1.17);

            end

        if value1 == '2' then
        setProperty('defaultCamZoom', 0.9);

            end
        end

	end

local xx = 320;
local yy = 650;
local xx2 = 320;
local yy2 = 650;
local ofs = 15;
local followchars = true;
local del = 0;
local del2 = 0;

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'sing' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'sing' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'sing' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'sing' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'sing' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singR' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'sing' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDO' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
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
end