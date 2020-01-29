library(tidyverse)

# Q1
x <- c(162, 168, 177, 147, 189, 171, 173, 168, 178, 184, 165,
       173, 179, 166, 168, 165)
sum(x)
sum(x ^ 2)
ggplot(data.frame(x), aes(x = x)) +
  geom_histogram(aes(y = ..count.. / 10),
                 breaks = c(140, 150, 160, 170, 180, 190),
                 fill = "white",
                 col = "grey50") +
  labs(x = "Height (cm)", y = "Frequency density") +
  theme_classic()

# Q3
x <- c(0, 1, 1.5, 2, 2.5,  3, 4, 5)
y <- c(0, 5, 12, 32,  40, 16, 9, 6)
y <- cumsum(y)
ggplot(data.frame(x, y), aes(x = x, y = y)) +
  geom_smooth(se = FALSE, fullrange = TRUE, span = 0.6) +
  labs(x = "Battery life (t hours)", y = "Frequency") +
  scale_y_continuous(breaks = seq(0, 120, by = 10)) +
  theme_bw()

# Q4
sub1 <- c(56, 49, 63, 58, 52, 50, 57, 61)
sub2 <- c(61, 70, 53, 60, 57, 52, 48, 79, 65)
sub3 <- c(68, 56, 58, 73, 39, 47, 55, 76)
sub4 <- c(45, 46, 42, 48, 40, 45, 44, 41, 47)

paste(sort(sub1), collapse = " & ")
paste(sort(sub2), collapse = " & ")
paste(sort(sub3), collapse = " & ")
paste(sort(sub4), collapse = " & ")

# Q5
y <- c(0, 6, 15, 29, 52, 60)
x <- c(150, 155, 160, 165, 170, 175)
ggplot(data.frame(x, y), aes(x = x, y = y)) +
  geom_smooth(se = FALSE) +
  labs(x = "Height (cm)", y = "Frequency") +
  scale_y_continuous(breaks = seq(0, 60, by = 10)) +
  theme_bw()





