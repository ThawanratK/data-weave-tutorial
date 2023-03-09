%dw 2.0
output json
var group = payload
    groupBy ((order, index) -> order.orderId)

var trans = group pluck ((value, key, index) -> 
    value
)
---
trans
