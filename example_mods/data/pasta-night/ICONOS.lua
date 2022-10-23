function onCreate()
   doTweenAngle('rightangle','light',10,2.5,'sineInOut')
   doTweenX('right','light',getProperty('light.x')-115,2.5,'sineInOut')
end

function onUpdate()
   setProperty('iconP2.alpha',0)

   setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 317.5)
   setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 317.5)
   setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 317.5)
   setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 317.5)

   setPropertyFromGroup('opponentStrums', 0, 'x', defaultPlayerStrumX0 + 1000)
   setPropertyFromGroup('opponentStrums', 1, 'x', defaultPlayerStrumX1 + 1000)
   setPropertyFromGroup('opponentStrums', 2, 'x', defaultPlayerStrumX2 + 1000)
   setPropertyFromGroup('opponentStrums', 3, 'x', defaultPlayerStrumX3 + 1000)

   setPropertyFromGroup('opponentStrums', 0, 'y', defaultPlayerStrumY0 + 1000)
   setPropertyFromGroup('opponentStrums', 1, 'y', defaultPlayerStrumY1 + 1000)
   setPropertyFromGroup('opponentStrums', 2, 'y', defaultPlayerStrumY2 + 1000)
   setPropertyFromGroup('opponentStrums', 3, 'y', defaultPlayerStrumY3 + 1000)
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