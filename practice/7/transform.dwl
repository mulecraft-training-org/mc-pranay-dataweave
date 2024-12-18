%dw 2.0
output application/json
---
payload.names[random()*sizeOf(payload.names)][0 to 2]
