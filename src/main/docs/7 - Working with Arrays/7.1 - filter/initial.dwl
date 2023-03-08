%dw 2.0
output json
var movies : Array<String> = ["The Terminator", "Titanic", "Avatar"]

//fun isOddNum(n : Number) : Boolean = (n mod 2) == 1
fun isOddNum(s : Array<String>) : 
Array<String> = s filter ((s, idx) -> (sizeOf(s) mod 2)==1)
---
isOddNum(movies)
