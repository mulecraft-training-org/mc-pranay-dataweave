%dw 2.0
output application/json
---
{
    original: payload.num,
    floored: floor(payload.num)
}
