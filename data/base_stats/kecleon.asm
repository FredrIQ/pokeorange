	db KECLEON ; 153

	db  60,  90,  70,  40,  60,  120
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL
	db 200 ; catch rate
	db NO_ITEM ; item 1
	db BITTER_BERRY ; item 2
	db FEMALE_50 ; gender
	db 20 ; step cycles to hatch
	dn 7, 7 ; frontpic dimensions

	db MEDIUM_SLOW ; growth rate
	dn FIELD, FIELD ; egg groups

	; tmhm
	tmhm POWERUPPUNCH, WATER_PULSE, TOXIC, SUNNY_DAY, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, SHADOW_CLAW, SOLARBEAM, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, AERIAL_ACE, FACADE, REST, THIEF, ROCK_SLIDE, FLASH, CUT, STRENGTH, ROCK_SMASH, FIRE_PUNCH, THUNDERPUNCH, ICE_PUNCH, DYNAMICPUNCH, HEADBUTT, BODY_SLAM, COUNTER, SUBSTITUTE, ENDURE, SWAGGER, SLEEP_TALK, ATTRACT
	; end
