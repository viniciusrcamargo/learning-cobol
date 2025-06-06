       IDENTIFICATION  DIVISION.
       PROGRAM-ID. CLIENTES.
      * COMENTÁRIO
       ENVIRONMENT     DIVISION.
       DATA            DIVISION.
       WORKING-STORAGE SECTION.
      *DECLARAÇÃO DE VARIÁVEIS
       01  WRK-NOME    PICTURE X(20) VALUE SPACES. 
       01  WRK-SALDO   PICTURE S9(05) VALUE ZEROS.

       PROCEDURE       DIVISION.
      *    atribuindo valor a variáveis
           MOVE "Vinicius" TO WRK-NOME.
           MOVE 1200 TO WRK-SALDO.

           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           STOP RUN.