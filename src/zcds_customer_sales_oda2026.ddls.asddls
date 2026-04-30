@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example - Enum Type'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_CUSTOMER_SALES_ODA2026 as select from /dmo/customer
{
    key customer_id as CustomerId,
    cast(first_name as ZTY_CDS_ST_ORDER_ODA2026 ) as FirstName,
    last_name as LastName,
    ZTY_ENUM_ST_ORDER_ODA2026.#DELIVERED as StatusSale
}
