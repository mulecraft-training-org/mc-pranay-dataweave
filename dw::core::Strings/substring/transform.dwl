%dw 2.0
import * from dw::core::Strings
output application/json
---
substring(payload.message, 3, 10)
