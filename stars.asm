; #########################################################################
;
;   stars.asm - Assembly file for EECS205 Assignment 1
;
;
; #########################################################################

      .586
      .MODEL FLAT,STDCALL
      .STACK 4096
      option casemap :none  ; case sensitive

    include stars.inc

.CODE

; Routine which uses DrawStarReg to create all the stars
DrawAllStars PROC 

    ;; Code that just draws an 'X'
    mov esi, 215
    mov edi, 270
    call DrawStarReg
    mov esi, 220
    mov edi, 280
    call DrawStarReg
    mov esi, 225
    mov edi, 290
    call DrawStarReg
    mov esi, 230
    mov edi, 300
    call DrawStarReg
    mov esi, 235
    mov edi, 310
    call DrawStarReg
    mov esi, 240
    mov edi, 320
    call DrawStarReg
    mov esi, 245
    mov edi, 330
    call DrawStarReg
    mov esi, 250
    mov edi, 340
    call DrawStarReg
    mov esi, 255
    mov edi, 350
    call DrawStarReg
    mov esi, 260
    mov edi, 360
    call DrawStarReg
    ;; Drawing second line of 'X'
    mov esi, 200
    mov edi, 360
    call DrawStarReg
    mov esi, 205
    mov edi, 350
    call DrawStarReg
    mov esi, 210
    mov edi, 340
    call DrawStarReg
    mov esi, 215
    mov edi, 330
    call DrawStarReg
    mov esi, 220
    mov edi, 320
    call DrawStarReg
    mov esi, 225
    mov edi, 310
    call DrawStarReg
    mov esi, 230
    mov edi, 300
    call DrawStarReg
    mov esi, 235
    mov edi, 290
    call DrawStarReg
    mov esi, 240
    mov edi, 280
    call DrawStarReg
    mov esi, 245
    mov edi, 270
    call DrawStarReg
	;; Loop to create a bunch of stars (boundaries 639 and 479)
	mov esi, 10
	mov edi, 10
	call DrawStarReg
xloop:
	cmp esi, 620
	jg done
	add esi, 30
	mov edi, 10
yloop:
	cmp edi, 460
	jg xloop
	add edi, 30
	call DrawStarReg
	jmp yloop
done:	
    ret             ;; Don't delete this line
    
DrawAllStars ENDP

END
