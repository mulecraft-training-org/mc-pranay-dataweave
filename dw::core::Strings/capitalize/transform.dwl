%dw 2.0
import * from dw::core::Strings
output application/json
---
{
  "a" : capitalize(payload.name),
  "b" : capitalize(payload.name1),
  "c" : capitalize(payload.name2),
  "d" : capitalize(payload.name3),
  "e" : capitalize(payload.name4)
}
