#' Quantidade de carros fabricados mundialmente por ano
#'
library(rvest)
library(dplyr)
library (ggplot2)

site <- "https://www.worldometers.info/cars/"
table <- read_html(site) %>%
  html_element("table") %>%
  html_table()
ggplot (table, aes (x= unlist(X1), y= unlist(X2), label = rownames(table), col = "POSIÇÃO MUNDIAL",  title(main = "cars produced in the world"))) +
  geom_point ()+
  geom_label()














