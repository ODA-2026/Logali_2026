CLASS zcl_lab_65_factory_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS: create_file IMPORTING iv_type_ext         TYPE string
                         RETURNING VALUE(ro_file_type) TYPE REF TO zif_lab_06_file_oda2026.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_65_factory_oda2026 IMPLEMENTATION.

  METHOD create_file.

    CASE iv_type_ext.
      WHEN 'Work File'.
        ro_file_type = NEW ZCL_LAB_63_WORK_FILE_ODA2026(  ).
      WHEN 'Supply File'.
        ro_file_type = NEW ZCL_LAB_64_SUPPLY_FILE_ODA2026(  ).
    ENDCASE.

  ENDMETHOD.

ENDCLASS.
