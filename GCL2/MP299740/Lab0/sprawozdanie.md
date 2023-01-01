# Sprawozdanie z zajęć 1.
Wykonał Michał Prochwicz \
W przeprowadzanym ćwiczeniu użyto Ubuntu, do którego łączono się przez ssh z systemu Windows.
1. Komunikacja ze środowiskiem linuxowym.
* Użyto programu VirtualBox do wirtualizacji systemu linux, zapewniając mu dostęp do sieci lokalnej:\
 ![image](screeny/1_1.PNG)
 * Wtedy system można było znaleźć pod tym adresem:\
 ![image](screeny/1_2.PNG)
 * Pozwoliło to na połączenie przez SSH, z użyciem programu PuTTY:\
 ![image](screeny/1_3.PNG)
 ![image](screeny/1_4.PNG)
  * Możliwe stało się również przesyłanie plików dzięki SFTP, z użyciem programu FileZilla:\
 ![image](screeny/1_5.PNG)
2. Zainstalowano klienta gita i obsługę kluczy SSH:\
 ![image](screeny/2.PNG)
3. Na wirtualnej maszynie sklonowano repozytorium przedmiotu, przy pomocy HTTPS:\
 ![image](screeny/3.PNG)
4. Przy pomocy wygenerowanych kluczy SSH ponownie sklonowano repozytorum, już jako uczestnik organizacji.
 * Utworzono dwa klucze SSH, zabezpieczone hasłem. Najpierw klucz typu ED2559:\
 ![image](screeny/4_1.PNG)
 * Następnie klucz typu ECDSA:\
 ![image](screeny/4_2.PNG)
 * Kolejno dodano klucze do konta GitHub:\
 ![image](screeny/4_3.PNG)
 * Wtedy przy pomocy jednego z nich skopowano repozytorum przez SSH:\
 ![image](screeny/4_4.PNG)
5. Przełączono się na gałąź grupową\
 ![image](screeny/5.PNG)
6. Następnie utworzono własną gałąź\
 ![image](screeny/6.PNG)
7. Praca na nowej gałęzi
 * Na własnej gałęzi utworzono strukturę plików zawierającą plik ze sprawozdaniem oraz katalog ze zrzutami ekranu:\
 ![image](screeny/7_1.PNG)
 ![image](screeny/7_2.PNG)
 * Powyższe zmiany przesłano do zdalnego źródła:\
 ![image](screeny/7_3.PNG) \
 ![image](screeny/7_4.PNG) \
 ![image](screeny/7_5.PNG)
 * Przy próbie wciągnięcia własnej gałęzi do grupowej, wymagane jest zatwierdzenie ich połączenia:\
 ![image](screeny/7_6.PNG)
 * Oznaczenie tagiem ostatniego commita:\
 ![image](screeny/7_7.png)
8. Hooki w lokalnym repozytorium.
 * Utworzony hook, sprawdzający czy wiadomość commita zawiera nazwe przedmiotu:\
 ![image](screeny/7_8.PNG)
 * Oraz taki, który ustawia nazwę przedmiotu jako prefix wiadomości:\
 ![image](screeny/7_9.PNG)
9. Instalacja i sprawdzenie środowiska dockerowego:\
 ![image](screeny/8.PNG)
 ![image](screeny/8_1.PNG) 
