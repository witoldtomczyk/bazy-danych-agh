--6A)
--SELECT id_pracownika, nazwisko
--FROM ksiegowosc.pracownicy

--6b
--SELECT id_pracownika
--FROM ksiegowosc.pensje, ksiegowosc.wynagrodzenie
--WHERE kwota > 1000 
--and pensje.id_pensji=wynagrodzenie.id_pensji

--6c
--SELECT id_pracownika
--FROM ksiegowosc.wynagrodzenie, ksiegowosc.pensje
--WHERE kwota > 2000
--and id_premii=0
--GROUP BY id_pracownika


--6d
--SELECT *
--FROM ksiegowosc.pracownicy
--WHERE imie like 'j%'

--6e
--SELECT *
--FROM ksiegowosc.pracownicy
--WHERE imie like '%a' and nazwisko like '%n%'

--6f
--SELECT imie, nazwisko, liczba_godzin-160
--FROM ksiegowosc.pracownicy, ksiegowosc.godziny
--WHERE liczba_godzin > 160
--and pracownicy.id_pracownika=godziny.id_pracownika

--6g
--SELECT imie, nazwisko
--FROM ksiegowosc.pensje, ksiegowosc.wynagrodzenie, ksiegowosc.pracownicy
--WHERE kwota > 1500
--and kwota < 3000
--and pensje.id_pensji=wynagrodzenie.id_pensji
--and wynagrodzenie.id_pracownika=pracownicy.id_pracownika
--GROUP BY imie, nazwisko

--6h
--SELECT imie, nazwisko
--FROM ksiegowosc.wynagrodzenie, ksiegowosc.godziny, ksiegowosc.pracownicy
--WHERE liczba_godzin > 160
--and id_premii=0
--GROUP BY imie, nazwisko

--6i
--SELECT * 
--FROM ksiegowosc.wynagrodzenie
--JOIN ksiegowosc.pensje ON wynagrodzenie.id_pensji = pensje.id_pensji
--JOIN ksiegowosc.pracownicy ON wynagrodzenie.id_pracownika = pracownicy.id_pracownika
--ORDER BY pensje.kwota DESC;

--6j
--SELECT imie, nazwisko, (pensje.kwota + premie.kwota) AS wyplata
--FROM ksiegowosc.wynagrodzenie
--JOIN ksiegowosc.pracownicy ON wynagrodzenie.id_pracownika = pracownicy.id_pracownika
--JOIN ksiegowosc.pensje ON wynagrodzenie.id_pensji = pensje.id_pensji
--JOIN ksiegowosc.premie ON wynagrodzenie.id_premii = premie.id_premii
--ORDER BY (pensje.kwota + premie.kwota )DESC;

--6k
--SELECT stanowisko, COUNT(*) AS liczba_pracownikow
--FROM ksiegowosc.wynagrodzenie
--JOIN ksiegowosc.pensje ON wynagrodzenie.id_pensji = pensje.id_pensji
--GROUP BY stanowisko;

--6l
--SELECT stanowisko, AVG(kwota) AS srednia_pensja, MIN(kwota) AS minimalna_pensja, MAX(kwota) AS maksymalna_pensja
--FROM ksiegowosc.pensje
--WHERE stanowisko = 'Kierownik'
--GROUP BY stanowisko;


--6m
--SELECT SUM(pensje.kwota+ premie.kwota) AS suma_wynagrodzen
--FROM ksiegowosc.wynagrodzenie
--JOIN ksiegowosc.pensje ON wynagrodzenie.id_pensji = pensje.id_pensji
--JOIN ksiegowosc.premie ON wynagrodzenie.id_premii = premie.id_premii;

--6n
--SELECT stanowisko, SUM(pensje.kwota+ premie.kwota) AS suma_wynagrodzen
--FROM ksiegowosc.wynagrodzenie
--JOIN ksiegowosc.pensje ON wynagrodzenie.id_pensji = pensje.id_pensji
--JOIN ksiegowosc.premie ON wynagrodzenie.id_premii = premie.id_premii
--GROUP BY stanowisko;

--6o
--SELECT stanowisko, COUNT(id_premii) liczba_premii
--FROM ksiegowosc.wynagrodzenie
--JOIN ksiegowosc.pensje ON wynagrodzenie.id_pensji = pensje.id_pensji
--GROUP BY stanowisko;


