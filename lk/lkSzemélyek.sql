SELECT tSzem�lyek.*, Replace(Nz(IIf(IsNull([tSzem�lyek].[Szint 4 szervezeti egys�g n�v]),IIf(IsNull([tSzem�lyek].[Szint 3 szervezeti egys�g n�v]),[tSzem�lyek].[Szint 2 szervezeti egys�g n�v] & "",[tSzem�lyek].[Szint 3 szervezeti egys�g n�v] & ""),[tSzem�lyek].[Szint 4 szervezeti egys�g n�v] & ""),""),"Budapest F�v�ros Korm�nyhivatala ","BFKH ") & "" AS F�oszt�ly, Replace(Nz(IIf(IsNull(tSzem�lyek.[Szint 4 szervezeti egys�g k�d]),IIf(IsNull(tSzem�lyek.[Szint 3 szervezeti egys�g k�d]),tSzem�lyek.[Szint 2 szervezeti egys�g k�d] & "",tSzem�lyek.[Szint 3 szervezeti egys�g k�d] & ""),tSzem�lyek.[Szint 4 szervezeti egys�g k�d] & ""),""),"Budapest F�v�ros Korm�nyhivatala ","BFKH ") AS F�oszt�lyK�d, [Szint 5 szervezeti egys�g n�v] & "" AS Oszt�ly, Replace(Nz([Munkav�gz�s helye - c�m],"")," .",".") AS Munkav�gz�sC�me, tSzem�lyek.[besorol�si  fokozat (KT)] AS Besorol�s, Replace(Nz([Besorol�si  fokozat (KT)],"/ "),"/ ","") AS Besorol�s2, bfkh(Nz([szervezeti egys�g k�dja],0)) AS BFKH
FROM tSzem�lyek
WHERE ((((SELECT Max(Tmp.[Jogviszony sorsz�ma]) AS [MaxOfJogviszony sorsz�ma]         FROM tSzem�lyek as Tmp         WHERE tSzem�lyek.Ad�jel=Tmp.Ad�jel         GROUP BY Tmp.Ad�jel     ))=[Jogviszony sorsz�ma]))
ORDER BY tSzem�lyek.[Dolgoz� teljes neve];
