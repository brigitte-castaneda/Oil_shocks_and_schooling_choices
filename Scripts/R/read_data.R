options(scipen=999)

# ###############################################
# #  
# ###############################################
bq_auth(token = STEP1)
project_id <- "ph-jabri"
dataset_id <- "05_Oil_Shocks_and_Schooling_Choices"
table_id <- "Oil_shock_on_schooling_choices_sbpro_dw"

data = bigrquery::bq_table_download(
  as_bq_table(
  paste0(  project_id, '.' ,  dataset_id   , '.' ,table_id  )
   ),
  n_max  = Inf )
