FUNCTION ZTEST_FM1.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IM_UNAME) TYPE  SY-UNAME
*"----------------------------------------------------------------------
types : BEGIN OF struc,
        aufnr TYPE aufnr,
        END OF struc.
DATA : lwa_aufnr TYPE struc,
       lt_aufnr TYPE TABLE OF struc.

if im_uname is  NOT INITIAL.

  select aufnr from aufk
          where auart = 'PM01' INTO TABLE @lt_aufnr.
endif.



ENDFUNCTION.
