%dw 2.0
output application/json
---
{ price: random() * payload.num }
//This example generates a pseudo-random number and multiplies it by payload.num
