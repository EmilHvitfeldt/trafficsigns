## code to prepare `signs` dataset goes here

library(tidyverse)

signs_raw <- read_csv("data-raw/skilte_total.csv")

signs <- signs_raw %>%
  relocate(status) %>%
  filter(status %in% c("Opstillet", "Permanent nedtaget")) %>%
  drop_na(status, ends_with("dato")) %>%
  mutate(reg_udfort = as.numeric(difftime(udfort_dato, reg_dato, units = "days"))) %>%
  filter(lubridate::year(udfort_dato) <= 2022,
         udfort_dato > reg_dato) %>%
  select(status, reg_udfort, udfort_dato, reg_dato, bydelnavn, hovedtavle_1,
         undertavle_1_1) %>%
  drop_na()

status_key <- c("Permanent nedtaget" = "taken down", "Opstillet" = "still up")

district_name_key <- c(
  "Vesterbro-Kongens Enghave" = "vesterbro_kongens_enghave",
  "Indre By" = "indre_by",
  "Østerbro" = "osterbro",
  "Nørrebro" = "norrebro",
  "Amager Vest" = "amager_vest",
  "Vanløse" = "vanlose",
  "Valby" = "valby",
  "Amager Øst" = "amager_ost",
  "Bispebjerg" = "bispebjerg",
  "Brønshøj-Husum" = "bronshoj_husum"
)

signs <- signs %>%
  rename(
    date_performed = udfort_dato,
    date_registered = reg_dato,
    time_days = reg_udfort,
    district_name = bydelnavn,
    sign_main = hovedtavle_1,
    sign_sub = undertavle_1_1
  ) %>%
  mutate(
    status = status_key[status],
    district_name = district_name_key[district_name]
  )

usethis::use_data(signs, overwrite = TRUE)
