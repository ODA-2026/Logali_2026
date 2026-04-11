CLASS zcl_lab_69_blog_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    EVENTS: new_articulo EXPORTING VALUE(ev_nuevo_articulo) TYPE string.

    METHODS: set_articulo IMPORTING iv_articulo TYPE string,
             get_articulo RETURNING VALUE(rv_articulo) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: articulo_posted TYPE string.

ENDCLASS.


CLASS zcl_lab_69_blog_oda2026 IMPLEMENTATION.

  METHOD get_articulo.
    rv_articulo = me->articulo_posted.
  ENDMETHOD.

  METHOD set_articulo.
    me->articulo_posted = iv_articulo.
    RAISE EVENT new_articulo EXPORTING ev_nuevo_articulo = me->articulo_posted.
  ENDMETHOD.

ENDCLASS.
