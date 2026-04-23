@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example RAP - Interface Prov. Contr. (no mandatory en Z''s)'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_I_CUSTOM_TRAVEL_ODA2026
  provider contract transactional_interface
  as projection on Z_R_CUSTOM_TRAVEL_ODA2026
{
  key CustomerUuid,
  key CustomerId,
      Description,
      @Semantics.user.createdBy: true
      LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      LocalLastChangedBy,
      
      //local ETag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      
      //total ETag
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      _Customer // Make association public
}
