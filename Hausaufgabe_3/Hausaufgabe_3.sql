# A
SELECT 
    name, idOrte
FROM
    schueler s,
    smartphones sp
WHERE
    s.idSmartphones = sp.id
        AND sp.marke = 'Apple'
;

# B
SELECT 
	l.name AS Lehrername, s.name AS Schuelername
FROM
	lehrer_hat_schueler lhs,
	lehrer l, 
	schueler s
WHERE
	lhs.idLehrer = l.id
    AND
    lhs.idSchueler = s.id
;

# C
SELECT 
	s.name, s.idOrte
FROM
	lehrer_hat_schueler lhs,
	lehrer l, 
	schueler s
WHERE
	lhs.idLehrer = l.id
    AND
    lhs.idSchueler = s.id
    AND
    l.name = 'Maier'
;

# D
SELECT 
	s.name, o.name, sp.marke
FROM
	schueler s,
    smartphones sp,
    orte o
WHERE
	s.idSmartphones = sp.id
    AND
    s.idOrte = o.id
    AND
    o.name = 'Emmendingen'
;

# D
SELECT 
	s.name, o.name, l.name
FROM
	schueler s,
    lehrer l,
    lehrer_hat_schueler lhs,
    orte o
WHERE
	lhs.idLehrer = l.id
    AND lhs.idSchueler = s.id
    AND s.idOrte = o.id
    AND o.name = 'Emmendingen'
    AND l.name = 'Huber'
;
