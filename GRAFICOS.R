###gráficos
print("GRÁFICOS DE MORTES")
#####GRAFICOS DOS INDICADORES por região
Mortes_graf_reg <- graf_reg(Mortes_pop_reg, "MORTES", "MORTES")
Mortes_Acidental_graf_reg <- graf_reg(Mortes_Acidental_pop_reg, 
                                      "MORTES ACIDENNTAIS", "MORTES ACIDENNTAIS")
Mortes_Homicidios_graf_reg <- graf_reg(Mortes_Homicidios_pop_reg, 
                                       "HOMICIDIOS", "HOMICIDIOS")
Mortes_Suicidio_graf_reg <- graf_reg(Mortes_Suicidio_pop_reg, 
                                     "SUICIDIOS", "SUICIDIOS")
#####GRAFICOS DOS INDICADORES por região PAF
Mortes_graf_reg_PAF <- graf_reg(Mortes_PAF_pop_reg, "MORTES", "MORTES")
Mortes_Acidental_graf_reg_PAF <- graf_reg(Mortes_Acidental_PAF_pop_reg, 
                                      "MORTES ACIDENNTAIS", "MORTES ACIDENNTAIS")
Mortes_Homicidios_graf_reg_PAF <- graf_reg(Mortes_Homicidios_PAF_pop_reg, 
                                       "HOMICIDIOS", "HOMICIDIOS")
Mortes_Suicidio_graf_reg_PAF <- graf_reg(Mortes_Suicidio_PAF_pop_reg, 
                                     "SUICIDIOS", "SUICIDIOS")

#####GRAFICOS DOS INDICADORES por estados das regioes
####NORTE
###MORTES EM GERAL
Mortes_graf_uf_norte <- graf_uf(Mortes_pop_uf, "NORTE", "MORTES", "MORTES")
Mortes_graf_uf_PAF_norte <- graf_uf(Mortes_PAF_pop_uf, "NORTE", 
                              "MORTES POR Armas de Fogo", "MORTES POR Armas de Fogo")
###MORTES ACIDENTAIS
Mortes_Acidental_graf_uf_norte <- graf_uf(Mortes_Acidental_pop_uf, "NORTE",
                                    "MORTES ACIDENNTAIS", "MORTES ACIDENNTAIS")
Mortes_Acidental_graf_uf_PAF_norte <- graf_uf(Mortes_Acidental_PAF_pop_uf, "NORTE",
                                        "MORTES ACIDENNTAIS POR Armas de Fogo",
                                        "MORTES ACIDENNTAIS POR Armas de Fogo")
###MORTES homicidios
Mortes_Homicidios_graf_uf_norte <- graf_uf(Mortes_Homicidios_pop_uf, "NORTE", 
                                     "HOMICIDIOS", "HOMICIDIOS")
Mortes_Homicidios_graf_uf_PAF_norte <- graf_uf(Mortes_Homicidios_PAF_pop_uf, "NORTE", 
                                        "HOMICIDIOS POR Armas de Fogo", 
                                        "HOMICIDIOS POR Armas de Fogo")
###MORTES SUICIDIOS
Mortes_Suicidio_graf_uf_norte <- graf_uf(Mortes_Suicidio_pop_uf, "NORTE", 
                                   "SUICIDIOS", "SUICIDIOS")
Mortes_Suicidio_graf_uf_PAF_norte <- graf_uf(Mortes_Suicidio_PAF_pop_uf, "NORTE",
                                       "SUICIDIOS POR Armas de Fogo", 
                                       "SUICIDIOS POR Armas de Fogo")

####nordeste
###MORTES EM GERAL
Mortes_graf_uf_nordeste <- graf_uf(Mortes_pop_uf, "nordeste", "MORTES", "MORTES")
Mortes_graf_uf_PAF_nordeste <- graf_uf(Mortes_PAF_pop_uf, "nordeste", 
                              "MORTES POR Armas de Fogo", "MORTES POR Armas de Fogo")
###MORTES ACIDENTAIS
Mortes_Acidental_graf_uf_nordeste <- graf_uf(Mortes_Acidental_pop_uf, "nordeste",
                                    "MORTES ACIDENNTAIS", "MORTES ACIDENNTAIS")
Mortes_Acidental_graf_uf_PAF_nordeste <- graf_uf(Mortes_Acidental_PAF_pop_uf, "nordeste",
                                        "MORTES ACIDENNTAIS POR Armas de Fogo",
                                        "MORTES ACIDENNTAIS POR Armas de Fogo")
###MORTES homicidios
Mortes_Homicidios_graf_uf_nordeste <- graf_uf(Mortes_Homicidios_pop_uf, "nordeste", 
                                     "HOMICIDIOS", "HOMICIDIOS")
Mortes_Homicidios_graf_uf_PAF_nordeste <- graf_uf(Mortes_Homicidios_PAF_pop_uf, "nordeste", 
                                         "HOMICIDIOS POR Armas de Fogo", 
                                         "HOMICIDIOS POR Armas de Fogo")

###MORTES SUICIDIOS
Mortes_Suicidio_graf_uf_nordeste <- graf_uf(Mortes_Suicidio_pop_uf, "nordeste", 
                                   "SUICIDIOS", "SUICIDIOS")
Mortes_Suicidio_graf_uf_PAF_nordeste <- graf_uf(Mortes_Suicidio_PAF_pop_uf, "nordeste",
                                       "SUICIDIOS POR Armas de Fogo", 
                                       "SUICIDIOS POR Armas de Fogo")

####sul
###MORTES EM GERAL
Mortes_graf_uf_sul <- graf_uf(Mortes_pop_uf, "sul", "MORTES", "MORTES")
Mortes_graf_uf_PAF_sul <- graf_uf(Mortes_PAF_pop_uf, "sul", 
                              "MORTES POR Armas de Fogo", "MORTES POR Armas de Fogo")
