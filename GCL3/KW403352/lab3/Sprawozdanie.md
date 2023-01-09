
# Sprawozdanie z lab. 3 - Pipeline, Jenkins


### Przygotowanie

* Po sprawdzeniu działania kontenerów budującego oraz testującego zabrałem się za instalację Jenkinsa zgodnie z instrukcją z https://www.jenkins.io/doc/book/installing/docker/. Efektem wykonanie poszczególnych komend było stworzenie sieci jenkins do komunikacji oraz dwóch kontenerów dla DIND oraz BlueOcean: 

    ![2023-01-05 18_37_37-DevOps_lab  Uruchomiona  - Oracle VM VirtualBox](https://user-images.githubusercontent.com/85507826/211029784-e69edf75-4b4d-4d9a-901c-0d5282df8fad.png)


* Działający Jenkins: 

    ![2023-01-05 18_38_38-DevOps_lab  Uruchomiona  - Oracle VM VirtualBox](https://user-images.githubusercontent.com/85507826/211029665-23fd696d-0847-4931-9d4a-7be805f19ea5.png)


### Uruchomienie

* Konfiguracja wstępna i pierwsze Uruchomienie

    * Utworzyłem prosty projekt, który wyświetla uname, dla sprawdzenia działania:

      ![2023-01-05 17_48_28-DevOps_lab  Uruchomiona  - Oracle VM VirtualBox](https://user-images.githubusercontent.com/85507826/211029945-c0771bdd-ef1e-49dc-8453-c0b682c362b0.png)

    * Następnie napisałem prosty skrypt zwracający błąd, jeżeli godzina jest nieparzysta:


      ![2023-01-05 17_49_33-DevOps_lab  Uruchomiona  - Oracle VM VirtualBox](https://user-images.githubusercontent.com/85507826/211030114-b82051f1-7b0c-4adc-b0d4-e01765bc2a6d.png)

      
      ![2023-01-05 17_49_06-DevOps_lab  Uruchomiona  - Oracle VM VirtualBox](https://user-images.githubusercontent.com/85507826/211030020-9239fc09-5cd5-492f-9440-3793adb0af93.png)

      

* Stworzenie "prawdziwego" projektu:

    * Użyłem projektu z poprzedniego laboratorium, będącego prostym kalkulatorem z zaimplementowanymi testami jednostkowymi. Jako, że projekt jest prostym programem napisanym w Javie, do buildu można użyć dowolnej dystrybucji Linuxa lub Windowsa, wybór Ubuntu nie jest więc szczególnie umotywowany. Napisany został z użyciem Mavena, zatem w trakcie buildu jest on aplikowany. Konfiguracja projektu wygląda następująco:
      
      ![2023-01-05 17_49_56-DevOps_lab  Uruchomiona  - Oracle VM VirtualBox](https://user-images.githubusercontent.com/85507826/211030177-f1e676e3-8cc4-4e6b-94d9-cc05a4415178.png)
      
    * Wynik działania:

      ![2023-01-05 17_50_28-DevOps_lab  Uruchomiona  - Oracle VM VirtualBox](https://user-images.githubusercontent.com/85507826/211030283-f4638c7a-74ef-4684-9b43-533fc017b21a.png)


### Pipeline

* Definicja pipeline korzystającego z kontenerów celem realizacji kroków build -> test:

    * Konfiguracja Pipeline:
        
        ![2023-01-05 17_51_00-DevOps_lab  Uruchomiona  - Oracle VM VirtualBox](https://user-images.githubusercontent.com/85507826/211030385-6a70f52a-8eaf-48b5-8fff-575a5841ac5b.png)
        ![2023-01-05 17_51_09-DevOps_lab  Uruchomiona  - Oracle VM VirtualBox](https://user-images.githubusercontent.com/85507826/211031480-4dffad06-eeaa-4323-b579-de036c9197ff.png)

        
    * Jenkinsfile użyty w procesie (poniżej opis poszczególnych stage):

        ![2023-01-06 15_23_27-MDO2023_Jenkinsfile at KW403352 · InzynieriaOprogramowaniaAGH_MDO2023](https://user-images.githubusercontent.com/85507826/211031034-c4fe9ae3-cb90-4578-b64c-b2a49241e3fa.png)



        1. Cloning - na tym etapie klonuję repozytorium, które posłuży do pipeline
        2. Build - używam Dockerfile zaszytego w repozytorium do zbudowania projektu, sam Dockerfile jest identyczny, jak w lab2 
        3. Test - w tej fazie przeprowadzane są testy jednostkowe, które sprawdzają poprawność wykonywanych działań
        4. Login - logowanie do Dockerhub za pomocą username oraz tokenu, który dodałem do Global Credentials. Ta faza ma na celu przygotowanie do przesłania artefaktu na Dockerhub w kolejnym kroku pipeline'uname
        5. Publish - zbudowanie artefaku, otagowanie oraz przesłanie go na mojego dockerhuba

    * Jak widać poniżej pipeline zakończony został pomyślnie, a artefakt rzeczywiście pojawił się w moim repozytorium na dockerhub:

        ![2023-01-05 18_17_52-DevOps_lab  Uruchomiona  - Oracle VM VirtualBox](https://user-images.githubusercontent.com/85507826/211031203-7749a769-d33a-401c-9e6e-26dd58a7cf1f.png)

        ![2023-01-05 18_18_01-Docker Hub](https://user-images.githubusercontent.com/85507826/211031251-a640f8dd-7615-4253-bc26-bbc07e67a80c.png)
        
     * Diagram:

        ![2023-01-06 16_12_03-Uml_Diagram -- SmartDraw](https://user-images.githubusercontent.com/85507826/211040522-f5c76c9c-95ed-4762-8e01-c8996bb72408.png)      

        
        
### Wnioski i spostrzeżenia
Podczas wykonywania laboratorium zdarzyło mi się niestety "stawiać" od nowa środowisko Jenkinsa, ponieważ w trakcie pracy zdarzył mi się crash komputera. Kontener z Jenkinsem został usunięty, pozostały po nim sieć oraz wolumeny z konfiguracją, jednak nawet pomimo ponownego postawienia kontenera, z użyciem istniejących wolumenów, nie mogłem się zalogować - username oraz hasło nie działało. Brak wiedzy jak edytować pliki konfiguracyjne wewnątrz wolumenu oraz poczucie straty czasu na przeszukiwaniu sieci w celu naprawy tego stanu rzeczy zmusiły mnie do usunięcia wszystkiego i zaczęcia od początku. Z tego również powodu przy kolejnym zetknięciu się z Jenkinsem raczej skłaniałbym się w stronę instalacji bezpośredniej na serwerze.

        
        







