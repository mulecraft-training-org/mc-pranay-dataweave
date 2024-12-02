%dw 2.0
output application/json
---
[ floor(payload.num1), floor(payload.num2), floor(payload.num3) ]

//This example rounds numbers down to the nearest whole numbers. Notice that 1.5 rounds down to 1.
