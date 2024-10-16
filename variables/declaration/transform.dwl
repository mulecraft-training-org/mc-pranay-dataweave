%dw 2.0
output application/json
var countryCode="+91"
---
{
    "name": payload.firstName ++ " " ++ payload.lastName,
    "mobile": countryCode ++ payload.mobile
}
