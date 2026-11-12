library(dplyr)
library(sf)
library(ggplot2)
library(osmdata)
library(lwgeom)

# Importo e sistemo i dati dopo averli salvati nella working directory
getwd()
pop = read.csv("POSAS_2024_it_Comuni.csv", sep=';')
pop = pop[pop$Età==999,c(1,2,20)]
basi_ter = st_read("Com01012024_WGS84.shx")
basi_ter = basi_ter[,c(6,11,12,13)]
colnames(basi_ter)[1] = 'Codice.comune'
join1 = left_join(basi_ter, pop)
join1=join1[-2118,] #NA

#Importo il file con le regioni
regioni=Codici.statistici.e.denominazioni.al.30_06_2024[-1,c(11,16)]
regioni$V16=as.numeric(regioni$V16)
join1=left_join(join1, regioni, by=join_by(Codice.comune==V16))
colnames(join1)[6]='Regione'

#Calcolo la densità
join1 = join1 %>%
         mutate(area_km2 = as.numeric(st_area(.) / 1000000), 
         density = Totale / area_km2, 
         density = as.numeric(density))

#Scarico i dati dal pacchetto osm (altro script)

# Sistemo le geometrie non valide
invalid_geometries = join1[!st_is_valid(join1), ]
print(invalid_geometries)
join1 = st_make_valid(join1)
join1 = join1[st_is_valid(join1), ]
invalid_geometries = join1[!st_is_valid(join1), ]
print(invalid_geometries) # Deve riportare 0 osservazioni

# Verifico che i dati abbiano lo stesso crs e faccio il join
join1 = st_transform(join1, crs = st_crs(sport_points))
sport_points = st_transform(sport_points, crs = st_crs(join1))
sport_per_comune = st_join(sport_points, join1, join = st_within)

# Calcolo la densità delle strutture per comune
strut_per_comune = sport_per_comune %>%
  st_drop_geometry() %>%
  count(Comune) %>% 
  rename(num_strutture = n)
comuni_densità = join1 %>%
  left_join(strut_per_comune, by = "Comune") %>%
  mutate(densità_sportiva = num_strutture / area_km2)

#Calcolo quante strutture per tipo ha ogni comune
sport_per_comune_tipo = sport_per_comune %>%
  st_drop_geometry() %>%
  group_by(Comune, leisure, Regione) %>%
  summarise(totale = n(), .groups = "drop")
print(sport_per_comune_tipo)

#Calcolo quante strutture di ogni tipo ci sono in generale ed in quanti comuni sono presenti
totale_per_tipo = sport_per_comune_tipo %>%
  group_by(leisure) %>%
  summarise(quanti_com = n(), totale=sum(totale)) %>%
  arrange(desc(totale))%>%
  mutate(media=totale/7899, percent=totale/2287771)
print(totale_per_tipo)

#Faccio un confronto tra tutti i capoluoghi di provincia
confronto=comuni_densità %>% 
  select(Comune, Totale, area_km2, density, num_strutture, densità_sportiva) %>%
  filter(Comune=='Milano'|Comune=='Napoli'|Comune=='Torino'|Comune=='Roma'
         |Comune=='Trieste'|Comune=='Venezia'|Comune=='Trento'|Comune=='Aosta'
         |Comune=='Genova'|Comune=='Bologna'|Comune=='Firenze'|Comune=='Perugia'
         |Comune=='Ancona'|Comune=="L'Aquila"|Comune=='Campobasso'|Comune=='Bari'
         |Comune=='Potenza'|Comune=='Catanzaro'|Comune=='Palermo'|Comune=='Cagliari')
View(confronto) #Confronto i valori delle variabili tra queste città e le statistiche generali

summary(comuni_densità)  

confronto1= sport_per_comune_tipo %>%
  filter(Comune=='Milano'|Comune=='Napoli'|Comune=='Torino'|Comune=='Roma'
         |Comune=='Trieste'|Comune=='Venezia'|Comune=='Trento'|Comune=='Aosta'
         |Comune=='Genova'|Comune=='Bologna'|Comune=='Firenze'|Comune=='Perugia'
         |Comune=='Ancona'|Comune=="L'Aquila"|Comune=='Campobasso'|Comune=='Bari'
         |Comune=='Potenza'|Comune=='Catanzaro'|Comune=='Palermo'|Comune=='Cagliari') %>%
  group_by(Comune) %>%
  mutate(percentuale=totale/sum(totale))
View(confronto1) #Confronto le percentuali delle diverse tipologie di impianto sportivo per comune

View(totale_per_tipo)

#Grafico per evidenziare la distribuzione delle tipologie di imprese sportive in Italia
ggplot(totale_per_tipo, aes(x = totale, y=reorder(leisure, totale), fill = leisure)) +
  geom_bar(stat = "identity") +
  labs(title = "Numero totale di spazi sportivi per tipologia",
       x = "Totale",
       y = "Tipologia",
       fill = "Tipologia") +
  theme_minimal()

#Creo la mappa delle densità per comune
join1 %>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  coord_sf(
    xlim = c(7, 18),   
    ylim = c(37, 46.8)) +
  scale_fill_viridis_c(option = 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Italia') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

#Ne faccio una anche con la trasformazione logaritmica per evidenziare meglio le differenze
join1 %>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  coord_sf(
    xlim = c(7, 18),   
    ylim = c(37, 46.8))+
  scale_fill_viridis_c(option = 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2\n(trasformata)',
                       trans='log',
                       breaks = c(10, 150, 3000),
                       labels = c("10", "150", "3000"),
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Italia',
       subtitle= 'con trasformazione in scala logaritmica') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family='serif'),
        plot.subtitle = element_text(hjust = 0.5, family = 'serif'))

#Creo la mappa della densità delle strutture sportive per comune
ggplot(data = comuni_densità) +
  geom_sf(aes(fill = densità_sportiva)) +
  coord_sf(
    xlim = c(7, 18),   
    ylim = c(37, 46.8))+
  scale_fill_viridis_c(option = 'magma', direction = -1,
                      name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Italia') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5,
                                  family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5)) 

#Logaritmica
ggplot(data = comuni_densità) +
  geom_sf(aes(fill = densità_sportiva)) +
  coord_sf(
    xlim = c(7, 18),   
    ylim = c(37, 46.8))+
  scale_fill_viridis_c(option = 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2 (trasformata)",
                      trans='log',
                      breaks = c(0.5, 10, 150),
                      labels = c("0.5", "10", "150"))+
  labs(title= 'Densità di strutture sportive per comune in Italia',
       subtitle= 'con trasformazione in scala logaritmica') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5,
                                  family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5, family = 'serif')) 

#Osservo una possibile relazione tra le 2 densità
mod1=lm(densità_sportiva~density, data=comuni_densità)
summary(mod1) #R2 è piuttosto basso
mod2=lm(densità_sportiva~density, data=confronto)
summary(mod2) #R2 un po' più elevato se prendiamo in considerazione solo i capoluoghi
cor(comuni_densità$densità_sportiva, comuni_densità$density, use = 'complete.obs')
cor(confronto$densità_sportiva, confronto$density, use = 'complete.obs')

#Scatter plot tra densità di popolazione e sportiva
ggplot(comuni_densità, aes(x = density, y = densità_sportiva)) +
  geom_point() +
  geom_smooth(method = "lm", color = "blue", se = FALSE) +
  labs(title = "Relazione tra densità di popolazione e di spazi sportivi",
    x = "Densità di popolazione per km^2)",
    y = "Densità di strutture sportive per Km^2")+
  coord_cartesian(ylim = c(0, 200))+
  theme_minimal()