# 🗺️ Analisi Geospaziale Italia

Analisi geospaziale della densità di popolazione e delle strutture sportive in Italia a livello comunale, sviluppata in R. Il progetto genera mappe interattive nazionali e regionali, categorizza gli impianti sportivi per tipologia e analizza la correlazione tra densità abitativa e disponibilità di strutture sportive, con approfondimento sui capoluoghi di provincia.

---

## 📌 Descrizione

Il progetto integra dati ISTAT sulla popolazione e le basi territoriali comunali con dati OpenStreetMap sulle strutture sportive (scaricati direttamente in R via `osmdata`), costruendo un dataset geospaziale completo a livello di comune italiano. L'analisi esamina la distribuzione della densità abitativa e degli impianti sportivi sul territorio nazionale, la loro correlazione tramite regressione lineare, e le differenze tra capoluoghi di provincia e resto del territorio.

Tra i risultati principali: le piscine sono la struttura sportiva più diffusa a livello nazionale; Napoli è il capoluogo più densamente popolato ma si colloca solo al settimo posto per densità di impianti sportivi; Milano, Firenze e Torino mostrano il miglior equilibrio tra le due densità. Il modello di regressione lineare mostra una correlazione positiva ma con coefficiente di determinazione basso a livello nazionale, che aumenta sensibilmente considerando solo i capoluoghi di provincia.

---

## 🎯 Obiettivi

- Analizzare la distribuzione della densità di popolazione per comune su tutto il territorio italiano
- Mappare la distribuzione delle strutture sportive per comune e per tipologia di impianto
- Costruire un modello di regressione lineare per valutare la correlazione tra densità abitativa e densità di impianti sportivi
- Confrontare i capoluoghi di provincia tra loro e rispetto alle medie nazionali
- Generare mappe tematiche nazionali e regionali per densità di popolazione, densità di impianti e distribuzione per tipologia

---

## 🔬 Metodologia

**Raccolta dati**
I dati sulla popolazione e le basi territoriali comunali (shapefile) sono stati scaricati dal sito ufficiale ISTAT (`POSAS_2024_it_Comuni.csv`, `Com01012024_WGS84.shx`). I dati sulle strutture sportive sono stati scaricati direttamente in R tramite il pacchetto `osmdata`, singolarmente per tipologia di impianto, dai tag OSM.

**Preparazione**
Selezione delle variabili di interesse (superficie comunale, totale abitanti), correzione delle geometrie comunali non valide tramite `lwgeom`, filtraggio delle strutture sportive come punti geospaziali. I dati degli impianti sono stati arricchiti con una colonna che etichetta la tipologia di struttura e integrati in un unico dataset.

**Elaborazione**
Join tra dati di popolazione e basi territoriali; allineamento dei sistemi di riferimento (CRS) e join spaziale con i dati delle strutture sportive. Calcolo delle densità di popolazione e di impianti per comune, conteggio delle strutture per tipologia e numero di comuni in cui sono presenti. Costruzione di un modello di regressione lineare sulla relazione tra le due densità.

**Analisi dei capoluoghi**
Filtraggio del dataset sui capoluoghi di regione e di provincia; confronto dei valori di densità con gli indicatori nazionali; classifiche comparative per densità di popolazione e densità di impianti.

**Visualizzazioni**
Scatter-plot tra le due densità con retta di regressione; grafico della distribuzione delle tipologie di strutture sportive sul territorio; mappe di densità di popolazione e di impianti a livello nazionale (con trasformazione logaritmica per gestire i valori estremi); mappe per regione e per tipologia di impianto.

---

## 📊 Risultati principali

- **Densità di popolazione:** distribuzione eterogenea con valori estremi; le regioni montane (Alpi, Appennini) sono notevolmente meno popolate; le aree più dense si trovano in prossimità delle grandi città e in alcune zone costiere
- **Strutture sportive:** maggiore concentrazione nelle regioni del Nord, ma in parte correlata alla densità abitativa; le aree più densamente popolate mostrano più impianti, ma non sempre in proporzione alla popolazione
- **Correlazione densità-impianti:** il modello lineare mostra una correlazione positiva con R² relativamente basso a livello nazionale; considerando solo i capoluoghi di provincia il coefficiente aumenta, indicando una relazione più forte nei contesti urbani
- **Capoluoghi:** Napoli è il capoluogo più densamente popolato ma si colloca solo al 7º posto per densità di impianti; Milano, Firenze e Torino sono nelle prime posizioni in entrambe le classifiche; Potenza, L'Aquila e Venezia si trovano in fondo. Quasi tutti i capoluoghi registrano densità molto superiori alla media nazionale
- **Tipologie:** le piscine sono la struttura più diffusa a livello nazionale; campi da disc golf, maneggi al coperto e strutture per la danza risultano quasi assenti. Nei centri urbani i campi sportivi e le piste di atletica sono più diffusi delle piscine, riflettendo diverse priorità delle amministrazioni locali

---

## 🛠️ Tecnologie utilizzate

- **R** — elaborazione, analisi e costruzione delle mappe
- **sf** — manipolazione di dati spaziali e join geospaziali
- **osmdata** — download diretto da OpenStreetMap dei dati sulle strutture sportive per tipologia
- **ggplot2** — mappe tematiche, scatter-plot e grafici comparativi
- **dplyr** — gestione e trasformazione dei dati
- **lwgeom** — correzione delle geometrie comunali non valide
- **ISTAT** — basi territoriali comunali e dati di popolazione
- **OpenStreetMap** — dati geospaziali sulle strutture sportive

---

## 📁 Struttura del progetto

```
Analisi_Geospaziale_Italia/
├── README.md
├── Analisi Geospaziale Italia.R
├── Analisi_Geospaziale_Italia_con_export.R
├── Mappe per regione.R
├── Mappe per struttura sportiva in Abruzzo.R
├── Mappe per struttura sportiva in Basilicata.R
├── Mappe per struttura sportiva in Calabria.R
├── Mappe per struttura sportiva in Campania.R
├── Mappe per struttura sportiva in Emilia Romagna.R
├── Mappe per struttura sportiva in Friuli.R
├── Mappe per struttura sportiva in Lazio.R
├── Mappe per struttura sportiva in Liguria.R
├── Mappe per struttura sportiva in Lombardia.R
├── Mappe per struttura sportiva in Molise.R
├── Mappe per struttura sportiva in Piemonte.R
├── Mappe per struttura sportiva in Puglia.R
├── [... altri script regionali ...]
└── Report Analisi Geospaziale.docx
```

> ⚠️ I dataset di input (basi territoriali ISTAT, dati di popolazione, shapefile comunali) non sono inclusi nel repository per ragioni di dimensione. Le fonti sono indicate nella sezione Dati.

---

## 📂 Dati

| Fonte | Descrizione |
|-------|-------------|
| [ISTAT](https://www.istat.it) | Basi territoriali comunali (shapefile WGS84) e dati di popolazione per comune — Censimento 2024 |
| [OpenStreetMap](https://www.openstreetmap.org) | Strutture sportive georeferenziate per tipologia (scaricate via `osmdata` in R) |

---

## 🔗 Link utili

- 🌐 [Sport Business Lab Consultancy](https://www.sblconsultancy.it/)
