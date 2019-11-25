*&---------------------------------------------------------------------*
*& Report ZRDAR_TEMPLATE01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT YRDAR_DEV_LIST_01.

INCLUDE YRDAR_DEV_LIST_01_TOP.
*INCLUDE zrdar_dev_list_top.
INCLUDE YRDAR_DEV_LIST_01_SEL.
*INCLUDE zrdar_dev_list_sel.
INCLUDE YRDAR_DEV_LIST_01_FOM.
*INCLUDE zrdar_dev_list_fom.
INCLUDE YRDAR_DEV_LIST_01_PBO.
*INCLUDE zrdar_dev_list_pbo.
INCLUDE YRDAR_DEV_LIST_01_PAI.
*INCLUDE zrdar_dev_list_pai.

START-OF-SELECTION.
  PERFORM init_prog.
  PERFORM get_data.
  PERFORM call_screen.
  PERFORM free_data.
