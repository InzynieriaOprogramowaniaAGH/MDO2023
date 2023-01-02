# Sprawozdanie 2 - Docker
### Dawid Skóra

---

## Wprowadzenie do kontenerów

### 1. Zainstaluj Docker w systemie linuksowym
![](./screeny/docker.png)

### 2. Zarejestruj się w Docker Hub i zapoznaj z sugerowanymi obrazami
![](./screeny/dockerhub.png)

### 3. Pobierz hello-world, busybox, ubuntu lub fedorę, mysql
![](./screeny/images.png)

### 4. Uruchom busybox

Pokaż efekt uruchomienia kontenera
Podłącz się do kontenera interaktywnie i wywołaj numer wersji
![](./screeny/busybox.png)

### 5. Uruchom "system w kontenerze"

![](./screeny/fedora.png)

Zaprezentuj PID1 w kontenerze i procesy dockera na hoście
![](./screeny/ps.png)

### 6. Pokaż uruchomione ( != "działające" ) kontenery, wyczyść je.
![](./screeny/psd.png)

### 7. Wyczyść obrazy

![](./screeny/prune.png)

## Budowanie programu

### 1. Znajdź projekt umożliwiający łatwe wywołanie testów jednostkowych
![](./screeny/proj.png)

### 2. Przeprowadź budowę/konfigurację środowiska
![](./screeny/config.png)
![](./screeny/make.png)

### 3. Uruchom testy
![](./screeny/maketest.png)
![](./screeny/tests.png)
![](./screeny/tests2.png)


### 4. Ponów ten proces w kontenerze
Wybierz i uruchom platformę
![](./screeny/ubuntu.png)

Zaopatrz ją w odpowiednie oprogramowanie wstępne
![](./screeny/lib1.png)
![](./screeny/lib2.png)
![](./screeny/lib3.png)
![](./screeny/lib4.png)

Sklonuj aplikację
![](./screeny/clonein.png)

Skonfiguruj środowisko i uruchom build
![](./screeny/buildin.png)

Uruchom testy
![](./screeny/maketestin.png)

### 5. Stwórz Dockerfile, który ma to osiągnąć
Na bazie platformowego obrazu...
![](./screeny/db1.png)

...doinstaluj wymagania wstępne...
![](./screeny/db2.png)

...sklonuj repozytorium...
![](./screeny/db3.png)

...zbuduj kod
![](./screeny/db4.png)

### 6. Zaprezentuj Dockerfile i jego zbudowanie
![](./screeny/db.png)

![](./screeny/dockerbuild.png)
![](./screeny/buildsuc.png)


### 7. Na bazie obrazu utworzonego poprzednim dockerfilem stwórz kolejny, który będzie uruchamiał testy
Kontener pierwszy ma przeprowadzać wszystkie kroki aż do builda
Kontener drugi ma bazować na pierwszym i wykonywać testy
![](./screeny/testin.png)
![](./screeny/testin1.png)
