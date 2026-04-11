CLASS zcl_lab_66_travel_oda2026 DEFINITION PUBLIC CREATE PUBLIC abstract.

  PUBLIC SECTION.

  methods: transport_oneway abstract importing io_consola type ref to if_oo_adt_classrun_out,
           day_one abstract importing io_consola type ref to if_oo_adt_classrun_out,
           day_two abstract importing io_consola type ref to if_oo_adt_classrun_out,
           day_three abstract importing io_consola type ref to if_oo_adt_classrun_out,
           transport_return abstract importing io_consola type ref to if_oo_adt_classrun_out,
           travel final importing io_consola type ref to if_oo_adt_classrun_out.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_66_travel_oda2026 IMPLEMENTATION.

  METHOD travel.

  me->transport_oneway( io_consola ).
  me->day_one( io_consola ).
  me->day_two( io_consola ).
  me->day_three( io_consola ).
  me->transport_return( io_consola ).

  ENDMETHOD.

ENDCLASS.
