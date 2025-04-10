--What campuses exist, and where are they located?
SELECT nombre AS campus_name, ubicacion AS location
FROM campus;

--- What are the average grades for each project and their result classifications?
SELECT 
    p.nombre AS project_name,
    AVG(e.calificaciones) AS avg_grade,
    STRING_AGG(DISTINCT e.resultado, ', ') AS result_outcomes
FROM proyecto p
JOIN estado e ON p.id_proyecto = e.id_proyecto
GROUP BY p.nombre
ORDER BY avg_grade DESC;

---- What is the capacity of each classroom?
SELECT 
    a.nombre AS aula_name,
    a.capacidad,
    c.nombre AS campus
FROM aulas a
JOIN campus c ON a.id_campus = c.id_campus;
-- What does each professor teach and at which campus?
SELECT 
    p.nombre AS professor,
    p.rol,
    p.promocion,
    c.nombre AS campus
FROM profesores p
JOIN campus c ON p.id_campus = c.id_campus;
--- List all students and whether they are full time or not.
SELECT 
    e.nombre AS student,
    pr.tipo_modalidad,
    pr.full_time,
    pr.part_time
FROM estudiante e
JOIN presencial pr ON e.id_presencial = pr.id_presencial;




































--- BUGFIXING WAAA I WANNA SLEEP

UPDATE profesores
SET id_campus = c.id_campus
FROM campus c
WHERE profesores.promocion = c.nombre;
----- CAMPUS IDs empty WHYY
UPDATE profesores SET id_campus = 3 WHERE nombre = 'Noa Yáñez';
UPDATE profesores SET id_campus = 3 WHERE nombre = 'Saturnina Benitez';
UPDATE profesores SET id_campus = 2 WHERE nombre = 'Anna Feliu';
UPDATE profesores SET id_campus = 5 WHERE nombre = 'Rosalva Ayuso';
UPDATE profesores SET id_campus = 5 WHERE nombre = 'Ana Sofía Ferrer';
UPDATE profesores SET id_campus = 2 WHERE nombre = 'Angélica Corral';
UPDATE profesores SET id_campus = 3 WHERE nombre = 'Ariel Lledó';
UPDATE profesores SET id_campus = 5 WHERE nombre = 'Mario Prats';
UPDATE profesores SET id_campus = 2 WHERE nombre = 'Luis Ángel Suárez';
UPDATE profesores SET id_campus = 2 WHERE nombre = 'María Dolores Diaz';
--- EVERYTHING IS EMPTY OR NULL LET ME REST ON GOD