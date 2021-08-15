Scriptname QuickShotStandingSneakEffectScript extends ActiveMagicEffect  

Perk Property QuickShotPerk  Auto  
bool bFastDraw = true

Function NormalDraw()
	If (bFastDraw)
		bFastDraw = false
		Game.SetGameSettingFloat("fArrowBowMinTime", 0.8000)
		Game.SetGameSettingFloat("fBowHoldTimer", 0.8000)
		Game.SetGameSettingFloat("fBowDrawTime", 1.6667)
		Debug.Trace("QuickShotStanding: Normal draw speed")
	EndIf
EndFunction

Function FastDraw()
	If (!bFastDraw)
		bFastDraw = true
		Game.SetGameSettingFloat("fArrowBowMinTime", 0.4000)
		Game.SetGameSettingFloat("fBowHoldTimer", 0.4000)
		Game.SetGameSettingFloat("fBowDrawTime", 1.2667)
		Debug.Trace("QuickShotStanding: Fast draw speed")
	EndIf
EndFunction

; Sneaking
Event OnEffectStart(Actor akTarget, Actor akCaster)
	If (akTarget.HasPerk(QuickShotPerk))
		FastDraw()
	Else
		NormalDraw()
	EndIf
EndEvent

; Standing
Event OnEffectFinish(Actor akTarget, Actor akCaster)
	FastDraw()
EndEvent
