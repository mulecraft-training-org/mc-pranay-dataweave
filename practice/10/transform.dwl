%dw 2.0
import * from dw::core::Arrays
output application/json
---
{
  "first_expensive_product_index": payload.products indexWhere ((product) -> product.price > 50)
}
