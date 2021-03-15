CLASS zcl_119015_exercise_0103 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119015_EXERCISE_0103 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  Data text type string value 'Hallo Welt... a e i o u!'.
  Data text2 type string.

  text2 = replace( val = text sub = 'a' with = '1' occ = '0').
  text2 = replace( val = text2 sub = 'e'  with = '2' occ = '0' ).
   text2 = replace( val = text2 sub = 'i'  with = '3' occ = '0' ).
    text2 = replace( val = text2 sub = 'o'  with = '4' occ = '0').
     text2 = replace( val = text2 sub = 'u'  with = '5' occ = '0').


  out->Write(  |Text : | && text ).
  out->Write(  |Text2 : | && text2 ).

  ENDMETHOD.
ENDCLASS.
