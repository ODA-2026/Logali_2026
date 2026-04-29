@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example Searchable'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@ObjectModel.dataCategory: #TEXT
define view entity ZCDS_CITY_TEXT_ODA2026 as select from zcity_tx_oda2026
association[1..1] to ZCDS_CITY_ASSOC_ODA2026 as _CityText on _CityText.City = $projection.City
{
   key airport_id as AirportId,
   
   @Search.defaultSearchElement: true
   @ObjectModel.text.association: '_CityText'
   city as City,
   _CityText
}
