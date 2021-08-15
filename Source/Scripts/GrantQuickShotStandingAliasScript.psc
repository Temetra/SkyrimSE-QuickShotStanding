Scriptname GrantQuickShotStandingAliasScript extends ReferenceAlias  

Actor Property PlayerRef Auto
Perk Property QuickShotStandingPerk  Auto  

Event OnInit()
	Utility.Wait(3)
	
	If (!PlayerRef.HasPerk(QuickShotStandingPerk))
		PlayerRef.AddPerk(QuickShotStandingPerk)
	EndIf

	RegisterForAnimationEvent(PlayerRef, "tailSneakIdle")
	RegisterForAnimationEvent(PlayerRef, "tailCombatIdle")
	RegisterForAnimationEvent(PlayerRef, "tailMTIdle")
	RegisterForAnimationEvent(PlayerRef, "tailSneakLocomotion")
	RegisterForAnimationEvent(PlayerRef, "tailCombatLocomotion")
	RegisterForAnimationEvent(PlayerRef, "tailMTLocomotion")
EndEvent

Event OnPlayerLoadGame()
	OnInit()
EndEvent

; Using same fix as Archery Quick Shot Perk Bug Fix by Dutchj
; https://www.nexusmods.com/skyrimspecialedition/mods/40286
Event OnAnimationEvent(ObjectReference akSource, string asEventName)
	If (PlayerRef.IsSneaking())
		Game.SetGameSettingFloat("fArrowBowMinTime", 0.8000)
		Game.SetGameSettingFloat("fBowHoldTimer", 0.8000)
		Game.SetGameSettingFloat("fBowDrawTime", 1.6667)
	Else
		Game.SetGameSettingFloat("fArrowBowMinTime", 0.4000)
		Game.SetGameSettingFloat("fBowHoldTimer", 0.4000)
		Game.SetGameSettingFloat("fBowDrawTime", 1.2667)
	EndIf
endEvent
