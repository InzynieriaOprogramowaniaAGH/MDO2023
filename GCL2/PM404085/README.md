# Sprawozdanie 1 - Wprowadzenie, Git, Gałęzie, SSH

### Weryfikacja sprawności środowiska UNIX

1) Wykaż możliwość komunikacji ze środowiskiem linuksowym (powłoka oraz przesyłanie plików)

Zdecydowałem się na wykorzystanie WSL2 oraz dystrybucji Ubuntu do wykonania laboratorium. Połączyłem się z WSLem za pomocą ssh oraz sftp.

![](./img/0.png)

![](./img/1.png)

![](./img/2.png)

2) Zainstaluj klienta Git i obsługę kluczy SSH

![](./img/3.png)

3) Sklonuj repozytorium https://github.com/InzynieriaOprogramowaniaAGH/MDO2023 za pomocą HTTPS

![](./img/4.png)

4) Upewnij się w kwestii dostępu do repozytorium jako uczestnik i sklonuj je za pomocą utworzonego klucza SSH

    * Utwórz dwa klucze SSH, inne niż RSA, w tym co najmniej jeden zabezpieczony hasłem
	
	![](./img/5.png)
	
    * Skonfiguruj klucz SSH jako metodę dostępu
	
	![](./img/6.png)
	
    * Sklonuj repozytorium z wykorzystaniem protokołu SSH
	
	![](./img/7.png)
    
5) Przełącz się na gałąź swojej grupy
6) Utwórz gałąź o nazwie "inicjały & nr indeksu" np. KD232144

![](./img/8.png)

7) Rozpocznij pracę na nowej gałęzi
    * W katalogu właściwym dla grupy utwórz nowy katalog, także o nazwie "inicjały & nr indeksu" np. KD232144
    * W nowym katalogu dodaj plik ze sprawozdaniem
	
	![](./img/9.png)
	
    * Dodaj zrzuty ekranu
	
	![](./img/10.png)
	
    * Wyślij zmiany do zdalnego źródła
	
	![](./img/11.png)
	
	* Spróbuj wciągnąć swoją gałąź do gałęzi grupowej
	
	* Zaktualizuj sprawozdanie i zrzuty o ten krok i wyślij aktualizację do zdalnego źródła (na swojej gałęzi)

	![](./img/12.png)
	
	* Oznacz tagiem ostatni commit i wypchnij go na zdalną gałąź
	
	![](./img/13.png)
	
	* Ustal hook, który będzie sprawdzał, czy wiadomość z commitem zawiera nazwę przedmiotu
	
	![](./img/14.png)
	
	![](./img/15.png)
	
	* W jaki sposób stworzyć hook, który będzie ustawiał prefiks wiadomości commitu tak, by miał nazwę przedmiotu?
	
	Należy do tego wykorzystać hook pre-commit-msg. Skrypt na bazie poprzedniego kodu. Po zamknięciu ifa 'fi' dodajemy komendę: 
	```
	echo "$KEY $START_LINE" > $INPUT_FILE
	```
	
### Weryfikacja działania środowiska konteneryzacji

1) Rozpocznij przygotowanie środowiska Dockerowego

	* zapewnij dostęp do maszyny wirtualnej przez zdalny terminal (nie "przez okienko")
	
	* jeżeli nie jest stosowane VM (np. WSL, Mac, natywny linux), wykaż ten fakt dokładnie
	
	Cały czas jestem połączony z wykorzystaniem ssh do WSL2 z Ubuntu

	* zainstaluj środowisko dockerowe w stosowanym systemie operacyjnym
	
	![](./img/16.png)
	
2) Działanie środowiska
	
	* wykaż, że środowisko dockerowe jest uruchomione i działa (z definicji)
	
	![](./img/18.png)
	
	* wykaż działanie z sposób praktyczny (z własności):
	
		* pobierz obraz dystrybucji linuksowej i uruchom go
		
		![](./img/17.png)
		
		* wyświetl jego numer wersji
		
3) Załóż konto na Docker Hub lub zaloguj się do już posiadanego. Zadbaj o 2FA.

Link do profilu: https://hub.docker.com/u/patrykmurzyn