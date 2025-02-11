SELECT 
    e.DISTRITO,          
    e.CEP,               
    e.LONGITUDE,         
    e.LATITUDE,          
    a.SEXO,              
    a.IDADE,             
    SUM(a.QTDE) AS QTDE_TOTAL  
FROM 
    escolas_full e
JOIN 
    alunos_full a
ON 
    e.CODESC = a.CODESC  
WHERE 
    e.ANO >= 2023        
GROUP BY 
    e.DISTRITO, 
    e.CEP, 
    e.LATITUDE, 
    e.LONGITUDE, 
    a.SEXO, 
    a.IDADE             
ORDER BY 
    e.DISTRITO, 
    a.SEXO, 
    a.IDADE;
