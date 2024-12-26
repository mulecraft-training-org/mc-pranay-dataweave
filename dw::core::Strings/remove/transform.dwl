%dw 2.0
import remove from dw::core::Strings
output application/json
---
payload.message remove "are"
