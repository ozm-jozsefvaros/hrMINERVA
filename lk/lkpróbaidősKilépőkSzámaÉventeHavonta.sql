SELECT Year([Jogviszony v�ge (kil�p�s d�tuma)]) AS �v, Month([Jogviszony v�ge (kil�p�s d�tuma)]) AS H�, Count(tSzem�lyek.Azonos�t�) AS [Kil�p�k sz�ma]
FROM tSzem�lyek
WHERE (((tSzem�lyek.[KIRA jogviszony jelleg]) Like "Korm�nyzati*" Or (tSzem�lyek.[KIRA jogviszony jelleg])="Munkaviszony") AND ((tSzem�lyek.[Jogviszony v�ge (kil�p�s d�tuma)]) Is Not Null Or (tSzem�lyek.[Jogviszony v�ge (kil�p�s d�tuma)])<>"") AND ((tSzem�lyek.[HR kapcsolat megsz�n�s m�dja (Kil�p�s m�dja)]) Like "*pr�baid�*"))
GROUP BY Year([Jogviszony v�ge (kil�p�s d�tuma)]), Month([Jogviszony v�ge (kil�p�s d�tuma)])
HAVING (((Year([Jogviszony v�ge (kil�p�s d�tuma)]))>=2019 And (Year([Jogviszony v�ge (kil�p�s d�tuma)]))<=Year(Now())))
ORDER BY Year([Jogviszony v�ge (kil�p�s d�tuma)]), Month([Jogviszony v�ge (kil�p�s d�tuma)]);
