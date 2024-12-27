%dw 2.0
import words from dw::core::Strings
output application/json
---
words(payload.name++ " lives in "++ payload.address++ " in the city " ++ payload.city)
