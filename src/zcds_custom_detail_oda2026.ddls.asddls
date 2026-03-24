@EndUserText.label: 'Example Custom Entity'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_CUSTOM_DETAIL_ODA2026'
define custom entity ZCDS_CUSTOM_DETAIL_ODA2026

{
  key customer_id   : /dmo/customer_id;
      phone_number  : /dmo/phone_number;
      email_address : /dmo/email_address;
}
