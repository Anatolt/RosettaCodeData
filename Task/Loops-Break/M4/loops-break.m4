define(`randSeed',141592653)dnl
define(`setRand',
   `define(`randSeed',ifelse(eval($1<10000),1,`eval(20000-$1)',`$1'))')dnl
define(`rand_t',`eval(randSeed^(randSeed>>13))')dnl
define(`random',
   `define(`randSeed',eval((rand_t^(rand_t<<18))&0x7fffffff))randSeed')dnl
dnl
define(`loopbreak',`define(`a',eval(random%20))`a='a
ifelse(a,10,`',`define(`b',eval(random%20))`b='b
loopbreak')')dnl
dnl
loopbreak