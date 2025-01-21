%dw 2.0
import * from dw::core::Periods
output application/json
---
{
  nextMonth: payload.dateTime + months(4),
  fourMonthPeriod : months(payload.months),
  addNegativeValue: months(payload.negativeMonths) + months(payload.months)
}
