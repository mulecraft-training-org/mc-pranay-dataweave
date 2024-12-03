%dw 2.0
output application/json
---
[ (payload.a pow 3), (payload.b pow 2), (payload.c pow 3) ]
