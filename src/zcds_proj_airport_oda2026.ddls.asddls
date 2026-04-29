@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example - Value Help'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
define root view entity ZCDS_PROJ_AIRPORT_ODA2026
  provider contract transactional_query
  as projection on ZCDS_ROOT_AIRPORT_ODA2026
{
  key AirportId,
      Name,
@ObjectModel.text.element: [ 'City' ]      
@Search.defaultSearchElement: true
@Consumption.valueHelpDefinition: [{entity: { name: 'ZCDS_CITY_VH_ODA2026',
                                              element: 'City'  },
                                    useForValidation: true }]    
      City,
      Country,
      /* Associations */
      _Textos
}
