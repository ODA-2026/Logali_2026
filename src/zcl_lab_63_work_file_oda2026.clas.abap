CLASS zcl_lab_63_work_file_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES zif_lab_06_file_oda2026.
    ALIASES get_file_type FOR zif_lab_06_file_oda2026~get_file_type.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_63_work_file_oda2026 IMPLEMENTATION.

  METHOD get_file_type.
    rv_type_exp = 'Work File'.
  ENDMETHOD.

ENDCLASS.
