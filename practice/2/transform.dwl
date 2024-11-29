%dw 2.0
output application/json
---
//flatten(payload map(items)-> items pluck(key,value)->(key): value)

payload map(items)-> items mapObject ((value, key) -> (value): key)
