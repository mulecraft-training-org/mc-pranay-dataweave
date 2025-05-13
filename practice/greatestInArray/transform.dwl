%dw 2.0
output application/json
fun findMax(arr, index, currentMax) =
  if (index >= sizeOf(arr))
    currentMax
  else
    findMax(arr, index + 1, if (arr[index] > currentMax) arr[index] else currentMax)
---
findMax(payload, 0, payload[0])
