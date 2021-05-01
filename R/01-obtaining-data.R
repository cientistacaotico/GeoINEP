files.raw <- list.files("./Dados")
files <- as.numeric()

for (i in 1:length(files.raw)) {
  files[i] <- paste("./Dados",files.raw[i], sep = "/")
}; rm(files.raw,i)

var <- c("NU_ANO_CENSO","CO_IES","CO_UF","CO_MUNICIPIO","NO_CURSO","TP_SITUACAO","TP_GRAU_ACADEMICO","TP_MODALIDADE_ENSINO","TP_NIVEL_ACADEMICO","IN_GRATUITO","QT_VAGAS_ANUAL_EAD","QT_MATRICULA_TOTAL","QT_INGRESSO_TOTAL","QT_VAGA_TOTAL")

for (i in 1:length(files)) {
  
}

curso <- read.csv(file = files[19], header = TRUE, sep = "|")
curso <- curso[,var]



curso <- read.csv(file = "./Dados/SUP_CURSO_2019.csv", header = T, sep = "|")
curso <- curso[,c("NU_ANO_CENSO","CO_UF","NO_CURSO","TP_SITUACAO","TP_GRAU_ACADEMICO","TP_MODALIDADE_ENSINO","TP_NIVEL_ACADEMICO","IN_GRATUITO","QT_MATRICULA_TOTAL")]
teste <- filter(curso, "TP_GRAU_ACADEMICO" == 2)
# incluir variavel 2

# Pegar dados a partir de 2006 porque fora

curso1 <- read.csv(file = "./Dados/SUP_CURSO_2005d.csv", header = T, sep = "|")
var <- c("NU_ANO_CENSO","CO_IES","CO_UF","CO_MUNICIPIO","NO_CURSO",
         "TP_SITUACAO","TP_GRAU_ACADEMICO","TP_MODALIDADE_ENSINO",
         "TP_NIVEL_ACADEMICO","IN_GRATUITO","QT_VAGAS_ANUAL_EAD",
         "QT_MATRICULA_TOTAL","QT_INGRESSO_TOTAL","QT_VAGA_TOTAL")
curso1 <- curso1[,var]
