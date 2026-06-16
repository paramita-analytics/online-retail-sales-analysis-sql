Total Revenue: SELECT SUM(Revenue) AS TotalRevenue
               FROM CleanedSales;
Revenue by Country: SELECT Country, SUM(Revenue) AS TotalRevenue
                    FROM CleanedSales
                   GROUP BY Country
                    ORDER BY SUM(Revenue) DESC;
Top Products by Quantity: SELECT TOP 10 Description, SUM(Quantity) AS TotalQuantitySold
                           FROM CleanedSales
                           WHERE Description IS NOT NULL
                           GROUP BY Description
                           ORDER BY SUM(Quantity) DESC;
Top Products by Revenue: SELECT TOP 10 Description, SUM(Revenue) AS ProductRevenue
                         FROM CleanedSales
                         WHERE Description IS NOT NULL
                         GROUP BY Description
                         ORDER BY SUM(Revenue) DESC;
Top Customers: SELECT TOP 10 CustomerID, SUM(Revenue) AS CustomerRevenue
               FROM CleanedSales
               WHERE CustomerID IS NOT NULL
              GROUP BY CustomerID
              ORDER BY SUM(Revenue) DESC;
Monthly Revenue Trend: SELECT Format([InvoiceDate],"yyyy-mm") AS SalesMonth, SUM(Revenue) AS MonthlyRevenue
                        FROM CleanedSales
                        GROUP BY Format([InvoiceDate],"yyyy-mm")
                        ORDER BY Format([InvoiceDate],"yyyy-mm");
