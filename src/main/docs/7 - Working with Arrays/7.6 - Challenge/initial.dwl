%dw 2.0
output json
var weekdays = [
  "mon",
  "tue",
  "wed",
  "thu",
  "fri",
  "sat",
  "sun"
]
// dayOfWeek is a value from 1 to 7
fun toWeekDay(date : String) : String = weekdays[(date as LocalDateTime).dayOfWeek - 1]
var Ross = payload filter ((item, index) -> 
  item.organizer == "Ross"
)
var addDate = Ross map ((item, index) -> 
  item ++ 
  {"day": toWeekDay(item.datetime)}
)
---
addDate

//toWeekDay("2020-10-01T22:00:00")
