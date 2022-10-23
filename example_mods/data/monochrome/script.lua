local allowCountdown = false
function onStartCountdown()
  if not allowCountdown then
  playSound('ImDead');
  allowCountdown = true;
  end
  end