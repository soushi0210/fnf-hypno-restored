   function onCreate()
      makeLuaText('watermark', " PORTEADO POR | Glass o Water                                                      FOREVER ENGINE V0.5.2H ", 0, 2, 700); -- You can edit the created by Prisma Text just dont change anything else
         setTextSize('watermark', 20);
         addLuaText('watermark');
   -- background shit
   makeLuaSprite('table','gamble/table',-1000,-420)
   setScrollFactor('table', 1.0, 1.0)
   scaleObject('table',1.1,1.1)
   addLuaSprite('table',false);

   makeLuaSprite('cover','gamble/table',600,-420)
   setScrollFactor('cover', 1.0, 1.0)
   scaleObject('cover',1.1,1.1)
   addLuaSprite('cover',true);

   makeLuaSprite('light','gamble/light',-900,-210)
   setScrollFactor('light', 1.0, 1.0)
   setProperty('light.alpha',0.375)
   scaleObject('light',1.0,1.0)
   addLuaSprite('light',true);

end