%dw 2.0
import * from dw::core::Strings
output application/json
---
{
  "result": substringBefore(payload.message, "f")
}
