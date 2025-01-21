%dw 2.0
import * from dw::core::Dates
output application/json
---
{
    "newTime": time({
        hour: payload.hour,minutes: payload.minutes,seconds: payload.seconds,timeZone: payload.timeZone as TimeZone
    })
}
