#### CLIENT
Queste componenti servono per la parte di esposizione delle metriche.

Per installare le compononeti, bisogna eseguire comps_download.sh e scegliere
cio' di cui si ha bisogno.

Diamo la possibilita' di esporre solo le metriche dei container docker
o quelle dell'intera macchina o entrambe.

Nel primo caso verra' installato docker, e verra' scaricata l'immagine
del container cadvisor ovvero google/cadvisor.

Nel secondo caso verra' installato il servizio prometheus-node-exporter.

In caso si vogliano provare entrambe verrano installate tutte le componenti.

Una volta installate, si puo' procedere all'avvio dei servizi in questo modo:



#### cAdvisor 

- aprire un terminale con il path della cartella Docker_test;
- lanciare il comando	
```
    make up_cAdvisor
```
- a questo punto cAdvisor sara' attivo e disponibile all'indirizzo http://localhost:8080
- per terminare l'esecuzione del container cAdvisor lanciare il comando
```
	make down_cAdvisor
```

Per avere dettagli piu' approfinditi su come viene avviato cAdvisor, vedere il file 
docker-compose.yml o consultare questa [pagina](https://github.com/google/cadvisor)



#### Node-exporter

- aprire un terminale con il path della cartella Docker_test;
- lanciare il comando
```
	make up_node_exporter
```
- a questo punto node-exporter sara' attivo e disponibile all'indirizzo http://localhost:9100
- per terminare l'esecuzione del servizio lanciare il comando
```
	make down up_node_exporter
```
Per avere dettagli piu' approfinditi su come viene avviato node-exporter, vedere
il file Makefile, all'interno della cartella NodeExporter_comps e visita questo [sito](https://github.com/prometheus/node_exporter)



