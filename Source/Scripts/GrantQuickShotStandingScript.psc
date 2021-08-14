Scriptname GrantQuickShotStandingScript extends Quest  

SPELL Property SpellRef  Auto  

Event OnInit()
	Game.GetPlayer().AddSpell(SpellRef)
EndEvent
