# Sprawozdanie 1 - Wprowadzenie, Git, Gałęzie, SSH
### Dawid Skóra, data oddania: 22.12.2022

---

### 1. Wykaż możliwość komunikacji ze środowiskiem linuksowym (powłoka oraz przesyłanie plików)

Polecenie zostało zrealizowane przed pierwszymi zajęciami w ramach przygotowania środowiska, więc poniższe zrzuty ekrany pokazują już działające połączenie SSH.

Odczytany adres IP maszyny wirtualnej
![](./screeny1/adres_IP_VM.png)

Sprawdzenie statusu servera ssh na maszynie virtualnej
![](./screeny1/status_ssh_vm.png)

Możliwe jest połączenie się z maszyną wirtualną poprzez ssh
![](./screeny1/ssh_na_windows.png)

Wysłanie przykładowego pliku pod ssh
![](./screeny1/scp_do_vm.png)

Folder do którego wysłano plik z hosta
![](./screeny1/pliki_po.png)

### 2. Zainstaluj klienta Git i obsługę kluczy SSH

Git i ssh-keygen zostały zainstalowane na maszynie wirtualnej przed wykonaniem zadania
![](./screeny1/zainstalowany_git_i_sshkey.png)

### 3. Sklonuj repozytorium InzynieriaOprogramowaniaAGH/MDO2023 za pomocą HTTPS

Repozytorium zostało sklonowane przez https
![](./screeny1/repo_http.png)

### 4. Upewnij się w kwestii dostępu do repozytorium jako uczestnik i sklonuj je za pomocą utworzonego klucza SSH

Utwórz dwa klucze SSH, inne niż RSA, w tym co najmniej jeden zabezpieczony hasłem
![](./screeny1/klucze_ssh.png)

Skonfiguruj klucz SSH jako metodę dostępu
![](./screeny1/ssh_github.png)

Sklonuj repozytorium z wykorzystaniem protokołu SSH
![](./screeny1/repo_ssh.png)

### 5 & 6. Przełącz się na gałąź swojej grupy && Utwórz gałąź o nazwie "inicjały & nr indeksu" np. KD232144

![](./screeny1/branch.png)

### 7. Rozpocznij pracę na nowej gałęzi

W katalogu właściwym dla grupy utwórz nowy katalog, także o nazwie "inicjały & nr indeksu" np. KD232144
![](./screeny1/dir.png)

W nowym katalogu dodaj plik ze sprawozdaniem
Dodaj zrzuty ekranu
Wyślij zmiany do zdalnego źródła
![](./screeny1/git_add.png)
![](./screeny1/git_push.png)

Spróbuj wciągnąć swoją gałąź do gałęzi grupowej
Zaktualizuj sprawozdanie i zrzuty o ten krok i wyślij aktualizację do zdalnego źródła (na swojej gałęzi)
![](./screeny1/git_merge.png)

Oznacz tagiem ostatni commit i wypchnij go na zdalną gałąź
![](./screeny1/tag.png)

Ustal hook, który będzie sprawdzał, czy wiadomość z commitem zawiera nazwę przedmiotu
![](./screeny1/hook.png)
![](./screeny1/hook_body.png)
![](./screeny1/hook_dziala.png)

W jaki sposób stworzyć hook, który będzie ustawiał prefiks wiadomości commitu tak, by miał nazwę przedmiotu?
![](./screeny1/hook2.png)
![](./screeny1/hook2_log.png)

### 1. Rozpocznij przygotowanie środowiska Dockerowego
![](./screeny1/docker.png)
![](./screeny1/docker_ubuntu.png)
![](./screeny1/docker_dziala.png)
