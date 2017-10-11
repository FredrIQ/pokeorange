const_value set 1
	const VALENCIAISLAND_TEACHER
	const VALENCIAISLAND_FISHER
	const VALENCIAISLAND_SILVER

ValenciaIsland_MapScriptHeader:

.MapTriggers: db 0

.MapCallbacks: db 1
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
	setflag ENGINE_POKEDEX
	setflag ENGINE_CORAL_EYE_BADGE
	setflag ENGINE_SEA_RUBY_BADGE
	setflag ENGINE_SPIKE_SHELL_BADGE
	setflag ENGINE_JADE_STAR_BADGE
	setflag ENGINE_FLYPOINT_VALENCIA
	setflag ENGINE_FLYPOINT_TANGELO
	setflag ENGINE_FLYPOINT_MIKAN
	setflag ENGINE_FLYPOINT_MANDARIN_NORTH
	setflag ENGINE_FLYPOINT_SUNBURST
	setflag ENGINE_FLYPOINT_KINNOW
	setflag ENGINE_FLYPOINT_NAVEL
	setflag ENGINE_FLYPOINT_MORO
	giveitem TOWN_MAP
	giveitem POKE_FLUTE
	giveitem MASTER_BALL
	giveitem HM_CUT
	giveitem HM_FLY
	giveitem HM_SURF
	giveitem HM_STRENGTH
	giveitem HM_ROCK_SMASH
	giveitem HM_DIVE
	giveitem HM_WATERFALL
	giveitem HM_ROCK_CLIMB
	giveitem TM_FLASH
	giveitem TM_WHIRLPOOL
	giveitem MAX_REPEL, 99
	giveitem RARE_CANDY, 99
	giveitem SHINY_STONE
	giveitem EVERSTONE
	giveitem SKATEBOARD
	opentext
	givepoke LAPRAS, 40
	givepoke CHARIZARD, 40
	givepoke PIKACHU, 40
	givepoke MEOWTH, 40
	givepoke MEW, 40
	givepoke LATIOS, 40
	closetext
	warp GOLDEN_ISLAND, 20, 5
	callasm CheatFillPokedex
	end
else
	jumptextfaceplayer Text_ElmDiscoveredNewMon
endc

CheatFillPokedex:
    ld a, %11111111
    ld [PokedexSeen+0], a ; 000-007
    ld [PokedexCaught+0], a ; 000-007
    ld [PokedexSeen+1], a
    ld [PokedexCaught+1], a
    ld [PokedexSeen+2], a
    ld [PokedexCaught+2], a
    ld [PokedexSeen+3], a
    ld [PokedexCaught+3], a
    ld [PokedexSeen+4], a
    ld [PokedexCaught+4], a
    ld [PokedexSeen+5], a
    ld [PokedexCaught+5], a
    ld [PokedexSeen+6], a
    ld [PokedexCaught+6], a
    ld [PokedexSeen+7], a
    ld [PokedexCaught+7], a
    ld [PokedexSeen+8], a
    ld [PokedexCaught+8], a
    ld [PokedexSeen+9], a
    ld [PokedexCaught+9], a
    ld [PokedexSeen+10], a
    ld [PokedexCaught+10], a
    ld [PokedexSeen+11], a
    ld [PokedexCaught+11], a
    ld [PokedexSeen+12], a
    ld [PokedexCaught+12], a
    ld [PokedexSeen+13], a
    ld [PokedexCaught+13], a
    ld [PokedexSeen+14], a
    ld [PokedexCaught+14], a
    ld [PokedexSeen+15], a
    ld [PokedexCaught+15], a
    ld [PokedexSeen+16], a
    ld [PokedexCaught+16], a
    ld [PokedexSeen+17], a
    ld [PokedexCaught+17], a
    ld [PokedexSeen+18], a
    ld [PokedexCaught+18], a
    ld [PokedexSeen+19], a
    ld [PokedexCaught+19], a
    ld [PokedexSeen+20], a
    ld [PokedexCaught+20], a
    ld [PokedexSeen+21], a
    ld [PokedexCaught+21], a
    ld [PokedexSeen+22], a
    ld [PokedexCaught+22], a
    ld [PokedexSeen+23], a
    ld [PokedexCaught+23], a
    ld [PokedexSeen+24], a
    ld [PokedexCaught+24], a
 ;   ld [PokedexSeen+25], a
  ;  ld [PokedexCaught+25], a
    ld [PokedexSeen+26], a
    ld [PokedexCaught+26], a
    ld [PokedexSeen+27], a
    ld [PokedexCaught+27], a
    ld [PokedexSeen+28], a
    ld [PokedexCaught+28], a
    ld [PokedexSeen+29], a
    ld [PokedexCaught+29], a
    ld [PokedexSeen+30], a ; 240-248
    ld [PokedexCaught+30], a ; 240-248
    ld a, %00011111
    ld [PokedexSeen+31], a ; 249-253
    ld [PokedexCaught+31], a ; 249-253
    ret

ValenciaIslandSign:
	jumptext ValenciaIslandSignText

MapValenciaIslandSignpost1Script:
	jumptext PlayersHouseSignText

MapValenciaIslandSignpost2Script:
	jumptext IvysLabSignText

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
	line "№.2 BAYVIEW"
	done

ValenciaIsland_MapEventHeader::

.Warps: db 4
	warp_def 19, 18, 1, IVYS_LAB
	warp_def 5, 13, 1, KRISS_HOUSE_1F
	warp_def 11, 3, 1, KRISS_NEIGHBORS_HOUSE
	warp_def 19, 5, 1, IVYS_HOUSE

.CoordEvents: db 2
	xy_trigger 0, 8, 1, 0, ValenciaIsland_TeacherStopsYouTrigger1, 0, 0
	xy_trigger 0, 9, 1, 0, ValenciaIsland_TeacherStopsYouTrigger2, 0, 0

.BGEvents: db 3
	signpost 12, 8, SIGNPOST_READ, ValenciaIslandSign
	signpost 5, 11, SIGNPOST_READ, MapValenciaIslandSignpost1Script
	signpost 19, 15, SIGNPOST_READ, MapValenciaIslandSignpost2Script

.ObjectEvents: db 2
	person_event SPRITE_COOLTRAINER_M, 8, 6, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ValenciaIslandTeacherScript, -1
	person_event SPRITE_YOUNGSTER, 18, 10, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, ValenciaIslandFisherScript, -1
