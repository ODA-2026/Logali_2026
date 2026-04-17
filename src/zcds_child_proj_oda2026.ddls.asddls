@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example - Proyección Hija'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_CHILD_PROJ_ODA2026 as projection on ZCDS_CUST_BOOK_ODA2026
{
    key TravelId,
    key BookingId,
    CustomerId,
    /* Associations */
    _Customer: redirected to parent ZCDS_CUST_PROJ_ODA2026
}
