SELECT lkOsztályvezetőiÁlláshelyek.[Besorolási  fokozat (KT)], Round(Avg([Illetmény])/100,0)*100 AS Átlagilletmény
FROM lkOsztályvezetőiÁlláshelyek
GROUP BY lkOsztályvezetőiÁlláshelyek.[Besorolási  fokozat (KT)];
