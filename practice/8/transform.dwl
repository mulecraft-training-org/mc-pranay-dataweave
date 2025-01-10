%dw 2.0
import * from dw::core::Dates
output application/json
---
payload map ((event) -> {
  "eventName": event.eventName,
  "originalTimestamp": event.timestamp,
  "beginningOfDay": atBeginningOfDay(event.timestamp),
  "beginningOfHour": atBeginningOfHour(event.timestamp),
  "beginningOfWeek": atBeginningOfWeek(event.timestamp),
  "beginningOfMonth": atBeginningOfMonth(event.timestamp),
  "beginningOfYear": atBeginningOfYear(event.timestamp)
})
