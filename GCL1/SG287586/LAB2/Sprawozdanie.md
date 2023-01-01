1. Zainstaluj docker- apt install docker, weryfikacja docker --version, systemctl status docker
![first](./first.png)

2. Zarejestruj się w dockerhub- konto założone, nick objdumpr 
![second](./2ss.png)

3. Pobierz hello-world, busybox, ubuntu lub fedorę, mysql- pobieranie za pomocą polecenia docker pull, np. docker pull ubuntu. Weryfikacja obrazów docker images 
![third](./3ss.png)

4. Uruchom busybox- polecenie docker run -it --rm busybox
![fourth](./4ss.png)

	interaktywne łączenie do kontenera- docker ps -a- zwraca id kontenera. Wywołanie numeru wersji uname -a 
![fifth](./5ss.png)

5. Uruchom "system w kontenerze" docker run -i --tty a8780b506fa4 bash
	Zaprezentuj PID1 w kontenerze- docker exec -it 704bad1eb70f ps -ef (id wzięte z polecenia docker ps -a). Procesy dockera na hoście:
		ps -ef | grep docker | grep -v grep

	Zaktualizuj pakiety- docker exec -it 704bad1eb70f apt update, docker exec -it 704bad1eb70f apt upgrade

	Wyjdz- ctrl + d 
![sixth](./6ss.png)


6. Pokaz uruchomione (!= działające kontenery) i wyczyść je: docker ps --filter status=exited; docker container prune
![nineth](./9ss.png)


7. Wyczyść obrazy: docker images (wypisuje id) i docker image rm a3a2968869cf 9d5226e6ce3f a8780b506fa4 feb5d9fea6a5
![tenth](./10ss.png)



-----------------------------BUDOWANIE OBRAZU-----------------------

1. Wybierz projekt umożliwiający łatwie wywołanie testów jednostkowych- wybrany został sqlite- https://github.com/sqlite/sqlite


2. Przeprowadź budowę/konfigurację środowiska: 
	git clone https://github.com/sqlite/sqlite.git - klonownie repozytorium 
![twelveth](./12ss.png)
	
	pobranie dodatkowo potrzebnnych paczek- apt install libz-dev libtool autoconf tcl-dev
![thirteenth](./11ss.png)

	Stworzenie katalogu bld mkdir bld, cd bld
	Konfiguracja: ../configure
![fourteenth](./13ss.png)
![fiveteenth](./14ss.png)

	Budowanie makefile: make 
![sixteenth](./15ss.png)
![seventeenth](./16ss.png)

	Budowanie pliku źródłowego: make sqlite3.c
![eighteenth](./17ss.png)


3. Uruchom testy: make test
	fuzzcheck: 0 errors out of 46217 tests in 18.924 seconds
	SQLite 2022-12-08 15:00:53 a1454744c770a30a32a6d7b7fc59ef7be48cf67348b238540592850d7c2c7757
	0 errors out of 255464 tests on sebastian-VirtualBox Linux 64-bit little-endian
	All memory allocations freed - no leaks
	Maximum memory usage: 9196688 bytes
	Current memory usage: 0 bytes
	Number of malloc()  : -1 calls
![nineteenth](./18ss.png)
![twentyth](./19ss.png)


4. Ponów ten proces w kontenerze:
	Wybierz i uruchom platformę: uruchamiam obraz ubuntu docker run -i -t --net=host ubuntu /bin/bash (bez parametru net miałem problem z pobieraniem paczek z repo)
![twentyfirst](./20ss.png)	

	Zaopatrz ją w odpowiednie oprogramowanie wstępne: apt update, apt -y upgrade, apt install -y libtool autoconf tcl-dev git libz-dev ; useradd -m sebastian
![twentysecond](./21ss.png)

	Sklonuj aplikację: su - sebastian; git clone https://github.com/sqlite/sqlite.git
![twentythird](./22ss.png)

	Skonfiguruj środowsiko i urchom build: tak jak uprzednio mkdir bld, cd bld, ../configure, make, make sqlite3.c
![twentyfourth](./23ss.png)
![twentyfifth](./24ss.png)
![twentysixth](./25ss.png)
![twentyseventh](./26ss.png)
![twentyeigthth](./27ss.png)

	Uruchom testy: make test  
	fuzzcheck: 0 errors out of 46217 tests in 26.612 seconds
	SQLite 3.41.0 2022-12-09 15:26:58 4600a7bbdc4cbe14591d48ea19fe5f7de3a0c10a14cdd97fd51e263a13163d10
	SQLite 2022-12-09 15:26:58 4600a7bbdc4cbe14591d48ea19fe5f7de3a0c10a14cdd97fd51e263a13163d10
	0 errors out of 255442 tests on sebastian-VirtualBox Linux 64-bit little-endian
	All memory allocations freed - no leaks
	Maximum memory usage: 9263480 bytes
	Current memory usage: 0 bytes
	Number of malloc()  : -1 calls


