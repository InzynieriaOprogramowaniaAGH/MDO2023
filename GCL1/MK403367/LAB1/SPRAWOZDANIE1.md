# Sprawozdanie 1
Michał Kutaj
403367

Wykorzystany został natywny system Ubuntu 22, do którego łączę się z sieci lokalnej z macbooka



Instalacja serwera ssh na serwerze oraz konfiguracja zapory
```
sudo apt update
sudo apt install ssh-server
sudo afw allow ssh
sudo systemctl status ssh
```
![image description](./img/01-status-serwera-ssh.png)

Serwerowi został przdzielony adres w sieci lokalnej, mozna go zweryfikować przy pomocy polecenia:
```
ip a
```
![image description](./img/02-adres-serwera.png)

Test połączenia z komputera znajdującego się w sieci lokalnej
![image description](./img/polaczenie-przez-ssh.png)

Test przesyłania plików. Na serwerze w katalogu domowym znajduje się plik `test.txt` zostanie on pobrany przy pomocy komendy:
```
scp maikel@10.0.1.240:~/test.txt ./test.txt
```
![image description](./img/transfer-plikow.png)

2. Polecenia `git` oraz `ssh-keygen` są dostępne w systemie
![image description](./img/git-ssh-keygen.png)

Repo przedmiotu zostało sklonowane przez https
```
git clone https://github.com/InzynieriaOprogramowaniaAGH/MDO2023
```
![image description](./img/clone-https.png)

Zostały utworzone dwa klucze ssh, wykorzystano algortym `ecdsa`
```
ssh-keygen -t ecdsa
```
![image description](./img/klucze-ssh.png)

Przy próbie pobrania repozytorium przedmiotu przez ssh widać brak uprawnień
![image description](./img/clone-ssh-brak-per.png)

Dodano klucz do agenta oraz do konta GitHub
```
ssh-add ~/.ssh/devops_no_pass
```
![image description](./img/ssh-add.png)
![image description](./img/github-klucze.png)

Teraz mozna pobrać repo przez SSH przy uyciu polecenia
```
git clone git@github.com:InzynieriaOprogramowaniaAGH/MDO2023
```
![image description](./img/clone-ssh.png)

Przełączenie się na branch grupy
```
git checkout -b GCL1
```
![image description](./img/git-checkout.png)

Utworzenie nowego brancha z brancha grupowego
```
git checkout -b MK403367 GCL1
```
![image description](./img/git-checkout-nowy-br.png)

Utworzenie katalogu w katalogu grupy i dodanie plików sprawozdania i zrzutów ekranu. Dla wygody edycji sprawozdanie było przygotowane na jabuszku więc pliki zostały przesłane na serwer przed `scp`
![image description](./img/scp-sprawko-img.png)
Widok katalogu na serwerze po przesłaniu plików
![image description](./img/ls-katalogu.png)
Pliki zostały dodane do repoyztorium, został utworzony commit, który został wypchany na serwer
```
git add *
git commit -m "add report with imgs"
git push --set-upstream origin MK403367
```
![image description](./img/push.png)
Aby zmergować branch nalezy przełączyć się na branch, do którego chcemy dograć zmiany. Merge ma być do brancha grupowego więc na ten branch się przełączamy.
```
git checkout GCL1
bit merge MK403367
```
![image description](./img/merge.png)

Aby stworzyć tag nalezy uzyc polecenia
```
git tag TAGMK403367
git push --tags
```
![image description](./img/tag.png)
Git trzyma hooki w katalogu projektu w `.git/hooks`, tam nalezy utworzyć plik o nazwie `commit-msg`, który będzie sprawdzał czy wiadomości dodawane do commitów zawierają nazwę przedmiotu.
Zawartość pliku wygląda następująco. Pod zmienną `$1` jest zapisana ściezka do pliku tymczasowego, w którym siedzi message wpisany przy tworzeniu commit
```bash
#!/bin/bash
 
prefix="DEVOPS"
msg=$(< $1)
if ! [[ $msg == $prefix* ]]; then
    echo "commit must start with \"$prefix\""
    exit 1
fi

exit 0
```

Aby do wiadomości commita został automatycznie dodany prefix nalezy stworzyc kolejny commit `pre-commit-message`. Skrypt wygląda następująco:
```bash
#!/bin/bash

prefix="DEVOPS"
msg=$(< $1)

if ! [[ $msg == $prefix* ]]; then
    sed -i '.bak' "1s/^/$prefix /" $1
fi
```
Po dodaniu hooka został stworzony nastepujący commit
![image description](./img/hook-prefix-commit.png)
Przy uzyciu polecenia `git log` mozemy wyświetlić listę commitów, jak widać do naszego commita został dodany prefix, a wiec hook działa poprawnie
![image description](./img/log-po-hooku.png)

## Weryfikacja środowiska konteneryzacji

Tak jak było to wspomniane wcześniej środowiskiem konreneryzacji jest komputer z natywnym systemem Linux. Instalacja i konfiguracja połączenienia SSH została przedstawiona na początku sprawka. Aby wykazać fakt, ze nie jest wykorzystywana VMka mozna uzyć polecenia 
```
sudo dmidecode -s system-manufacturer
sudo dmidecode | grep Product
``` 
![image description](./img/vm.png)
Mozna zauwazyc, ze producentem sprzetu jest firma MSI. Po nazwach modeli sprzętowych równiez jesteśmy w stanie potrwierdzić "fizycznosc" sprzętu. Gdyby odpalić to samo polecenie na VM output byłby podobny do tego ponizej i przedstawiał producenta oprogramowania wirtualizującego.
![image description](./img/przyklad-vm.png)