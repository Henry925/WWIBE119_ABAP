CLASS zcl_119015_exercise_0102 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119015_EXERCISE_0102 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  Data number1 type p length 16 decimals 2.
  Data number2 type p length 16 decimals 2.
  Data result type p length 16 decimals 2.
  Data operator type c length 1.
  Data minimum type i.

  number1 = '12.34'.
  number2 = 8.
  operator = '/'.

  case operator.
    When '+'.
        result = number1 + number2.

   When '-'.
        result = number1 - number2.

   When '*'.
        result = number1 * number2.

   When '/'.
        result = number1 / number2.

  endcase.

  minimum = nmin( val1 = number1 val2 = number2 ).
  out->write( |Nummer 1: | && number1 && | - | && |Operator: | && operator && | - | && |Nummer 2: | && number2  ).
  out->write( |Ergebnis: | && result ).
  out->write( |Minimum: | && minimum ).

  ENDMETHOD.
ENDCLASS.
