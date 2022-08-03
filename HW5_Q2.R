install.packages("mapdata")
install.packages("ggrepel")
install.packages("dplyr")
library(maps)
library(mapdata)
library(ggplot2)
library(ggrepel)
library(dplyr)

#A
states <- map_data("state")
california <- subset(states, region == "california")
#B
load("/Users/martiewisenbaugh/Downloads/wind_turbines.rda")
wind_ca <- wind_turbines %>% filter(t_state == "CA")
#C, D
ggplot(data=california, mapping= aes(x=long, y=lat)) +
  geom_polygon()+
  geom_point(data=wind_ca, aes(x=xlong, y=ylat), size=0.1, color="#7c6bea")
