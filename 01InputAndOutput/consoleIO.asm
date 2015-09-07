section .data
	userMsg db 'Please enter a number: '
	lenUserMsg equ $-userMsg
	dispMsg db 'You have entered: '
	lenDispMsg equ $-dispMsg
section .bss
	num resb 5	;uninitialize data
section .text
	global _start
_start:	;user prompt
	mov eax,4
	mov ebx,1
	mov ecx,userMsg
	mov edx,lenUserMsg
	int 80h
	mov eax,3	;Read and store the user input
	mov ebx,2
	mov ecx,num
	mov edx,5	;5 bytes for infomation
	int 80h
	mov eax,4	;outpur dispMsg
	mov ebx,1
	mov ecx,dispMsg
	mov edx,lenDispMsg
	int 80h
	mov eax,4	;output number
	mov ebx,1
	mov ecx,num
	mov edx,5
	int 80h
	mov eax,1	;sys_exit
	mov ebx,0
	int 80h

