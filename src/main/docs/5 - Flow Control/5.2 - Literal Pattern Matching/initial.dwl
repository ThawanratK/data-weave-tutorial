%dw 2.0
output json
var state = payload.status match{
    case 0 -> "Light off"
    case 1 -> "Light on"
}
---
state
