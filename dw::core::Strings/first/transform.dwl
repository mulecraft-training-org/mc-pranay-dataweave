%dw 2.0
import first from dw::core::Strings
output application/json
---
payload.Address first 8
