; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype

.data ; data segment
	; define your variables here
	Answer DWORD 0 ;
.code ; code segment

main PROC ; main procedure
	; write your assembly code here
	
	xor ecx, ecx	
	mov eax, 55 ; 
	mov ebx, 55 ;

	.while ecx < 9
	inc ecx
	cmp ecx, 10
	add eax, ebx; 	
	mov Answer, eax ;
.endw
	
		
	
	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling