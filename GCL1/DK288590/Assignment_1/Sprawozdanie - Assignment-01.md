1.  Wykaż możliwość komunikacji ze środowiskiem linuksowym (powłoka oraz przesyłanie plików)  
![](./ss/Obraz1.png)  
2.  Zainstaluj klienta Git i obsługę kluczy SSH  
![](./ss/Obraz2.png)  
3.  Sklonuj repozytorium https://github.com/InzynieriaOprogramowaniaAGH/MDO2023 za pomocą HTTPS  
![](./ss/Obraz3.png)  
4.  Upewnij się w kwestii dostępu do repozytorium jako uczestnik i sklonuj je za pomocą utworzonego klucza  SSH
	- Utwórz dwa klucze SSH, inne niż RSA, w tym co najmniej jeden zabezpieczony hasłem  
	![](./ss/Obraz4.png)  
    - Skonfiguruj klucz SSH jako metodę dostępu  
	![](./ss/Obraz5.png)  
    ![](./ss/Obraz6.png)  
	- Sklonuj repozytorium z wykorzystaniem protokołu SSH  
	![](./ss/Obraz7.png)  
5. Przełącz się na gałąź swojej grupy  
![](./ss/Obraz8.png)  
6. Utwórz gałąź o nazwie "inicjały & nr indeksu" np. KD232144  
![](./ss/Obraz9.png)  
7. Rozpocznij pracę na nowej gałęzi  
![](./ss/Obraz10.png)  
	- W katalogu właściwym dla grupy utwórz nowy katalog, także o nazwie „inicjały & nr indeksu” np KD232144  
	- W nowym katalogu dodaj plik ze sprawozdaniem  
	- Dodaj zrzuty ekranu  
	![](./ss/Obraz11.png)  
	- Wyślij zmiany do zdalnego źródła  
	![](./ss/Obraz12.png)  
	![](./ss/Obraz13.png)  
	- Spróbuj wciągnąć swoją gałąź do gałęzi grupowej  
	![](./ss/Obraz14.png)  
	- Zaktualizuj sprawozdanie i zrzuty o ten krok i wyślij aktualizację do zdalnego źródła (na swojej gałęzi)  
	![](./ss/Obraz15.png)  
	- Oznacz tagiem ostatni commit i wypchnij go na zdalną gałąź  
	![](./ss/Obraz16.png)  
	- Ustal hook, który będzie sprawdzał, czy wiadomość z commitem zawiera nazwę przedmiotu  
	![](./ss/Obraz17.png)  
	![](./ss/Obraz18.png)  
	- W jaki sposób stworzyć hook, który będzie ustawiał prefiks wiadomości commitu tak, by miał nazwę przedmiotu?  
	![](./ss/Obraz19.png)  
	![](./ss/Obraz20.png)  
	### Weryfikacja działania środowiska konteneryzacji  
1. Rozpocznij przygotowanie środowiska Dockerowego  
    - zapewnij dostęp do maszyny wirtualnej przez zdalny terminal (nie "przez okienko")  
    - jeżeli nie jest stosowane VM (np. WSL, Mac, natywny linux), wykaż ten fakt **dokładnie**  
    - zainstaluj środowisko dockerowe w stosowanym systemie operacyjnym  
2. Działanie środowiska  
    - wykaż, że środowisko dockerowe jest uruchomione i działa (z definicji)  
    - wykaż działanie z sposób praktyczny (z własności):  
      - pobierz obraz dystrybucji linuksowej i uruchom go  
      - wyświetl jego numer wersji  
	  ![](./ss/Obraz21.png)  
	  ![](./ss/Obraz22.png)  
