%dw 2.0
import * from dw::Runtime
import * from dw::util::Timer
output application/json
fun myFunction1() = wait(payload.message,100)
fun myFunction2() = sum([1,2,3,4])
var function1= time(myFunction1)
var function2= time(myFunction2)
---
{
    "first function": time(myFunction1),
    "second function": time(myFunction2),
    "difference in the timing of myFunction1": function1.end-function1.start,
    "difference in the timing of myFunction1": function2.end-function2.start
}
