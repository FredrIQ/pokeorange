	db LUMINEON ; 168

	db  69,  69,  76,  91,  69,  86
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER
	db 75 ; catch rate
	db 161 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 127 ; gender
	db 15 ; step cycles to hatch
	dn 7, 7 ; frontpic dimensions

	db SLIGHTLY_FAST ; growth rate
	dn FISH, FISH ; egg groups

	; tmhm
	tmhm ICY_WIND, TOXIC, HAIL, WHIRLPOOL, WATER_GUN, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, HEADBUTT, REST, ATTRACT, FLASH, SURF, DIVE, WATERFALL
	; end