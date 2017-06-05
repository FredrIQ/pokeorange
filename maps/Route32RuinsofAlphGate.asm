const_value set 2
	const ROUTE32RUINSOFALPHGATE_OFFICER
	const ROUTE32RUINSOFALPHGATE_YOUNGSTER

Route32RuinsofAlphGate_MapScriptHeader:
.MapTriggers:
	db 2

	; triggers
	maptrigger .Trigger0
	maptrigger .Trigger1
	
.MapCallbacks:
	db 0
	
.Trigger0:
	end

.Trigger1:
	end

OfficerScript_0x69a2d:
	jumptextfaceplayer UnknownText_0x69a36

YoungsterScript_0x69a33:
	jumptextfaceplayer UnknownText_0x69abd
;	domaptrigger ROUTE_32_RUINS_OF_ALPH_GATE, $1
	end
	
Guard_Stop1:
	applymovement PLAYER, Movement_Hey
	opentext
	writetext Text_WaitPlayer2
	waitbutton
	closetext
	applymovement PLAYER, Movement_Go_Away
	end

Text_WaitPlayer2:
	text "Hey!"
	
	para "I'm afraid I can't"
	line "let you pass."
	
	para "There are suspici-"
	line "ous people on"
	cont "ROUTE 53." 
	
	para "It seems there"
	line "are several repor-"
	cont "ts of a couple"
	cont "wearing the now-"
	
	para "defunct TEAM"
	line "ROCKET's uniform."
	done
	
UnknownText_0x69a36:
	text "From here, you'll"
	line "have access to two"
	cont "islands."
	
	para "There's MANDARIN"
	line "NORTH and SUNBURST"
	cont "ISLAND."
	done

UnknownText_0x69abd:
	text "I heard that TEAM"
	line "ROCKET dispersed"
	cont "recently."
	
	para "Maybe some stragg-"
	line "lers are up to no"
	cont "good."
	done
	
Movement_Hey:
	turn_head UP
	step_end
	
Movement_Go_Away:
	step LEFT
	step_end

Route32RuinsofAlphGate_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 4, 0, 6, VIOLET_CITY
	warp_def 5, 0, 7, VIOLET_CITY
	warp_def 4, 9, 1, ROUTE_33
	warp_def 5, 9, 2, ROUTE_33

.CoordEvents: db 2
	xy_trigger 0, 4, 5, 0, Guard_Stop1, 0, 0
	xy_trigger 0, 5, 5, 0, Guard_Stop1, 0, 0

.BGEvents: db 0

.ObjectEvents: db 2
	person_event SPRITE_OFFICER, 2, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, OfficerScript_0x69a2d, -1
	person_event SPRITE_YOUNGSTER, 6, 1, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, YoungsterScript_0x69a33, -1

