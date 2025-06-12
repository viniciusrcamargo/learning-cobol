       PROGRAM-ID. CLIENTES.
      *COMENTARIO

       ENVIRONMENT       DIVISION.
       CONFIGURATION     SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT   IS COMMA. 
       DATA             DIVISION.
       WORKING-STORAGE  SECTION.
       01 WRK-NOME      PICTURE X(20) VALUE SPACES.
       01 WRK-SALDO     PICTURE S9(05) VALUE ZEROS.
       01 WRK-SALDO-ED  PICTURE ZZZZZZZZZ9.

       PROCEDURE        DIVISION.
           DISPLAY "DIGITE SEU NOME "
               ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO "
               ACCEPT WRK-SALDO.

           DISPLAY WRK-NOME.
      *------ SOMA
           ADD 500 TO WRK-SALDO
               MOVE WRK-SALDO TO WRK-SALDO-ED.
           DISPLAY "SALDO " WRK-SALDO-ED.
           DISPLAY "---------------------------".

      *------ SUBTRAÇÃO
           SUBTRACT 200 FROM WRK-SALDO
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "---------------------------".

      *------ MULTIPLICACAO
           MULTIPLY WRK-SALDO BY 2 GIVING WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "---------------------------".

      *------DIVISAO
           DIVIDE WRK-SALDO BY 3 GIVING WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "---------------------------".


           STOP RUN.