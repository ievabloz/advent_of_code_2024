library(stringr)
library(tidyr)
library(dplyr)
library(readr)
input <- read_table("C:/Users/blozn/Desktop/advent_of_code_2024/input", 
                    col_names = FALSE)
stulpai <- data.frame(input)
kiekkartu <- sapply(stulpai$X1, function(x) sum(stulpai$X2 == x))

abu <- data.frame(
  pirmas=stulpai$X1,
  antras=kiekkartu,
  sandaug=stulpai$X1*kiekkartu)

isviso=sum(abu$sandaug)