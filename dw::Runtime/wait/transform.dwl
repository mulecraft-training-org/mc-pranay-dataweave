%dw 2.0
import * from dw::Runtime
output application/json
---
{
	"randomNumber": random() as Number,
    "name": payload.name,
    "generatedAt": now() as String,
    "mobile": payload.mobile
} wait 2500
