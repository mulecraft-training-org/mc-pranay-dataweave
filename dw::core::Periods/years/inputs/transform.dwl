%dw 2.0
import * from dw::core::Periods
output application/json
---
{
  nextYear: payload.dateTime + years(1),
  YearPeriod: years(payload.years),
  addNegativeValue: years(payload.negativeYears) + years(payload.years)       //returns in months
}
