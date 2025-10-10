@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection on company data'
@Metadata.allowExtensions: true
define root view entity ZC_COMPANY as projection on ZI_COMPANY_AND as COMPANY
{
    key Companyid,
    Empid,
    Companyname,
    materialno,
    headquarter,
    pincode,
    /* Associations */
    _EMPLOYEE : redirected to composition child ZC_EMPLOYEE
}
