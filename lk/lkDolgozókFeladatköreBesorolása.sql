SELECT lkSzemélyek.Adójel, lkSzemélyek.[Dolgozó teljes neve], lkSzemélyek.Főosztály, lkSzemélyek.Osztály, lkSzemélyek.[KIRA feladat megnevezés], lkSzemélyek.Feladatkör, lkSzemélyek.[Elsődleges feladatkör], lkSzemélyek.FEOR, lkSzemélyek.[KIRA jogviszony jelleg], lkSzemélyek.[Besorolási  fokozat (KT)]
FROM lkSzemélyek
WHERE (((lkSzemélyek.[Státusz neve])="Álláshely"))
ORDER BY lkSzemélyek.BFKH, lkSzemélyek.[Dolgozó teljes neve];
