@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EMPLOYEE DETAILS'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_EMPLOYEE_AND as select from zan_employee
association to parent ZI_COMPANY_AND as _COMPANY
    on $projection.CompanyId = _COMPANY.Companyid
{
    key zan_employee.emp_id as EmpId,
        zan_employee.company_id as CompanyId,
        zan_employee.emp_name as EmpName,
        zan_employee.role as Role,
        zan_employee.city_name as CityName,
        zan_employee.joining_date as JoiningDate,
        zan_employee.mobile_no as MobileNo,
        zan_employee.email_address as EmailAddress,
        @Semantics.amount.currencyCode : 'currencycode'
        zan_employee.salary as Salary,
        zan_employee.currencycode as Currencycode,
    _COMPANY // Make association public
}
