caminho <- "POPULACAO"

print("LEITURA POPULACOES")
pop95 <- read.csv2(paste0(caminho,"/1995.csv"))
#pop96 <- read.csv2(paste0(caminho,"/1996.csv"))
pop97 <- read.csv2(paste0(caminho,"/1997.csv"))
pop98 <- read.csv2(paste0(caminho,"/1998.csv"))
pop99 <- read.csv2(paste0(caminho,"/1999.csv"))
#pop00 <- read.csv2(paste0(caminho,"/2000.csv"))
pop01 <- read.csv2(paste0(caminho,"/2001.csv"))
pop02 <- read.csv2(paste0(caminho,"/2002.csv"))
pop03 <- read.csv2(paste0(caminho,"/2003.csv"))
pop04 <- read.csv2(paste0(caminho,"/2004.csv"))
pop05 <- read.csv2(paste0(caminho,"/2005.csv"))
pop06 <- read.csv2(paste0(caminho,"/2006.csv"))
#pop07 <- read.csv2(paste0(caminho,"/2007.csv"))
pop08 <- read.csv2(paste0(caminho,"/2008.csv"))
pop09 <- read.csv2(paste0(caminho,"/2009.csv"))
#pop10 <- read.csv2(paste0(caminho,"/2010.csv"))
pop11 <- read.csv2(paste0(caminho,"/2011.csv"))
pop12 <- read.csv2(paste0(caminho,"/2012.csv"))
pop13 <- read.csv2(paste0(caminho,"/2013.csv"))
pop14 <- read.csv2(paste0(caminho,"/2014.csv"))
pop15 <- read.csv2(paste0(caminho,"/2015.csv"))

print("AJUSTANDO AS POPULACOES")
##agrupando os anos com pop por municipio
pop01 <- pop01 %>% group_by(SIGLA,COD) %>% summarise(POP2001 = sum(POP.2001)) %>% arrange(COD)
pop02 <- pop02 %>% group_by(SIGLA,COD) %>% summarise(POP2002 = sum(POP.2002)) %>% arrange(COD)
pop03 <- pop03 %>% group_by(SIGLA,COD) %>% summarise(POP2003 = sum(POP.2003)) %>% arrange(COD)
pop04 <- pop04 %>% group_by(SIGLA,COD) %>% summarise(POP2004 = sum(POP.2004)) %>% arrange(COD)
pop05 <- pop05 %>% group_by(SIGLA,COD) %>% summarise(POP2005 = sum(POP.2005)) %>% arrange(COD)
pop06 <- pop06 %>% group_by(SIGLA,COD) %>% summarise(POP2006 = sum(POP.2006)) %>% arrange(COD)
#pop07 <- pop07 %>% group_by(SIGLA,COD) %>% summarise(POP2007 = sum(POP.2007))
pop08 <- pop08 %>% group_by(SIGLA,COD) %>% summarise(POP2008 = sum(POP.2008)) %>% arrange(COD)

##padronizando e adicionando os anos
pop95 <- pop95[,c("UF","COD","POP")]
pop97 <- pop97[,c("UF","COD","POP")]
pop98 <- pop98[,c("UF","COD","POP")]
pop99 <- pop99[,c("UF","COD","POP")]
pop01 <- pop01[,c("SIGLA","COD","POP2001")]
pop02 <- pop02[,c("SIGLA","COD","POP2002")]
pop03 <- pop03[,c("SIGLA","COD","POP2003")]
pop04 <- pop04[,c("SIGLA","COD","POP2004")]
pop05 <- pop05[,c("SIGLA","COD","POP2005")]
pop06 <- pop06[,c("SIGLA","COD","POP2006")]
pop08 <- pop08[,c("SIGLA","COD","POP2008")]
pop09 <- pop09[,c("UF","COD","POP")]
pop11 <- pop11[,c("UF","COD","POP")]
pop12 <- pop12[,c("UF","COD","POP")]
pop13 <- pop13[,c("UF","COD","POP")]
pop14 <- pop14[,c("UF","COD","POP")]
pop15 <- pop15[,c("UF","COD","POP")]

##COLOCANDO NOMES
names(pop01) <- c("UF","COD","POP")
names(pop02) <- c("UF","COD","POP")
names(pop03) <- c("UF","COD","POP")
names(pop04) <- c("UF","COD","POP")
names(pop05) <- c("UF","COD","POP")
names(pop06) <- c("UF","COD","POP")
names(pop08) <- c("UF","COD","POP")

##ORGANIZANDO POR COD
pop95 <- arrange(pop95, COD)
pop97 <- arrange(pop97, COD)
pop98 <- arrange(pop98, COD)
pop99 <- arrange(pop99, COD)
#pop01 <- arrange(pop01, COD)
#pop02 <- arrange(pop02, COD)
#pop03 <- arrange(pop03, COD)
#pop04 <- arrange(pop04, COD)
#pop05 <- arrange(pop05, COD)
#pop06 <- arrange(pop06, COD)
#pop08 <- arrange(pop08, COD)
pop09 <- arrange(pop09, COD)
pop11 <- arrange(pop11, COD)
pop12 <- arrange(pop12, COD)
pop13 <- arrange(pop13, COD)
pop14 <- arrange(pop14, COD)
pop15 <- arrange(pop15, COD)

###média de população para anos faltantes
pop96 <- data.frame(UF = pop97$UF, COD = pop97$COD, 
                    POP = round((pop97$POP+pop95$POP)/2), ANO = "1996")
pop00 <- data.frame(UF = pop99$UF, COD = pop99$COD, 
                    POP = round((pop99$POP+pop01$POP)/2), ANO = "2000")
pop07 <- data.frame(UF = pop06$UF, COD = pop06$COD, 
                    POP = round((pop06$POP+pop08$POP)/2), ANO = "2007")
pop10 <- data.frame(UF = pop09$UF, COD = pop09$COD, 
                    POP = round((pop09$POP+pop11$POP)/2), ANO = "2010")


###ATRIBUINDO OS ANOS NOS DATAFRAMES
pop95$ANO <- "1995"
pop97$ANO <- "1997"
pop98$ANO <- "1998"
pop99$ANO <- "1999"
pop01$ANO <- "2001"
pop02$ANO <- "2002"
pop03$ANO <- "2003"
pop04$ANO <- "2004"
pop05$ANO <- "2005"
pop06$ANO <- "2006"
pop08$ANO <- "2008"
pop09$ANO <- "2009"
pop11$ANO <- "2011"
pop12$ANO <- "2012"
pop13$ANO <- "2013"
pop14$ANO <- "2014"
pop15$ANO <- "2015"

###juntando as populações de cada ano
pop_anos_uf <- rbind.data.frame(pop96, pop97, pop98, pop99, pop00, pop01, 
                                pop02, pop03, pop04, pop05, pop06, pop07, 
                                pop08, pop09, pop10, pop11, pop12, pop13, 
                                pop14, pop15)

rm(pop95, pop96, pop97, pop98, pop99, pop00,
      pop01, pop02, pop03, pop04, pop05, pop06,
      pop07, pop08, pop09, pop10, pop11, pop12,
      pop13, pop14, pop15)

