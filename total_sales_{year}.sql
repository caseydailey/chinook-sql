--What are the respective total sales for each of those years? (2009, 2011)

--Total Sales 2009:
select sum(Invoice.Total)
from Invoice
where Invoice.InvoiceDate GLOB '2009*';

--Total Sales 2011:
select sum(Invoice.Total)
from Invoice
where Invoice.InvoiceDate GLOB '2011*';

--Total Sales 2009 and 2011:
select sum(Invoice.Total)
from Invoice
where Invoice.InvoiceDate GLOB '2009*' or Invoice.InvoiceDate GLOB '2011*';
