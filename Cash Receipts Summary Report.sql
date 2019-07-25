 SELECT 
	"UB_History"."cust_no", 
	"UB_History"."tran_type", 
	"UB_History"."amount", 
	"UB_History"."transaction_id", 
	"UB_History"."s_amt_1", 
	"UB_History"."s_amt_2", 
	"UB_History"."s_amt_3", 
	"UB_History"."s_amt_4", 
	"UB_History"."s_amt_5", 
	"UB_History"."s_amt_6", 
	"UB_History"."s_amt_7", 
	"UB_History"."s_amt_8", 
	"UB_Bill_Detail"."tax_code", 
	"UB_Bill_Detail"."amount", 
	"UB_Bill_Detail"."service_number", 
	"UB_History"."tran_date"
 FROM   "Springbrook0"."dbo"."ub_history" "UB_History" 
LEFT OUTER JOIN 
	"Springbrook0"."dbo"."ub_bill_detail" "UB_Bill_Detail" 
	ON "UB_History"."transaction_id"="UB_Bill_Detail"."transaction_id"
 WHERE  
	"UB_History"."tran_type"=N'payment' 
	AND ("UB_History"."tran_date">={ts '2019-04-01 00:00:00'} 
	AND "UB_History"."tran_date"<{ts '2019-07-01 00:00:00'})
	


