*----------------------------------------------------------------------*
***INCLUDE LZRDAFG_ALV_COLUMN_COLORPAI.
*----------------------------------------------------------------------*

*&---------------------------------------------------------------------*
*&      Module  EXIT_0100  INPUT
*&---------------------------------------------------------------------*
MODULE exit_0100 INPUT.

  go_0100_rep->md_exit_prog( ).
  LEAVE TO SCREEN 0.

ENDMODULE.


*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
MODULE user_command_0100 INPUT.

  "**********************************************************************
  "* 기능코드에 대해서 해당 처리를 하는 메서드 매핑
  "**********************************************************************
  DATA : lv_ok_code TYPE syucomm.

  lv_ok_code = ok_code.
  CLEAR : ok_code.

  CASE lv_ok_code.
    WHEN 'FC_OK'.
      CHECK go_0100_rep->mc_fc_ok( ) EQ abap_true.
      LEAVE TO SCREEN 0.
    WHEN OTHERS.
      go_0100_rep->mc_fc_enter( ).
  ENDCASE.

  CLEAR : lv_ok_code.

ENDMODULE.


*&---------------------------------------------------------------------*
*&      Module  SCR_PROJECT_ID  INPUT
*&---------------------------------------------------------------------*
MODULE scr_project_id INPUT.

  go_0100_rep->gs_disp-project_id = zrdacl_code=>call_f4_search_help( 'ZRDAH_PROJECT_ID' ).
  go_0100_rep->gs_disp-project_nm = zrdacl_mod_board_head=>get_project_name( go_0100_rep->gs_disp-project_id ).

  zrdacl_code=>write_scr_fld_p(
  EXPORTING
   iv_dyname = sy-repid
   iv_dynumb = sy-dynnr
   iv_field  = 'GO_0100_REP->GS_DISP-PROJECT_ID'
   iv_value  = CONV #( go_0100_rep->gs_disp-project_id ) ).

  zrdacl_code=>write_scr_fld_p(
  EXPORTING
    iv_dyname = sy-repid
    iv_dynumb = sy-dynnr
    iv_field  = 'GO_0100_REP->GS_DISP-PROJECT_NM'
    iv_value  = CONV #( go_0100_rep->gs_disp-project_nm ) ).
ENDMODULE.
