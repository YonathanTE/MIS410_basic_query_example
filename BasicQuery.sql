		SELECT PRODUCT.*

		FROM PRODUCT
		-- Range of time for the date introduced of the product between the current day and going back one year. 
		WHERE PRODUCT.dateIntroduced = BETWEEN GETDATE() AND DATEADD(yy, -1, PRODUCT.dateIntroduced) 
				AND PRODUCT.modelNum LIKE '9%3' -- Condition 1: To have the modelNum start with a 9 and end with a 3.
				AND PRODUCT.prodName LIKE '%smart%' -- Condition 2: To include, interpreted as being in between, the word smart.
;