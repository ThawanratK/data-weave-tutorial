%dw 2.0
output json
fun isOddNum(n) = 
   if((n mod 2) == 1) true else false
---
isOddNum(payload.value)
