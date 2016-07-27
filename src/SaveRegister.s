								PRESERVE8
                THUMB

; Global data


                AREA    MyCode, CODE, READONLY

saveRegs		  	PROC
                EXPORT  saveRegs
                IMPORT  task1Tcb
								IMPORT	virtualSp
                
                ldr   r13,=virtualSp  
								ldr   r13,[r13] 
                
								mov	  r0,   #0x11111111
								mov	  r1,   #0x22222222
								mov	  r2,   #0x33333333
								mov	  r3,   #0x44444444
								mov	  r4,   #0x55555555
								mov	  r5,   #0x66666666
								mov	  r6,   #0x77777777
								mov	  r7,   #0x88888888
								mov	  r8,   #0x99999999
								mov	  r9,   #0xAAAAAAAA
								mov	  r10,  #0xBBBBBBBB
								mov	  r11,  #0xCCCCCCCC
								mov	  r12,  #0xDDDDDDDD

								push	  {r0-r12}						; Look at the stack memory under 'View->Memory 1'
								;pop 	  {r0, r1}						; (Note: You must be in Debug mode to see it)


                ENDP

								END