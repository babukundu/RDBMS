select orderNumber,round(sum(quantityOrdered*(priceEach-buyPrice)),2) from orderdetails join products on orderdetails.productCode=products.productCode group by orderNumber;