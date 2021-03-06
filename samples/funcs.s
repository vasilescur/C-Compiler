.text
    # Set up the stack pointer 
    la      $r1,    __sp_init
    lw      $r6,    0($r1)
    xor     $r1,    $r1,    $r1

    # Jump to the entry point
    jal     main
    halt

# putc (Int c)
putc:
    # Allocate stack space and back up registers
    addi    $r6,    $r6,    -6
    sw      $r1,    0($r6)
    sw      $r2,    1($r6)
    sw      $r3,    2($r6)
    sw      $r4,    3($r6)
    xor     $r5,    $r5,    $r5
    sw      $r7,    4($r6)
    sw      $r0,    5($r6)

    # [InlineAssembly]
    lw      $r1,    0($r6)
    output  $r1
    

    # [Return ]
    lw      $r1,    0($r6)
    lw      $r2,    1($r6)
    lw      $r3,    2($r6)
    lw      $r4,    3($r6)
    lw      $r7,    4($r6)
    addi    $r6,    $r6,    6
    jr      $r7

# getc ()
getc:
    # Allocate stack space and back up registers
    addi    $r6,    $r6,    -5
    sw      $r1,    0($r6)
    sw      $r2,    1($r6)
    sw      $r3,    2($r6)
    sw      $r4,    3($r6)
    xor     $r5,    $r5,    $r5
    sw      $r7,    4($r6)

    # [InlineAssembly]
    input   $r5
    

    # [Return ]
    lw      $r1,    0($r6)
    lw      $r2,    1($r6)
    lw      $r3,    2($r6)
    lw      $r4,    3($r6)
    lw      $r7,    4($r6)
    addi    $r6,    $r6,    5
    jr      $r7

# otherFunc ()
otherFunc:
    # Allocate stack space and back up registers
    addi    $r6,    $r6,    -5
    sw      $r1,    0($r6)
    sw      $r2,    1($r6)
    sw      $r3,    2($r6)
    sw      $r4,    3($r6)
    xor     $r5,    $r5,    $r5
    sw      $r7,    4($r6)

    # [FunctionCall [Function putc --> Void] [Literal 79],
    addi    $r6,    $r6,    -1
    # [EvaluateExpression [Literal 79]]
    addi    $r6,    $r6,    -1
    sw      $r1,    0($r6)
    xor     $r1,    $r1,    $r1
    addi    $r1,    $r1,    31
    addi    $r1,    $r1,    31
    addi    $r1,    $r1,    17
    sw      $r1,    1($r6)
    lw      $r1,    0($r6)
    addi    $r6,    $r6,    1
    lw      $r1,    0($r6)
    addi    $r6,    $r6,    1
    jal     putc

    # [FunctionCall [Function putc --> Void] [Literal 116],
    addi    $r6,    $r6,    -1
    # [EvaluateExpression [Literal 116]]
    addi    $r6,    $r6,    -1
    sw      $r1,    0($r6)
    xor     $r1,    $r1,    $r1
    addi    $r1,    $r1,    31
    addi    $r1,    $r1,    31
    addi    $r1,    $r1,    31
    addi    $r1,    $r1,    23
    sw      $r1,    1($r6)
    lw      $r1,    0($r6)
    addi    $r6,    $r6,    1
    lw      $r1,    0($r6)
    addi    $r6,    $r6,    1
    jal     putc

    # [FunctionCall [Function putc --> Void] [Literal 10],
    addi    $r6,    $r6,    -1
    # [EvaluateExpression [Literal 10]]
    addi    $r6,    $r6,    -1
    sw      $r1,    0($r6)
    xor     $r1,    $r1,    $r1
    addi    $r1,    $r1,    10
    sw      $r1,    1($r6)
    lw      $r1,    0($r6)
    addi    $r6,    $r6,    1
    lw      $r1,    0($r6)
    addi    $r6,    $r6,    1
    jal     putc

    # [Return ]
    lw      $r1,    0($r6)
    lw      $r2,    1($r6)
    lw      $r3,    2($r6)
    lw      $r4,    3($r6)
    lw      $r7,    4($r6)
    addi    $r6,    $r6,    5
    jr      $r7

