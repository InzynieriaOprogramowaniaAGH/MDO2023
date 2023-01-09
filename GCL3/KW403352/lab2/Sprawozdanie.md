Sprawozdanie z lab 2


Zestawienie środowiska

1. Instalacja Dockera w środowisku Linuxowym (w tym przypadku Ubuntu):
	
	![image](https://user-images.githubusercontent.com/85507826/208318019-e3694164-d49a-4fd8-be52-3f0a62fb9bbd.png)
		
2. Pobranie obrazów hello-world, busybox, ubuntu oraz mysql:
		
	![image](https://user-images.githubusercontent.com/85507826/208318037-4d19ac40-3edc-45d3-893b-b3b019e208fa.png)
		
3. Uruchomienie busyboxa oraz interaktywne połączenie i wyświetlenie jego wersji:
	
	![image](https://user-images.githubusercontent.com/85507826/208318075-0fd346d0-4848-4cb2-9363-6503f73a4b4d.png)

		
4. Uruchomienie systemu w kontenerze oraz sprawdzenie PID1:
	
	![image](https://user-images.githubusercontent.com/85507826/208318083-7fcdc1e1-0c7a-47d1-bbb3-8b2458acd10d.png)

	
5. Sprawdzenie procesów dockera na hoście:
	
	![image](https://user-images.githubusercontent.com/85507826/208318094-bc309a58-6c1f-442c-8656-9e0c4ddae179.png)
	
	
6. Aktualizacja pakietów:
	
	![image](https://user-images.githubusercontent.com/85507826/208318107-348653d9-10b5-4d8d-8c3c-b856ea306ef7.png)

	
7. Wyświetlenie uruchomionych kontenerów:
	
	![image](https://user-images.githubusercontent.com/85507826/208318120-1601db61-e9a7-4052-8819-79e8305ce23e.png)

8. Czyszczenie kontenerów:
	
	![image](https://user-images.githubusercontent.com/85507826/208318129-bfdebdb0-051b-4aff-9a95-71364a9e1204.png)

	
Budowanie programu:

1. Do wykonania kolejnej części laboratorium użyłem prostego kalkulatora napisanego w Javie wraz z testami jednostkowymi w jUnit (https://github.com/Wolskyyy/calculator-unit-test-example-java)
	
2. Git clone projektu:
	
	![image](https://user-images.githubusercontent.com/85507826/208318163-46b35357-9172-450e-aeca-b16ea460421c.png)

3. Pobranie Mavena niezbędnego do uruchomienia programu:
	
	![image](https://user-images.githubusercontent.com/85507826/208318172-15fe3a3f-a652-417d-9c6f-4dffe8a32614.png)

4. Uruchomienie programu wraz z testami:
	
	![image](https://user-images.githubusercontent.com/85507826/208318177-37f12069-7cc8-4583-904a-ffec4d519ad9.png)

5. Ponowienie procesu, tym razem z użyciem Dockera do konteneryzacji oraz Ubuntu jako platformy:
	
	![image](https://user-images.githubusercontent.com/85507826/208318193-3141bd4e-bee8-4bf3-a3e5-dddd292a7d78.png)

6. Pobranie niezbędnego oprogramowania wstępnego - w tym przypadku git oraz Maven:
	
	![image](https://user-images.githubusercontent.com/85507826/208318197-cff814fd-7f60-4dd5-b09e-b73a5328f642.png)
	
	![image](https://user-images.githubusercontent.com/85507826/208318256-57e63346-646f-4d5d-8949-dcdae80d5bc3.png)

7. Sklonowanie projektu:
	
	![image](https://user-images.githubusercontent.com/85507826/208318271-223f3dab-3102-44a7-a521-d3b10ad781fb.png)

8. Build:
	
	![image](https://user-images.githubusercontent.com/85507826/208318285-a548e5a3-7426-4adf-ac48-bb3a8a1d03e4.png)
	
	![image](https://user-images.githubusercontent.com/85507826/208318299-7bc3816b-1033-4519-89d5-6bc782f73001.png)


9. Test:
	
	![image](https://user-images.githubusercontent.com/85507826/208318306-650af192-7631-4f67-b588-36d6e696bb92.png)
	
	![image](https://user-images.githubusercontent.com/85507826/208318312-e9a21b75-81c4-48a6-8b0c-adf222847faf.png)


10. Utworzenie Dockerfile:
	
	![image](https://user-images.githubusercontent.com/85507826/208318320-aa84cc55-f224-4ba8-8c7a-4799854a6803.png)

11. Uruchomienie buildu z Dockerfile:
	
	![image](https://user-images.githubusercontent.com/85507826/208318328-bc19504e-0636-45df-a009-4ca97ba5de71.png)
	
	![image](https://user-images.githubusercontent.com/85507826/208318337-d7d78314-8cb4-4675-bed9-ee42e192a9cc.png)


12. Prezentacja Dockerfile oraz jego budowy:
	
	![image](https://user-images.githubusercontent.com/85507826/208318343-098d4e43-eb1c-4f66-8a0b-108139f6a307.png)

13. Utworzenie oraz uruchomienie kolejnego Dockerfile, bazującego na pierwszyem, na potrzeby testów:
	
	![image](https://user-images.githubusercontent.com/85507826/208318375-546991a4-607a-4df1-b54a-daf3c9308f8d.png)
	
	![image](https://user-images.githubusercontent.com/85507826/208318388-f72e1323-57d7-41f5-92c8-f14529739735.png)

Kompozycja 

1. Instalacja docker-compose:
		
	![image](https://user-images.githubusercontent.com/85507826/208318417-793071cc-f3d7-4d11-81ca-de1ba8f629bb.png)
	
2. Utworzenie prostego pliku YAML tworzącego usługi budującą oraz testującą:
	
	![image](https://user-images.githubusercontent.com/85507826/208318435-176f957d-acab-41cb-a933-1398c58c51af.png)

3. Wdrożenie kompozycji:
	
	![image](https://user-images.githubusercontent.com/85507826/208318438-465a02c8-4368-4bf9-a7da-bf838076342c.png)

	
	
		
