DECLARE 
	V_PROFESSOR		PROFESSOR.CARGO%TYPE;
BEGIN
	SELECT SALARIO
	INTO V_PROFESSOR
	FROM PROFESSOR
	WHERE CODIGO_ID = 4;
	
	IF V_PROFESSOR < 5000 THEN 
	DBMS_OUTPUT.PUT_LINE('Auxiliar');
	ELSIF V_PROFESSOR = 5000 THEN
	DBMS_OUTPUT.PUT_LINE('Titular');
	ELSE
	DBMS_OUTPUT.PUT_LINE('Coordenador');
	END IF;
	
END;