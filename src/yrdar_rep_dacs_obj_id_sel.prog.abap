*&---------------------------------------------------------------------*
*& Include          ZRDAR_TEMPLATE01_SEL
*&---------------------------------------------------------------------*

TABLES : zrdat_obj_id.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

SELECT-OPTIONS : s_id FOR zrdat_obj_id-obj_id NO INTERVALS.

SELECTION-SCREEN END OF BLOCK b1.
