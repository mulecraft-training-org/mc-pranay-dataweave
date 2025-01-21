%dw 2.0
import * from dw::core::Periods
output application/json
---
{
   nextMinute: payload.dateTime + minutes(1),
   previousMinute: payload.dateTime - minutes(1),
   decimalInputPeriod: minutes(payload.minutesInDecimal),       //converts the decimal value into the Period format
   wholeNumberInputPeriod: minutes(payload.wholeNumberInputPeriod),     //converts the whole number into the Period format
   addNegativeValue: minutes(payload.negativeMinutes) + minutes(payload.wholeNumberInputPeriod)     //returns in seconds
}
