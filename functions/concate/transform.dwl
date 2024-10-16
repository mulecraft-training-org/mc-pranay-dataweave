%dw 2.0
output application/json
---
{
    "name": payload.firstName ++" "++ payload.lastName
    "mobile": "+91" ++ payload.mobile
}
