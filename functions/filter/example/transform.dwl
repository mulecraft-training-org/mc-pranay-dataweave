%dw 2.0
output application/json
---
payload.users filter ((item, index) -> item.error == null)
