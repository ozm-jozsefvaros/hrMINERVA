SELECT DISTINCT lkSzemélyek.Főosztály, lkSzemélyek.Osztály, lkSzemélyek.Feladatkör, lkSzemélyek.[KIRA feladat megnevezés]
FROM lkSzemélyek
WHERE (((lkSzemélyek.[Státusz neve])="Álláshely"));
