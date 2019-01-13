#######SUICIDIOS###########
print("LEITURA MORTES SUICIDIOS")
####MORTES SUICIDIOS GERAIS
# Mortes_Suicidio <- read.csv2("Mortes_Suicidio_UF.csv")
# write.csv2(Mortes_Suicidio, "Mortes_Suicidio_UF_UTF8.csv", fileEncoding = "UTF-8")
Mortes_Suicidio <- read.csv2("Mortes_Suicidio_UF_UTF8.csv", encoding = "UTF-8")

###formatacao
Mortes_Suicidio$ESTADOS <- str_trim(Mortes_Suicidio$ESTADOS)
Mortes_Suicidio$UF <- str_trim(Mortes_Suicidio$UF)
Mortes_Suicidio$REGIAO <- str_trim(Mortes_Suicidio$REGIAO)

print("LEITURA MORTES SUICIDIOS PAF")
####MORTES SUICIDIOS PAF
# Mortes_Suicidio_PAF <- read.csv2("Mortes_Arma_Fogo_Suicidio_UF.csv")
# write.csv2(Mortes_Suicidio_PAF, "Mortes_Arma_Fogo_Suicidio_UF_UTF8.csv", fileEncoding = "UTF-8")
Mortes_Suicidio_PAF <- read.csv2("Mortes_Arma_Fogo_Suicidio_UF_UTF8.csv", encoding = "UTF-8")

Mortes_Suicidio_PAF$ESTADOS <- str_trim(Mortes_Suicidio$ESTADOS)
Mortes_Suicidio_PAF$UF <- str_trim(Mortes_Suicidio_PAF$UF)
Mortes_Suicidio_PAF$REGIAO <- str_trim(Mortes_Suicidio_PAF$REGIAO)

print("AJUSTE MORTES SUICIDIOS")
####melt anos de mortes SUICIDIOS
Mortes_Suicidio <- melt(Mortes_Suicidio, 
                         id=c("ESTADOS", "UF", "COD", "REGIAO", "COD.REG."))
Mortes_Suicidio_PAF <- melt(Mortes_Suicidio_PAF, 
                             id=c("ESTADOS", "UF", "COD", "REGIAO", "COD.REG."))

####RENOMEANDO AS COLUNAS 
names(Mortes_Suicidio) <- c("ESTADOS", "UF", "COD", "REGIAO", 
                             "COD.REG.", "ANO", "MORTES")
names(Mortes_Suicidio_PAF) <- c("ESTADOS", "UF", "COD", "REGIAO",
                                 "COD.REG.", "ANO", "MORTES")

####REMOVENDO OS X DOS ANOS
Mortes_Suicidio$ANO <- str_remove(Mortes_Suicidio$ANO, "X")
Mortes_Suicidio_PAF$ANO <- str_remove(Mortes_Suicidio_PAF$ANO, "X")

