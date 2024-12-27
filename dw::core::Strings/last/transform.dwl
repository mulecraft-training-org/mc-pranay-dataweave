%dw 2.0
import last from dw::core::Strings
output application/json
---
payload.Address last 4
