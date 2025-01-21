%dw 2.0
import * from dw::core::Periods
output application/json
---
{
   "dayAfterDateTime": payload.dateTime + duration({days: 1}),
   "dayAndHourBeforeDateTime": payload.dateTime - duration({days: 1, hours: 1}),
   "pointInTimeBefore": payload.dateTime - duration({days: 1, hours: 1, minutes: 20, seconds: 10}),
   "emptyDuration": duration({}),
   "constructDuration": duration({days:4, hours:11, minutes:28}),
   "selectHoursFromDuration": duration({days:4, hours:11, minutes:28}).hours,
   "decimalAsPeriod":  duration({seconds: 30.5}),
   "addNegativeValue": duration({ minutes : 1 }) + duration({ seconds : -1 })       //returns in seconds
}
