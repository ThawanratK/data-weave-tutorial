%dw 2.0
output json
---
payload reduce ((item, accumulator = {}) ->
accumulator ++ {(item.name): item.id} 

)

/*
{(payload[0].name): payload[0].id}++
{(payload[1].name): payload[1].id}++
{(payload[2].name): payload[2].id}++
{(payload[3].name): payload[3].id}
*/
