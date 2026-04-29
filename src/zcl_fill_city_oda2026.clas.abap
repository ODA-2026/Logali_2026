CLASS zcl_fill_city_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_fill_city_oda2026 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DELETE FROM zcity_tx_oda2026.
    MODIFY zcity_tx_oda2026 FROM ( SELECT airport_id,
                                          city
                                          FROM /dmo/airport ).

    if sy-subrc eq 0.
      out->write( |Registros insertados: { sy-dbcnt }| ).
    endif.

  ENDMETHOD.

ENDCLASS.
