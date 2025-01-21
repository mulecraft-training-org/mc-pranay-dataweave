%dw 2.0
import * from dw::core::Dates
output application/json
---
{
   "newDate": date({year: payload.year, month: payload.month, day: payload.day})
}
