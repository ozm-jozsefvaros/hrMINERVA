SELECT tEllenőrzőLekérdezések.EllenőrzőLekérdezés, tLekérdezésTípusok.LapNév, tLekérdezésTípusok.Osztály, tLekérdezésTípusok.Megjegyzés, tEllenőrzőLekérdezések.Táblacím, Exists (select azEllenőrző from tGrafikonok Where tGrafikonok.azEllenőrző=tEllenőrzőLekérdezések.azEllenőrző) AS vaneGraf
FROM tLekérdezésTípusok INNER JOIN tEllenőrzőLekérdezések ON tLekérdezésTípusok.azETípus=tEllenőrzőLekérdezések.azETípus
WHERE (((tEllenőrzőLekérdezések.Kimenet)=True))
ORDER BY tLekérdezésTípusok.azETípus;
