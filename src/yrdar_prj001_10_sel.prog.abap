*&---------------------------------------------------------------------*
*& Include          ZRDAR_TEMPLATE01_SEL
*&---------------------------------------------------------------------*

**********************************************************************
* 선택화면
**********************************************************************
SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
SELECT-OPTIONS : s_prjid  FOR go_0100_rep->gs_cond_type-project_id NO INTERVALS.
SELECT-OPTIONS : s_listid FOR go_0100_rep->gs_cond_type-list_id NO INTERVALS.
SELECT-OPTIONS : s_listnm FOR go_0100_rep->gs_cond_type-list_nm NO INTERVALS.
SELECT-OPTIONS : s_status FOR go_0100_rep->gs_cond_type-keytext NO INTERVALS.
SELECTION-SCREEN END OF BLOCK b1.
SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
SELECT-OPTIONS : s_listy  FOR go_0100_rep->gs_cond_type-list_ty NO INTERVALS.
SELECT-OPTIONS : s_mod    FOR go_0100_rep->gs_cond_type-mod NO INTERVALS.
SELECT-OPTIONS : s_cls_cd FOR go_0100_rep->gs_cond_type-cls_cd NO INTERVALS.
SELECT-OPTIONS : s_des_id FOR go_0100_rep->gs_cond_type-des_user_id NO INTERVALS.
SELECT-OPTIONS : s_dev_id FOR go_0100_rep->gs_cond_type-dev_user_id NO INTERVALS.
SELECT-OPTIONS : s_tet_id FOR go_0100_rep->gs_cond_type-test_user_id NO INTERVALS.
SELECTION-SCREEN END OF BLOCK b2.


**********************************************************************
* Selection Screen : Initialization
**********************************************************************
INITIALIZATION.
  PERFORM init_selscr.

**********************************************************************
* Selection Screen : PBO
**********************************************************************
AT SELECTION-SCREEN OUTPUT.
*  PERFORM pbo_selscr.

**********************************************************************
* Selection Screen : PAI
**********************************************************************
  "AT SELECTION-SCREEN.

**********************************************************************
* Selection Screen : POV
**********************************************************************
AT SELECTION-SCREEN ON VALUE-REQUEST FOR s_status-low.
  PERFORM get_status_val_req.
