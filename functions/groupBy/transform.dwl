%dw 2.0
output application/json
---
payload.cars groupBy ((person) -> person.name)
