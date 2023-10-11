SELECT Uni�.[�NYR SZERVEZETI EGYS�G AZONOS�T�], [Szint5 - le�r�s] & [Szint6 - le�r�s] AS [F�oszt�ly\Hivatal], Uni�.[�ll�shely azonos�t�], Uni�.[Besorol�si fokozat megnevez�se:], Uni�.Jelleg, Uni�.Mez�4, Uni�.[Besorol�si fokozat k�d:], Uni�.Kinevez�s AS [Bet�lt�sMeg�resed�s d�tuma], Uni�.TT
FROM tSzervezeti RIGHT JOIN (SELECT [�ll�shely azonos�t�], Mez�4, [Besorol�si fokozat megnevez�se:], [�NYR SZERVEZETI EGYS�G AZONOS�T�], [Besorol�si fokozat k�d:], "A" as Jelleg, Mez�10 as Kinevez�s, [Garant�lt b�rminimumban r�szes�l (GB) / tart�s t�voll�v� nincs h] as TT                         FROM J�r�si_�llom�ny                                            UNION SELECT [�ll�shely azonos�t�], Mez�4, [Besorol�si fokozat megnevez�se:], [�NYR SZERVEZETI EGYS�G AZONOS�T�], [Besorol�si fokozat k�d:], "A" as Jelleg, Mez�10, [Garant�lt b�rminimumban r�szes�l (GB) / tart�s t�voll�v� nincs h] as TT                         FROM Korm�nyhivatali_�llom�ny                                             UNION SELECT [�ll�shely azonos�t�], Mez�4, [Besorol�si fokozat megnevez�se:], [Nexon sz�t�relemnek megfelel� szervezeti egys�g azonos�t�], [Besorol�si fokozat k�d:], "K" as Jelleg, Mez�11, "" as TT                         FROM K�zpontos�tottak                                       )  AS Uni� ON tSzervezeti.[Szervezetmenedzsment k�d]=Uni�.[�NYR SZERVEZETI EGYS�G AZONOS�T�]
ORDER BY Bfkh([�NYR SZERVEZETI EGYS�G AZONOS�T�]);
