%dw 2.0
output application/json
---
(payload splitBy  "\n") map(line) -> (line splitBy " " as String) [-1 to 0] joinBy ' '
