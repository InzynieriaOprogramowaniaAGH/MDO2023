# Zajêcia 02
## Zestawienie œrodowiska
1. Zainstaluj Docker w systemie linuksowym  
Wykonano w poprzednim assignment'cie  
2. Zarejestruj siê w Docker Hub i zapoznaj z sugerowanymi obrazami
3. Pobierz hello-world, busybox, ubuntu lub fedorê, mysql
4. Uruchom busybox
   - Poka¿ efekt uruchomienia kontenera
   - Pod³¹cz siê do kontenera interaktywnie i wywo³aj numer wersji
5. Uruchom "system w kontenerze"
   - Zaprezentuj PID1 w kontenerze i procesy dockera na hoœcie
   - Zaktualizuj pakiety
   - WyjdŸ
6. Poka¿ uruchomione ( != "dzia³aj¹ce" ) kontenery, wyczyœæ je.
7. Wyczyœæ obrazy

## Budowanie programu
1. ZnajdŸ projekt umo¿liwiaj¹cy ³atwe wywo³anie testów jednostkowych
2. PrzeprowadŸ budowê/konfiguracjê œrodowiska
3. Uruchom testy
4. Ponów ten proces w kontenerze
   - Wybierz i uruchom platformê
   - Zaopatrz j¹ w odpowiednie oprogramowanie wstêpne
   - Sklonuj aplikacjê
   - Skonfiguruj œrodowisko i uruchom build
   - Uruchom testy
5. Stwórz Dockerfile, który ma to osi¹gn¹æ
   - Na bazie platformowego obrazu...
   - ...doinstaluj wymagania wstêpne...
   - ...sklonuj repozytorium...
   - ...zbuduj kod
6. Zaprezentuj Dockerfile i jego zbudowanie
7. Na bazie obrazu utworzonego poprzednim dockerfilem stwórz kolejny, który bêdzie uruchamia³ testy
 	* Kontener pierwszy ma przeprowadzaæ wszystkie kroki a¿ do builda
	* Kontener drugi ma bazowaæ na pierwszym i wykonywaæ testy

## Runda bonusowa: kompozycja
1. Zdefiniuj kompozycjê, która stworzy dwie us³ugi
   - Pierwsz¹ na bazie dockerfile'a buduj¹cego
   - Drug¹ na bazie pierwszej
2. Wdró¿ :)

## Przygotowanie do wdro¿enia (deploy): dyskusje
Otrzymany kontener ze zbudowanym programem mo¿e, ale nie musi, byæ ju¿ koñcowym artefaktem procesu przygotowania nowego wydania. Jednak¿e, istnieje szereg okolicznoœci, w których nie ma to sensu. Na przyk³ad gdy chodzi o oprogramowanie interaktywne, które kiepsko dzia³a w kontenerze.

PrzeprowadŸ dyskusjê i wyka¿:
* czy program nadaje siê do wdra¿ania i publikowania jako kontener, czy taki sposób interakcji nadaje siê tylko do builda
* opisz w jaki sposób mia³oby zachodziæ przygotowanie finalnego artefaktu
	* je¿eli program mia³by byæ publikowany jako kontener - czy trzeba go oczyszczaæ z pozosta³oœci po buildzie?
	* A mo¿e dedykowany *deploy-and-publish* by³by oddzieln¹ œcie¿k¹ (inne Dockerfiles)?
	* Czy zbudowany program nale¿a³oby dystrybuowaæ jako pakiet, np. JAR, DEB, RPM, EGG?
	* W jaki sposób zapewniæ taki format? Dodatkowy krok (trzeci kontener)? Jakiœ przyk³ad?
   