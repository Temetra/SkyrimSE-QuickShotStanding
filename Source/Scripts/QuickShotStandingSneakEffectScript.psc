Scriptname QuickShotStandingSneakEffectScript extends ActiveMagicEffect  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Game.SetGameSettingFloat("fArrowBowMinTime", 0.8000)
	Game.SetGameSettingFloat("fBowHoldTimer", 0.8000)
	Game.SetGameSettingFloat("fBowDrawTime", 1.6667)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	Game.SetGameSettingFloat("fArrowBowMinTime", 0.4000)
	Game.SetGameSettingFloat("fBowHoldTimer", 0.4000)
	Game.SetGameSettingFloat("fBowDrawTime", 1.2667)
EndEvent
