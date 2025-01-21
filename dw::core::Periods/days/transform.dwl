%dw 2.0
import * from dw::core::Periods
output application/json
---
{
   tomorrow: payload.dateTime as DateTime + days(1),
   yesterday: payload.dateTime as DateTime - days(1),
   decimalDaysPlusQuarter: payload.dateTime as DateTime + days(0.25),
   decimalDaysPlusHalf:  payload.dateTime as DateTime + days(0.5),
   decimalDaysPlusThreeQuarters: payload.dateTime as DateTime + days(0.75),
   decimalInputAsPeriod : days(payload.days),
   fourDayPeriod: days(payload.day),
   negativeValue: days(payload.negativeDay)
}
