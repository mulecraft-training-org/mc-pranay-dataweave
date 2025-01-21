%dw 2.0
import * from dw::core::Periods
output application/json
---
{
   nextHour: payload.dateTime + hours(1),
   previousHour: payload.dateTime - hours(1),
   threeHoursLater: payload.hours + hours(3),
   addDecimalInput: payload.hours + hours(3.9),
   decimalInputAsPeriod : hours(payload.hoursInDecimal),    //converts the decimal value into the Period format 
   fourHourPeriod : hours(payload.fourHourPeriod),      //converts the whole number into the Period format
   addNegativeValue: hours(payload.negativeHour) + hours(payload.fourHourPeriod)        //returns in seconds
}
