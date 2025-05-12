%dw 2.0
output application/json
fun upperKey(obj)=payload mapObject ((value, key, index) -> (upper(key)):value)
---
upperKey(payload)
