CLASS zcl_lab_67_pack_a_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC
                                INHERITING FROM zcl_lab_66_travel_oda2026.

  PUBLIC SECTION.
    METHODS: transport_oneway REDEFINITION,
      day_one REDEFINITION,
      day_two REDEFINITION,
      day_three REDEFINITION,
      transport_return REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_67_pack_a_oda2026 IMPLEMENTATION.

  METHOD day_one.
    io_consola->write( 'Paquete A. Día 1' ).
  ENDMETHOD.

  METHOD day_three.
    io_consola->write( 'Paquete A. Día 2' ).
  ENDMETHOD.

  METHOD day_two.
    io_consola->write( 'Paquete A. Día 3' ).
  ENDMETHOD.

  METHOD transport_oneway.
    io_consola->write( 'Paquete A. Inicio' ).
  ENDMETHOD.

  METHOD transport_return.
    io_consola->write( 'Paquete A. Retorno' ).
  ENDMETHOD.

ENDCLASS.
