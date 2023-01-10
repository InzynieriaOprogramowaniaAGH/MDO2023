1. Zainstaluj Docker w systemie linuksowym

    Wykonano w ostatnim sprawozdaniu
2. Zarejestruj się w Docker Hub i zapoznaj z sugerowanymi obrazami

    Wykonano w ostatnim sprawozdaniu
3. Pobierz hello-world, busybox, ubuntu lub fedorę, mysql
    ![alt text](./screeny/busyboxpull.png)
4. Uruchom busybox
   - Pokaż efekt uruchomienia kontenera
        ![alt text](./screeny/uruchombusybox.png)
5. Uruchom "system w kontenerze"
   - Zaprezentuj PID1 w kontenerze i procesy dockera na hoście
        ![alt text](./screeny/pid1_in_busybox.png)
        ![alt text](./screeny/procesy_dockera_host.png)
6. Pokaż uruchomione ( != "działające" ) kontenery, wyczyść je.
        ![alt text](./screeny/prune_containers.png)
7. Wyczyść obrazy
        ![alt text](./screeny/prune_images.png)
        Wyczyszone obrazy
        ![alt text](./screeny/pruned_images.png)




## Budowanie programu
1. Znajdź projekt umożliwiający łatwe wywołanie testów jednostkowych
        ![alt text](./screeny/sample_project.png)
2. Przeprowadź budowę/konfigurację środowiska
        ![alt text](./screeny/installjdk8.png)

        Sklonowaną aplikacje zbudowano przy pomocy ./mvnw compile

    ![alt text](./screeny/mvwn-build.png)

3. Uruchom testy
        Testy uruchomiono przy pomocy ./mvnw test
        ![alt text](./screeny/unit-test-local.png)
4. Ponów ten proces w kontenerze
   - Wybierz i uruchom platformę
        Stworzone bazowy dockerfile bazujący na ubuntu jammy

        ![alt text](./screeny/dockerfile_base.png)

        Zbudowano go i otagowano jak lab2_base

        ![alt text](./screeny/base_img.png)

     Uruchomiono i zalogowano sie do kontenera przy pomocy
        docker run --rm -it lab2_base
   - Sklonuj aplikację, Skonfiguruj środowisko i uruchom build, Uruchom testy
        ![alt text](./screeny/punkt4_history.png)
5. Stwórz Dockerfile, który ma to osiągnąć
    Stworzono Dockerfile, który bazuje na lokalnej obrazie, który otagowano jako "lab2_base", dodano do niego kroki, które wykonano manualnie w poprzednim punkcie
        ![alt text](./screeny/dockerfile.png)

        Obraz zbudowano komenda "docker build -t punkt4"
        ![alt text](./screeny/docker_buildpkt5.png)

7. Na bazie obrazu utworzonego poprzednim dockerfilem stwórz kolejny, który będzie uruchamiał testy
 	* Kontener pierwszy ma przeprowadzać wszystkie kroki aż do builda
        Ten kontener znajduje sie pod sciezka lab2/punkt8/build_docker
        Bazuje on na obrazie lab2_base i przeprowadza wszystkie kroki co w pt5, tylko, do builda
        
        Obraz otagowano jako "build_base" 

        ![alt text](./screeny/dockerbuidlbase.png)

	* Kontener drugi ma bazować na pierwszym i wykonywać testy
        Dockerfile tego obrazu znajduje sie pod sciezka lab2/punkt8/test_docker
        oraz uzywa jako obraz bazowy obraz "build_base"

        ![alt text](./screeny/test_base_dockerfile.png)

        wynik zbudowania obrazu

        ![alt text](./screeny/dockerbuidlbase.png)
        ![alt text](./screeny/build_test_result.png)




