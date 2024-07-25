## Unravelling the Rule of Law Project
## Leiden University
## July 2024

## Package
library(tidyverse)

## Publications data
publications <- readRDS("data/raw/M_final.rds")

## Reduced data set
data_pubs <- select(publications, PY, TI, AB, SO)

## ID
data_pubs <- cbind(PUB = rownames(data_pubs), data_pubs)
data_pubs <- tibble::rowid_to_column(data_pubs, "ID")

## Dropping NAs
data_pubs <- data_pubs %>% drop_na(AB)

## Batch-01 for Java package
batch_01 <- data_pubs %>% slice(1:1000) %>%
  select(ID, AB)

## Reconvert ID and save
batch_01$ID <- batch_01$ID - 1
write.table(batch_01, file = "data/raw/batch_01.txt", sep = "\t", row.names = FALSE, quote = FALSE, col.names = FALSE)

## Batch-02 for Java package
batch_02 <- data_pubs %>% slice(1001:2000) %>%
  select(ID, AB)

## Reconvert ID and save
batch_02$ID <- batch_02$ID - 1001
write.table(batch_02, file = "data/raw/batch_02.txt", sep = "\t", row.names = FALSE, quote = FALSE, col.names = FALSE)

## Batch-03 for Java package
batch_03 <- data_pubs %>% slice(2001:3000) %>%
  select(ID, AB)

## Reconvert ID and save
batch_03$ID <- batch_03$ID - 2001
write.table(batch_03, file = "data/raw/batch_03.txt", sep = "\t", row.names = FALSE, quote = FALSE, col.names = FALSE)

## Batch-04 for Java package
batch_04 <- data_pubs %>% slice(3001:4000) %>%
  select(ID, AB)

## Reconvert ID and save
batch_04$ID <- batch_04$ID - 3001
write.table(batch_04, file = "data/raw/batch_04.txt", sep = "\t", row.names = FALSE, quote = FALSE, col.names = FALSE)

## Batch-05 for Java package
batch_05 <- data_pubs %>% slice(4001:5000) %>%
  select(ID, AB)

## Reconvert ID and save
batch_05$ID <- batch_05$ID - 4001
write.table(batch_05, file = "data/raw/batch_05.txt", sep = "\t", row.names = FALSE, quote = FALSE, col.names = FALSE)

## Batch-06 for Java package
batch_06 <- data_pubs %>% slice(5001:6000) %>%
  select(ID, AB)

## Reconvert ID and save
batch_06$ID <- batch_06$ID - 5001
write.table(batch_06, file = "data/raw/batch_06.txt", sep = "\t", row.names = FALSE, quote = FALSE, col.names = FALSE)

## Batch-07 for Java package
batch_07 <- data_pubs %>% slice(6001:7000) %>%
  select(ID, AB)

## Reconvert ID and save
batch_07$ID <- batch_07$ID - 6001
write.table(batch_07, file = "data/raw/batch_07.txt", sep = "\t", row.names = FALSE, quote = FALSE, col.names = FALSE)

## Batch-08 for Java package
batch_08 <- data_pubs %>% slice(7001:8000) %>%
  select(ID, AB)

## Reconvert ID and save
batch_08$ID <- batch_08$ID - 7001
write.table(batch_08, file = "data/raw/batch_08.txt", sep = "\t", row.names = FALSE, quote = FALSE, col.names = FALSE)

## Batch-09 for Java package
batch_09 <- data_pubs %>% slice(8001:8605) %>%
  select(ID, AB)

## Reconvert ID and save
batch_09$ID <- batch_09$ID - 8001
write.table(batch_09, file = "data/raw/batch_09.txt", sep = "\t", row.names = FALSE, quote = FALSE, col.names = FALSE)

## Saving data
save.image("data/raw/RoL_publications.RData")
