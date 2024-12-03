%dw 2.0
output application/json
---
payload.arr filter (item) -> item > 7
