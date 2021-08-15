Scriptname GrantQuickShotStandingAliasScript extends ReferenceAlias  

Actor Property PlayerRef Auto
Perk Property QuickShotStandingPerk  Auto  
Perk Property QuickShotStandingDetectPerk  Auto  

Event OnInit()
	Utility.Wait(3)
	
	; Increases bow draw speed
	If (!PlayerRef.HasPerk(QuickShotStandingPerk))
		PlayerRef.AddPerk(QuickShotStandingPerk)
		Debug.Trace("QuickShotStanding: Main perk added")
	EndIf

	; Changes game settings depending on player sneak state
	If (!PlayerRef.HasPerk(QuickShotStandingDetectPerk))
		PlayerRef.AddPerk(QuickShotStandingDetectPerk)
		Debug.Trace("QuickShotStanding: Sneak detection perk added")
	EndIf

	; Using similar fix as Archery Quick Shot Perk Bug Fix by Dutchj
	; https://www.nexusmods.com/skyrimspecialedition/mods/40286
	; Sneaking without vanilla Quick Shot is default anim speed
	; Otherwise use faster anim speed, ignoring the 0.07 draw difference when player has both Quick Shot perks
	Game.SetGameSettingFloat("fArrowBowMinTime", 0.4000)
	Game.SetGameSettingFloat("fBowHoldTimer", 0.4000)
	Game.SetGameSettingFloat("fBowDrawTime", 1.2667)
	Debug.Trace("QuickShotStanding: Ready")
EndEvent

Event OnPlayerLoadGame()
	OnInit()
EndEvent
