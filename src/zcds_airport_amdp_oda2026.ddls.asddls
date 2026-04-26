@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example - Consumption Table Funtion como Asoc.'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_AIRPORT_AMDP_ODA2026 as select from /dmo/airport
{
    key airport_id as AirportId,
    name as Name,
    city as City,
    country as Country
}
