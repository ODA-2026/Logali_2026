@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example - Value Help'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@ObjectModel.dataCategory: #VALUE_HELP
@Consumption.ranked: true
define view entity ZCDS_CITY_VH_ODA2026
  as select from ZCDS_CITY_ASSOC_ODA2026
{
  key CustomerId,
      FirstName,
      LastName,
      Title,
      Street,
      PostalCode,
@Search.defaultSearchElement: true
@Search.ranking: #HIGH
@Search.fuzzinessThreshold: 0.8      
      City,
// No activa esta parte por un tema de cardinalidad      
//@Search.defaultSearchElement: true
//@Search.ranking: #LOW
//@Search.fuzzinessThreshold: 0.8
//    _CityText.City,
      CountryCode,
      PhoneNumber,
      EmailAddress,
      /* Associations */
      _CityText
}
