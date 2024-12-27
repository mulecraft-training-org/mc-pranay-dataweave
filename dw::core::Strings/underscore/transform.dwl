%dw 2.0
import * from dw::core::Strings
output application/json
---
{
   "name" : underscore(payload.name),
   "city" : underscore(payload.city),
   "address" : underscore(payload.address)
}
