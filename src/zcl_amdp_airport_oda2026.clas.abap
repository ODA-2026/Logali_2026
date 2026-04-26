CLASS zcl_amdp_airport_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    INTERFACES if_amdp_marker_hdb.

    TYPES: BEGIN OF ty_airport,
             AirportId TYPE /dmo/airport_id,
             Name      TYPE /dmo/airport_name,
             City      TYPE /dmo/city,
             Country   TYPE land1,
           END OF ty_airport,
           ty_airports_t TYPE TABLE OF ty_airport.

    CLASS-METHODS: get_airports FOR TABLE FUNCTION ztf_airports_oda2026,
                   get_airports_amdp AMDP OPTIONS CDS SESSION CLIENT DEPENDENT
                                     EXPORTING VALUE(et_airports) TYPE ty_airports_t.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_amdp_airport_oda2026 IMPLEMENTATION.

  METHOD get_airports BY DATABASE FUNCTION FOR HDB LANGUAGE SQLSCRIPT
                      OPTIONS READ-ONLY USING /dmo/airport.

    RETURN select a.client,
                  a.airport_id,
                  a.name,
                  a.city,
                  a.country
    from "/DMO/AIRPORT" as a
    where city = :pCity
    order by a.city desc;

  endmethod.

  METHOD if_oo_adt_classrun~main.

    zcl_amdp_airport_oda2026=>get_airports_amdp( IMPORTING et_airports = DATA(gt_airports) ).
    out->write( gt_airports ).

  ENDMETHOD.

  METHOD get_airports_amdp BY DATABASE PROCEDURE FOR HDB LANGUAGE SQLSCRIPT
                           OPTIONS READ-ONLY
                           USING zcds_airport_amdp_oda2026.

    et_airports = select top 10
                  AirportId,
                  Name,
                  City,
                  Country
           from zcds_airport_amdp_oda2026;

  ENDMETHOD.

ENDCLASS.
