SELECT lkSzem�lyek.[Dolgoz� teljes neve], lkSzem�lyek.[Munkav�gz�s helye - c�m], lkSzem�lyek.[Szervezeti egys�g k�dja], Replace(IIf(IsNull([lkSzem�lyek].[Szint 4 szervezeti egys�g n�v]),[lkSzem�lyek].[Szint 3 szervezeti egys�g n�v] & "",[lkSzem�lyek].[Szint 4 szervezeti egys�g n�v] & ""),"Budapest F�v�ros Korm�nyhivatala ","BFKH ") AS F�oszt�ly, lkSzem�lyek.[Szint 5 szervezeti egys�g n�v] AS Oszt�ly, lkSzem�lyek.Ad�jel, "https://nexonport.kh.gov.hu/menu/hrm/szemelyiKarton/index?szemelyAzonosito=" & [azNexon] & "&r=13" AS Link
FROM lkSzem�lyek LEFT JOIN kt_azNexon_Ad�jel ON lkSzem�lyek.tSzem�lyek.Ad�jel=kt_azNexon_Ad�jel.Ad�jel
WHERE (((lkSzem�lyek.[Munkav�gz�s helye - c�m]) Is Null) AND ((lkSzem�lyek.[Szervezeti egys�g k�dja]) Is Not Null) AND ((lkSzem�lyek.[St�tusz t�pusa]) Is Not Null));
