.psx

.create "fillmem.bin", 0x80010000

.org 0x80010000

BASE_ADDR equ 0x0000

Main:
  ori  $a0,$0, 4
  jal Factorial
  nop
  j End
  nop


Factorial:
ori  $t0,$0, 1
ori  $t2,$0, 1 

Loop:
  ori $at, $0 , 1
  ori $t3, $t2, 0
  multiplication:
	beq $at, $t0, exitMultiplication
	nop
	add $t2, $t2, $t3
	addi $at, $at, 1
	j multiplication
	nop
  exitMultiplication:
  
  addi $t0, $t0, 1
  slt $at, $a0, $t0
  beq  $at, $0, Loop
  nop
  ori $v0, $t2, 0
  
  jr $ra
  nop
  
 End:
.close
