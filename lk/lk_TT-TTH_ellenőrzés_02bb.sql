SELECT lk_TT_TTH_ellenőrzés_02b.[Helyettesített adójele] As Adójel, "TT" As Állapot
FROM lk_TT_TTH_ellenőrzés_02b
UNION select
lk_TT_TTH_ellenőrzés_02b_1.[Helyettes adójele], "TTH" As Állapot
FROM  lk_TT_TTH_ellenőrzés_02b AS lk_TT_TTH_ellenőrzés_02b_1;
