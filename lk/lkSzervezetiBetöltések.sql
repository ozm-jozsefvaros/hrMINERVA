SELECT tSzervezeti.OSZLOPOK, tSzervezeti.[Szervezetmenedzsment k�d], IIf([Szervezeti egys�g�nek szintje]=7 And [Szint3 - k�d]="",[Sz�l� szervezeti egys�g�nek k�dja],IIf([Szint6 - k�d]="",IIf([Szint5 - k�d]="",IIf([Szint4 - k�d]="",IIf([Szint3 - k�d]="",[Szint2 - k�d],[Szint3 - k�d]),[Szint4 - k�d]),[Szint5 - k�d]),[Szint6 - k�d])) AS F�oszt�lyK�d, tSzervezeti.[HR kapcsolat sorsz�ma], tSzervezeti.N�v, tSzervezeti.[�rv�nyess�g kezdete], tSzervezeti.[�rv�nyess�g v�ge], tSzervezeti.[K�lts�ghely k�d], tSzervezeti.[K�lts�ghely megnevez�s], tSzervezeti.[Szervezeti egys�g�nek szintje], tSzervezeti.[Sz�l� szervezeti egys�g�nek k�dja], tSzervezeti.[Szervezeti egys�g�nek megnevez�se], tSzervezeti.[Szervezeti egys�g�nek vezet�je], tSzervezeti.[Szervezeti egys�g�nek vezet�j�nek azonos�t�ja], tSzervezeti.[A k�lts�ghely elt�r a szervezeti egys�g�nek k�lts�ghelyt�l?], tSzervezeti.[Szervezeti munkak�r�nek k�dja], tSzervezeti.[Szervezeti munkak�r�nek megnevez�se], tSzervezeti.[A k�lts�ghely elt�r a szervezeti munkak�r�nek k�lts�ghely�t�l?], tSzervezeti.[St�tuszbet�lt�ssel rendelkezik a kil�p�st k�vet�en?], tSzervezeti.[K�zz�tett hierarchi�ban megjelen�tend�], tSzervezeti.[Helyettes�t�s m�rt�ke (%)], tSzervezeti.[Helyettes�t�si d�j (%)], tSzervezeti.[St�tusz�nak k�dja], tSzervezeti.[St�tusz�nak neve], tSzervezeti.[St�tusz�nak az enged�lyezett �rasz�ma], tSzervezeti.[St�tusz enged�lyezett FTE (�zleti param�ter szerint sz�molva)], tSzervezeti.[Aktu�lis bet�lt�s �rasz�ma], tSzervezeti.[Aktu�lis bet�lt�s FTE], tSzervezeti.[St�tusz�nak k�lts�ghely k�dja], tSzervezeti.[St�tusz�nak k�lts�ghely megnevez�se], tSzervezeti.[A k�lts�ghely elt�r a st�tusz�nak k�lts�ghely�t�l?], tSzervezeti.[A B�r F6 besorol�si szint elt�r a szervezeti munkak�r�nek B�r F6], tSzervezeti.[St�tuszbet�lt�s t�pusa], tSzervezeti.[Inakt�v �llom�nyba ker�l�s oka], tSzervezeti.[Tart�s t�voll�t kezdete], tSzervezeti.[Tart�s t�voll�t sz�m�tott kezdete], tSzervezeti.[Tart�s t�voll�t v�ge], tSzervezeti.[Tart�s t�voll�t t�pusa], tSzervezeti.Els�dleges, tSzervezeti.[St�tusz vizualiz�ci�j�ban el�sz�r megjelen�tend�], tSzervezeti.[Bet�lt� szerz�d�ses/kinevez�ses munkak�r�nek k�dja], tSzervezeti.[Bet�lt� szerz�d�ses/kinevez�ses munkak�r�nek neve], tSzervezeti.[Szervezeti munkak�r elt�r a szerz�d�ses/kinevez�ses munkak�rt�l], tSzervezeti.[Bet�lt� k�zvetlen vezet�je], tSzervezeti.[Bet�lt� k�zvetlen vezet�j�nek azonos�t�ja], tSzervezeti.[Szint1 - k�d], tSzervezeti.[Szint1 - le�r�s], tSzervezeti.[Szint2 - k�d], tSzervezeti.[Szint2 - le�r�s], tSzervezeti.[Szint3 - k�d], tSzervezeti.[Szint3 - le�r�s], tSzervezeti.[Szint4 - k�d], tSzervezeti.[Szint4 - le�r�s], tSzervezeti.[Szint5 - k�d], tSzervezeti.[Szint5 - le�r�s], tSzervezeti.[Szint6 - k�d], tSzervezeti.[Szint6 - le�r�s], tSzervezeti.[Szint7 - k�d], tSzervezeti.[Szint7 - le�r�s], tSzervezeti.[Szint8 - k�d], tSzervezeti.[Szint8 - le�r�s], tSzervezeti.[HRM-ben l�v� k�lts�ghely k�d besorol�si adat], tSzervezeti.[HRM-ben l�v� k�lts�ghely megnevez�s besorol�si adat], tSzervezeti.[A K�lts�ghely �rv�nyess�g�nek kezdete], tSzervezeti.[HRM-ben l�v� FEOR besorol�si adat], tSzervezeti.[A FEOR �rv�nyess�g�nek kezdete], tSzervezeti.[A FEOR �rv�nyess�g�nek v�ge], tSzervezeti.[HRM-ben l�v� Munkak�r besorol�si adat], tSzervezeti.[A Munkak�r �rv�nyess�g�nek kezdete]
FROM tSzervezeti
WHERE (((tSzervezeti.OSZLOPOK)="St�tusz bet�lt�s") AND ((tSzervezeti.[�rv�nyess�g kezdete])<=Date()) AND ((tSzervezeti.[�rv�nyess�g v�ge])>=Date() Or (tSzervezeti.[�rv�nyess�g v�ge])=0) AND ((tSzervezeti.[St�tusz�nak k�dja]) Like "S-*") AND ((tSzervezeti.[St�tuszbet�lt�s t�pusa])<>"Helyettes"));
