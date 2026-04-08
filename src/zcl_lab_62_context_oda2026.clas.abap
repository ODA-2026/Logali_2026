CLASS zcl_lab_62_context_oda2026 DEFINITION PUBLIC FINAL CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS: get_instance_singl RETURNING VALUE(ro_instance) TYPE REF TO zcl_lab_62_context_oda2026.
    DATA: identificador_instancia TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA: ref_singleton TYPE REF TO zcl_lab_62_context_oda2026.
ENDCLASS.

CLASS zcl_lab_62_context_oda2026 IMPLEMENTATION.

  METHOD get_instance_singl.

    IF ref_singleton IS NOT BOUND.
      ref_singleton = NEW #(  ).
    ENDIF.
    ro_instance = ref_singleton.

  ENDMETHOD.

ENDCLASS.
