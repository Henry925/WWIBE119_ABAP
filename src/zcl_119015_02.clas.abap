CLASS zcl_119015_02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119015_02 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data i1 type i. "i = ganze zahl (Bsp: 44)
  data string1 type string. "Zeichnkette dynamsicher länge (Standardtyp)
  data c1 type c length 6. "Zeichenkette fester länge (Bsp:'A1B2C3')
  data n1 type n length 7. "numerische folge (Bsp: Matnr '1234567')
  data d1 type d. "Datum (Bsp: '20210231')
  data t1 type t. "Zeit (bsp: '123114')
  data p1 type p length 16 decimals 2. "gepackte Zahl (Bsp: 734.23)
  data b1 type c length 1. "Boolscher Wahrheitswert (Bsp: 'X' = true; '' = false)

  "Deklaration variabler datenobjekte per...
  Data carrier_id type c length 3. "...ABAP Standardtyp
  data carrier_id2 type /dmo/carrier_id. "...Datenelement

  "Wertzuweisung per...
  carrier_id = 'LH'. "...Zuweisungsoperator
  Data connection_id Type /dmo/connection_id Value '0400'. "statische zuweisung
  Data(flight_date) = '20210202'. ".. inlinedeklaration


  ENDMETHOD.
ENDCLASS.
