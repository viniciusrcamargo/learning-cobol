       PROGRAM-ID. CLIENTES.
      * COMENTARIO

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-NOME        PICTURE X(20) VALUE SPACES.
       01 WRK-SALDO       PICTURE S9(05) COMP VALUE ZEROS.
       01 WRK-SALDO-ED    PICTURE ZZZZ9,99. 
       01 WRK-TIPO-CONTA  PICTURE 9.

       PROCEDURE DIVISION. 

       0100-PRINCIPAL SECTION.
           PERFORM 0200-INICIAR.
           PERFORM 0300-PROCESSAR.
           PERFORM 0400-FINALIZAR.
           STOP RUN.

       0200-INICIAR SECTION.
           DISPLAY "DIGITE SEU NOME ".
           ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO ".
           ACCEPT WRK-SALDO.
           DISPLAY "Qual o tipo de conta 1: Fisica - 2: Juridica ".
           ACCEPT WRK-TIPO-CONTA.
       0200-FIM. EXIT.

       0300-PROCESSAR SECTION.
           IF WRK-SALDO GREATER THAN OR EQUAL 5000 AND
              (WRK-TIPO-CONTA EQUAL 1 OR WRK-TIPO-CONTA EQUAL 2)
               DISPLAY WRK-NOME
               MOVE WRK-SALDO TO WRK-SALDO-ED
               DISPLAY "SALDO " WRK-SALDO-ED
               EVALUATE WRK-TIPO-CONTA
                   WHEN 1
                       DISPLAY "CONTA FISICA"
                   WHEN 2
                       DISPLAY "CONTA JURIDICA"
                   WHEN OTHER
                       DISPLAY "CONTA INEXISTENTE!"
               END-EVALUATE
               DISPLAY "---------------------------"
           ELSE
              EVALUATE TRUE
                WHEN WRK-SALDO LESS 5000
                   DISPLAY "SALDO NAO COMPATIVEL"
          WHEN WRK-TIPO-CONTA NOT EQUAL 1 AND WRK-TIPO-CONTA NOT EQUAL 2 
                       DISPLAY "TIPO DE CONTA NAO EXISTE"
                   WHEN OTHER 
                       DISPLAY "CONDICAO NAO ATENDIDA"
               END-EVALUATE
           END-IF.
       0300-FIM. EXIT.

       0400-FINALIZAR SECTION.
           DISPLAY "PROCESSAMENTO FINALIZADO.".
           DISPLAY "---------------------------".
       0400-FIM. EXIT.