library(tidyverse)
library(readxl)
library(wordcloud)
intern_places <- read_excel("~/Desktop/intern_places.xlsx")

intern_places %>%
  group_by(SHORT) %>%
  summarize(n = n())  -> df

if (require(RColorBrewer)) {
  pal <- brewer.pal(9, "BuGn")
  pal <- pal[-(1:4)]
}
wordcloud(words = df$SHORT, freq = df$n, min.freq = 1, colors = pal,
          scale = c(4, 0.9))
