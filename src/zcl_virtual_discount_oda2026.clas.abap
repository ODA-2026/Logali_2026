CLASS zcl_virtual_discount_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES: if_sadl_exit_calc_element_read.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_virtual_discount_oda2026 IMPLEMENTATION.

  METHOD if_sadl_exit_calc_element_read~get_calculation_info.

    IF iv_entity EQ 'ZCDS_VIRTUAL_DISCOUNT_ODA2026'.

      LOOP AT it_requested_calc_elements ASSIGNING FIELD-SYMBOL(<fs_element>).
        IF <fs_element> EQ 'REALPRICE'.
          APPEND 'FLIGHTPRICE' TO et_requested_orig_elements.
        ENDIF.
      ENDLOOP.

    ENDIF.

  ENDMETHOD.

  METHOD if_sadl_exit_calc_element_read~calculate.

    DATA: lt_cds_data TYPE TABLE OF zcds_proj_virtual_disc_oda2026.

    lt_cds_data = CORRESPONDING #( it_original_data ).

    LOOP AT lt_cds_data ASSIGNING FIELD-SYMBOL(<fs_element>).
      IF  <fs_element>-CurrencyCode EQ 'EUR'.
        <fs_element>-RealPrice =  <fs_element>-Price * '0.90'.
      ELSE.
        <fs_element>-RealPrice =  <fs_element>-Price * '0.95'.
      ENDIF.
    ENDLOOP.

    ct_calculated_data = CORRESPONDING #( lt_cds_data ).

  ENDMETHOD.

ENDCLASS.
