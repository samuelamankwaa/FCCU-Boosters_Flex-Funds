Truncate table fccu.Subscription_NSF_Enrollment_snapshot
insert into fccu.Subscription_NSF_Enrollment_snapshot
Select * 
from fccu.Subscription_NSF_Enrollment
;

Truncate table fccu.Subscription_Payroll_Enrollment_Snapshot
insert into fccu.Subscription_Payroll_Enrollment_Snapshot
Select p.Member_No,p.Individual_Id,p.[Status],p.Enroll_Date,p.Debit_Account,p.Company_Name,p.CurrentAdvAmt,p.Current_Advance_Date,p.Current_Expected_Payroll,p.Payroll_Frequency,p.Restricted,
p.Count_of_Company_Names,p.EFT_Acct_No,p.Individual_Name,p.Last_DD_Date,p.Predicted_Next_DD_Date,p.Unenroll_Date,p.Company_ID
from fccu.Subscription_Payroll_Enrollment p
;

Truncate table fccu.Subscription_SkipPay_Enrollment_Snapshot
insert into fccu.Subscription_SkipPay_Enrollment_Snapshot
select a.Member_No,a.Loan_No,a.Debit_Account,a.Member_Name,a.Last_Skip_Date,a.Enroll_Date,a.Unenroll_Date,a.Termination_Date,a.Debit_Mbr,a.MbrLnNo
from fccu.Subscription_SkipPay_Enrollment a
;