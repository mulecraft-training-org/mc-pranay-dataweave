%dw 2.0
import * from dw::core::Dates
output application/json
---
"date": atBeginningOfWeek(payload.inputDate)
