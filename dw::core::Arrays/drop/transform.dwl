%dw 2.0
import * from dw::core::Arrays
output application/json
---
drop(payload.name, 2)
