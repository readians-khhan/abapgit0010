*&---------------------------------------------------------------------*
*& Report ZRDAR_TEMPLATE01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT YRDAR_PRJ001_10.

INCLUDE YRDAR_PRJ001_10_top.
INCLUDE YRDAR_PRJ001_10_sel.
INCLUDE YRDAR_PRJ001_10_fom.
INCLUDE YRDAR_PRJ001_10_pbo.
INCLUDE YRDAR_PRJ001_10_pai.

START-OF-SELECTION.
  PERFORM init_prog.
  PERFORM get_data.
  PERFORM call_screen.
  PERFORM free_data.
