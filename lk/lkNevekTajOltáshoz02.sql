SELECT lkNevekOltáshoz.Főosztály, lkNevekOltáshoz.Osztály, lkNevekOltáshoz.DolgTeljNeve, lkSzemélyek.[TAJ szám], [Születési hely] & ", " & [Születési idő] AS [szül hely \ idő], lkSzemélyek.[Anyja neve], lkSzemélyek.[Állandó lakcím], lkNevekOltáshoz.Oltandók, lkSzemélyek.[Hivatali email]
FROM lkNevekOltáshoz LEFT JOIN lkSzemélyek ON lkNevekOltáshoz.DolgTeljNeve=lkSzemélyek.[Dolgozó teljes neve]
WHERE (((lkSzemélyek.[TAJ szám]) Is Not Null));
