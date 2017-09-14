INSERT INTO proc (term, snomed_code, snomed_term) VALUES ('Aqueous Tap',40395007,'Paracentesis of anterior chamber of eye with diagnostic aspiration of aqueous (procedure)');
INSERT INTO proc (term, snomed_code, snomed_term) VALUES ('Vitreous Tap',19875009,'Diagnostic aspiration of vitreous (procedure)');


INSERT INTO subspecialty_subsection (subspecialty_id, name) VALUES (1, 'Rotary Ward / Minor Ops');
SET @rotary = LAST_INSERT_ID();

INSERT INTO subspecialty_subsection (subspecialty_id, name) VALUES (1, 'Theatre');
SET @theatre=LAST_INSERT_ID();

INSERT INTO proc_subspecialty_subsection_assignment (proc_id, subspecialty_subsection_id)
select id, @rotary
FROM proc
WHERE snomed_code in (
40395007,
19875009,
428497007,
74410004,
312855001,
62428002,
172423006,
503003,
78362007,
4143006,
172426003,
172517004,
361162007,
361157006,
172410004,
172532006,
172264003,
231755001,
231754002,
287588003
);

INSERT INTO proc_subspecialty_subsection_assignment (proc_id, subspecialty_subsection_id)
select id, @theatre
FROM proc
WHERE snomed_code in (
40395007,
19875009,
361162007,
361157006,
172264003,
75318004,
4143006,
62428002,
503003,
49288009,
172517004,
231755001,
172555009,
231754002,
172565003,
397538008,
312713003,
85231002,
287588003,
231728005
);
