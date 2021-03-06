; #########################################################################
;
;   game.inc - Includes for EECS205 Assignment 4/5
;
;
; #########################################################################

;; These are library routines that you will call (but do NOT have to implement)
BeginDraw PROTO
EndDraw PROTO

;; You should not need to modify these prototypes (actually, it would probably be bad)
GameInit PROTO
GameMain PROTO mouseStatus:DWORD, keyDown:DWORD, keyUp:DWORD

;; Useful Library Routines
DrawString PROTO x:DWORD, y:DWORD, string:PTR BYTE 
DrawInt PROTO x:DWORD, y:DWORD, value:DWORD

;; Feel free to modify the following
GameRender PROTO
GameLogic PROTO key:DWORD, ship1:DWORD, ship2:DWORD, ship3:DWORD, exp:DWORD, a1:DWORD, a3:DWORD, cage:DWORD

EXTERNDEF lpTyroneBmp : DWORD

_SPRITE STRUCT
	x DWORD ?
	y DWORD ?
	a DWORD ?
	alive DWORD 1
	visible DWORD 1
	bmpPtr DWORD ?
_SPRITE ENDS

SPRITE TYPEDEF _SPRITE

EXTERNDEF asteroid1:SPRITE
EXTERNDEF asteroid2:SPRITE
EXTERNDEF asteroid3:SPRITE
EXTERNDEF cage1:SPRITE
EXTERNDEF cage2:SPRITE
EXTERNDEF ship:SPRITE
EXTERNDEF projectile:SPRITE
EXTERNDEF shot:DWORD
EXTERNDEF over:DWORD
EXTERNDEF num_loops:DWORD