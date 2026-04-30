@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example - Virtualization'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_PROJ_VIRTUAL_DISC_ODA2026
provider contract transactional_query
as projection on ZCDS_VIRTUAL_DISCOUNT_ODA2026
{
    key CarrierId,
    key ConnectionId,
    key FlightDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    Price,
    CurrencyCode,
    PlaneTypeId,
    SeatsMax,
    SeatsOccupied,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_VIRTUAL_DISCOUNT_ODA2026'
    virtual RealPrice: abap.dec(16,2)
}
