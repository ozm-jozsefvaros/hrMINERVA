SELECT lkSzem�lyek.F�oszt�ly, lkSzem�lyek.Oszt�ly, lkSzem�lyek.[dolgoz� teljes neve] AS DolgTeljN�v, lkSzem�lyek.[TAJ sz�m], [Sz�let�si hely] & ", " & [Sz�let�si id�] AS [sz�l hely \ id�], lkSzem�lyek.[Anyja neve], lkSzem�lyek.[�lland� lakc�m], lkNevekTajOlt�shoz04.Oltand�k, lkSzem�lyek.[Hivatali email]
FROM lkSzem�lyek RIGHT JOIN lkNevekTajOlt�shoz04 ON (lkSzem�lyek.F�oszt�ly=lkNevekTajOlt�shoz04.F�oszt�ly_) AND (lkSzem�lyek.Oszt�ly=lkNevekTajOlt�shoz04.Oszt�ly_)
WHERE (((lkSzem�lyek.[dolgoz� teljes neve]) Like "*" & [N�v] & "*" Or (lkSzem�lyek.[dolgoz� teljes neve]) Like "*" & [Oltand�k] & "*"));
