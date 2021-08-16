Scriptname QuickShotStandingPerkBook extends ObjectReference  

Actor Property PlayerRef Auto
Perk Property QuickShotStandingPerk  Auto  

Event OnRead()
	If (!PlayerRef.HasPerk(QuickShotStandingPerk))
		PlayerRef.AddPerk(QuickShotStandingPerk)
		Debug.Notification("Quick Shot Standing perk added")
		Debug.Trace("QuickShotStanding: Perk added")
	EndIf
EndEvent