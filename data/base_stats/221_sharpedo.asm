	db SHARPEDO ; 221

	db 70, 120,  40,  95,  95,  40
	;   hp  atk  def  spd  sat  sdf

	db WATER, DARK
	db 60 ; catch rate
	db 175 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 127 ; gender
	db 20 ; step cycles to hatch
	dn 6, 6 ; frontpic dimensions

	db SLOW ; growth rate
	dn FISH, FISH ; egg groups

	; tmhm
	tmhm WATER_PULSE, SLEEP_TALK, TOXIC, HAIL, WHIRLPOOL, WATER_GUN, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, RETURN, BUBBLEBEAM, DOUBLE_TEAM, SWAGGER, SWIFT, HEADBUTT, REST, ATTRACT, THIEF, SURF, WATERFALL, DIVE, BUG_BITE, VENOSHOCK
	; end