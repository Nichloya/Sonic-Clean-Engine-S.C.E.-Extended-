; ---------------------------------------------------------------------------
; AIZ4 level pointer data
; ---------------------------------------------------------------------------

		; Level init
		dc.l 0									; Resize
		dc.l 0									; Water resize
		dc.l 0									; After boss

		; Animate palette
		dc.l AnimatePalette_DoAniPal						; Animate palette main code
		dc.l AniPalette_AIZ							; Animate palette scripts

		; Level setup
		dc.l AIZ1_ScreenInit							; Screen init
		dc.l AIZ1_BackgroundInit						; Background init
		dc.l AIZ1_ScreenEvent							; Screen event
		dc.l AIZ1_BackgroundEvent						; Background event

		; Animate tiles
		dc.l 0									; Animate art init
		dc.l AnimateTiles_DoAniPLC						; Animate tiles main code
		dc.l AniPLC_AIZ								; Animate tiles PLC scripts

		; Art 1st 8x8 data, 2nd 8x8 data
		; Blocks pointer, 1st 16x16 data, 2nd 16x16 data
		; Chunks pointer, 1st 128x128 data, 2nd 128x128 data
		; Layout pointer, 1st data, 2nd data
		; Solid pointer, 1st data, 2nd data
		; Objects pointer, 1st data, 2nd data
		; Rings pointer, 1st data, 2nd data
		; Palette, Water palette, Music, Water flag (disabled by default)
		levartptrs \
		AIZ_8x8_KosPM, \
		0, \
		AIZ_16x16_Unc, \
		0, \
		0, \
		Chunk_table, \
		AIZ_128x128_KosP, \
		0, \
		AIZ4_Layout_Unc, \
		0, \
		0, \
		AIZ_Solid_Unc, \
		0, \
		0, \
		AIZ4_Objects_Unc, \
		0, \
		0, \
		AIZ4_Rings_Unc, \
		0, \
		0, \
		PalID_AIZ, \
		PalID_WaterAIZ, \
		mus_DEZ1

		; PLC
		dc.l PLC1_AIZ4_Before							; PLC1
		dc.l PLC2_AIZ4_After							; PLC2
		dc.l PLCAnimals_AIZ1							; PLC animals

		; Level size
		dc.w 0									; Level xstart
		dc.w $A20								; Level xend
		dc.w 0									; Level ystart
		dc.w $4A0								; Level yend

		; Starting water height
		dc.w $1000

		; Players palette
		dc.b PalID_Sonic
		dc.b PalID_Knuckles

		; Players water palette
		dc.b PalID_WaterSonic
		dc.b PalID_WaterKnuckles

		; Players start location
		binclude "Levels/AIZ/Start Location/Sonic/1.bin"
		binclude "Levels/AIZ/Start Location/Knuckles/2.bin"


		; Debug Mode
	if (GameDebug)&&(~~GameDebugAlt)
		dc.l Debug_AIZ1								; Debug Mode
	else
		dc.l 0									; Unused
	endif
