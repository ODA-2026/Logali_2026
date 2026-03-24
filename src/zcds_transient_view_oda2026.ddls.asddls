@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Example Transient View Entity'
@Metadata.ignorePropagatedAnnotations: true
define transient view entity ZCDS_TRANSIENT_VIEW_ODA2026
  provider contract analytical_query
  as projection on ZCDS_AN_DATA_FLIGHT_ODA2026
{
          @AnalyticsDetails.query.axis: #FREE
          TravelId,
          @AnalyticsDetails.query.axis: #ROWS
          BookingId,
          BookingDate,
          @AnalyticsDetails.query.axis: #COLUMNS
          CustomerId,
          CarrierId,
          ConnectionId,
          FlightDate,
          @Semantics.amount.currencyCode: 'CurrencyCode'
          @ObjectModel.text.element: [ 'currcode' ]
          FlightPrice,
          virtual currcode : abap.cuky,
          CurrencyCode,
          /* Associations */
          _Flight
}
