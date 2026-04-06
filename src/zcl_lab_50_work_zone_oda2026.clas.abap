CLASS zcl_lab_50_work_zone_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC
                                   GLOBAL FRIENDS zcl_lab_51_wz_friend_oda2026.

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: work_zone TYPE ty_work_zone.
    DATA: go_helper type ref to lcl_helper.

    METHODS: set_work_zone.

ENDCLASS.


CLASS zcl_lab_50_work_zone_oda2026 IMPLEMENTATION.

  METHOD set_work_zone.

    work_zone-launchpad = 'Launchpad'.
    work_zone-dashboard = 'Dashboard'.
    work_zone-spaces = 'Spaces'.

  ENDMETHOD.

ENDCLASS.
