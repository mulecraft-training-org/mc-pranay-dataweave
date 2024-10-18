%dw 2.0
output application/json
var text = payload.text
---
{
  "upper case": upper(payload.text1),
  "text length": sizeOf(payload.text1),
  "upper case": upper(payload.text2),
  "text length": sizeOf(payload.text2)
}
