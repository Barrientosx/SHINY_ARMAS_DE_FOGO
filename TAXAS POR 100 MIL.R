####juntando as populações com as mortes
print("ADICIONANDO POPULACOES AS TABELAS DE MORTES")
##mortes geral
Mortes_pop <- merge(Mortes, pop_anos_uf, 
                    by = c("UF", "COD", "ANO"))
Mortes_PAF_pop <- merge(Mortes_PAF, pop_anos_uf, 
                        by = c("UF", "COD", "ANO"))

##mortes acidentes
Mortes_Acidental_pop <- merge(Mortes_Acidental, pop_anos_uf, 
                              by = c("UF", "COD", "ANO"))
Mortes_Acidental_PAF_pop <- merge(Mortes_Acidental_PAF, pop_anos_uf, 
                                  by = c("UF", "COD", "ANO"))

##mortes homicidio
Mortes_Homicidios_pop <- merge(Mortes_Homicidios, pop_anos_uf, 
                               by = c("UF", "COD", "ANO"))
Mortes_Homicidios_PAF_pop <- merge(Mortes_Homicidios_PAF, pop_anos_uf, 
                                   by = c("UF", "COD", "ANO"))

##mortes suicidio
Mortes_Suicidio_pop <- merge(Mortes_Suicidio, pop_anos_uf, 
                             by = c("UF", "COD", "ANO"))
Mortes_Suicidio_PAF_pop <- merge(Mortes_Suicidio_PAF, pop_anos_uf, 
                                 by = c("UF", "COD", "ANO"))

print("CALCULANDO AS TAXAS POR 100 MIL AS TABELAS DE MORTES")
#####ADICIONANDO AS COLUNAS DE MORTES POR  100 MIL HABITANTES
###ufs
##mortes geral
Mortes_pop_uf <- uf_100mil(Mortes_pop)
Mortes_PAF_pop_uf <- uf_100mil(Mortes_PAF_pop)
##mortes acidentes
Mortes_Acidental_pop_uf <- uf_100mil(Mortes_Acidental_pop)
Mortes_Acidental_PAF_pop_uf <- uf_100mil(Mortes_Acidental_PAF_pop)
##mortes homicidio
Mortes_Homicidios_pop_uf <- uf_100mil(Mortes_Homicidios_pop)
Mortes_Homicidios_PAF_pop_uf <- uf_100mil(Mortes_Homicidios_PAF_pop)
##mortes SUICIDIO
Mortes_Suicidio_pop_uf <- uf_100mil(Mortes_Suicidio_pop)
Mortes_Suicidio_PAF_pop_uf <- uf_100mil(Mortes_Suicidio_PAF_pop)

##regioes
##mortes geral
Mortes_pop_reg <- reg_100mil(Mortes_pop)
Mortes_PAF_pop_reg <- reg_100mil(Mortes_PAF_pop)
##mortes acidentes
Mortes_Acidental_pop_reg <- reg_100mil(Mortes_Acidental_pop)
Mortes_Acidental_PAF_pop_reg <- reg_100mil(Mortes_Acidental_PAF_pop)
##mortes homicidio
Mortes_Homicidios_pop_reg <- reg_100mil(Mortes_Homicidios_pop)
Mortes_Homicidios_PAF_pop_reg <- reg_100mil(Mortes_Homicidios_PAF_pop)
##mortes SUICIDIO
Mortes_Suicidio_pop_reg <- reg_100mil(Mortes_Suicidio_pop)
Mortes_Suicidio_PAF_pop_reg <- reg_100mil(Mortes_Suicidio_PAF_pop)

##REMOVENDO
rm(Mortes, Mortes_PAF, Mortes_Acidental, Mortes_Acidental_PAF,
   Mortes_Homicidios, Mortes_Homicidios_PAF, Mortes_Suicidio, Mortes_Suicidio_PAF)






