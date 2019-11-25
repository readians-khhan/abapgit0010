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
    WHEN 'FC_NEW'.
      go_0100_rep->mc_fc_new( ).
    WHEN 'FC_DEV_DTL'.
      go_0100_rep->mc_fc_dev_dtl( ).
    WHEN 'FC_SIMUL'.
      go_0100_rep->mc_fc_simul( ).
    WHEN 'FC_CODE'.
      go_0100_rep->mc_fc_code( ).
    WHEN 'FC_CODE_ICON'.
      go_0100_rep->mc_fc_code_icon( ).
  ENDCASE.

  CLEAR : lv_ok_code.
ENDMODULE.
