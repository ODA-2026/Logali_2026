@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example RAP - Business Object'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_R_CUSTOM_TRAVEL_ODA2026
  as select from zcust_oda2026
  association [0..1] to /DMO/I_Customer as _Customer on _Customer.CustomerID = $projection.CustomerId
{
  key customer_uuid         as CustomerUuid,
      customer_id           as CustomerId,
      description           as Description,
      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      
      //local ETag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      
      //total ETag
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      _Customer // Make association public
}
