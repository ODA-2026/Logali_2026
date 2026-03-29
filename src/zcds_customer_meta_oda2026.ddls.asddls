@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example Metadata Extensions'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZCDS_CUSTOMER_META_ODA2026
  with parameters
    pCity : /dmo/city
  as select from /dmo/customer as Customer
{
  key customer_id           as CustomerId,
      first_name            as FirstName,
      last_name             as LastName,
      title                 as Title,
      street                as Street,
      postal_code           as PostalCode,
      city                  as City,
      country_code          as CountryCode,
      phone_number          as PhoneNumber,
      email_address         as EmailAddress,
      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt
}
where $parameters.pCity = city;
