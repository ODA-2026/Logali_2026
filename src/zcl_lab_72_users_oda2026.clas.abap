CLASS zcl_lab_72_users_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
     DATA: nuevo_articulo TYPE string.
     methods on_new_articulo_for_users for event new_articulo_for_users of zcl_lab_71_admin_oda2026
             importing ev_nuevo_articulo.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_72_users_oda2026 IMPLEMENTATION.

  METHOD on_new_articulo_for_users.
   me->nuevo_articulo = ev_nuevo_articulo.
  ENDMETHOD.

ENDCLASS.
