%dw 2.0
output application/json
---
payload filter(item, index) -> isOdd(item)
