%dw 2.0
output json
var result = {"status" : "ok"}
var o = if (result.status == "ok") {"message": "Request successfully processed."} else {"message": "Please try again later."}
---
o
