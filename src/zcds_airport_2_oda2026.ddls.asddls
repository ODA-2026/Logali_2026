@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Example Access Control'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_AIRPORT_2_ODA2026
  as select from /dmo/airport
{
  key airport_id as AirportId,
      name       as Name,
      city       as City,
      country    as Country
}
