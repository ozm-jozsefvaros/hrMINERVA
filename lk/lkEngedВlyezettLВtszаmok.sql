SELECT Replace(Replace([Főosztály/Vezető],"Budapest Főváros Kormányhivatala","BFKH"),"  "," ") AS Főosztály, Unió2122.Osztály, Sum(Unió2122.[2021]) AS SumOf2021, Sum(Unió2122.[2022]) AS SumOf2022, Sum(Unió2122.[2023]) AS SumOf2023
FROM (SELECT tEngedélyezettLétszámok.[Főosztály/Vezető], tEngedélyezettLétszámok.Osztály, tEngedélyezettLétszámok.Létszám AS 2021, 0 AS 2022, 0 AS 2023
FROM tEngedélyezettLétszámok
WHERE (((tEngedélyezettLétszámok.Hatály)=#1/1/2021#))
UNION
SELECT tEngedélyezettLétszámok.[Főosztály/Vezető], tEngedélyezettLétszámok.Osztály, 0 AS 2021, tEngedélyezettLétszámok.Létszám AS 2022, 0 AS 2023
FROM tEngedélyezettLétszámok
WHERE (((tEngedélyezettLétszámok.Hatály)=#1/1/2022#))
UNION
SELECT tEngedélyezettLétszámok.[Főosztály/Vezető], tEngedélyezettLétszámok.Osztály, 0 AS 2021, 0 AS 2022, tEngedélyezettLétszámok.Létszám AS 2023
FROM tEngedélyezettLétszámok
WHERE (((tEngedélyezettLétszámok.Hatály)=#3/25/2023#))
)  AS Unió2122
GROUP BY Unió2122.Osztály, Replace([Főosztály/Vezető],"Budapest Főváros Kormányhivatala","BFKH");
