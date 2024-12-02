%dw 2.0
output application/json
---
{
    original: flatten([payload.arr1, payload.arr2, payload.arr3]),
    floored: flatten([payload.arr1, payload.arr2, payload.arr3]) map floor($)
}
