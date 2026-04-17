CLASS zcl_lab_73_model_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS: constructor IMPORTING iv_carrier_id TYPE /dmo/carrier_id,
             get_flights retURNING VALUE(rt_flights) type /dmo/t_flight.

  PROTECTED SECTION.
  PRIVATE SECTION.
     data: flights type /dmo/t_flight.
ENDCLASS.


CLASS zcl_lab_73_model_oda2026 IMPLEMENTATION.

  METHOD constructor.

    SELECT * FROM /dmo/flight
    WHERE carrier_id EQ @iv_carrier_id
    INTO TABLE @DATA(lt_flights).

    if sy-subrc eq 0.
    me->flights = lt_flights[].
    endif.

  ENDMETHOD.

  METHOD get_flights.
    rt_flights = me->flights.
  ENDMETHOD.

ENDCLASS.


