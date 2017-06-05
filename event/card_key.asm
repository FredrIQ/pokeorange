_CardKey: ; 50779
; Are we even in the right map to use this?
	ld a, [MapGroup]
	jr nz, .nope

	ld a, [MapNumber]
	jr nz, .nope
; Are we facing the slot?
	ld a, [PlayerDirection]
	and %1100
	cp OW_UP
	jr nz, .nope

	call GetFacingTileCoord
	ld a, d
	cp 18
	jr nz, .nope
	ld a, e
	cp 6
	jr nz, .nope
; Let's use the Card Key.
	ld hl, .CardKeyScript
	call QueueScript
	ld a, TRUE
	ld [wItemEffectSucceeded], a
	ret

.nope
	ld a, FALSE
	ld [wItemEffectSucceeded], a
	ret
; 507af

.CardKeyScript: ; 0x507af
	closetext
; 0x507b4
