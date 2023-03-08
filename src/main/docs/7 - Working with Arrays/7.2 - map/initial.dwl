%dw 2.0
output json
---
payload map (n, idx) -> n + 1 then ((result) -> {
    "value": result,
    "index": idx
})
