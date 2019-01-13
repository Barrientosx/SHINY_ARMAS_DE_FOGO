#######homicidios###########
print("LEITURA MORTES HOMICIDIOS")
####MORTES ACIDENTAIS GERAIS
# Mortes_Homicidios <- read.csv2("Mortes_Homicidios_UF.csv")
# write.csv2(Mortes_Homicidios, "Mortes_Homicidios_UF_UTF8.csv", fileEncoding = "UTF-8")
Mortes_Homicidios <- read.csv2("Mortes_Homicidios_UF_UTF8.csv", encoding = "UTF-8")

###formatacao
Mortes_Homicidios$ESTADOS <- str_trim(Mortes_Homicidios$ESTADOS)
Mortes_Homicidios$UF <- str_trim(Mortes_Homicidios$UF)
Mortes_Homicidios$REGIAO <- str_trim(Mortes_Homicidios$REGIAO)

print("LEITURA MORTES HOMICIDIOS PAF")
####MORTES ACIDENTAIS PAF
# Mortes_Homicidios_PAF <- read.csv2("Mortes_Arma_Fogo_Homicidios_UF.csv")
# write.csv2(Mortes_Homicidios_PAF, "Mortes_Arma_Fogo_Homicidios_UF_UTF8.csv", fileEncoding = "UTF-8")
Mortes_Homicidios_PAF <- read.csv2("Mortes_Arma_Fogo_Homicidios_UF_UTF8.csv", encoding = "UTF-8")

Mortes_Homicidios_PAF$ESTADOS <- str_trim(Mortes_Homicidios_PAF$ESTADOS)
Mortes_Homicidios_PAF$UF <- str_trim(Mortes_Homicidios_PAF$UF)
Mortes_Homicidios_PAF$REGIAO <- str_trim(Mortes_Homicidios_PAF$REGIAO)

print("AJUSTE MORTES HOMICIDIOS")
####melt anos de mortes acidentais
Mortes_Homicidios <- melt(Mortes_Homicidios, 
                         id=c("ESTADOS", "UF", "COD", "REGIAO", "COD.REG."))
Mortes_Homicidios_PAF <- melt(Mortes_Homicidios_PAF, 
                             id=c("ESTADOS", "UF", "COD", "REGIAO", "COD.REG."))

####RENOMEANDO AS COLUNAS 
names(Mortes_Homicidios) <- c("ESTADOS", "UF", "COD", "REGIAO", 
                             "COD.REG.", "ANO", "MORTES")
names(Mortes_Homicidios_PAF) <- c("ESTADOS", "UF", "COD", "REGIAO",
                                 "COD.REG.", "ANO", "MORTES")

####REMOVENDO OS X DOS ANOS
Mortes_Homicidios$ANO <- str_remove(Mortes_Homicidios$ANO, "X")
Mortes_Homicidios_PAF$ANO <- str_remove(Mortes_Homicidios_PAF$ANO, "X")


