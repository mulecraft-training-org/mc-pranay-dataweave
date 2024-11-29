%dw 2.0
output application/json
---
payload map(items)-> items pluck((key,value)-> {(key): value})
