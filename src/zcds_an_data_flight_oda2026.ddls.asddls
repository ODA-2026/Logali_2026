@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example Analytical Data'
@Metadata.ignorePropagatedAnnotations: true

@Analytics.dataCategory: #CUBE
define view entity ZCDS_AN_DATA_FLIGHT_ODA2026
  as select from /dmo/booking as Booking
  association [0..*] to ZCDS_VDM_FLIGHT_ODA2026 as _Flight on  _Flight.CarrierId    = $projection.CarrierId
                                                           and _Flight.ConnectionId = $projection.ConnectionId
{
  key Booking.travel_id     as TravelId,
  key Booking.booking_id    as BookingId,
      Booking.booking_date  as BookingDate,
      Booking.customer_id   as CustomerId,
      Booking.carrier_id    as CarrierId,
      Booking.connection_id as ConnectionId,
      Booking.flight_date   as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @Aggregation.default: #SUM
      Booking.flight_price  as FlightPrice,
      Booking.currency_code as CurrencyCode,
      _Flight
}
