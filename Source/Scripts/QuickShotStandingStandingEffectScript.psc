Scriptname QuickShotStandingStandingEffectScript extends ActiveMagicEffect  
{Condition Event - IsSneaking == 0}

Function FastDraw()
	Game.SetGameSettingFloat("fArrowBowMinTime", 0.4000)
	Game.SetGameSettingFloat("fBowHoldTimer", 0.4000)
	Game.SetGameSettingFloat("fBowDrawTime", 1.2667)
	Debug.Trace("QuickShotStanding: Fast draw speed")
EndFunction

Event OnEffectStart(Actor akTarget, Actor akCaster)
	FastDraw()
EndEvent

Event OnPlayerLoadGame()
	FastDraw()
EndEvent
