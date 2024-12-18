%dw 2.0
output application/json
---
"phrases": payload.text splitBy(';') map (abc) -> (splitBy(abc, " "))[0]
