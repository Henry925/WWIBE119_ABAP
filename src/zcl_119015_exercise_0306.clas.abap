CLASS zcl_119015_exercise_0306 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119015_exercise_0306 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.


    "DATA travel TYPE ZC_119015_TravelWithCustomer.
    DATA travels TYPE TABLE OF ZC_119015_TravelWithCustomer.

    SELECT  FROM ZC_119015_TravelWithCustomer
      FIELDS *
     WHERE CustomerId ='000001'
     INTO TABLE @travels.
    IF sy-subrc <> 0.
      out->write( |Keine Daten gefunden| ).
      RETURN.
    ENDIF.

    LOOP AT travels INTO DATA(travel).
      out->write( travel ).
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
