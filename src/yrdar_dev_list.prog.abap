*&---------------------------------------------------------------------*
*& Report ZRDAR_TEMPLATE01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT yrdar_dev_list.

INCLUDE YRDAR_DEV_LIST_TOP.
*INCLUDE zrdar_dev_list_top.
INCLUDE YRDAR_DEV_LIST_SEL.
*INCLUDE zrdar_dev_list_sel.
INCLUDE YRDAR_DEV_LIST_FOM.
*INCLUDE zrdar_dev_list_fom.
INCLUDE YRDAR_DEV_LIST_PBO.
*INCLUDE zrdar_dev_list_pbo.
INCLUDE YRDAR_DEV_LIST_PAI.
*INCLUDE zrdar_dev_list_pai.

START-OF-SELECTION.
  PERFORM init_prog.
  PERFORM get_data.
  PERFORM call_screen.
  PERFORM free_data.
