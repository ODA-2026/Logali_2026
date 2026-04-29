CLASS zcl_calc_discount_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES: if_amdp_marker_hdb.

    CLASS-METHODS: get_discount FOR SCALAR FUNCTION zsf_calc_discount_oda2026,
      get_real_price FOR SCALAR FUNCTION zsf_din_calc_disc_oda2026.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_calc_discount_oda2026 IMPLEMENTATION.

  METHOD get_discount BY DATABASE FUNCTION FOR HDB LANGUAGE SQLSCRIPT.

    IF :pClientCuky = 'EUR' THEN
       result = :pDiscount * 0.10;
    else
       result = :pDiscount * 0.05;
    end if;

  endmethod.

  METHOD get_real_price BY DATABASE FUNCTION FOR HDB LANGUAGE SQLSCRIPT.

    result = p1 - p2;

  ENDMETHOD.

ENDCLASS.
