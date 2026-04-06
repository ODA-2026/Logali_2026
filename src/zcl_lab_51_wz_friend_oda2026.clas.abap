CLASS zcl_lab_51_wz_friend_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS: get_helper.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.


CLASS zcl_lab_51_wz_friend_oda2026 IMPLEMENTATION.

  METHOD get_helper.

    DATA(lo_work_zone) = NEW zcl_lab_50_work_zone_oda2026(  ).
    lo_work_zone->go_helper->get_work_zone( ).


  ENDMETHOD.

ENDCLASS.
