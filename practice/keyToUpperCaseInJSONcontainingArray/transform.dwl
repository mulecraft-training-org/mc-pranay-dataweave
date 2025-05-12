%dw 2.0
output application/json
fun upperKeys(obj) =
  if (obj is Object)
    obj mapObject ((value, key) -> 
      (upper(key)): upperKeys(value)
    )
  else if (obj is Array)
    obj map ((item) -> upperKeys(item))
  else
    obj
---
upperKeys(payload)