5. Stwórz Dockerfile, który ma to osiągnąc: tworzę docker file DockerfileSqlite nano DockerfileSqlite, buduję image docker build -f "DockerfileSqlite" -t buildsqlite:0.1 .
![twentynineth](./28ss.png)


6. Zaprezentuj Dockerfile i jego zbudowanie- z obrazu ubuntu, aktualizuję i upgraduję wirtualny OS, ustawiam timezone (w jednej z paczek promptuje o to i w przeciwnym 
wypadku proces by czekał na input), dociągam potrzebne paczki, tworzę usera ze środowiskiem bash, ustawiam workdir na jego home i na usera sebastian. Klonuję repo sqlite
i tworzę katalog bld. Ustawiam workdir na sqlite/bld (w obu przypadkach ustawiam by kolejne polecenia odnosiły się do tego usera i do wskazanych katalogów  i żebym mógł
wywołać ../configure), odpalam make i sqlite.c co kończy build
![thirtyth](./29ss.png)

FROM ubuntu

RUN apt update
RUN apt -y upgrade
RUN ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime && echo $CONTAINER_TIMEZONE > /etc/timezone
RUN apt install -y libtool autoconf tcl-dev git libz-dev
RUN useradd -m -s /bin/bash  sebastian
WORKDIR /home/sebastian
USER sebastian
RUN git clone https://github.com/sqlite/sqlite.git ; mkdir sqlite/bld
WORKDIR sqlite/bld

RUN ../configure
RUN make
RUN make sqlite3.c


Efekt działania zadowalający: 
Step 13/13 : RUN make sqlite3.c
 ---> Running in ef44837d825f
make: 'sqlite3.c' is up to date.
Removing intermediate container ef44837d825f
 ---> 882a5ce5966b
Successfully built 882a5ce5966b
Successfully tagged buildsqlite:0.1
![thirtyfirst](./30ss.png)


7. Na bazie obrazu utworzonego poprzednim dockerfilem stwórz kolejny, który będzie uruchamiał testy: tworzę drugi docker file: nano DockerfileSqliteTest.
Buduję image do testów docker build -f "DockerfileSqliteTest" -t testsqlite:0.1 . Prezentacja docker file- korzystam z utworzeonego poprzedni docker image,  odpalam testy. 
Włączenie testów z usera z poprzedniego zbudowanego obrazu i w katalogo roboczym.  
![thirtysecond](./31ss.png)
![thirtythird](./32ss.png)

FROM buildsqlite:0.1

RUN make test


Efekt działa testów również zadowalający:
fuzzcheck: 0 errors out of 46217 tests in 18.741 seconds
SQLite 3.41.0 2022-12-09 15:26:58 4600a7bbdc4cbe14591d48ea19fe5f7de3a0c10a14cdd97fd51e263a13163d10
./sessionfuzz run /home/sebastian/sqlite/bld/../test/sessionfuzz-data1.db
sessionfuzz-data1.db:  339 cases, 0 crashes
SQLite 2022-12-09 15:26:58 4600a7bbdc4cbe14591d48ea19fe5f7de3a0c10a14cdd97fd51e263a13163d10
0 errors out of 255442 tests on b74be03b2f59 Linux 64-bit little-endian
All memory allocations freed - no leaks
Maximum memory usage: 9263400 bytes
Current memory usage: 0 bytes
Number of malloc()  : -1 calls
Removing intermediate container b74be03b2f59
 ---> da1bd1ce0238
Successfully built da1bd1ce0238
Successfully tagged testsqlite:0.1

![thirtyfourth](./33ss.png)
![thirtyfiveth](./34ss.png)



--------------------------------RUNDA BONUSOWA-----------------------

1. Zdefiniuj kompozycję, która stworzy dwie usługi- instaluję dodatek compose 
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

![thirtysixth](./35ss.png)

	Tworzę plik compose nano composebuildsqlite.yml
![thirtyseventh](./36ss.png)

		services:
 			 buildsqlite:
    				image: buildsqlite:0.1
    				stdin_open: true
    				tty: true
  			second:
    				extends:
      					service: buildsqlite
![thirtyeigth](./37ss.png)

2. Wdrażam: docker-compose -f composebuildsqlite.yml up -d
root@sebastian-VirtualBox:/home/sebastian/app# docker-compose -f composebuildsqlite.yml up -d
Creating network "app_default" with the default driver
Creating app_buildsqlite_1 ... done
Creating app_second_1      ... done
root@sebastian-VirtualBox:/home/sebastian/app# docker-compose -f composebuildsqlite.yml ps
      Name          Command   State   Ports
-------------------------------------------
app_buildsqlite_1   bash      Up
app_second_1        bash      Up

![thirtynineth](./38ss.png)