# main ()
main:
    # Allocate stack space and back up registers
    addi    $r6,    $r6,    -5
    sw      $r1,    0($r6)
    sw      $r2,    1($r6)
    sw      $r3,    2($r6)
    sw      $r4,    3($r6)
    xor     $r5,    $r5,    $r5
    sw      $r7,    4($r6)

    # [FunctionCall [Function putc --> Void] [Literal 77],
    addi    $r6,    $r6,    -1
    # [EvaluateExpression [Literal 77]]
    addi    $r6,    $r6,    -1
    sw      $r1,    0($r6)
    xor     $r1,    $r1,    $r1
    addi    $r1,    $r1,    31
    addi    $r1,    $r1,    31
    addi    $r1,    $r1,    15
    sw      $r1,    1($r6)
    lw      $r1,    0($r6)
    addi    $r6,    $r6,    1
    lw      $r1,    0($r6)
    addi    $r6,    $r6,    1
    jal     putc

    # [FunctionCall [Function putc --> Void] [Literal 10],
    addi    $r6,    $r6,    -1
    # [EvaluateExpression [Literal 10]]
    addi    $r6,    $r6,    -1
    sw      $r1,    0($r6)
    xor     $r1,    $r1,    $r1
    addi    $r1,    $r1,    10
    sw      $r1,    1($r6)
    lw      $r1,    0($r6)
    addi    $r6,    $r6,    1
    lw      $r1,    0($r6)
    addi    $r6,    $r6,    1
    jal     putc

    # [FunctionCall [Function otherFunc --> Void]
    jal     otherFunc

    # [FunctionCall [Function putc --> Void] [Literal 110],
    addi    $r6,    $r6,    -1
    # [EvaluateExpression [Literal 110]]
    addi    $r6,    $r6,    -1
    sw      $r1,    0($r6)
    xor     $r1,    $r1,    $r1
    addi    $r1,    $r1,    31
    addi    $r1,    $r1,    31
    addi    $r1,    $r1,    31
    addi    $r1,    $r1,    17
    sw      $r1,    1($r6)
    lw      $r1,    0($r6)
    addi    $r6,    $r6,    1
    lw      $r1,    0($r6)
    addi    $r6,    $r6,    1
    jal     putc

    # [FunctionCall [Function putc --> Void] [Literal 10],
    addi    $r6,    $r6,    -1
    # [EvaluateExpression [Literal 10]]
    addi    $r6,    $r6,    -1
    sw      $r1,    0($r6)
    xor     $r1,    $r1,    $r1
    addi    $r1,    $r1,    10
    sw      $r1,    1($r6)
    lw      $r1,    0($r6)
    addi    $r6,    $r6,    1
    lw      $r1,    0($r6)
    addi    $r6,    $r6,    1
    jal     putc

    # [Return [Literal 0]]
    addi    $r6,    $r6,    -1
    # [EvaluateExpression [Literal 0]]
    addi    $r6,    $r6,    -1
    sw      $r1,    0($r6)
    xor     $r1,    $r1,    $r1
    addi    $r1,    $r1,    0
    sw      $r1,    1($r6)
    lw      $r1,    0($r6)
    addi    $r6,    $r6,    1
    xor     $r5,    $r5,    $r5
    lw      $r5,    0($r6)
    addi    $r6,    $r6,    1
    lw      $r1,    0($r6)
    lw      $r2,    1($r6)
    lw      $r3,    2($r6)
    lw      $r4,    3($r6)
    lw      $r7,    4($r6)
    addi    $r6,    $r6,    5
    jr      $r7

.data
# Initial stack pointer value
__sp_init: .word 32767

# Global Variables: 