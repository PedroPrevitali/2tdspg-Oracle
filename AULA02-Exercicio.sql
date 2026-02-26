SET SERVEROUTPUT ON;

DECLARE
    valorcarro   NUMBER := 80000;
    parcelas     NUMBER := 10;
    entrada      NUMBER;
    valorparcela NUMBER;
    valortotal   NUMBER;
BEGIN
    entrada := valorcarro * 0.2;
    valorparcela := (valorcarro - entrada) / parcelas;
    valortotal := entrada + (valorparcela * parcelas);

    DBMS_OUTPUT.PUT_LINE('Valor do carro: ' || valorcarro);
    DBMS_OUTPUT.PUT_LINE('Valor da entrada: ' || entrada);
    DBMS_OUTPUT.PUT_LINE('Valor de cada parcela: ' || valorparcela);
    DBMS_OUTPUT.PUT_LINE('Valor total pago: ' || valortotal);
END;
/