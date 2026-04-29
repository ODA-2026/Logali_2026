@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example - SF Cond. Tipo Ref.'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_REAL_PRICE_ODA2026 as select from ZCDS_FLIGHT_DISCOUNT_ODA2026
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
    FlightDiscount,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    ZSF_DIN_CALC_DISC_ODA2026(  p1 => cast( Price as abap.dec(16,2)),
                                p2 => cast( FlightDiscount as abap.dec(16,2)) ) as RealPrice
}
