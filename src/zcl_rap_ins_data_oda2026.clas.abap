CLASS zcl_rap_ins_data_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_rap_ins_data_oda2026 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DELETE FROM zcust_oda2026.
    DELETE FROM zcust_d_oda2026.

    MODIFY zcust_oda2026 FROM (
                          SELECT FROM /dmo/travel
                          FIELDS uuid(  ) AS Customer_UUID,
                                 customer_id,
                                 description,
                                 createdby AS localcreatedby,
                                 createdat AS localcreatedat,
                                 lastchangedby AS local_last_changed_by,
                                 lastchangedat AS local_last_changed_at

                           WHERE customer_id IS NOT NULL
                          ).

    IF sy-subrc EQ 0.
      out->write( |New records: { sy-dbcnt }| ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
