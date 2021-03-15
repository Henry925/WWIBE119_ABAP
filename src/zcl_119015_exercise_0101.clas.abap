CLASS zcl_119015_exercise_0101 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119015_EXERCISE_0101 IMPLEMENTATION.


METHOD if_oo_adt_classrun~main.

    Data travel_id Type /dmo/travel_id.
    Data description Type /dmo/Description.
    Data begin_date Type /dmo/begin_date.
    Data end_date Type /dmo/end_date.

    travel_id = '12345678'.
    description = 'Italieeeen'.
    begin_date = '20210807'.
    end_date = '20210828'.

    out->write( |Travel ID: | && travel_id ).
    out->write( |Description: | && description ).
    out->write( |Begin: | && begin_date ).
    out->write( |End: | && end_date ).

      ENDMETHOD.
ENDCLASS.
