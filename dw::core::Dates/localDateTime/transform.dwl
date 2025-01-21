%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    "newLocalDateTime": localDateTime({year: payload.year, month: payload.month, day: payload.day, hour: payload.hour, minutes: payload.minutes, seconds: payload.seconds})
}
