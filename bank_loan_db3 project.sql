SELECT  count(*) FROM financial_loan_full;

--MTD Loan Applications

SELECT  count(*) FROM financial_loan_full WHERE MONTH(issue_date) = 12;

--How many loan applications bank has received in Noevmber

SELECT  count(*) FROM financial_loan_full WHERE MONTH(issue_date) = 11;

--Find out total funded amount

SELECT  sum(loan_amount) as total_funded_amount from financial_loan_full;

--Total funded amount in December

SELECT  sum(loan_amount) as total_funded_amount from financial_loan_full WHERE MONTH(issue_date) = 11;

--Average Interest Rate

SELECT ROUND(avg(int_rate) * 100, 2) AS Average_interest_rate from financial_loan_full;

--Average DTI

SELECT ROUND(avg(dti) * 100, 2) AS Average_interest_rate from financial_loan_full;

--Total Bank loan application

SELECT count(*) FROM financial_loan_full WHERE loan_status = 'charged off';

--find out total good loan application

SELECT count(*) FROM financial_loan_full WHERE loan_status = 'Current' or loan_status = 'fully paid';

--Good loan applications


SELECT sum( total_payment)  FROM financial_loan_full WHERE loan_status = 'Current' or loan_status = 'fully paid';


SELECT sum( loan_amount) FROM  financial_loan_full WHERE loan_status = 'Current' or loan_status = 'fully paid';



SELECT sum( total_payment)FROM  financial_loan_full WHERE loan_status = 'Current' or loan_status = 'fully paid';


--Loan applications by loan status


SELECT loan_status,

count(id) as total_loan_applications,

sum(loan_amount) as total_funded_amount,

sum(total_payment) as total_amount_received,

avg(int_rate * 100) as avg_int_rate,

avg(dti * 100) as DTI

from financial_loan_full

group by loan_status;

SELECT loan_status,

count(id) as total_loan_applications,

sum(loan_amount) as total_funded_amount,

sum(total_payment) as total_amount_received,

avg(int_rate * 100) as avg_int_rate,

avg(dti * 100) as DTI

from financial_loan_full

where month(issue_date) = 12

group by loan_status;


SELECT 

DATENAME(MONTH,issue_date) AS MONTH_NAME,

count(id) as total_loan_applications,

sum(loan_amount) as total_funded_amount,

sum(total_payment) as total_amount_received,

avg(int_rate * 100) as avg_int_rate,

avg(dti * 100) as DTI

from financial_loan_full

group by DATENAME(MONTH,issue_date)




SELECT 

purpose as purpose,

count(id) as total_loan_applications,

sum(loan_amount) as total_funded_amount,

sum(total_payment) as total_amount_received

from financial_loan_full

group by purpose

order by total_loan_applications DESC;




























































































