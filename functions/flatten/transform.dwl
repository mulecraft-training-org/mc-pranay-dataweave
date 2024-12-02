%dw 2.0
output application/json
var finalArray= [payload.array1, payload.array2]
---
flatten(finalArray)
