Scriptname QuickShotStandingSneakEffectScript extends ActiveMagicEffect  
{Condition Event - IsSneaking == 1}

Perk Property QuickShotPerk  Auto  

Function UpdateSettings(Actor akTarget)
	If (akTarget.HasPerk(QuickShotPerk))
		Game.SetGameSettingFloat("fArrowBowMinTime", 0.4000)
		Game.SetGameSettingFloat("fBowHoldTimer", 0.4000)
		Game.SetGameSettingFloat("fBowDrawTime", 1.2667)
		Debug.Trace("QuickShotStanding: Fast draw speed")
	Else
		Game.SetGameSettingFloat("fArrowBowMinTime", 0.8000)
		Game.SetGameSettingFloat("fBowHoldTimer", 0.8000)
		Game.SetGameSettingFloat("fBowDrawTime", 1.6667)
		Debug.Trace("QuickShotStanding: Normal draw speed")
	EndIf
EndFunction

Event OnEffectStart(Actor akTarget, Actor akCaster)
	UpdateSettings(akTarget)
EndEvent

Event OnPlayerLoadGame()
	Actor akTarget = Game.GetPlayer()
	UpdateSettings(akTarget)
EndEvent
