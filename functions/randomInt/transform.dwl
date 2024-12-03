%dw 2.0
output application/json
---
{ price: randomInt(payload.num) }
//This example returns an integer from 0 to 100
