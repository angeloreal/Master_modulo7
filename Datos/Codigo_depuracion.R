# Instala as bibliotecas, se necessário
list_packages <- c("readr", "ggplot2", "ggpubr", "tidyverse", "ggQC", "patchwork", "kableExtra", 
                   "scales", "lmtest", "DescTools", "effects", "car", "Hmisc", "readxl", "lorem",
                   "ROCR", "UsingR", "data.table", "stringr", "haven", "rstatix", "knitr", "xtable",
                   "doBy", "dplyr", "lavaan", "psychotools", "ctv", "semTools", "stargazer")
for (package in list_packages) {
  if(!require(package, character.only = TRUE)) {
    install.packages(package, dependencies = TRUE)
    require(package)
  }
}


library(haven)

HCCS <- read_csv("Datos/Health_conditions_among_children_under_age_18__by_selected_characteristics__United_States.csv")