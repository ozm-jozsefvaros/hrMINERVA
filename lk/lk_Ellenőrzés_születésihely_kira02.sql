SELECT lk_Ellenőrzés_születésihely_kira01.Főoszt AS Főosztály, lk_Ellenőrzés_születésihely_kira01.Osztály AS Osztály, lk_Ellenőrzés_születésihely_kira01.[Dolgozó teljes neve] AS Név, lk_Ellenőrzés_születésihely_kira01.Hiba, lk_Ellenőrzés_születésihely_kira01.[Születés helye] AS [Születési hely], IIf([Javasolt] Like "*00*","-- nincs javaslat --",[Javasolt]) AS Javaslat, lk_Ellenőrzés_születésihely_kira01.NLink AS NLink
FROM lk_Ellenőrzés_születésihely_kira01
ORDER BY lk_Ellenőrzés_születésihely_kira01.bfkh;
