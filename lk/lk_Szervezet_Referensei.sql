SELECT tSzervezetiEgységek.azSzervezet, tSzervezetiEgységek.Főosztály, tSzervezetiEgységek.Osztály, tSzervezetiEgységek.[Szervezeti egység kódja], ktReferens_SzervezetiEgység.azRef
FROM ktReferens_SzervezetiEgység RIGHT JOIN tSzervezetiEgységek ON ktReferens_SzervezetiEgység.azSzervezet=tSzervezetiEgységek.azSzervezet;
