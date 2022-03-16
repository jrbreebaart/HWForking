library(tidyverse)
library(dplyr)
library(data.table)

diamonds

diamonds%>%
  select(carat,cut,price)%>%
  filter(cut == "Premium")%>%
  filter(price > 7000 & price < 10000)%>%
  arrange(desc(carat))%>%
  slice(1:20)

diamonds <- as.data.table(diamonds)

diamonds1 <- diamonds[, .(carat, cut, price)][cut == "Premium"][price > 7000 & price < 10000][order(-carat)]
head(diamonds1, 20)

