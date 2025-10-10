@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'company details'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_COMPANY_AND as select from zan_company
composition[0..*] of ZI_EMPLOYEE_AND as _EMPLOYEE
{
    key zan_company.company_id as Companyid,
    zan_company.emp_id as Empid,
    zan_company.company_name as Companyname,
    zan_company.material_no as materialno,
    zan_company.headquarter as headquarter,
    zan_company.pin_code as pincode,
    _EMPLOYEE // Make association public
}
