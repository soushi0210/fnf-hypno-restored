function onCreate()
   doTweenAngle('rightangle','light',10,2.5,'sineInOut')
   doTweenX('right','light',getProperty('light.x')-115,2.5,'sineInOut')
end

function onTweenCompleted(tag)
   if tag == 'rightangle' then
      doTweenAngle('leftangle','light',-5,2.5,'sineInOut')
   end
   if tag == 'leftangle' then
      doTweenAngle('rightangle','light',5,2.5,'sineInOut')
   end
   if tag == 'right' then
   	doTweenX('left','light',getProperty('light.x')+125,2.5,'sineInOut')
   end
   if tag == 'left' then
   	doTweenX('right','light',getProperty('light.x')-125,2.5,'sineInOut')
   end
end