%dw 2.0
output application/json
var modifiedItems= flatten(payload.items) filter(items) -> items>4
---
{
    "filteredItems": flatten(payload.items) filter(items) -> items<=4,
    "modifiedItems": modifiedItems map (indexes) -> indexes*indexes
}
