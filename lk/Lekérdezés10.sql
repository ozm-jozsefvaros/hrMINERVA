SELECT tEllenőrzőLekérdezések.azEllenőrző, tEllenőrzőLekérdezések.EllenőrzőLekérdezés, tKimenetLapjai.strLapNév, tKimenetLapjai.strStílus, tKimenetLapjai.strLapFajta, tKimenetLapjai.azKimenetLap, tEllenőrzőLekérdezések.Kimenet, tKimenetLapjai.azKimenet
FROM tEllenőrzőLekérdezések LEFT JOIN tKimenetLapjai ON tEllenőrzőLekérdezések.azEllenőrző = tKimenetLapjai.azKimenetForrás
WHERE (((tEllenőrzőLekérdezések.Kimenet)=Yes));
