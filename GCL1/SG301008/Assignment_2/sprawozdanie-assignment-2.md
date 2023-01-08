# Zajêcia 02  
## Zestawienie œrodowiska  
1. Zainstaluj Docker w systemie linuksowym  
![](./screenshots/001.png)  
2. Zarejestruj siê w Docker Hub i zapoznaj z sugerowanymi obrazami  
![](./screenshots/002.png)  
3. Pobierz hello-world, busybox, ubuntu lub fedorê, mysql  
![](./screenshots/003.png)  
4. Uruchom busybox  
   - Poka¿ efekt uruchomienia kontenera  
![](./screenshots/004.png)  
   - Pod³¹cz siê do kontenera interaktywnie i wywo³aj numer wersji  
![](./screenshots/005.png)  
5. Uruchom "system w kontenerze"  
   - Zaprezentuj PID1 w kontenerze i procesy dockera na hoœcie  
![](./screenshots/007.png)  
![](./screenshots/006.png)  
   - Zaktualizuj pakiety  
![](./screenshots/008.png)  
   - WyjdŸ  
Komenda "exit"  
6. Poka¿ uruchomione ( != "dzia³aj¹ce" ) kontenery, wyczyœæ je.  
![](./screenshots/009.png)  
![](./screenshots/010.png)  
7. Wyczyœæ obrazy  
![](./screenshots/011.png)  

## Budowanie programu  
1. ZnajdŸ projekt umo¿liwiaj¹cy ³atwe wywo³anie testów jednostkowych  
![](./screenshots/012.png)  
2. PrzeprowadŸ budowê/konfiguracjê œrodowiska  
![](./screenshots/013.png)  
![](./screenshots/014.png)  
![](./screenshots/015.png)  
3. Uruchom testy  
![](./screenshots/016.png)  
4. Ponów ten proces w kontenerze  
   - Wybierz i uruchom platformê  
Wybrano ubuntu:latest  
   - Zaopatrz j¹ w odpowiednie oprogramowanie wstêpne  
![](./screenshots/017.png)  
![](./screenshots/018.png)  
   - Sklonuj aplikacjê  
![](./screenshots/019.png)  
   - Skonfiguruj œrodowisko i uruchom build  
![](./screenshots/020.png)  
![](./screenshots/021.png)  
   - Uruchom testy  
![](./screenshots/022.png)  
5. Stwórz Dockerfile, który ma to osi¹gn¹æ  
   - Na bazie platformowego obrazu...  
FROM ubuntu
   - ...doinstaluj wymagania wstêpne...  
RUN apt update && apt -y upgrade && apt install -y git dotnet-sdk-6.0  
   - ...sklonuj repozytorium...  
RUN git clone {repo URL}  
   - ...zbuduj kod  
RUN dotnet restore ./InventoryUniversity.sln  
RUN dotnet build ./InventoryUniversity.sln  
6. Zaprezentuj Dockerfile i jego zbudowanie  
![](./screenshots/023.png)  
![](./screenshots/024.png)  
![](./screenshots/025.png)  
![](./screenshots/026.png)  
7. Na bazie obrazu utworzonego poprzednim dockerfilem stwórz kolejny, który bêdzie uruchamia³ testy  
![](./screenshots/027.png)  
 	* Kontener pierwszy ma przeprowadzaæ wszystkie kroki a¿ do builda  
![](./screenshots/028.png)  
	* Kontener drugi ma bazowaæ na pierwszym i wykonywaæ testy  
![](./screenshots/029.png)  
## Runda bonusowa: kompozycja  
![](./screenshots/030.png)  
![](./screenshots/031.png)  
1. Zdefiniuj kompozycjê, która stworzy dwie us³ugi  
   - Pierwsz¹ na bazie dockerfile'a buduj¹cego  
   - Drug¹ na bazie pierwszej  
![](./screenshots/032.png)  
2. Wdró¿ :)  
![](./screenshots/033.png)     