%dw 2.0
output json
var tran =
payload map ((item, index) -> 
    item mapObject (value, key, index) ->
    {
        (lower(key)): upper(value)
    }          
)
---
tran
//lower(payload[0]."First Name")
