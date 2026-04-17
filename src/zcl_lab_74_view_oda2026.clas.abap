CLASS zcl_lab_74_view_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    methods: display_flights importing it_flights type /dmo/t_flight
                                       io_out type ref to if_oo_adt_classrun_out.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_74_view_oda2026 IMPLEMENTATION.

  METHOD display_flights.
     io_out->write( it_flights ).
  ENDMETHOD.

ENDCLASS.
