@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example - Consumption Table Funtion'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_TF_AIRPORT_ODA2026
with parameters pCity: /dmo/city
  as select from /dmo/customer        as Customer
            inner join ZTF_AIRPORTS_ODA2026( pCity: $parameters.pCity ) as Airports on Customer.city = Airports.city
{
  key Airports.airport_id,
      Airports.name,
      Airports.city,
      Customer.first_name,
      Airports.country
}
