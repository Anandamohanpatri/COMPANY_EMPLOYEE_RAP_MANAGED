@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection on employee data'
@Metadata.allowExtensions: true
define view entity ZC_EMPLOYEE as projection on ZI_EMPLOYEE_AND as employee
{
    key EmpId,
    CompanyId,
    EmpName,
    Role,
    CityName,
    JoiningDate,
    MobileNo,
    EmailAddress,
    @Semantics.amount.currencyCode : 'currencycode'
    Salary,
    Currencycode,
    /* Associations */
    _COMPANY : redirected to parent ZC_COMPANY
   
}
