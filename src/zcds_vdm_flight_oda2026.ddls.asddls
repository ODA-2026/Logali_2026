@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example VDM Básica'
@Metadata.ignorePropagatedAnnotations: true

@VDM.viewType: #BASIC
@Analytics.dataCategory: #DIMENSION
@Search.searchable: true
define view entity ZCDS_VDM_FLIGHT_ODA2026 as select from /dmo/flight as Flight
association[0..*] to /dmo/carrier as _Carrier on _Carrier.carrier_id = $projection.CarrierId
{
@Search.defaultSearchElement: true
@Search.ranking: #MEDIUM
@Search.fuzzinessThreshold: 0.9
    key Flight.carrier_id as CarrierId,
    key Flight.connection_id as ConnectionId,
    key Flight.flight_date as FlightDate,
@Semantics.amount.currencyCode: 'CurrencyCode'    
    Flight.price as Price,
    Flight.currency_code as CurrencyCode,
    Flight.plane_type_id as PlaneTypeId,
    Flight.seats_max as SeatsMax,
    Flight.seats_occupied as SeatsOccupied,
    _Carrier
}
