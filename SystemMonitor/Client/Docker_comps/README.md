In questa cartella si trovano gli strumenti per testare il
corretto funionamento dell'infrastruttura appena creata.

Per funzionare c'e' bisogno del README della cartella dal
quale siete venuti. Se avete completato tutto, allora siete
pronti per iniziare.

**Primo passo**
```
make all
```
Verra' scaricata l'immagine di ubuntu da questo
[link](https://hub.docker.com/_/ubuntu), dal quale verranno create
altre tre immagini che saranno gli effettivi test da eseguire.


**Secondo passo**
```
make up_cAdvisor
```
Avviera' un container che ha integrto cAdvisor e sara' gia' pronto
per l'uso. Per verificare che funzioni, aprire il seguente [link](http://localhost:8080).

**Terzo passo**
Ora siamo pronti per effettuare i test.
Si sviluppano su tre rami principali: cpu, ram e disco.
L'obiettivo di questi test e' quello di verificare se cAdvisor
riesce a vedere correttamente le metriche dei container avviati
sulla macchina, quindi andranno a caricare cpu, ram e disco.

Per effettuarli tutti e tre contemporaneamente
```
make all_tests
```

Mentre se si vuole testare una componente in particolare

**CPU**
```
make cpu_test
```

**RAM**
```
make ram_test
```

**DISCO**
```
make disco_test
```

**CONCLUSIONE**
Se avete seguito questi passi, avrete ancora cAdvisor attivo.
Per fermarlo bisogna lanciare il comando
```
make down_cAdvisor
```
che fermera' il container.

Per ripulire il pc dai file di test
```
make cleanup
```
rimuovera' tutte le immagini create per i test, e l'immagine di
ubuntu utilizzata per la loro creazione.

Se si vuole rimuovere anche cAdvisor dalla propria macchina eventualmente lanciare il seguente comado
```
docker image rm -f cAdvisor
```