###MORTES ACIDENTAIS
Mortes_Acidental_graf_uf_sul <- graf_uf(Mortes_Acidental_pop_uf, "sul",
                                    "MORTES ACIDENNTAIS", "MORTES ACIDENNTAIS")
Mortes_Acidental_graf_uf_PAF_sul <- graf_uf(Mortes_Acidental_PAF_pop_uf, "sul",
                                        "MORTES ACIDENNTAIS POR Armas de Fogo",
                                        "MORTES ACIDENNTAIS POR Armas de Fogo")
###MORTES homicidios
Mortes_Homicidios_graf_uf_sul <- graf_uf(Mortes_Homicidios_pop_uf, "sul", 
                                     "HOMICIDIOS", "HOMICIDIOS")
Mortes_Homicidios_graf_uf_PAF_sul <- graf_uf(Mortes_Homicidios_PAF_pop_uf, "sul", 
                                         "HOMICIDIOS POR Armas de Fogo", 
                                         "HOMICIDIOS POR Armas de Fogo")
###MORTES SUICIDIOS
Mortes_Suicidio_graf_uf_sul <- graf_uf(Mortes_Suicidio_pop_uf, "sul", 
                                   "SUICIDIOS", "SUICIDIOS")
Mortes_Suicidio_graf_uf_PAF_sul <- graf_uf(Mortes_Suicidio_PAF_pop_uf, "sul",
                                       "SUICIDIOS POR Armas de Fogo", 
                                       "SUICIDIOS POR Armas de Fogo")

####sudeste
###MORTES EM GERAL
Mortes_graf_uf_sudeste <- graf_uf(Mortes_pop_uf, "sudeste", "MORTES", "MORTES")
Mortes_graf_uf_PAF_sudeste <- graf_uf(Mortes_PAF_pop_uf, "sudeste", 
                              "MORTES POR Armas de Fogo", "MORTES POR Armas de Fogo")
###MORTES ACIDENTAIS
Mortes_Acidental_graf_uf_sudeste <- graf_uf(Mortes_Acidental_pop_uf, "sudeste",
                                    "MORTES ACIDENNTAIS", "MORTES ACIDENNTAIS")
Mortes_Acidental_graf_uf_PAF_sudeste <- graf_uf(Mortes_Acidental_PAF_pop_uf, "sudeste",
                                        "MORTES ACIDENNTAIS POR Armas de Fogo",
                                        "MORTES ACIDENNTAIS POR Armas de Fogo")
###MORTES homicidios
Mortes_Homicidios_graf_uf_sudeste <- graf_uf(Mortes_Homicidios_pop_uf, "sudeste", 
                                     "HOMICIDIOS", "HOMICIDIOS")
Mortes_Homicidios_graf_uf_PAF_sudeste <- graf_uf(Mortes_Homicidios_PAF_pop_uf, "sudeste", 
                                         "HOMICIDIOS POR Armas de Fogo", 
                                         "HOMICIDIOS POR Armas de Fogo")
###MORTES SUICIDIOS
Mortes_Suicidio_graf_uf_sudeste <- graf_uf(Mortes_Suicidio_pop_uf, "sudeste", 
                                   "SUICIDIOS", "SUICIDIOS")
Mortes_Suicidio_graf_uf_PAF_sudeste <- graf_uf(Mortes_Suicidio_PAF_pop_uf, "sudeste",
                                       "SUICIDIOS POR Armas de Fogo", 
                                       "SUICIDIOS POR Armas de Fogo")

####centro-oeste
###MORTES EM GERAL
Mortes_graf_uf_centro_oeste <- graf_uf(Mortes_pop_uf, "centro-oeste", "MORTES", "MORTES")
Mortes_graf_uf_PAF_centro_oeste <- graf_uf(Mortes_PAF_pop_uf, "centro-oeste", 
                              "MORTES POR Armas de Fogo", "MORTES POR Armas de Fogo")
###MORTES ACIDENTAIS
Mortes_Acidental_graf_uf_centro_oeste <- graf_uf(Mortes_Acidental_pop_uf, "centro-oeste",
                                    "MORTES ACIDENNTAIS", "MORTES ACIDENNTAIS")
Mortes_Acidental_graf_uf_PAF_centro_oeste <- graf_uf(Mortes_Acidental_PAF_pop_uf, "centro-oeste",
                                        "MORTES ACIDENNTAIS POR Armas de Fogo",
                                        "MORTES ACIDENNTAIS POR Armas de Fogo")
###MORTES homicidios
Mortes_Homicidios_graf_uf_centro_oeste <- graf_uf(Mortes_Homicidios_pop_uf, "centro-oeste", 
                                     "HOMICIDIOS", "HOMICIDIOS")
Mortes_Homicidios_graf_uf_PAF_centro_oeste <- graf_uf(Mortes_Homicidios_PAF_pop_uf, "centro-oeste", 
                                         "HOMICIDIOS POR Armas de Fogo", 
                                         "HOMICIDIOS POR Armas de Fogo")
###MORTES SUICIDIOS
Mortes_Suicidio_graf_uf_centro_oeste <- graf_uf(Mortes_Suicidio_pop_uf, "centro-oeste", 
                                   "SUICIDIOS", "SUICIDIOS")
Mortes_Suicidio_graf_uf_PAF_centro_oeste <- graf_uf(Mortes_Suicidio_PAF_pop_uf, "centro-oeste",
                                       "SUICIDIOS POR Armas de Fogo", 
                                       "SUICIDIOS POR Armas de Fogo")
