%dw 2.0
import * from dw::core::Periods
output application/json
---
{
  nextSecond: payload.dateTime + seconds(1),
  previousSecond: payload.dateTime - seconds(1),
  decimalInputPeriod: seconds(payload.secondsInDecimal),
  wholeNumberInputPeriod: seconds(payload.seconds),
  addNegativeValue: seconds(payload.negativeSeconds) + seconds(payload.seconds)
}
