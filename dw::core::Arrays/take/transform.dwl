%dw 2.0
import * from dw::core::Arrays
output application/json
---
take(payload.name, 2)
