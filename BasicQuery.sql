	SELECT OI.UPC_CODE
			, ((OI.qtyOrdered * OI.unitPrice) - OI.[discount$]) AS [Ttl Sales]

	FROM ORDEREDITEMS OI JOIN [ORDER] O
		ON OI.orderNumber = O.orderNumber
	-- Guideline to keep the range of the price between $10 through $50
	WHERE OI.unitPrice BETWEEN 10 AND 50

	GROUP BY OI.UPC_CODE
	-- Guideline to have a minimum of $10000 worth of total sales
	HAVING SUM([Ttl Sales]) >= 10000
	-- Guideline to at least have 500 orders for the product
			AND SUM(OI.orderNumber) >= 500 
			-- Guideline to have the product ordered by at least 300 customers
			AND COUNT(DISTINCT O.AcctNum) >= 300 
;
