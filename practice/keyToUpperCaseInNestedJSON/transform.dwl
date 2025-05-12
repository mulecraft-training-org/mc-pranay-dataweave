%dw 2.0
output application/json
fun upperCaseKeys(value) =
  if (value is Object) 
    value mapObject (v, k) -> 
      (upper(k)): upperCaseKeys(v)
  else if (value is Array) 
    value map (item) -> upperCaseKeys(item)
  else 
    value
---
upperCaseKeys(payload)
