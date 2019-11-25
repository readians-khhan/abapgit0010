*&---------------------------------------------------------------------*
*& Include          ZRDAR_TEMPLATE01_SEL
*&---------------------------------------------------------------------*

**********************************************************************
* TABLES + SELECT-OPTIONS용 변수 선언
**********************************************************************

**********************************************************************
* 선택화면
**********************************************************************
SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
SELECT-OPTIONS : s_prjid  FOR go_0100_rep->gs_cond_type-project_id  NO INTERVALS.
SELECT-OPTIONS : s_list   FOR go_0100_rep->gs_cond_type-list_id     NO INTERVALS.
SELECT-OPTIONS : s_mod    FOR go_0100_rep->gs_cond_type-mod         NO INTERVALS.
SELECT-OPTIONS : s_listy  FOR go_0100_rep->gs_cond_type-list_ty     NO INTERVALS.
SELECT-OPTIONS : s_status FOR go_0100_rep->gs_cond_type-keytext NO INTERVALS.
SELECTION-SCREEN END OF BLOCK b1.
SELECTION-SCREEN BEGIN OF BLOCK b3 WITH FRAME TITLE TEXT-003.
SELECT-OPTIONS : s_devui  FOR go_0100_rep->gs_cond_type-dev_user_id NO INTERVALS.
SELECT-OPTIONS : s_devun  FOR go_0100_rep->gs_cond_type-dev_user_nm NO INTERVALS.
SELECT-OPTIONS : s_fdate  FOR go_0100_rep->gs_cond_type-dev_r_fdate .
SELECT-OPTIONS : s_tdate  FOR go_0100_rep->gs_cond_type-dev_r_tdate .
SELECTION-SCREEN END OF BLOCK b3.
SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
SELECT-OPTIONS : s_desid  FOR go_0100_rep->gs_cond_type-des_id      NO INTERVALS.
SELECT-OPTIONS : s_desnm  FOR go_0100_rep->gs_cond_type-des_nm      NO INTERVALS.
SELECT-OPTIONS : s_desui  FOR go_0100_rep->gs_cond_type-des_user_id NO INTERVALS.
SELECT-OPTIONS : s_desun  FOR go_0100_rep->gs_cond_type-des_user_nm NO INTERVALS.
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
AT SELECTION-SCREEN.

*  PERFORM pai_selscr.

**********************************************************************
* Selection Screen : POV
**********************************************************************
AT SELECTION-SCREEN ON VALUE-REQUEST FOR s_status-low.
  PERFORM get_status_val_req.
