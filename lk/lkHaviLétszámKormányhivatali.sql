SELECT Korm�nyhivatali_�llom�ny.[�NYR SZERVEZETI EGYS�G AZONOS�T�] AS BFKHK�d, Korm�nyhivatali_�llom�ny.Mez�6 AS F�oszt�ly, Korm�nyhivatali_�llom�ny.Mez�7 AS Oszt�ly, Sum(IIf([Mez�4]="�res �ll�s",0,1)) AS Bet�lt�tt, Sum(IIf([Mez�4]="�res �ll�s",1,0)) AS �res
FROM Korm�nyhivatali_�llom�ny
GROUP BY Korm�nyhivatali_�llom�ny.[�NYR SZERVEZETI EGYS�G AZONOS�T�], Korm�nyhivatali_�llom�ny.Mez�6, Korm�nyhivatali_�llom�ny.Mez�7;
