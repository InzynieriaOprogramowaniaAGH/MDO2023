# Zaj�cia 02
## Zestawienie �rodowiska
1. Zainstaluj Docker w systemie linuksowym  
Wykonano w poprzednim assignment'cie  
2. Zarejestruj si� w Docker Hub i zapoznaj z sugerowanymi obrazami
3. Pobierz hello-world, busybox, ubuntu lub fedor�, mysql
4. Uruchom busybox
   - Poka� efekt uruchomienia kontenera
   - Pod��cz si� do kontenera interaktywnie i wywo�aj numer wersji
5. Uruchom "system w kontenerze"
   - Zaprezentuj PID1 w kontenerze i procesy dockera na ho�cie
   - Zaktualizuj pakiety
   - Wyjd�
6. Poka� uruchomione ( != "dzia�aj�ce" ) kontenery, wyczy�� je.
7. Wyczy�� obrazy

## Budowanie programu
1. Znajd� projekt umo�liwiaj�cy �atwe wywo�anie test�w jednostkowych
2. Przeprowad� budow�/konfiguracj� �rodowiska
3. Uruchom testy
4. Pon�w ten proces w kontenerze
   - Wybierz i uruchom platform�
   - Zaopatrz j� w odpowiednie oprogramowanie wst�pne
   - Sklonuj aplikacj�
   - Skonfiguruj �rodowisko i uruchom build
   - Uruchom testy
5. Stw�rz Dockerfile, kt�ry ma to osi�gn��
   - Na bazie platformowego obrazu...
   - ...doinstaluj wymagania wst�pne...
   - ...sklonuj repozytorium...
   - ...zbuduj kod
6. Zaprezentuj Dockerfile i jego zbudowanie
7. Na bazie obrazu utworzonego poprzednim dockerfilem stw�rz kolejny, kt�ry b�dzie uruchamia� testy
 	* Kontener pierwszy ma przeprowadza� wszystkie kroki a� do builda
	* Kontener drugi ma bazowa� na pierwszym i wykonywa� testy

## Runda bonusowa: kompozycja
1. Zdefiniuj kompozycj�, kt�ra stworzy dwie us�ugi
   - Pierwsz� na bazie dockerfile'a buduj�cego
   - Drug� na bazie pierwszej
2. Wdr� :)

## Przygotowanie do wdro�enia (deploy): dyskusje
Otrzymany kontener ze zbudowanym programem mo�e, ale nie musi, by� ju� ko�cowym artefaktem procesu przygotowania nowego wydania. Jednak�e, istnieje szereg okoliczno�ci, w kt�rych nie ma to sensu. Na przyk�ad gdy chodzi o oprogramowanie interaktywne, kt�re kiepsko dzia�a w kontenerze.

Przeprowad� dyskusj� i wyka�:
* czy program nadaje si� do wdra�ania i publikowania jako kontener, czy taki spos�b interakcji nadaje si� tylko do builda
* opisz w jaki spos�b mia�oby zachodzi� przygotowanie finalnego artefaktu
	* je�eli program mia�by by� publikowany jako kontener - czy trzeba go oczyszcza� z pozosta�o�ci po buildzie?
	* A mo�e dedykowany *deploy-and-publish* by�by oddzieln� �cie�k� (inne Dockerfiles)?
	* Czy zbudowany program nale�a�oby dystrybuowa� jako pakiet, np. JAR, DEB, RPM, EGG?
	* W jaki spos�b zapewni� taki format? Dodatkowy krok (trzeci kontener)? Jaki� przyk�ad?
   