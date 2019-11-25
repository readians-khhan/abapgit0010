*&---------------------------------------------------------------------*
*& Report ZRDAR_TEMPLATE01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT yrdar_prj001_01.

INCLUDE yrdar_prj001_01_top.
INCLUDE yrdar_prj001_01_sel.
INCLUDE yrdar_prj001_01_fom.
INCLUDE yrdar_prj001_01_pbo.
INCLUDE yrdar_prj001_01_pai.

START-OF-SELECTION.
  PERFORM init_prog.
  PERFORM get_data.
  PERFORM call_screen.
  PERFORM free_data.
