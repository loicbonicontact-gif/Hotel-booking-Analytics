--"Quel hôtel génère le plus de volume d'activité ?" 
-- "Quel hôtel pratique les tarifs les plus élevés en moyenne ?" 
-- "Quel hôtel a la clientèle la plus fiable, celle qui annule le moins ?" 

SELECT
    hotel,
    COUNT(*) AS nb_reservations,
    ROUND(AVG(adr), 2) AS adr_moyen,
    ROUND(SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS taux_annulation_pct
FROM bookings
GROUP BY hotel;

