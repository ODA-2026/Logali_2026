@EndUserText.label: 'Example - Table Function'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ClientHandling.algorithm: #SESSION_VARIABLE
@ClientHandling.type: #CLIENT_DEPENDENT
define table function ZTF_AIRPORTS_ODA2026
with parameters
@Environment.systemField: #CLIENT 
                pClient : abap.clnt,
                pCity: /dmo/city
returns {
  key client: abap.clnt;
  key airport_id: /dmo/airport_id;
  name: /dmo/airport_name;
  city: /dmo/city;  
}

implemented by method zcl_amdp_airport_oda2026=>get_airports;