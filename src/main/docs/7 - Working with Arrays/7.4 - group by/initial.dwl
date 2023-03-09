%dw 2.0
output json
fun isDay(d) = d.dayOfWeek
---
payload groupBy ((item, index) -> isDay(item))
