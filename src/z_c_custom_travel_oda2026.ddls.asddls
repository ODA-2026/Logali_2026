@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example RAP - Business Object'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity Z_C_CUSTOM_TRAVEL_ODA2026
provider contract transactional_query
  as projection on Z_R_CUSTOM_TRAVEL_ODA2026
{
  key CustomerUuid,
  
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #HIGH
      @ObjectModel.text.element: [ 'CustomerName' ]
      CustomerId,
      _Customer.LastName    as CustomerName,

      Description,

      @Semantics.address.country: true
      _Customer._Country._Text[1: Language = $session.system_language ].CountryName as CountryName,

      //local ETag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,

      //total ETag
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,

      /* Associations */
      _Customer
}
