# Sprawozdanie 2 - Wprowadzenie do kontenerów
---

### Zestawienie środowiska
---
1. Zainstaluj Docker w systemie linuksowym

    Instalacja z wykorzystaniem kroków ze strony  
    https://devopscube.com/how-to-install-and-configure-docker/
   
    ![](SCREENY/Docker_1.PNG)
    ![](SCREENY/Docker_2.PNG)
    ![](SCREENY/Docker_3.PNG)
    ![](sSCREENY/docker.PNG)

2. Zarejestruj się w Docker Hub i zapoznaj z sugerowanymi obrazami  
    ![](SCREENY/docker_hub_rejestracja.PNG)

3. Pobierz hello-world, busybox, ubuntu lub fedorę, mysql
    ![](SCREENY/pobrane_pakiety.PNG)

4. Uruchom busybox
    - Pokaż efekt uruchomienia kontenera
        ![](SCREENY/uruchomienie_busybox.PNG)
    - Podłącz się do kontenera interaktywnie i wywołaj numer wersji
        ![](SCREENY/sprawdzenie_wersji.PNG)
        
        Uruchomione kontenery
        ![](SCREENY/uruchomione.PNG)

5. Uruchom "system w kontenerze"
    ![](screeny/system_kontener.PNG)
    - Zaprezentuj PID1 w kontenerze i procesy dockera na hoście
        ![](SCREENY/pid1.PNG)
        ![](SCREENY/procesy_docker.PNG)
    - Zaktualizuj pakiety
        ![](SCREENY/pakiety_akt.PNG)
    - Wyjdź
        ![](SCREENY/wyjscie.PNG)

6. Pokaż uruchomione ( != "działające" ) kontenery, wyczyść je.
    - Uruchomione
        ![](SCREENY/uruchomione_kontenery_.PNG)

    - Czysczenie
        ![](SCREENY/usuniecie_kontenera.PNG)
        Kontener busy_box nie został usuniety ponieważ został nieprawidłowo zamkniety.
        Używam komenty jak niżej by go zamknąć a następnie usuwam.
        ![](SCREENY/zamykanie_usuwanie_busy_box.PNG)

7. Wyczyść obrazy
        ![](SCREENY/usuwane_obrazy.PNG)

---
### Budowanie programu
---
1. Znajdź projekt umożliwiający łatwe wywołanie testów jednostkowych

     Do wykonania użyłem  https://github.com/claudio-giovanni/example-dog-food-calculator.git
    Shelter Food Calculator
    Demo project for a calculator function with unit tests.
    Given the count of dogs and leftover food, calculate the next month's order.
     ![](SCREENY/clone.PNG)

2. Przeprowadź budowę/konfigurację środowiska

    - budowa i konfiguracja srodowiska
     ![](SCREENY/budowa.PNG)

3. Uruchom testy
    ![](SCREENY/testy.PNG)

4. Ponów ten proces w kontenerze
   - Wybranie i uruchomienie platformy
    ![](SCREENY/platforma.PNG)
   - konfigiracja platformy
   ![](SCREENY/1.PNG)
   ![](SCREENY/2.PNG)
   ![](SCREENY/3.PNG)
   ![](SCREENY/4.PNG)
   - git clone w kontenerze
   ![](SCREENY/clone_kontener.PNG)
   - Skonfiguruj środowisko i uruchom build
   ![](SCREENY/konfiguracja_srodowiska_kontener.PNG)
   - Uruchom testy
   ![](SCREENY/testy_kontener.PNG)

5. Stwórz Dockerfile, który ma to osiągnąć
    ![](SCREENY/Dockerfile.PNG)

6. Zaprezentuj Dockerfile i jego zbudowanie
     ![](SCREENY/docker_open.PNG)
     ![](SCREENY/potwierdzenie_budowy.PNG)

7. Na bazie obrazu utworzonego poprzednim dockerfilem stwórz kolejny, który będzie uruchamiał testy
    - zmiana struktury
    ![](SCREENY/zmiana_struktura.PNG)
    ![](SCREENY/docker_testy.PNG)
    ![](SCREENY/testy_koniec.PNG)

    ![](SCREENY/budowa_doc.PNG)

---
### Runda bonusowa: kompozycja
---

1. Zdefiniuj kompozycję, która stworzy dwie usług
![](SCREENY/compose_plugin.PNG)
![](SCREENY/version.PNG)

    Gotowa kompozycja
 ![](SCREENY/gotowa%20kompozycja.PNG)
