# Crunchbase: https://news.crunchbase.com/news/heres-whos-gone-public-in-2021-so-far/
# ipo data
library(rvest)
library(tidyverse)
library(janitor)
data_url <- "https://www.iposcoop.com/last-100-ipos/"
df <- rvest::read_html(data_url) %>%
  html_table() %>%
  pluck(1) %>%
  janitor::clean_names()

View(df)
