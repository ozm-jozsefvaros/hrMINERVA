SELECT J�r�si_�llom�ny.[�NYR SZERVEZETI EGYS�G AZONOS�T�] AS BFKHK�d, J�r�si_�llom�ny.[J�r�si Hivatal] AS F�oszt�ly, J�r�si_�llom�ny.Mez�7 AS Oszt�ly, Sum(IIf([Mez�4]="�res �ll�s",0,1)) AS Bet�lt�tt, Sum(IIf([Mez�4]="�res �ll�s",1,0)) AS �res
FROM J�r�si_�llom�ny
GROUP BY J�r�si_�llom�ny.[�NYR SZERVEZETI EGYS�G AZONOS�T�], J�r�si_�llom�ny.[J�r�si Hivatal], J�r�si_�llom�ny.Mez�7;
