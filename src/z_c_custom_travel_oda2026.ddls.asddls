@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example RAP - Business Object'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
define root view entity Z_C_CUSTOM_TRAVEL_ODA2026
  as projection on Z_R_CUSTOM_TRAVEL_ODA2026

{
  key CustomerUuid,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #HIGH

      @ObjectModel.text.element: [ 'LastName', 'FirstName'  ]
  key CustomerId,
      _Customer.LastName    as LastName,
      _Customer.FirstName   as FirstName,

      Description,

      _Customer.CountryCode as CountryName,

      //local ETag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,

      //total ETag
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,

      /* Associations */
      _Customer
}
