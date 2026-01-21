; ===========================================================================
; Levels pointer data
; ===========================================================================

LevelLoadPointer:

		; DEZ
		include "Levels/DEZ/Pointers/DEZ1 - Pointers.asm"
		include "Levels/DEZ/Pointers/DEZ2 - Pointers.asm"
		include "Levels/DEZ/Pointers/DEZ3 - Pointers.asm"
		include "Levels/DEZ/Pointers/DEZ4 - Pointers.asm"

		; AIZ
		include "Levels/AIZ/Pointers/AIZ1 - Pointers.asm"
		include "Levels/AIZ/Pointers/AIZ2 - Pointers.asm"
		include "Levels/AIZ/Pointers/AIZ3 - Pointers.asm"
		include "Levels/AIZ/Pointers/AIZ4 - Pointers.asm"

		zonewarning LevelLoadPointer,((Level_data_addr_RAM_end-Level_data_addr_RAM)*4)
	
; ===========================================================================
; Compressed level graphics - tile, primary patterns and block mappings
; ===========================================================================

;		Attribute	| Filename	| Folder

		incfile.b	DEZ_8x8_KosPM, "Levels/DEZ/Tiles/Primary.kospm"
		incfile.b	DEZ_16x16_Unc, "Levels/DEZ/Blocks/Primary.unc"
		incfile.b	DEZ_128x128_KosP, "Levels/DEZ/Chunks/Primary.kosp"

		incfile.b	AIZ_8x8_KosPM, "Levels/AIZ/Tiles/Primary.kospm"
		incfile.b	AIZ_16x16_Unc, "Levels/AIZ/Blocks/Primary.unc"
		incfile.b	AIZ_128x128_KosP, "Levels/AIZ/Chunks/Primary.kosp"		

; ===========================================================================
; Collision data
; ===========================================================================

		incfile.b	AngleArray, "Data/Misc/Floor/Angle Map.bin"
		incfile.b	HeightMaps, "Data/Misc/Floor/Height Maps.bin"
		incfile.b	HeightMapsRot, "Data/Misc/Floor/Height Maps Rotated.bin"

; ===========================================================================
; Level collision data
; ===========================================================================

;		Attribute	| Filename	| Folder

		incfile.b	DEZ_Solid_Unc, "Levels/DEZ/Collision/1.unc"

		incfile.b	AIZ_Solid_Unc, "Levels/AIZ/Collision/1.unc"

; ===========================================================================
; Level layout data
; ===========================================================================

;		Attribute	| Filename	| Folder

		incfile.b	DEZ1_Layout_Unc, "Levels/DEZ/Layout/1.unc"
		incfile.b	DEZ2_Layout_Unc, "Levels/DEZ/Layout/2.unc"
		incfile.b	DEZ3_Layout_Unc, "Levels/DEZ/Layout/3.unc"
		incfile.b	DEZ4_Layout_Unc, "Levels/DEZ/Layout/4.unc"

		incfile.b	AIZ1_Layout_Unc, "Levels/AIZ/Layout/1.unc"
		incfile.b	AIZ2_Layout_Unc, "Levels/AIZ/Layout/2.unc"
		incfile.b	AIZ3_Layout_Unc, "Levels/AIZ/Layout/3.unc"
		incfile.b	AIZ4_Layout_Unc, "Levels/AIZ/Layout/4.unc"	

; ===========================================================================
; Level objects data
; ===========================================================================

		; ObjectTerminat
		ObjectLayoutBoundary

;		Attribute	| Filename	| Folder

		incfile.bo	DEZ1_Objects_Unc, "Levels/DEZ/Object Pos/1.unc"
		incfile.bo	DEZ2_Objects_Unc, "Levels/DEZ/Object Pos/2.unc"
		incfile.bo	DEZ3_Objects_Unc, "Levels/DEZ/Object Pos/3.unc"
		incfile.bo	DEZ4_Objects_Unc, "Levels/DEZ/Object Pos/4.unc"

		incfile.bo	AIZ1_Objects_Unc, "Levels/AIZ/Object Pos/1.unc"
		incfile.bo	AIZ2_Objects_Unc, "Levels/AIZ/Object Pos/2.unc"
		incfile.bo	AIZ3_Objects_Unc, "Levels/AIZ/Object Pos/3.unc"
		incfile.bo	AIZ4_Objects_Unc, "Levels/AIZ/Object Pos/4.unc"	

; ===========================================================================
; Level rings data
; ===========================================================================

		; RingTerminat
		RingLayoutBoundary

;		Attribute	| Filename	| Folder

		incfile.br	DEZ1_Rings_Unc, "Levels/DEZ/Ring Pos/1.unc"
		incfile.br	DEZ2_Rings_Unc, "Levels/DEZ/Ring Pos/2.unc"
		incfile.br	DEZ3_Rings_Unc, "Levels/DEZ/Ring Pos/3.unc"
		incfile.br	DEZ4_Rings_Unc, "Levels/DEZ/Ring Pos/4.unc"

		incfile.br	AIZ1_Rings_Unc, "Levels/AIZ/Ring Pos/1.unc"
		incfile.br	AIZ2_Rings_Unc, "Levels/AIZ/Ring Pos/2.unc"
		incfile.br	AIZ3_Rings_Unc, "Levels/AIZ/Ring Pos/3.unc"
		incfile.br	AIZ4_Rings_Unc, "Levels/AIZ/Ring Pos/4.unc"		
