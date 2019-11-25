*&---------------------------------------------------------------------*
*& Include          ZRDAR_TEMPLATE01_FOM
*&---------------------------------------------------------------------*

*&---------------------------------------------------------------------*
*& Form INIT_PROG
*&---------------------------------------------------------------------*
*& 프로그램 전역변수 초기화
*&---------------------------------------------------------------------*
FORM init_prog .

  IF go_0100_rep IS NOT BOUND.
    CREATE OBJECT go_0100_rep.
  ENDIF.

  go_0100_rep->gs_cond-s_obj_id = s_id[].

ENDFORM.


*&---------------------------------------------------------------------*
*& Form GET_DATA
*&---------------------------------------------------------------------*
*& 데이터검색
*&---------------------------------------------------------------------*
FORM get_data .

  go_0100_rep->ma_get_data( ).

ENDFORM.


*&---------------------------------------------------------------------*
*& Form CALL_SCREEN
*&---------------------------------------------------------------------*
*& 화면호출
*&---------------------------------------------------------------------*
FORM call_screen .

  CALL SCREEN 0100.

ENDFORM.


*&---------------------------------------------------------------------*
*& Form FREE_DATA
*&---------------------------------------------------------------------*
*& 전역변수 초기화
*&---------------------------------------------------------------------*
FORM free_data .

  IF go_0100_rep IS BOUND.
    go_0100_rep->md_free_data( ).
  ENDIF.

ENDFORM.