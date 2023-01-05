Sprawozdanie 2 Michał Lisak

1. Instalacja dockera (u mnie był zainstalowany wcześniej niestety nie mam screena zestawu poleceń). Wyświetlenie wersji.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-1-1.PNG)

2. Zarejestrowanie na Dockerhub (weryfikacja dwuetapowa).<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-2.PNG)

3. Pobieramy hello-world (pobierany tym samym poleceniem, u mnie był już wcześniej stąd występuje on na samej górze jako pobrany obraz), busybox, ubuntu i mysql.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-3.PNG)

4. Uruchamiamy dockera z obrazu busybox (sudo docker run).<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-4-1.PNG)
  Wpisując parametry -it --rm możemy uruchomić dockera i połączyć się kiedy jest uruchomiony i zatrzymać go uruchomionego.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-4-2.PNG)
  poleceniem exec -it /id kontenera/ możemy połączyć się z nim ponownie. uname -a wywoła numer wersji.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-4-3.PNG)

5. Poniżej wywołujemy polecenia wyświetlenia PID w kontenerze.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-5-1.PNG)
  Procesy dockera na hoście.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-5-2.PNG)

6. Poniżej poleceniem sudo docker ps z filtrem po statusie exited wyświetlamy kontenery które zostały uruchomione i zakończyły pracę. Następnie poleceniem container prune usuwa wszystkie zatrzymane kontenery.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-6.PNG)

7. Poleceniem  docker images wyświetlamy zapisane obrazy. Następnie poleceniem docker image rm /image id/ usuwamy obrazy. Pozostawiłem obrazy wykorzystane do działania jenkinsa.<br> 
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-7.PNG)

8. Do dalszych operacji wybrałem program irssi. Klonuję repozytorium irssi do katalogu test_irssi.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-8.PNG)

  Instalujemy meson'a aby mieć możliwość kompilacji oprogramowania.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-8-1.PNG)

  Standardowo po uruchomienu meson poleceniem meson Build jest duża szansa że nie będziemy mieli wszystkich dependencji. W takim wypadku należy je doinstalować.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-8-3.PNG)
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-8-2.PNG)

  Po zbudowaniu wpisująć ninja -C Build compilujemy nasz program.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-8-5.PNG)
  
  Uruchamiamy testy irssi poleceniem ninja -C Build test. (Testy przechodzą)<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-8-6.PNG)

 9. Później powtarzamy cały ten proces w kontenerze. Polecenia są takie same z tym wyjątkiem, że uruchamiamy interaktywnie kontener i wykonujemy je wszystkie wewnątrz
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-9.PNG)
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-9-1.PNG)
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-9-2.PNG)
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-9-3.PNG)
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-9-4.PNG)
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-9-5.PNG)
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-9-6.PNG)

10. Tworzymy Dockerfile z którego tworzymy obraz dla naszego kontenera (builder.dockerfile). Polecenie docker build z parametrami -f określającym lokalizację dockerfile, -t określającym nazwę utworzonego obrazu.<br>
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-9-7.PNG)
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-9-8.PNG)
![](https://github.com/InzynieriaOprogramowaniaAGH/MDO2023/blob/ML404224/Lab2/devops_screens2/2-9-9.PNG)
