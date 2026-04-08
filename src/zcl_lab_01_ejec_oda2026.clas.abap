CLASS zcl_lab_01_ejec_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_01_ejec_oda2026 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

  DATA: go_file_1 type ref to zif_lab_06_file_oda2026,
        go_file_2 type ref to zif_lab_06_file_oda2026,
        go_factory type ref to zcl_lab_65_factory_oda2026.

        go_factory = new #(  ).
        go_file_1 = go_factory->create_file( 'Work File' ).
        go_file_2 = go_factory->create_file( 'Supply File' ).

        out->write( go_file_1->get_file_type(  ) ).
        out->write( go_file_2->get_file_type(  ) ).

*    DATA(lo_singleton_1) = zcl_lab_62_context_oda2026=>get_instance_singl(  ).
*    DATA(lo_singleton_2) = zcl_lab_62_context_oda2026=>get_instance_singl(  ).
*
*    lo_singleton_1->identificador_instancia = 'Singleton 1'.
*    lo_singleton_2->identificador_instancia = 'Singleton 2'.
*
*    out->write( lo_singleton_1->identificador_instancia ).
*    out->write( lo_singleton_2->identificador_instancia ).

  ENDMETHOD.

ENDCLASS.
