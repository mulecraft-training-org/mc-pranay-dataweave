%dw 2.0
output application/json
---
{ 
    "Result" : namesOf(payload)
}
//This example returns the keys from the key-value pairs within the input object.
