	db TANGROWTH ; 245

	db 100,  100, 125,  50,  110, 50
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS
	db 30 ; catch rate
	db 215 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 127 ; gender
	db 20 ; step cycles to hatch
	dn 7, 7 ; frontpic dimensions

	db MEDIUM_FAST ; growth rate
	dn PLANT, PLANT ; egg groups

	; tmhm
	tmhm SLEEP_TALK, TOXIC, BULLET_SEED, FISSURE, SUNNY_DAY, HYPER_BEAM, DRAGONBREATH, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, EARTHQUAKE, RETURN, DOUBLE_TEAM, SWAGGER, SLUDGE_BOMB, SWIFT, AERIAL_ACE, HEADBUTT, REST, ATTRACT, THIEF, FLASH, CUT, STRENGTH, ROCK_SMASH, VENOSHOCK
	; end
