#Completo i dati mancanti
comuni_densità[1040,6]='Veneto'
comuni_densità[3418,6]='Veneto'
comuni_densità[3470,6]='Veneto'
comuni_densità[3494,6]='Veneto'
comuni_densità[3549,6]='Veneto'
comuni_densità[3713,6]='Veneto'

#MAPPE DENSITA' STRUTTURE SPORTIVE PER REGIONE
comuni_densità %>%
  filter(Regione=='Lombardia') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Lombardia') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=='Liguria') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Liguria') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=="Veneto") %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Veneto') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=='Piemonte') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Piemonte') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=='Friuli-Venezia Giulia') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Friuli Venezia Giulia') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=='Emilia-Romagna') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Emilia Romagna') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))
comuni_densità %>%
  filter(Regione=='Toscana') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Toscana') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=='Umbria') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Umbria') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=='Abruzzo') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Abruzzo') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=='Lazio') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Lazio') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=='Marche') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Marche') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=='Molise') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Molise') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=='Puglia') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Puglia') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=='Basilicata') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Basilicata') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=='Calabria') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Calabria') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=='Campania') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Campania') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=='Sicilia') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Sicilia') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=='Trentino-Alto Adige/S\xfcdtirol') %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= 'Densità di strutture sportive per comune in Trentino Alto Adige') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=="Valle d'Aosta/Vall\xe9e d'Aoste") %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= "Densità di strutture sportive per comune in Valle d'Aosta") +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

comuni_densità %>%
  filter(Regione=="Sardegna") %>%
  ggplot() +
  geom_sf(aes(fill = densità_sportiva)) +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name = "Densità di strutture\nsportive per Km^2")+
  labs(title= "Densità di strutture sportive per comune in Sardegna") +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, family = 'serif'),
        plot.subtitle = element_text(hjust = 0.5))

###########################################################################
#MAPPE DENSITA' POPOLAZIONE PER REGIONE

join1 %>%
  filter(Regione=="Lombardia")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Lombardia') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Veneto")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Veneto') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Piemonte")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Piemonte') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Liguria")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Liguria') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Friuli-Venezia Giulia")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Friuli Venezia Giulia') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Emilia-Romagna")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Emilia Romagna') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Toscana")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Toscana') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Umbria")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Umbria') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Marche")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Marche') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Abruzzo")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Abruzzo') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Lazio")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Lazio') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Molise")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Molise') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Puglia")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Puglia') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Campania")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Campania') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Basilicata")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Basilicata') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Calabria")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Calabria') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Sicilia")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Sicilia') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Sardegna")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Sardegna') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Trentino-Alto Adige/S\xfcdtirol")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= 'Densità di popolazione per comune in Trentino Alto Adige') +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))

join1 %>%
  filter(Regione=="Valle d'Aosta/Vall\xe9e d'Aoste")%>%
  ggplot() +
  geom_sf(aes(fill=density), 
          color="darkgrey") +
  scale_fill_viridis_c(option= 'magma', direction = -1,
                       name= 'Densità di popolazione per Km^2',
                       guide = guide_colorbar(
                         barheigth = unit(5, "cm"),  
                         barwidth = unit(8, "mm"),
                         title.position = "top", 
                         title.hjust = 0.5)) +
  labs(title= "Densità di popolazione per comune in Valle d'Aosta") +
  theme_minimal()+
  theme(legend.text = element_text(size = 11),
        legend.title = element_text(size = 13),
        plot.title = element_text(size = 15, face = "bold", hjust = 0.5, 
                                  family = 'serif'))
