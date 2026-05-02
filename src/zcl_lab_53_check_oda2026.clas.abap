CLASS zcl_lab_53_check_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS check_user IMPORTING iv_user TYPE syuname
                       RAISING   zcx_lab_52_operations_oda2026.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_53_check_oda2026 IMPLEMENTATION.

  METHOD check_user.

    IF sy-uname EQ 'CB9980006425'.

      RAISE EXCEPTION TYPE zcx_lab_52_operations_oda2026
        EXPORTING
          textid = zcx_lab_52_operations_oda2026=>no_access
*         previous =
          msgv1  = |{ sy-uname }|
*         msgv2  =
*         msgv3  =
*         msgv4  =
        .
    ENDIF.

  ENDMETHOD.

ENDCLASS.
