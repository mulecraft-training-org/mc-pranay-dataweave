%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    "newDateTime": dateTime({year: payload.year, month: payload.month, day: payload.day, hour: payload.hour, minutes: payload.minutes, seconds: payload.seconds , timeZone: |+18:00|})
}
