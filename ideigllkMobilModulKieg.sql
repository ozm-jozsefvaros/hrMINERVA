SELECT ideiglMobilModulKieg.[Dolgoz� teljes neve], ideiglMobilModulKieg.[Hivatali email], lkSzem�lyek.F�oszt�ly, lkSzem�lyek.Oszt�ly, kt_azNexon_Ad�jel02.azNexon
FROM kt_azNexon_Ad�jel02 RIGHT JOIN (lkSzem�lyek RIGHT JOIN ideiglMobilModulKieg ON lkSzem�lyek.[Hivatali email] = ideiglMobilModulKieg.[Hivatali email] OR ideiglMobilModulKieg.[Dolgoz� teljes neve]=lkSzem�lyek.[Dolgoz� teljes neve]) ON kt_azNexon_Ad�jel02.Ad�jel = lkSzem�lyek.Ad�jel;
