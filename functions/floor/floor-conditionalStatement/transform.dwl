%dw 2.0
output application/json
---
{
    number: payload.num,
    result: if (floor(payload.num) < 5) "Below 5" 
            else "5 or above"
}
