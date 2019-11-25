*&---------------------------------------------------------------------*
*& Include          ZRDAR_TEMPLATE01_PAI
*&---------------------------------------------------------------------*

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
    WHEN 'FC_HS_DES'.
      go_0100_rep->mc_fc_hs_des( ).
    WHEN 'FC_HS_DEV'.
      go_0100_rep->mc_fc_hs_dev( ).
    WHEN 'FC_NEW'.
      go_0100_rep->mc_fc_new( ).
    WHEN 'FC_CHG'.
      go_0100_rep->mc_fc_chg( ).
    WHEN 'FC_DEL'.
      go_0100_rep->mc_fc_del( ).
    WHEN 'FC_MULTI'.
      CALL  TRANSACTION 'ZRDAR_PRJ002'.
      go_0100_rep->md_refresh_data( ).
    WHEN 'FC_DOWN'.
      go_0100_rep->mc_fc_down( ).
  ENDCASE.

  CLEAR : lv_ok_code.

ENDMODULE.
