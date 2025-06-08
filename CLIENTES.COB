       PROGRAM-ID. CLIENTES.
      *COMENTARIO

       ENVIRONMENT       DIVISION.
       DATA             DIVISION.
       WORKING-STORAGE  SECTION.
       01 WRK-NOME      PICTURE X(20) VALUE SPACES.
       01 WRK-SALDO     PICTURE S9(05) VALUE ZEROS.

       PROCEDURE        DIVISION.
           DISPLAY "DIGITE SEU NOME "
               ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO "
               ACCEPT WRK-SALDO.

      *------ SOMA
           ADD 500 TO WRK-SALDO
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "---------------------------".

      *------ SUBTRAÇÃO
           SUBTRACT 200 FROM WRK-SALDO
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "---------------------------".

      *------ MULTIPLICACAO
           MULTIPLY WRK-SALDO BY 2 GIVING WRK-SALDO.
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "---------------------------".

      *------DIVISAO
           DIVIDE WRK-SALDO BY 3 GIVING WRK-SALDO.
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "---------------------------".


           STOP RUN.