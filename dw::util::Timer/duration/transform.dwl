%dw 2.0
import * from dw::util::Timer
import * from dw::Runtime
output application/json
fun myFunction()= wait(payload.message,1500)
---
duration(myFunction)
