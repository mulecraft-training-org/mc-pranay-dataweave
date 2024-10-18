%dw 2.0
import * from dw::core::Strings
output application/json
var text = payload.text
---
{
  "Capital": capitalize(text),
  "Camelize": camelize(text)
}
