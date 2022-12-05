# Gelaterie

Esti administratorul bazei de date a unei gelaterii. Baza de date este formata din urmatoarele tabele:
INGHETATA(ID, Denumire, Descriere, Pret)
CLIENT(ID, Nume, Adresa, DataNasterii, E-mail, DataAbonare, Activ)
COMANDA(ID, IdClient, DataComanda, NrClienti, PretTotal)
INGHETATACOMANDATA(ID, IdComanda, IdInghetata, Cantitate, PretTotal)
1. Redacteaza instructiunile SQL care sa realizeze:
a. Creare baza de date Gelaterie
b. Crearea tabelelor din descriere. Utilizeaza Primary Key, Foreign Key, NULL, NOT NULL si alte constrangeri.
c. Inserarea a cel putin 20 linii in fiecare tabel, cu informatii cat mai variate a.i. exercitiile urmatoare sa aiba rezultate.

2. Seful tau doreste sa stie care sunt cele mai putin cumparate produse. Pentru a afla raspunsul utilizeaza subintereogari.
3. Seful tau iti cere sa realizezi un raport cu clientii si comenzile lor in care sa se vada urmatoarele informatii:
a. Nume Client
b. Data Abonare
c. Comanda
d. Data comanda
e. Pret Total
Realizeaza raportul de mai sus intr-o vedere utilizand join intre tabelele necesare. Denumeste coloanele exact ca mai sus.
4. Seful tau doreste sa stie care este preparatul preferat al fiecarui client si sa salveze informatia in
baza de date. In acest scop e nevoie sa adaugi o coloana in tablelul Client in care sa salvezi ID-ul prajiturii preferate.
Produsul preferat este cel la care clientul l-a comandat de cele mai multe ori. Daca sunt doua prajituri care au acelasi 
cel mai mare numar de comandari atunci se va considera favorita ingetata comandata cel mai recent de catre client.
Realizeaza o procedura stocata prin care sa actualizezi tabelului Client conform cu calculul de mai
sus si sa afiseze un mesaj care sa spuna „Clientul cu ID-ul = <IdClient> are ca produs favorit <IdProdus> .”
5. Realizeaza un trigger care pentru fiecare comanda noua a unui client sa lanseze procedura stocata
care calculeaza produsul favorit al clientului.
