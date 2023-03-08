%dw 2.0
output json
var startsWith = 
payload filter $.name[0] ~= "C"

---
startsWith
