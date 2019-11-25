*&---------------------------------------------------------------------*
*& Report ZRDAR_TEMPLATE01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT yrdar_rep_dacs_obj_id.

INCLUDE YRDAR_REP_DACS_OBJ_ID_TOP.
INCLUDE YRDAR_REP_DACS_OBJ_ID_SEL.
INCLUDE YRDAR_REP_DACS_OBJ_ID_FOM.
INCLUDE YRDAR_REP_DACS_OBJ_ID_PBO.
INCLUDE YRDAR_REP_DACS_OBJ_ID_PAI.

START-OF-SELECTION.
  PERFORM init_prog.
  PERFORM get_data.
  PERFORM call_screen.
  PERFORM free_data.
