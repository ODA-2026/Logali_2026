@EndUserText.label: 'CDS - Table Function Test'
@ClientHandling.type: #CLIENT_DEPENDENT
define table function ztf_table_function_name
with parameters @Environment.systemField: #CLIENT
    pClient : abap.clnt, 
    pCity : /dmo/city
returns { 
key client : abap.clnt; 
key airport_id : /dmo/airport_id;
key customer_id : /dmo/customer_id;
first_name : /dmo/first_name;
city : /dmo/city;
} implemented by method zcl_test_oda2026=>get_airport;