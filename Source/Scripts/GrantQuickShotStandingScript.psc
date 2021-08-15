Scriptname GrantQuickShotStandingScript extends Quest  

Actor Property PlayerRef Auto
Perk Property QuickShotStandingPerk  Auto  

Event OnInit()
	If (!PlayerRef.HasPerk(QuickShotStandingPerk))
		PlayerRef.AddPerk(QuickShotStandingPerk)
	EndIf
EndEvent