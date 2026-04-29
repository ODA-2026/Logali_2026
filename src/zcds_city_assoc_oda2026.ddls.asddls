@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example - Searchable'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
define view entity ZCDS_CITY_ASSOC_ODA2026
  as select from /dmo/customer as Customer
  association [1..1] to ZCDS_CITY_TEXT_ODA2026 as _CityText on _CityText.City = $projection.City
{
  key customer_id           as CustomerId,
      first_name            as FirstName,
      last_name             as LastName,
      title                 as Title,
      street                as Street,
      postal_code           as PostalCode,
@Search.defaultSearchElement: true
@Search.ranking: #HIGH
@Search.fuzzinessThreshold: 0.8
@Semantics.text: true
@ObjectModel.text.association: '_CityText'
      city                  as City,
      country_code          as CountryCode,
      phone_number          as PhoneNumber,
      email_address         as EmailAddress,
      _CityText
}
