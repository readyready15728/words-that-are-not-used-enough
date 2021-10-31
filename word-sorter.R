library(readxl)
library(tidyverse)

tbl <- read_excel('lemmas_60k.xlsx')
least_to_most_common <- tbl %>% arrange(freq) %>% select(lemma)
write_delim(least_to_most_common, 'least-to-most-common.txt', col_names=FALSE)
