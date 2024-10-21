%dw 2.0
output application/json
---
payload filter (item, age) -> item.Age > 20
