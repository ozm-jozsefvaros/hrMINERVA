SELECT bfkh(Nz([Szervezeti egys�g k�dja],"-")) AS Kif1, lkSzem�lyek.[Dolgoz� teljes neve], lkSzem�lyek.F�oszt�ly, lkSzem�lyek.Oszt�ly, lkSzem�lyek.Besorol�s2, LCase(Replace(Nz([Besorol�si  fokozat (KT)],""),"J�r�si / ","")) & IIf(Nz([Tart�s t�voll�t t�pusa],"")<>""," (TT)","") AS [Ell�tott feladat], lkSzem�lyek.[Sz�let�si hely], lkSzem�lyek.[Sz�let�si id�], lkSzem�lyek.[�lland� lakc�m], lkSzem�lyek.[Tart�zkod�si lakc�m]
FROM lkSzem�lyek
WHERE (((LCase(Replace(Nz([Besorol�si  fokozat (KT)],""),"J�r�si / ","")) & IIf(Nz([Tart�s t�voll�t t�pusa],"")<>""," (TT)",""))="oszt�lyvezet�") AND ((lkSzem�lyek.[Szervezeti egys�g k�dja]) Is Not Null)) OR (((LCase(Replace(Nz([Besorol�si  fokozat (KT)],""),"J�r�si / ","")) & IIf(Nz([Tart�s t�voll�t t�pusa],"")<>""," (TT)","")) Like "ker�leti*") AND ((lkSzem�lyek.[Szervezeti egys�g k�dja]) Is Not Null)) OR (((LCase(Replace(Nz([Besorol�si  fokozat (KT)],""),"J�r�si / ","")) & IIf(Nz([Tart�s t�voll�t t�pusa],"")<>""," (TT)","")) Like "f�oszt�ly*") AND ((lkSzem�lyek.[Szervezeti egys�g k�dja]) Is Not Null)) OR (((LCase(Replace(Nz([Besorol�si  fokozat (KT)],""),"J�r�si / ","")) & IIf(Nz([Tart�s t�voll�t t�pusa],"")<>""," (TT)","")) Like "*igazgat�*") AND ((lkSzem�lyek.[Szervezeti egys�g k�dja]) Is Not Null)) OR (((LCase(Replace(Nz([Besorol�si  fokozat (KT)],""),"J�r�si / ","")) & IIf(Nz([Tart�s t�voll�t t�pusa],"")<>""," (TT)",""))="f�isp�n") AND ((lkSzem�lyek.[Szervezeti egys�g k�dja]) Is Not Null))
ORDER BY bfkh(Nz([Szervezeti egys�g k�dja],"-")), LCase(Replace(Nz([Besorol�si  fokozat (KT)],""),"J�r�si / ","")) & IIf(Nz([Tart�s t�voll�t t�pusa],"")<>""," (TT)","");
