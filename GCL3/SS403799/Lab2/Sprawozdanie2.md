Sprawozdanie 2

## Zestawienie środowiska
1. Obecność Dockera w systemie linuksowym  
  ![text](screenshots/1.png)
2. DockerHub  
  ![text](screenshots/2.png)
3. Pobranie obrazów hello-world, busybox, fedora oraz mysql  
  ![text](screenshots/3.png)
4. Urchomienie busybox  
Efekt uruchomienia  
  ![text](screenshots/4.1.png)
Podłączenie do kontenera i pokazanie numeru wersji  
  ![text](screenshots/4.2.png)
5. Urchomienie systemu w kontenerze  
Prezentacja PID oraz procesów dockera na hoście  
  ![text](screenshots/5.1.png)
6. Wyświetlenie uruchomionych kontenerów oraz wyczyszczenie ich  
  ![text](screenshots/6.png)
  ![text](screenshots/6.2.png)
7. Wyczyszczenie obrazów  
  ![text](screenshots/7.png)

## Budowanie programu
1. Znalezenie projektu umożliwiającego łatwe wywołanie testów jednostkowych 
https://github.com/sunainapai/makesite  
2. Przeprowadzenie budowy oraz konfiguracji środowiska
  ![text](screenshots/build/2.png)
3. Urchomienie testów  
  ![text](screenshots/build/3.png)
4. Ponownie powyższczego procesu w kontenerze  
Uruchomienie kontenera fedory  
  ![text](screenshots/build/4.png)
Zaopatrzenie w oprogramowania wstępne  
  ![text](screenshots/build/4.1.png)
Sklonowanie aplikacji  
  ![text](screenshots/build/4.2.png)
Konfiguracja środowsika i uruchomienie builda  
  ![text](screenshots/build/4.3.png)  
  ![text](screenshots/build/4.4.png)
Uruchomienie testów  
  ![text](screenshots/build/4.5.png)
5. Stworzenie Dockerfila  
  ![text](screenshots/build/5.3.png)

6. Prezentacja procesu budowania  
  ![text](screenshots/build/5.png)
  ![text](screenshots/build/5.1.png)

7. Stworzenie drugiego Dockerfila dla kontenera uruchamijącego testy

## Kompozycja
Zdefiniowanie kompozycji  
  ![text](screenshots/build/6.1.png)  
Wdrożenie   
  ![text](screenshots/build/6.2.png)



