*&---------------------------------------------------------------------*
*& Include          ZRDAR_TEMPLATE01_PBO
*&---------------------------------------------------------------------*

*&---------------------------------------------------------------------*
*& Module STATUS_0100 OUTPUT
*&---------------------------------------------------------------------*
MODULE status_0100 OUTPUT.

  SET PF-STATUS 'STATUS_0100'.
  SET TITLEBAR 'TITLE_0100'.

ENDMODULE.


*&---------------------------------------------------------------------*
*& Module INIT_0100 OUTPUT
*&---------------------------------------------------------------------*
MODULE init_0100 OUTPUT.

  DATA : lt_controls TYPE zrday_scrfname VALUE IS INITIAL.

  lt_controls = VALUE #( ( NAME = 'SPL01' scrfname = 'CC_0100_ALV_DEV' dynnr = sy-dynnr repid = sy-repid ) ).

  go_0100_rep->mb_init_scrobj( lt_controls[] ).

ENDMODULE.
