@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example - Value Help'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_ROOT_AIRPORT_ODA2026
  as select from /dmo/airport
  association [1..1] to ZCDS_CITY_ASSOC_ODA2026 as _Textos on _Textos.City = $projection.City
{
  key airport_id as AirportId,
      name       as Name,
      city       as City,
      country    as Country,
      _Textos
}
