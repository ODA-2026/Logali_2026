CLASS zcl_lab_01_ejec_oda2026 DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_01_ejec_oda2026 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lv_num TYPE i VALUE 20,
          lv_coe TYPE i VALUE 0,
          lv_res TYPE i.

    TRY.
        lv_res = lv_num / lv_coe.

      CATCH cx_sy_zerodivide INTO DATA(lcx_excepcion).
        lv_coe = 1.
        RETRY.
    ENDTRY.

    out->write( |Resultado: { lv_res }| ).

*    DATA(lo_process_check) = NEW zcl_lab_53_check_oda2026(  ).
*
*    TRY.
*        lo_process_check->check_user( iv_user = sy-uname ).
*      CATCH zcx_lab_52_operations_oda2026 into data(lcx_exception).
*        "handle exception
*        out->write( lcx_exception->get_text( ) ).
*    ENDTRY.

*  data(go_model) =  new zcl_lab_73_model_oda2026( iv_carrier_id = 'AA' ).
*
*  data(go_view) = new zcl_lab_74_view_oda2026(  ).
*
*  data(go_controller) = new zcl_lab_75_controller_oda2026(  ).
*
*  go_controller->set_model( go_model ).
*  go_controller->set_view( go_view ).
*
*  go_controller->get_view(  )->display_flights( exporting it_flights = go_controller->get_model( )->get_flights(  )
*                                                          io_out = out ).

*  data(go_blog) = new zcl_lab_69_blog_oda2026(  ).
*  data(go_admin) = new zcl_lab_71_admin_oda2026(  ).
*  data(go_user) = new zcl_lab_72_users_oda2026(  ).
*
*  set handler go_admin->on_new_articulo for go_blog.
*  set handler go_user->on_new_articulo_for_users for go_admin.
*
*  go_blog->set_articulo( 'Artículo Biología Molecular' ).
*
*  out->write( go_blog->get_articulo(  ) ).
*  out->write( go_admin->nuevo_articulo ).
*  out->write( go_user->nuevo_articulo ).


*  data(go_viaje_p1) = new zcl_lab_67_pack_a_oda2026(  ).
*  go_viaje_p1->travel( exporting io_consola = out ).
*
*  out->write( cl_abap_char_utilities=>newline ).
*
*  data(go_viaje_p2) = new zcl_lab_68_pack_b_oda2026(  ).
*  go_viaje_p2->travel( exporting io_consola = out ).


*  DATA: go_file_1 type ref to zif_lab_06_file_oda2026,
*        go_file_2 type ref to zif_lab_06_file_oda2026,
*        go_factory type ref to zcl_lab_65_factory_oda2026.
*
*        go_factory = new #(  ).
*        go_file_1 = go_factory->create_file( 'Work File' ).
*        go_file_2 = go_factory->create_file( 'Supply File' ).
*
*        out->write( go_file_1->get_file_type(  ) ).
*        out->write( go_file_2->get_file_type(  ) ).

*    DATA(lo_singleton_1) = zcl_lab_62_context_oda2026=>get_instance_singl(  ).
*    DATA(lo_singleton_2) = zcl_lab_62_context_oda2026=>get_instance_singl(  ).
*
*    lo_singleton_1->identificador_instancia = 'Singleton 1'.
*    lo_singleton_2->identificador_instancia = 'Singleton 2'.
*
*    out->write( lo_singleton_1->identificador_instancia ).
*    out->write( lo_singleton_2->identificador_instancia ).

  ENDMETHOD.

ENDCLASS.
