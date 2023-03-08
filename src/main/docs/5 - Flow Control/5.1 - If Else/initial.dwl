%dw 2.0
output json
var action = if (payload.price < 140) "buy" else "sell"
---
{
  price  : payload.price,
  action : action
}
