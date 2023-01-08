# Sprawozdanie Assignment-1
### 2022-12-10
---
1. Wyka¿ mo¿liwoœæ komunikacji ze œrodowiskiem linuksowym (pow³oka oraz przesy³anie plików)  
![](./screenshots/1.png)  
2. Zainstaluj klienta Git i obs³ugê kluczy SSH  
![](./screenshots/2.png)  
3. Sklonuj repozytorium https://github.com/InzynieriaOprogramowaniaAGH/MDO2023 za pomoc¹ HTTPS  
![](./screenshots/3.png)  
4. Upewnij siê w kwestii dostêpu do repozytorium jako uczestnik i sklonuj je za pomoc¹ utworzonego klucza SSH  
   - Utwórz dwa klucze SSH, inne ni¿ RSA, w tym co najmniej jeden zabezpieczony has³em  
![](./screenshots/4.1.png)  
![](./screenshots/4.2.png)  
   - Skonfiguruj klucz SSH jako metodê dostêpu  
![](./screenshots/4.3.png)  
![](./screenshots/4.4.png)  
   - Sklonuj repozytorium z wykorzystaniem protoko³u SSH  
![](./screenshots/4.5.png)  
5. Prze³¹cz siê na ga³¹Ÿ swojej grupy  
![](./screenshots/5.png)  
6. Utwórz ga³¹Ÿ o nazwie "inicja³y & nr indeksu" np. ```KD232144```  
![](./screenshots/6.png)  
7. Rozpocznij pracê na nowej ga³êzi  
![](./screenshots/7.1.png)  
   - W katalogu w³aœciwym dla grupy utwórz nowy katalog, tak¿e o nazwie "inicja³y & nr indeksu" np. ```KD232144```  
   - W nowym katalogu dodaj plik ze sprawozdaniem  
   - Dodaj zrzuty ekranu  
![](./screenshots/7.2.png)  
   - Wyœlij zmiany do zdalnego Ÿród³a  
![](./screenshots/7.3.png)  
![](./screenshots/7.4.png)  
   - Spróbuj wci¹gn¹æ swoj¹ ga³¹Ÿ do ga³êzi grupowej  
![](./screenshots/7.5.png)  
   - Zaktualizuj sprawozdanie i zrzuty o ten krok i wyœlij aktualizacjê do zdalnego Ÿród³a (na swojej ga³êzi)  
![](./screenshots/7.6.png)  
   - Oznacz tagiem ostatni commit i wypchnij go na zdaln¹ ga³¹Ÿ  
![](./screenshots/7.7.png)  
   - Ustal hook, który bêdzie sprawdza³, czy wiadomoœæ z commitem zawiera nazwê przedmiotu  
![](./screenshots/7.8.png)  
![](./screenshots/7.8.1.png)  
   - W jaki sposób stworzyæ hook, który bêdzie *ustawia³* prefiks wiadomoœci commitu tak, by mia³ nazwê przedmiotu?  
![](./screenshots/7.9.png)  
![](./screenshots/7.9.1.png)  
![](./screenshots/7.9.2.png)  
### Weryfikacja dzia³ania œrodowiska konteneryzacji  
1. Rozpocznij przygotowanie œrodowiska Dockerowego  
    * zapewnij dostêp do maszyny wirtualnej przez zdalny terminal (nie "przez okienko")  
    * je¿eli nie jest stosowane VM (np. WSL, Mac, natywny linux), wyka¿ ten fakt **dok³adnie**  
    * zainstaluj œrodowisko dockerowe w stosowanym systemie operacyjnym  
2. Dzia³anie œrodowiska  
    * wyka¿, ¿e œrodowisko dockerowe jest uruchomione i dzia³a (z definicji)  
    * wyka¿ dzia³anie z sposób praktyczny (z w³asnoœci):  
      * pobierz obraz dystrybucji linuksowej i uruchom go  
      * wyœwietl jego numer wersji  
![](./screenshots/8.png)  
5. Za³ó¿ konto na Docker Hub lub zaloguj siê do ju¿ posiadanego. Zadbaj o 2FA.  
![](./screenshots/9.png)  