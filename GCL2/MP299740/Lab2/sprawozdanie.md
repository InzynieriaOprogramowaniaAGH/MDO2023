# Sprawozdanie z zajęć 2.
Wykonał Michał Prochwicz
### Zestawienie środowiska Deckerowego
1. Zainstalowano program Docker\
 ![image](screeny/1_1.PNG)
2. Dokonano rejestracji na Docker Hub:\
 ``` https://hub.docker.com/u/mprochwicz ```
3. Pobrano hello-world, busybox, ubuntu, mysql: \
 ![image](screeny/1_3_1.PNG) \
 ![image](screeny/1_3_2.PNG) \
 ![image](screeny/1_3_3.PNG) \
 ![image](screeny/1_3_4.PNG) 
4. Uruchomienie busybox \
 ``` sudo docker run -it busybox ```
 * Efekty uruchomienia:\
 ![image](screeny/1_4_1.PNG) 
 * Wywołanie numeru wersji obrazu:\
 ![image](screeny/1_4_2.PNG) 
5. Uruchomienie "systemu w kontenerze" \
 ``` sudo docker run -it ubuntu ```
 * PID1 w kontenerze:\
 ![image](screeny/1_5_1.PNG) 
 * Procesy Dockera na hoście:\
 ![image](screeny/1_5_2.PNG) 
 * Zaktualizowano pakiety poleceniami:\
  ``` 
   sudo apt upgrade 
   sudo apt update 
  ```
 ![image](screeny/1_5_3.PNG) 
 * Wyjście z kontenera:\
 ![image](screeny/1_5_4.PNG) 
6. Wyświetlono uruchomione kontenery: \
 ``` sudo docker ps -a ``` \
 ![image](screeny/1_6.PNG) 
7. Na koniec wyczyszczono obrazy i kontenery: \
 ``` sudo docker system prune -a ``` \
 ![image](screeny/1_7_1.PNG) \
 ![image](screeny/1_7_2.PNG) 
 
### Budowanie programu
1. Do przeprowadzenia ćwiczenia wykorzystano projekt silnika do gier 2D w języku C++ https://github.com/nCine/nCine
2. Konfiguracja środowiska:
 * Pobranie repozytorium:\
 ``` git clone https://github.com/nCine/nCine ```
 * Instalowanie zależnosci:\
 ``` sudo apt-get install -y libgl1-mesa-dev libglfw3-dev libopenal-dev libx11-dev cmake curl gcc g++ ``` \
 ``` git clone https://github.com/nCine/nCine-data.git ```
 * Budowanie programu:\
  Wykorzystano w tym celu środowisko CMake:
  ``` 
   cd nCine 
   export CC=gcc && export CXX=g++ 
   cmake -B ../nCine-build-Release -D CMAKE_BUILD_TYPE=Release -D NCINE_BUILD_UNIT_TESTS=ON  
  ```
  ![image](screeny/2_2_1.PNG) \
  ![image](screeny/2_2_2.PNG) \
  Tak przygotowane pliki służą do tworzenia Buildu za pomocą polecenia: \
  ``` make -j2 -C ../nCine-build-Release ``` \
  ![image](screeny/2_2_4.PNG) \
3. Testowanie programu:
  ``` 
   cd ../nCine-build-Release 
   ctest -j2 --build-config Release 
  ```
  ![image](screeny/2_3_1.PNG) \
  ![image](screeny/2_3_2.PNG) 
 
4. Cały proces został ponowiony w kontenerze z systemem ubuntu.
 * Kontener uruchomiono z obrazu ubuntu:
 ![image](screeny/4_1.PNG) 
 * Należało zainstalować wymagania wstępne przed uruchomieniem w/w procesu budowania:
 ``` 
  apt-get update 
  apt-get install git -y 
 ```
 * Po tym można postępować podobnie jak na hoście. \
 -- Dla uporządkowania utworzono folder roboczy w katalogu głównym kontenera: \
 ``` mkdir ncine && cd ncine ``` \
  Sklonowano aplikację: \
 ``` git clone https://github.com/nCine/nCine ``` \
 -- Skonfigurowano środowisko (w tym przypadku bez sudo): \
 ![image](screeny/4_2.PNG) \
 ![image](screeny/4_3.PNG) \
 -- Utworzono build: \
 ![image](screeny/4_4_1.PNG) \
 ![image](screeny/4_4_2.PNG) \
 ![image](screeny/4_4_3.PNG) \
 -- Wykonano testy: \
 ![image](screeny/4_5_1.PNG) \
 ![image](screeny/4_5_2.PNG) 
 
5. Stworzono Dockerfile, który wykonuje budowanie programu w kontenerze:\
 ![image](screeny/5.PNG) 
6. Powyższy Dockerfile poprawnie stworzył build, korzystając z podstawowego obrazu ubuntu. Plecenie dockera:\
 ``` sudo docker build . -f Dockerfile -t ncine_build ``` \
 ![image](screeny/6_1.PNG) \
 ![image](screeny/6_2.PNG) \
 ![image](screeny/6_3.PNG) 
7. Na bazie utworzonego w pkt 6. obrazu, wykonano testy w kontenerze utworzonym przez kolejny Dockerfile:\
 ``` sudo docker build . -f Dockerfile2 -t ncine_test ``` \
 ![image](screeny/7_1.PNG) \
 ![image](screeny/7_2.PNG) \
 ![image](screeny/7_3.PNG) \
 ![image](screeny/7_4.PNG) 
