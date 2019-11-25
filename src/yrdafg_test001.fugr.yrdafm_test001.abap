FUNCTION YRDAFM_TEST001.
*"--------------------------------------------------------------------
*"*"로컬인터페이스:
*"  IMPORTING
*"     REFERENCE(IS_IMPORT) TYPE
*"ZRDACL_REP_BOARD_HEAD_NEW=>TY_S_IMPORT OPTIONAL
*"     REFERENCE(IS_COND) TYPE  ZRDACL_REP_BOARD_HEAD_NEW=>TY_S_COND
*"         OPTIONAL
*"  EXPORTING
*"     REFERENCE(ES_EXPORT) TYPE
*"ZRDACL_REP_BOARD_HEAD_NEW=>TY_S_EXPORT
*"--------------------------------------------------------------------

  CLEAR : es_export.

  PERFORM init_0100 USING is_import is_cond.
  PERFORM call_0100.
  PERFORM make_0100_output CHANGING es_export.
  PERFORM free_0100.

ENDFUNCTION.
