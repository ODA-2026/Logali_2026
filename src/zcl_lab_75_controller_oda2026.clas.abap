CLASS zcl_lab_75_controller_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS: set_model IMPORTING io_model TYPE REF TO zcl_lab_73_model_oda2026,
      get_model RETURNING VALUE(ro_model) TYPE REF TO zcl_lab_73_model_oda2026,
      set_view IMPORTING io_view TYPE REF TO zcl_lab_74_view_oda2026,
      get_view RETURNING VALUE(ro_view) TYPE REF TO zcl_lab_74_view_oda2026.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: model TYPE REF TO zcl_lab_73_model_oda2026,
          view  TYPE REF TO zcl_lab_74_view_oda2026.

ENDCLASS.


CLASS zcl_lab_75_controller_oda2026 IMPLEMENTATION.

  METHOD get_model.
    ro_model = me->model.
  ENDMETHOD.

  METHOD set_model.
    me->model = io_model.
  ENDMETHOD.

  METHOD get_view.
    ro_view = me->view.
  ENDMETHOD.

  METHOD set_view.
    me->view = io_view.
  ENDMETHOD.

ENDCLASS.
