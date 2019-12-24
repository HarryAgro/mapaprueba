
# Insumo ------------------------------------------------------------------

library(sf) #paquete para leer datos vectoriales
library(mapview) 
library(leaflet)
library(htmlwidgets)
install.packages("paletteer")
library(paletteer)


# mapa interactivo --------------------------------------------------------

shp <- read_sf("parcelas.shp")
mapview()

mapview(shp, zcol=c("N..Parcel", "Quere_min", "Quere_max", "Quere_prom"),
        map.types="Esri.WorldImagery",
        layer.name= "N° - Parcelas")

mapa <- mapview(shp, zcol= c("N..Parcel"),
        map.types="Esri.WorldImagery",
        layer.name="N° - Parcelas",
        lwd =1.5,
        alpha=1,
        alpha.regions=1,
        col.regions= paletteer_dynamic("cartography::green.pal",7))


