Sprawozdanie 1
Michał Lisak

1. Komunikacja z VM jest możeliwa przez ssh (klient putty), a przesyłanie plików dzięki zainstalowanemu na maszynie serwerowi ftp.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-1.PNG)

2. Zainstalowano klienta git<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-2.PNG)

3. Klonowanie repozytorium przy pomocy polecenia git clone przy użyciu https.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-3.PNG)

4. Tworzymy dwa klucze ssh jeden dodatkowo chroniony hasłem.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-4-1.PNG)
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-4-2.PNG)

Dodajemy utworzone klucze do naszego konta w usłudze github.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-4-3.PNG)

Klonujemy nasze repozytorium z wykorzystaniem ustawionych kluczy ssh.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-4-4.PNG)

5. Tworzymy w naszym repozytorium lokalnie nową gałąź o odpowiedniej nazwie )w tym przypadku ML404224).<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-6.PNG)

6. Przechodzimy do naszej gałęzi.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-7-1.PNG)

Tworzymy plik ze sprawozdaniem (na razie jest pusty).<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-7-2.PNG)

Przenosimy do katalogu w naszej gałęzi katalog ze zrzutami wykonanymi do tej pory wykorzystująć menadżera plików.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-7-3.PNG)

Poleceniem git status sprawdzamy zmiany w gałęzi.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-7-4.PNG)

Przygotowujemy commit.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-7-5.PNG)

Poleceniem git push wypychamy naszą gałąź na zdalne repozytorium.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-7-6.PNG)

Tworzymy pull request aby nasze zmiany pojawiły się na github repozytorium.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-7-7.PNG)

Nie możemy wykonać merge z main branchem. Wszystkie zmiany będą pojawiały się w naszej osobnej gałęxi.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-7-8.PNG)

Aktualizujemy nasze repozytorium o zrzuty kolejnych kroków.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-7-9.PNG)

Ustawiamy tag na commit.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-7-10.PNG)

7. Instalujemy i sprawdzamy działanie środowiska dockerowego. W moim przypadku jest tutaj już kontener jenkins, który przygotowałem przy okazji innych zajęć.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-8-1.PNG)

Rejestrujemy konto na dockerhub i konfigurujemy MFA.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab1/devops_screens/1-8-2.PNG)
