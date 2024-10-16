%dw 2.0
output application/json
var countryCode="+91"

fun detail(person)={
    "name":person.firstName++ " " ++ person.lastName,
    "mobile": countryCode ++ person.mobile
}
---
detail(payload)
