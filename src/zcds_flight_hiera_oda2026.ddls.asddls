@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Example - Hierarchical Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_FLIGHT_HIERA_ODA2026 as select from /dmo/travel
association[1..1] to ZCDS_FLIGHT_HIERA_ODA2026 as _Agency on _Agency.CustomerId = $projection.AgencyId
{
    key agency_id as AgencyId,
    key customer_id as CustomerId,
    _Agency
}
