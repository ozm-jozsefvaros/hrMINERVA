SELECT "tSzem�lyek" AS T�bla, "A legmagasabb iskolai v�gzetts�g foka" AS Hi�nyz�_�rt�k, lkSzem�lyek.Ad�jel AS Ad�azonos�t�, lkSzem�lyek.[St�tusz k�dja] AS [�ll�shely azonos�t�], lkSzem�lyek.[Szervezeti egys�g k�dja] AS [�NYR SZERVEZETI EGYS�G AZONOS�T�], lkSzem�lyek.Ad�jel
FROM lkSzem�lyek
WHERE (((lkSzem�lyek.[Szervezeti egys�g k�dja]) Is Not Null) AND ((lkSzem�lyek.[Iskolai v�gzetts�g foka]) Is Null) AND ((lkSzem�lyek.[St�tusz t�pusa]) Is Not Null));
