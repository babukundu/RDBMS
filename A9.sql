select orderNumber,count(productCode), round(sum(quantityOrdered*priceEach),2) from orderdetails group by orderNumber;