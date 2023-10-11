SELECT lk__EltérőBesorolások.SzervezetKód, lk__EltérőBesorolások.Főosztály, lk__EltérőBesorolások.Álláshely, lk__EltérőBesorolások.[Személyi karton], lk__EltérőBesorolások.[Szervezeti struktúra], lk__EltérőBesorolások.[Dolgozó teljes neve], lk__EltérőBesorolások.[Tartós távollét típusa], lk__EltérőBesorolások.[Helyettesített dolgozó neve], lk__EltérőBesorolások.Link, lk__EltérőBesorolások.Ányr_vs_Szervezeti, lk__EltérőBesorolások.Szervezeti_vs_Személyi, lk__EltérőBesorolások.Ány_vs_Személyi, *
FROM lk__EltérőBesorolások
WHERE (((lk__EltérőBesorolások.Ányr_vs_Szervezeti)=False) AND ((lk__EltérőBesorolások.Ány_vs_Személyi)=True))
ORDER BY lk__EltérőBesorolások.SzervezetKód, lk__EltérőBesorolások.[Dolgozó teljes neve];
