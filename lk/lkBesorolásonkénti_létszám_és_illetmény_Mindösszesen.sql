SELECT Max([Rang_])+1 AS rangsor, "Összesen: " AS Besorolás, Round(Sum(lkBesorolásonkénti_létszám_és_illetmény_átlaggal.Összilletmény)/100,0)*100 AS Mindösszesen, Sum(lkBesorolásonkénti_létszám_és_illetmény_átlaggal.Fő) AS Összlétszám, Round(Sum([Összilletmény])/Sum([Fő])/100,0)*100 AS Átlag, (SELECT Round(StDev([Illetmény összesen kerekítés nélkül (eltérített)]/[Elméleti (szerződés/kinevezés szerinti) ledolgozandó heti óraker]*40)/100,0)*100 AS [Átlagtól való eltérés]
FROM lkSzemélyek LEFT JOIN Álláshelyek ON lkSzemélyek.[Státusz kódja] = Álláshelyek.[Álláshely azonosító]
WHERE (((lkSzemélyek.[Szervezeti egység kódja]) Is Not Null) AND ((lkSzemélyek.[Státusz neve])="Álláshely"))) AS [Átlagtól való eltérés]
FROM lkBesorolásonkénti_létszám_és_illetmény_átlaggal
GROUP BY "Összesen: ";
