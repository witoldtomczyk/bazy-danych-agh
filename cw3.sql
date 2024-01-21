/* brutto i netto
ALTER TABLE "Rozliczenia".pensje
RENAME COLUMN kwota TO kwota_brutto;

ALTER TABLE "Rozliczenia".pensje
ADD COLUMN kwota_netto money;

UPDATE "Rozliczenia".pensje
SET kwota_netto = kwota_brutto * 0.77;

dni i miesiac

SELECT
    data,
	EXTRACT( DOW FROM data) AS dzien_tygodnia,
	DATE_PART('month', data) AS miesiac
FROM
    "Rozliczenia".godziny;

nazwiska i adresy

SELECT pracownicy.nazwisko, pracownicy.adres
FROM "Rozliczenia".pracownicy*/