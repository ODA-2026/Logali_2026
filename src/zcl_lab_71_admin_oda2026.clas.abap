CLASS zcl_lab_71_admin_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC INHERITING FROM zcl_lab_70_observer_oda2026.

  PUBLIC SECTION.
    EVENTS: new_articulo_for_users EXPORTING VALUE(ev_nuevo_articulo) TYPE string.
    DATA: nuevo_articulo TYPE string.
    METHODS: on_new_articulo REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_71_admin_oda2026 IMPLEMENTATION.

  METHOD on_new_articulo.
    me->nuevo_articulo = ev_nuevo_articulo.
    RAISE EVENT new_articulo_for_users EXPORTING ev_nuevo_articulo = me->nuevo_articulo.
  ENDMETHOD.

ENDCLASS.
