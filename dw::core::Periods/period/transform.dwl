%dw 2.0
output application/json
import * from dw::core::Periods
---
{
   dayBeforeDateTime: payload.dateBeforeTime - period({months:1}),
   dayAfterDate: payload.dayAfterDate + period({years:1}),
   yearMonthDayAfterDate: payload.yearMonthDayAfterDate + period({years:1, months:1, days:1}),
   emptyPeriod: period({}),
   constructPeriod: period({years: payload.years, months: payload.months, days: payload.days}),
   selectMonthsFromPeriod: period({years: payload.years, months: payload.months, days:payload.days}).days
}
