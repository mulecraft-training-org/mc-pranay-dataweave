%dw 2.0
import * from dw::core::Periods
output application/json
---
{
   a: between(payload.date1 as Date, payload.date2 as Date),
   b: between(payload.date3 as Date, payload.date4 as Date),
   c: between(payload.date5 as Date, payload.date6 as Date)
}
