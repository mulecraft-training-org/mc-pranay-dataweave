%dw 2.0
import * from dw::core::URL
output application/json
---
{
  'composition': parseURI(payload.uri)
}
