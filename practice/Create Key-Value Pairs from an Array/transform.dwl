%dw 2.0
output application/json
---
payload reduce (item, accumulator ={}) -> accumulator ++ {(item.name): item.age}
