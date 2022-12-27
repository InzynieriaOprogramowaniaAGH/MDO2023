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
### 3. Uruchom testy
### 4. Ponów ten proces w kontenerze
Wybierz i uruchom platformę
Zaopatrz ją w odpowiednie oprogramowanie wstępne
Sklonuj aplikację
Skonfiguruj środowisko i uruchom build
Uruchom testy
### 5. Stwórz Dockerfile, który ma to osiągnąć
Na bazie platformowego obrazu...
...doinstaluj wymagania wstępne...
...sklonuj repozytorium...
...zbuduj kod
### 6. Zaprezentuj Dockerfile i jego zbudowanie
### 7. Na bazie obrazu utworzonego poprzednim dockerfilem stwórz kolejny, który będzie uruchamiał testy
Kontener pierwszy ma przeprowadzać wszystkie kroki aż do builda
Kontener drugi ma bazować na pierwszym i wykonywać testy