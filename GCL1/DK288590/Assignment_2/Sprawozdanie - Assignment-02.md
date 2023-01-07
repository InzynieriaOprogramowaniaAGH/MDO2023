## Zestawienie środowiska  
1. Zainstaluj Docker w systemie linuksowym  
![](./ss/001.png)  
2. Zarejestruj się w Docker Hub i zapoznaj z sugerowanymi obrazami  
![](./ss/002.png)  
3. Pobierz hello-world, busybox, ubuntu lub fedorę, mysql  
![](./ss/003.png)  
4. Uruchom busybox  
   - Pokaż efekt uruchomienia kontenera  
![](./ss/004.png)  
   - Podłącz się do kontenera interaktywnie i wywołaj numer wersji  
![](./ss/005.png)  
5. Uruchom "system w kontenerze"  
   - Zaprezentuj PID1 w kontenerze i procesy dockera na hoście  
![](./ss/007.png)  
![](./ss/006.png)  
   - Zaktualizuj pakiety  
![](./ss/008.png)  
   - Wyjdź  
Komenda "exit"  
6. Pokaż uruchomione ( != "działające" ) kontenery, wyczyść je.  
![](./ss/009.png)  
![](./ss/010.png)  
7. Wyczyść obrazy  
![](./ss/011.png)  

## Budowanie programu  
1. Znajdź projekt umożliwiający łatwe wywołanie testów jednostkowych  
![](./ss/012.png)  
2. Przeprowadź budowę/konfigurację środowiska  
![](./ss/013.png)  
![](./ss/014.png)  
![](./ss/015.png)  
3. Uruchom testy  
![](./ss/016.png)  
4. Ponów ten proces w kontenerze  
   - Wybierz i uruchom platformę  
Wybrano ubuntu:latest  
   - Zaopatrz ją w odpowiednie oprogramowanie wstępne  
![](./ss/017.png)  
![](./ss/018.png)  
   - Sklonuj aplikację  
![](./ss/019.png)  
   - Skonfiguruj środowisko i uruchom build  
![](./ss/020.png)  
![](./ss/021.png)  
   - Uruchom testy  
![](./ss/022.png)  
5. Stwórz Dockerfile, który ma to osiągnąć  
   - Na bazie platformowego obrazu...  
FROM ubuntu
   - ...doinstaluj wymagania wstępne...  
RUN apt update && apt -y upgrade && apt install -y git dotnet-sdk-6.0  
   - ...sklonuj repozytorium...  
RUN git clone {repo URL}  
   - ...zbuduj kod  
RUN dotnet restore ./InventoryUniversity.sln  
RUN dotnet build ./InventoryUniversity.sln  
6. Zaprezentuj Dockerfile i jego zbudowanie  
![](./ss/023.png)  
![](./ss/024.png)  
![](./ss/025.png)  
![](./ss/026.png)  
7. Na bazie obrazu utworzonego poprzednim dockerfilem stwórz kolejny, który będzie uruchamiał testy  
![](./ss/027.png)  
 	* Kontener pierwszy ma przeprowadzać wszystkie kroki aż do builda  
![](./ss/028.png)  
	* Kontener drugi ma bazować na pierwszym i wykonywać testy  
![](./ss/029.png)  
## Runda bonusowa: kompozycja   
1. Zdefiniuj kompozycję, która stworzy dwie usługi  
   - Pierwszą na bazie dockerfile'a budującego  
   - Drugą na bazie pierwszej  
![](./ss/032.png)  
2. Wdróż :)  
![](./ss/033.png)     