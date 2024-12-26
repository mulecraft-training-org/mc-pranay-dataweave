%dw 2.0
output application/json
---
payload.cars groupBy ((lmao) -> lmao.name)
