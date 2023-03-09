%dw 2.0
output json
---
payload  update {
    case .username -> lower(payload.username)
    case .location.address.street -> "Fiskargatan"  
}
