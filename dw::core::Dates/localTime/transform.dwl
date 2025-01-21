%dw 2.0
import * from dw::core::Dates
output application/json
---
{
  newLocalTime: localTime({ hour: payload.hour, minutes: payload.minutes, seconds: payload.seconds})
}
