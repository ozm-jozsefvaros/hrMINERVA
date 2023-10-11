SELECT lk__EltérőBesorolások.SzervezetKód, lk__EltérőBesorolások.Főosztály, lk__EltérőBesorolások.Álláshely, lk__EltérőBesorolások.[Személyi karton], lk__EltérőBesorolások.[Szervezeti struktúra], lk__EltérőBesorolások.[Dolgozó teljes neve], lk__EltérőBesorolások.[Tartós távollét típusa], lk__EltérőBesorolások.[Helyettesített dolgozó neve], lk__EltérőBesorolások.Link
FROM lk__EltérőBesorolások
WHERE (((lk__EltérőBesorolások.[Személyi karton])<>[Szervezeti struktúra]) AND ((lk__EltérőBesorolások.Betöltött)=True) AND ((lk__EltérőBesorolások.Szervezeti_vs_Személyi)=False))
ORDER BY lk__EltérőBesorolások.SzervezetKód, lk__EltérőBesorolások.[Dolgozó teljes neve];
