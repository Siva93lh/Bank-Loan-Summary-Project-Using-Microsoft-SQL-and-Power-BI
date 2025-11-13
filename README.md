# Bank-Loan-Summary-Project-Using-Microsoft-SQL-and-Power-BI
**A comprehensive Power BI analytics dashboard built to analyze loan performance, borrower risk, income levels, repayment behaviour, and financial KPIs across multiple dimensions. This project leverages the Financial Loan Dataset containing 24 features such as applicant demographics, loan details, income, grade, installment**

<img width="760" height="505" alt="image" src="https://github.com/user-attachments/assets/ab1afb8d-2b5d-4c38-958a-90b66bdd4557" />

**1. Project Overview**

This Power BI dashboard aims to provide a 360° analytical view of loan data, enabling financial institutions to:

->Identify high-risk borrowers

->Track repayment performance

->Analyze income and debt trends

->Understand loan grade distribution

**2. Dataset Summary**

File: financial_loan_full.csv
Total Columns: 24
Major Fields Include:

1)Borrower Info: emp_length, emp_title, annual_income, home_ownership
2)Loan Details: loan_amount, term, installment, int_rate, grade, sub_grade
3)Dates: issue_date, last_payment_date, last_credit_pull_date
4)Financial Metrics: dti, total_payment, total_acc


**3. Data Preparation & Cleaning**

->Performed in Power BI Power Query:
->Converted all date columns to proper date format
->Standardized employment length values
->Handled missing values for titles, dates, and income

**4.Data Model**

The model contains:

->1 Fact Table: Loan financials
->1 Dimension Table: Date dimension (auto-generated)

Relationships:
->Date[Date] → Loan[issue_date]

**5.Key DAX Measures**

->Total Loan Amount = SUM(financial_loan_full[loan_amount])
->Total Payments Received = SUM(financial_loan_full[total_payment])
->Average Interest Rate = AVERAGE(financial_loan_full[int_rate])

**6. Dashboard Features**
✔️ Executive Summary Page

->Total loan amount
->Total repayments received
->Average interest rate

**✔️ Borrower Insights**
->Income distribution
->Home ownership segmentation

**✔️ Loan Performance Analytics**
->Grade & Sub-grade distribution
->Loan term breakdown (36 vs 60 months)

**✔️ Repayment & Default Behavior**
->Monthly repayment trends
->Boxplots for loan amount patterns

**7.Visuals Used:
Bar charts
Pie charts
Line charts
Scatter plots
TreeMap
Slicers
Card KPIs
State Map visualization**














