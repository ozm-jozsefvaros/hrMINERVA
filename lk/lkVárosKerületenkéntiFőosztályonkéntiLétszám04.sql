SELECT *
FROM (SELECT 1 as sor, lkVárosKerületenkéntiFőosztályonkéntiLétszám02.*
FROM lkVárosKerületenkéntiFőosztályonkéntiLétszám02
UNION
SELECT 2 as sor, lkVárosKerületenkéntiFőosztályonkéntiLétszám03.*
FROM  lkVárosKerületenkéntiFőosztályonkéntiLétszám03)  AS 02ÉS03;
