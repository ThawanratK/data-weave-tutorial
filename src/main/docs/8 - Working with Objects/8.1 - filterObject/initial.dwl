%dw 2.0
output json
var head = payload filterObject ((value, key, index) -> 
    (key contains "secret") or
    (value contains false)   
) 
---
//payload.question_secret contains "wish"
payload -- head
