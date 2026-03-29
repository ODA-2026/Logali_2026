@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example Access Control Aspect_PFCG'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_airport_4_ODA2026
  as select from /dmo/airport
{
  key airport_id as AirportId,
      name       as Name,
      city       as City,
      country    as Country,
      cast( '01' as abap.char(2) )       as FlightType
}
