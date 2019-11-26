*----------------------------------------------------------------------*
***INCLUDE LZRDAFG_ALV_COLUMN_COLORFOM.
*----------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Form INIT_0100
*&---------------------------------------------------------------------*
FORM init_0100
  USING is_import TYPE zrdacl_rep_board_head_new=>ty_s_import
        is_cond   TYPE zrdacl_rep_board_head_new=>ty_s_cond.

  IF go_0100_rep IS NOT BOUND.
    CREATE OBJECT go_0100_rep
      EXPORTING
        is_cond   = is_cond
        is_import = is_import.
  ENDIF.

ENDFORM.


*&---------------------------------------------------------------------*
*& Form CALL_0100
*&---------------------------------------------------------------------*
FORM call_0100 .

  CALL SCREEN 0100 STARTING AT 1 1.

ENDFORM.

*&---------------------------------------------------------------------*
*& Form MAKE_0100_OUTPUT
*&---------------------------------------------------------------------*
FORM make_0100_output  CHANGING cs_output TYPE zrdacl_rep_board_head_new=>ty_s_export.

  CLEAR : cs_output.
  cs_output = go_0100_rep->me_get_export( ).

ENDFORM.


*&---------------------------------------------------------------------*
*& Form FREE_0100
*&---------------------------------------------------------------------*
FORM free_0100 .

  IF go_0100_rep IS BOUND.
    go_0100_rep->md_free_data( ).
    FREE : go_0100_rep.
    CLEAR : go_0100_rep.
  ENDIF.

ENDFORM.
