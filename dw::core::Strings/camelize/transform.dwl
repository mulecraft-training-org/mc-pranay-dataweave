%dw 2.0
import * from dw::core::Strings
output application/json
---
{
  "a" : camelize(payload.line1),
  "b" : camelize(payload.line2)
}
