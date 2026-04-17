@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example - Asociación - Parent Child'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_CUST_BOOK_ODA2026
  as select from /dmo/booking
  association to parent ZCDS_CUSTOMER_ROOT_ODA2026 as _Customer on _Customer.CustomerId = $projection.CustomerId
{  
  key travel_id   as TravelId,
  key booking_id  as BookingId,
      customer_id as CustomerId,
  _Customer
}
