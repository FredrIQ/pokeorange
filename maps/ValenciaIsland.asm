const_value set 2
	const VALENCIAISLAND_TEACHER
	const VALENCIAISLAND_FISHER
	const VALENCIAISLAND_SILVER

ValenciaIsland_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 1

	; callbacks
	dbw MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_VALENCIA
	return

ValenciaIsland_TeacherStopsYouTrigger1:
	playmusic MUSIC_MOM
	spriteface VALENCIAISLAND_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	spriteface PLAYER, RIGHT
	applymovement VALENCIAISLAND_TEACHER, Movement_TeacherRunsToYou1_NBT
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow VALENCIAISLAND_TEACHER, PLAYER
	applymovement VALENCIAISLAND_TEACHER, Movement_TeacherBringsYouBack1_NBT
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

ValenciaIsland_TeacherStopsYouTrigger2:
	playmusic MUSIC_MOM
	spriteface VALENCIAISLAND_TEACHER, LEFT
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	spriteface PLAYER, RIGHT
	applymovement VALENCIAISLAND_TEACHER, Movement_TeacherRunsToYou2_NBT
	spriteface PLAYER, UP
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow VALENCIAISLAND_TEACHER, PLAYER
	applymovement VALENCIAISLAND_TEACHER, Movement_TeacherBringsYouBack2_NBT
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

ValenciaIslandTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_IVY
	iftrue .MonIsAdorable
	writetext Text_GearIsImpressive
	waitbutton
	closetext
	end

.MonIsAdorable:
	writetext Text_YourMonIsAdorable
	waitbutton
	closetext
	end

ValenciaIslandFisherScript:
if def(DEBUG)
	setflag ENGINE_HIVEBADGE
	setflag ENGINE_PLAINBADGE
	setflag ENGINE_FOGBADGE
	giveitem RARE_CANDY, 99
	opentext
	givepoke MUK, 50, BERRY
	givepoke BLASTOISE, 50, BERRY
	givepoke CHARIZARD, 50, BERRY
	closetext
	warp SUNBURST_ISLAND, 8, 4
	end
else
	jumptextfaceplayer Text_ElmDiscoveredNewMon
endc

ValenciaIslandSign:
	jumptext ValenciaIslandSignText

MapValenciaIslandSignpost1Script:
	jumptext PlayersHouseSignText

MapValenciaIslandSignpost2Script:
	jumptext IvysLabSignText

MapValenciaIslandSignpost3Script:
	jumptext IvysHouseSignText

Movement_TeacherRunsToYou1_NBT:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

Movement_TeacherRunsToYou2_NBT:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

Movement_TeacherBringsYouBack1_NBT:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

Movement_TeacherBringsYouBack2_NBT:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

Text_GearIsImpressive:
	text "<PLAYER>!"

	para "PROF. IVY is"
	line "waiting for you!"
	done

Text_WaitPlayer:
	text "Yo, <PLAYER>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "What do you think"
	line "you're doing?"
	done

Text_ItsDangerousToGoAlone:
	text "It's dangerous to"
	line "go out without a"
	cont "#MON!"

	para "Isn't PROF. IVY"
	line "giving you a "

	para "#MON? She's"
	line "on BAYVIEW ROAD."
	done

Text_YourMonIsAdorable:
	text "Oh! Nice #MON!"
	line "It looks cool,"
	cont "I wish I had one!"
	done

Text_TellMomIfLeaving:
	text "Hi, <PLAYER>!"
	line "Leaving again?"

	para "You should tell"
	line "your mom if you"
	cont "are leaving."
	done

Text_CallMomOnGear:
	text "Call your mom on"
	line "your #GEAR to"

	para "let her know how"
	line "you're doing."
	done

Text_ElmDiscoveredNewMon:
	text "<PLAYER>!"

	para "PROFESSOR IVY is"
	line "smokin', don't"
	cont "you think?"
	done

ValenciaIslandSignText:
	text "VALENCIA ISLAND"

	para "IVY RESEARCH"
	line "South side of"
	cont "village."
	done

PlayersHouseSignText:
	text "<PLAYER>'s House"
	done

IvysLabSignText:
	text "IVY RESEARCH"
	line "No.2 BAYVIEW"
	done

IvysHouseSignText:
	text "IVY'S HOUSE"
	done

ValenciaIsland_MapEventHeader:: db 0, 0

.Warps: db 4
	warp_def 19, 18, 1, IVYS_LAB
	warp_def 5, 13, 1, KRISS_HOUSE_1F
	warp_def 11, 3, 1, KRISS_NEIGHBORS_HOUSE
	warp_def 19, 5, 1, IVYS_HOUSE

.CoordEvents: db 2
	xy_trigger 0, 8, 1, 0, ValenciaIsland_TeacherStopsYouTrigger1, 0, 0
	xy_trigger 0, 9, 1, 0, ValenciaIsland_TeacherStopsYouTrigger2, 0, 0

.BGEvents: db 4
	signpost 12, 8, SIGNPOST_READ, ValenciaIslandSign
	signpost 5, 11, SIGNPOST_READ, MapValenciaIslandSignpost1Script
	signpost 19, 15, SIGNPOST_READ, MapValenciaIslandSignpost2Script
	signpost 3, 13, SIGNPOST_READ, MapValenciaIslandSignpost3Script

.ObjectEvents: db 2
	person_event SPRITE_COOLTRAINER_M, 8, 6, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ValenciaIslandTeacherScript, -1
	person_event SPRITE_YOUNGSTER, 18, 10, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, ValenciaIslandFisherScript, -1