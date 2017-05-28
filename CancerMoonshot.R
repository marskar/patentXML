MoonshotNames<-c("Family_ID",
                 "Patent_or_Publication_ID",
                 "Application_Number",
                 "Filing_Date",
                 "Grant_or_Publication_Date",
                 "CPC_Inventive",
                 "IPC_Secondary",
                 "USPC_Current_Original",
                 "Patent_Title",
                 "Drugs_and_Chemistry",
                 "Diagnostic_and_Surgical_Devices",
                 "Radiation_Measurement",
                 "Data_Science",
                 "Food_and_Nutrition",
                 "Model_Systems_and_Animals",
                 "Cells_and_Enzymes",
                 "Other_and_Preclassification",
                 "DNA_RNA_or_Protein_Sequence")
PatentCount<-269353
install.packages("rjson")
library(rjson)

json_file<-"https://developer.uspto.gov/ds-api/cancer_moonshot/v1/records"
json_data <- fromJSON(file=json_file)
