########################################
if (Sys.info()["nodename"] == "Brigittes-MacBook-Air.local" ) {

  General_path = "~/Library/CloudStorage/OneDrive-Universidaddelosandes/Oil_shocks_and_schooling_choices//" 
  data_dir <- paste0(General_path , "Data/")
  graphs_dir <-  paste0(General_path , "Graph/") 
  tables_dir <- paste0(General_path , "Tables/")   
}  else if (Sys.info()["nodename"] ==  "Jaimes-MacBook-Pro.local" ){
  General_path = "~/Library/CloudStorage/OneDrive-PontificiaUniversidadJaveriana/01_research/Oil_shocks_and_schooling_choices/" 
  data_dir <- paste0(General_path , "Data/")
  graphs_dir <-  paste0(General_path , "Graph/") 
  tables_dir <- paste0(General_path , "Tables/")   
}


options(scipen=999)



###########################################################
setwd(General_path)


source("Scripts/R/apis.R", echo=TRUE)
library(progress)

if (1==1) { 
  lista = c('readr','readxl','sqldf','plyr', 
            'did' , 'arrow',  'plyr', 'ggplot2',
            'dplyr','fixest' , 'gargle' , 'stringr'
            , 'bigrquery' , 'scales', 'fixest' , "margins", "jsonlite" , 
            "xtable"
  )
  for (i in 1:length(lista) ) {
    if(lista[i] %in% rownames(installed.packages()) == FALSE) {
      install.packages(lista[i])
    }
    lapply(lista[i], library, character.only = TRUE)
  }
  
  rm(lista)
  rm(i)
}

