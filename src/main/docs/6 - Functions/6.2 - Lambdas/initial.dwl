%dw 2.0
output json
var de = (n) -> if ((n mod 2)==1) true else false
---
de(payload.value)
