package org.akzholbek.ecommerce.product;

import com.ctc.wstx.shaded.msv_core.datatype.xsd.datetime.BigDateTimeValueType;

import java.math.BigDecimal;

public record ProductPurchaseResponse(
       Integer productId,
       String name,
       String description,
       BigDecimal price,
       double quantity

) {
}
