CLASS zcl_amdp_airport_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.

    CLASS-METHODS: get_airports FOR TABLE FUNCTION ztf_airports_oda2026.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_amdp_airport_oda2026 IMPLEMENTATION.

  METHOD get_airports BY DATABASE FUNCTION FOR HDB LANGUAGE SQLSCRIPT
                      OPTIONS READ-ONLY USING /dmo/airport.

    RETURN select a.client,
                  a.airport_id,
                  a.name,
                  a.city
    from "/DMO/AIRPORT" as a
    where -- client = :pClient and
          city = :pCity
    order by a.city desc;

  endmethod.

ENDCLASS.
