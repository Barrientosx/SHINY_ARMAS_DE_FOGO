# Run the application 
##############UI####################
source("LEITURA_SCRIPTS.R", encoding = "UTF-8")

# NOMEANDO O DASHBOARD
header <- dashboardHeader(title = "Indices")

# CONFIGURANDO A SIDEBAR DO DASHBOARD
sidebar <- dashboardSidebar(
  sidebarMenu(
    ##CONFIGURANDO AS TABS ESPECIFICAS PARA SEGMENTO DE MORTE
    ###TAB DE TODAS AS MORTES OCORRIDAS
    menuItem("INTRODUÇÃO",
             tabName = "INTRODUCAO",
             icon = icon("comment")),
    menuItem("MORTES GERAIS", icon = icon("dizzy"),
             menuSubItem("Total",
                         tabName = "MORTES_TOTAL",
                         icon = icon("globe")),
             menuSubItem("Por Arma de Fogo(PAF)",
                         tabName = "MORTES_PAF",
                         icon = icon("allergies"))),
    ###TAB DE MORTES POR HOMICIDIOS
    menuItem("HOMICIDIOS", icon = icon("dizzy"),
             menuSubItem("Total",
                         tabName = "HOMICIDIOS",
                         icon = icon("globe")),
             menuSubItem("Por Arma de Fogo(PAF)",
                         tabName = "HOMICIDIOS_PAF",
                         icon = icon("joint"))),
    ###TAB DE MORTES POR SUICIIDIOS
    menuItem("SUICIDIOS", icon = icon("dizzy"),
             menuSubItem("Total",
                         tabName = "SUICIDIOS",
                         icon = icon("globe")),
             menuSubItem("Por Arma de Fogo(PAF)",
                         tabName = "SUICIDIOS_PAF",
                         icon = icon("joint"))),
    ###TAB DE MORTES POR ACIDENTE
    menuItem("MORTES ACIDENTAIS", icon = icon("dizzy"),
             menuSubItem("Total",
                         tabName = "ACIDENTES",
                         icon = icon("globe")),
             menuSubItem("Por Arma de Fogo(PAF)",
                         tabName = "ACIDENTES_PAF",
                         icon = icon("joint")))
  )
)

# Create an empty body


body <- dashboardBody(
  tabItems(
    ########################INTRODUÇÃO###################
    tabItem("INTRODUCAO",
            fluidPage(
              fluidRow(
                ########apresentação pessoal
                box(
                  fluidRow(
                    column(12,
                           textOutput("pessoal1")
                           )
                    ),
                  fluidRow(
                    column(12,
                           textOutput("pessoal2")
                           )
                    ),
                  title = "Apresentação Pessoal",
                  width = 6, status = "primary", 
                  solidHeader = TRUE),
                ########apresentação projeto
                box(
                  fluidRow(
                    column(12,
                           textOutput("projeto1")
                           )
                    ),
                  fluidRow(
                    column(12,
                           textOutput("projeto2")
                    )
                  ),
                  title = "Introdução sobre o Projeto",
                  width = 6, status = "primary",
                  solidHeader = TRUE)
                ),
              ########explicação dos segmentos
              fluidRow(
                box(
                  fluidRow(
                    column(12,
                           textOutput("bibliografia")
                           )
                    )
                  ,
                  title = "Fontes dos Dados Utilizados",
                  width = 12, status = "primary",
                  solidHeader = TRUE)
                )
              )
            ),
    ########################MORTES EM GERAL###################
    tabItem("MORTES_TOTAL",
            fluidPage(
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS SEGMENTOS DAS REGIOES
                tabBox(title = "Graficos das taxas de Mortes por 100 Mil Habitantes",
                       id = "MORTES", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_REG_GRAF")),
                       tabPanel("Estados do Norte",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_NORTE_GRAF")),
                       tabPanel("Estados do Sul",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_SUL_GRAF")),
                       tabPanel("Estados do Nordeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_NORDESTE_GRAF")),
                       tabPanel("Estados do Sudeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_SUDESTE_GRAF")),
                       tabPanel("Estados do Centro-Oeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_CENTRO_OESTE_GRAF"))
                )
              ),
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS SEGMENTOS DAS REGIOES
                tabBox(title = "Tabela de Variacao das taxas de Mortes por 100 Mil Habitantes",
                       id = "MORTESTABE", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                DTOutput("MORTES_REG_VAR")),
                       tabPanel("Estados",
                                "Taxas de 1996 a 2015",
                                DTOutput("MORTES_UF_VAR"))
                )
              )
            )
    ),
    ################PAF
    tabItem("MORTES_PAF",
            fluidPage(
              fluidRow(
                tabBox(title = "Graficos das taxas de Mortes PAF por 100 Mil Habitantes",
                       id = "MORTES", width = 12, 
                       tabPanel("Regioes", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_REG_GRAF_PAF")),
                       tabPanel("Estados do Norte", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_NORTE_GRAF_PAF")),
                       tabPanel("Estados do Sul", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_SUL_GRAF_PAF")),
                       tabPanel("Estados do Nordeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_NORDESTE_GRAF_PAF")),
                       tabPanel("Estados do Sudeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_SUDESTE_GRAF_PAF")),
                       tabPanel("Estados do Centro-Oeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("MORTES_CENTRO_OESTE_GRAF_PAF"))
                )
              ),
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS CRESCIMENTOS POR ANO
                tabBox(title = "Tabela de Variacao das taxas de Mortes PAF por 100 Mil Habitantes",
                       id = "MORTESPAFTABE", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                DTOutput("MORTES_REG_VAR_PAF")),
                       tabPanel("Estados",
                                "Taxas de 1996 a 2015",
                                DTOutput("MORTES_UF_VAR_PAF"))
                )
              )
            )
    ),
    ########################HOMICIDIOS###################
    tabItem("HOMICIDIOS",
            fluidPage(
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS SEGMENTOS DAS REGIOES
                tabBox(title = "Graficos das taxas de Homicidios por 100 Mil Habitantes",
                       id = "HOMICIDIOS", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_REG_GRAF")),
                       tabPanel("Estados do Norte",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_NORTE_GRAF")),
                       tabPanel("Estados do Sul",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_SUL_GRAF")),
                       tabPanel("Estados do Nordeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_NORDESTE_GRAF")),
                       tabPanel("Estados do Sudeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_SUDESTE_GRAF")),
                       tabPanel("Estados do Centro-Oeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_CENTRO_OESTE_GRAF"))
                )
              ),
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS SEGMENTOS DAS REGIOES
                tabBox(title = "Tabela de Variacao das taxas de Mortes por 100 Mil Habitantes",
                       id = "MORTESTABE", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                DTOutput("HOMICIDIOS_REG_VAR")),
                       tabPanel("Estados",
                                "Taxas de 1996 a 2015",
                                DTOutput("HOMICIDIOS_UF_VAR"))
                )
              )
            )
    ),
    ################PAF
    tabItem("HOMICIDIOS_PAF",
            fluidPage(
              fluidRow(
                tabBox(title = "Graficos das taxas de Homicidios PAF por 100 Mil Habitantes",
                       id = "HOMICIDIOS_PAF", width = 12, 
                       tabPanel("Regioes", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_REG_GRAF_PAF")),
                       tabPanel("Estados do Norte", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_NORTE_GRAF_PAF")),
                       tabPanel("Estados do Sul", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_SUL_GRAF_PAF")),
                       tabPanel("Estados do Nordeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_NORDESTE_GRAF_PAF")),
                       tabPanel("Estados do Sudeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_SUDESTE_GRAF_PAF")),
                       tabPanel("Estados do Centro-Oeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("HOMICIDIOS_CENTRO_OESTE_GRAF_PAF"))
                )
              ),
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS SEGMENTOS DAS REGIOES
                tabBox(title = "Tabela de Variacao das taxas de Mortes por 100 Mil Habitantes",
                       id = "MORTESTABE", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                DTOutput("HOMICIDIOS_REG_VAR_PAF")),
                       tabPanel("Estados",
                                "Taxas de 1996 a 2015",
                                DTOutput("HOMICIDIOS_UF_VAR_PAF"))
                )
              )
            )
    ),
    ########################SUICIDIOS###################
    tabItem("SUICIDIOS",
            fluidPage(
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS SEGMENTOS DAS REGIOES
                tabBox(title = "Graficos das taxas de Suicidios por 100 Mil Habitantes",
                       id = "SUICIDIOS", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_REG_GRAF")),
                       tabPanel("Estados do Norte",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_NORTE_GRAF")),
                       tabPanel("Estados do Sul",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_SUL_GRAF")),
                       tabPanel("Estados do Nordeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_NORDESTE_GRAF")),
                       tabPanel("Estados do Sudeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_SUDESTE_GRAF")),
                       tabPanel("Estados do Centro-Oeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_CENTRO_OESTE_GRAF"))
                )
              ),
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS SEGMENTOS DAS REGIOES
                tabBox(title = "Tabela de Variacao das taxas de Mortes por 100 Mil Habitantes",
                       id = "SUICIDIOSTABE", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                DTOutput("SUICIDIOS_REG_VAR")),
                       tabPanel("Estados",
                                "Taxas de 1996 a 2015",
                                DTOutput("SUICIDIOS_UF_VAR"))
                )
              )
            )
    ),
    ################PAF
    tabItem("SUICIDIOS_PAF",
            fluidPage(
              fluidRow(
                tabBox(title = "Graficos das taxas de Suicidios PAF por 100 Mil Habitantes",
                       id = "SUICIDIOS_PAF", width = 12, 
                       tabPanel("Regioes", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_REG_GRAF_PAF")),
                       tabPanel("Estados do Norte", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_NORTE_GRAF_PAF")),
                       tabPanel("Estados do Sul", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_SUL_GRAF_PAF")),
                       tabPanel("Estados do Nordeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_NORDESTE_GRAF_PAF")),
                       tabPanel("Estados do Sudeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_SUDESTE_GRAF_PAF")),
                       tabPanel("Estados do Centro-Oeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("SUICIDIOS_CENTRO_OESTE_GRAF_PAF"))
                )
              ),
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS SEGMENTOS DAS REGIOES
                tabBox(title = "Tabela de Variacao das taxas de Mortes por 100 Mil Habitantes",
                       id = "SUICIDIOSTABE", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                DTOutput("SUICIDIOS_REG_VAR_PAF")),
                       tabPanel("Estados",
                                "Taxas de 1996 a 2015",
                                DTOutput("SUICIDIOS_UF_VAR_PAF"))
                )
              )
            )
    ),
    ########################ACIDENTAIS###################
    tabItem("ACIDENTES",
            fluidPage(
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS SEGMENTOS DAS REGIOES
                tabBox(title = "Graficos das taxas de Mortes Acidentais por 100 Mil Habitantes",
                       id = "ACIDENTES", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_REG_GRAF")),
                       tabPanel("Estados do Norte",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_NORTE_GRAF")),
                       tabPanel("Estados do Sul",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_SUL_GRAF")),
                       tabPanel("Estados do Nordeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_NORDESTE_GRAF")),
                       tabPanel("Estados do Sudeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_SUDESTE_GRAF")),
                       tabPanel("Estados do Centro-Oeste",
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_CENTRO_OESTE_GRAF"))
                )
              ),
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS SEGMENTOS DAS REGIOES
                tabBox(title = "Tabela de Variacao das taxas de Mortes por 100 Mil Habitantes",
                       id = "MORTESTABE", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                DTOutput("ACIDENTAL_REG_VAR")),
                       tabPanel("Estados",
                                "Taxas de 1996 a 2015",
                                DTOutput("ACIDENTAL_UF_VAR"))
                )
              )
            )
    ),
    ################PAF
    tabItem("ACIDENTES_PAF",
            fluidPage(
              fluidRow(
                tabBox(title = "Graficos das taxas de Mortes Acidentais PAF por 100 Mil Habitantes",
                       id = "MORTES", width = 12, 
                       tabPanel("Regioes", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_REG_GRAF_PAF")),
                       tabPanel("Estados do Norte", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_NORTE_GRAF_PAF")),
                       tabPanel("Estados do Sul", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_SUL_GRAF_PAF")),
                       tabPanel("Estados do Nordeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_NORDESTE_GRAF_PAF")),
                       tabPanel("Estados do Sudeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_SUDESTE_GRAF_PAF")),
                       tabPanel("Estados do Centro-Oeste", 
                                "Taxas de 1996 a 2015",
                                plotlyOutput("ACIDENTES_CENTRO_OESTE_GRAF_PAF"))
                )
              ),
              fluidRow(
                ####CRIAÇÃO DE UMA TABBOX COM ABAS PARA OS SEGMENTOS DAS REGIOES
                tabBox(title = "Tabela de Variacao das taxas de Mortes por 100 Mil Habitantes",
                       id = "MORTESTABE", width = 12,
                       tabPanel("Regioes",
                                "Taxas de 1996 a 2015",
                                DTOutput("ACIDENTAL_REG_VAR_PAF")),
                       tabPanel("Estados",
                                "Taxas de 1996 a 2015",
                                DTOutput("ACIDENTAL_UF_VAR_PAF"))
                )
              )
            )
    )
  )
)

# Define UI for application
ui <- dashboardPage(header, sidebar, body)

####################SERVER########################

# Define server logic
server <- function(input, output, session) {

  source("LEITURA_SCRIPTS.R")

  #####################textos explicativos####################
  output$pessoal1 <- renderText("Olá meu nome é Filipe Barrientos Batista, 
                               o criador deste pequeno projeto, 
                               ambiciono um dia ser digno de ser reconehcido como
                               um bom cientista de dados.")
  output$pessoal2 <- renderText("Sou formado pela Universidade Federal Fluminense(UFF) em Estatística,
                               e fascinado por tecnologia e ciência de dados, continuo sempre
                               estudando não só por aprimoramento mas pelo simples prazer de adquirir
                               de aprender mais.")
  output$projeto1 <- renderText("Este projeto foi realizado com dois objetivos, 
                                o primeiro foi ser um treino prático para os meus
                                conhecimentos de programação em R, principalmente 
                                utilizando os pacotes Shiny e ShinyDashboard, e também
                                na aplicação de meus conhecimentos estatistico de análise 
                                de dados.")
  output$projeto2 <- renderText("O segundo objetivo foi motivado por diversas 
                                discussões que tive sobre assuntos de impacto de 
                                armas de fogo nas mortes pelo Brasil, e logo sempre 
                                eram apresentados números que em uma visão estatística
                                era completamente equivocado, como com comparações de 
                                números brutos e não relativos para indicar crescimentos 
                                e até mesmo números falsos seja proposital ou por ignorância,
                                logo espero que possa este ser um local onde todos possam 
                                usar como fonte confiável de informação sobre este assunto.")
  output$bibliografia <- renderText("DADOS SOBRE AS MORTES: http://www2.datasus.gov.br/DATASUS/index.php?area=0205&id=6937;
                                    Fonte: MS/SVS/CGIAE - Sistema de Informações sobre Mortalidade - SIM;CID10;
                                    PAF:Categoria CID10: W32-Projetil de revolver, 
                                    W33-Rifle espingarda armas fogo de maior tamanho, 
                                    W34-Projeteis de outr armas de fogo e das NE, 
                                    X72-Lesao autoprov intenc disp arma fogo de mao, 
                                    X73-Les autoprov int disp arm fog maior calibre, 
                                    X74-Lesao autopr intenc disp outr arma fogo e NE, 
                                    X93-Agressao disparo de arma de fogo de mao, 
                                    X94-Agressao disparo arma fogo de maior calibre, 
                                    X95-Agressao disparo outr arma de fogo ou NE, 
                                    Y22-Disparo de pistola intencao nao determinada, 
                                    Y23-Disparo arma fogo maior calibre intenc n det, 
                                    Y24-Disparo outr arma fogo e NE intenc nao det,
                                    DADOS SOBRE POPULAÇÃO: https://ww2.ibge.gov.br/home/estatistica/populacao; 
                                    Os anos de 1996, 2000, 2007, 2010, não possuem o tamanho da estimado pelo ibge,
                                    logo ele foi estimado com base na média do ano seguinte e do anterior.")
  
  ###################MORTES#####################
  ####plotando os gráficos de morte####
  output$MORTES_REG_GRAF <- renderPlotly(Mortes_graf_reg)
  output$MORTES_NORTE_GRAF <- renderPlotly(Mortes_graf_uf_norte)
  output$MORTES_NORDESTE_GRAF <- renderPlotly(Mortes_graf_uf_nordeste)
  output$MORTES_SUL_GRAF <- renderPlotly(Mortes_graf_uf_sul)
  output$MORTES_SUDESTE_GRAF <- renderPlotly(Mortes_graf_uf_sudeste)
  output$MORTES_CENTRO_OESTE_GRAF <- renderPlotly(Mortes_graf_uf_centro_oeste)
  
  ####PLOT DAS TABELAS DE VARIACAO DE TAXA
  ##MORTES
  output$MORTES_REG_VAR <- renderDataTable(datatable(MORTES_REG_VAR,
                                                     rownames = FALSE,
                                                     options = list(lengthChange = FALSE, 
                                                                    paging = FALSE, 
                                                                    scrollX = TRUE)))
  output$MORTES_UF_VAR <- renderDataTable(datatable(MORTES_UF_VAR,
                                                    rownames = FALSE,
                                                    options = list(lengthChange = FALSE, 
                                                                   paging = FALSE, 
                                                                   scrollX = TRUE,
                                                                   scrollY = "400px")))
  ##MORTES PAF
  output$MORTES_REG_VAR_PAF <- renderDataTable(datatable(MORTES_REG_VAR_PAF,
                                                     rownames = FALSE,
                                                     options = list(lengthChange = FALSE, 
                                                                    paging = FALSE, 
                                                                    scrollX = TRUE)))
  output$MORTES_UF_VAR_PAF <- renderDataTable(datatable(MORTES_UF_VAR_PAF,
                                                    rownames = FALSE,
                                                    options = list(lengthChange = FALSE, 
                                                                   paging = FALSE, 
                                                                   scrollX = TRUE,
                                                                   scrollY = "400px")))
  ##SUICIDIOS
  output$SUICIDIOS_REG_VAR <- renderDataTable(datatable(SUICIDIOS_REG_VAR,
                                                     rownames = FALSE,
                                                     options = list(lengthChange = FALSE, 
                                                                    paging = FALSE, 
                                                                    scrollX = TRUE)))
  output$SUICIDIOS_UF_VAR <- renderDataTable(datatable(SUICIDIOS_UF_VAR,
                                                    rownames = FALSE,
                                                    options = list(lengthChange = FALSE, 
                                                                   paging = FALSE, 
                                                                   scrollX = TRUE,
                                                                   scrollY = "400px")))
  ##SUICIDIOS PAF
  output$SUICIDIOS_REG_VAR_PAF <- renderDataTable(datatable(SUICIDIOS_REG_VAR_PAF,
                                                        rownames = FALSE,
                                                        options = list(lengthChange = FALSE, 
                                                                       paging = FALSE, 
                                                                       scrollX = TRUE)))
  output$SUICIDIOS_UF_VAR_PAF <- renderDataTable(datatable(SUICIDIOS_UF_VAR_PAF,
                                                       rownames = FALSE,
                                                       options = list(lengthChange = FALSE, 
                                                                      paging = FALSE, 
                                                                      scrollX = TRUE,
                                                                      scrollY = "400px")))
  ##HOMICIDIO
  output$HOMICIDIOS_REG_VAR <- renderDataTable(datatable(HOMICIDIOS_REG_VAR,
                                                     rownames = FALSE,
                                                     options = list(lengthChange = FALSE, 
                                                                    paging = FALSE, 
                                                                    scrollX = TRUE)))
  output$HOMICIDIOS_UF_VAR <- renderDataTable(datatable(HOMICIDIOS_UF_VAR,
                                                    rownames = FALSE,
                                                    options = list(lengthChange = FALSE, 
                                                                   paging = FALSE, 
                                                                   scrollX = TRUE,
                                                                   scrollY = "400px")))
  ##HOMICIDIO PAF
  output$HOMICIDIOS_REG_VAR_PAF <- renderDataTable(datatable(HOMICIDIOS_REG_VAR_PAF,
                                                         rownames = FALSE,
                                                         options = list(lengthChange = FALSE, 
                                                                        paging = FALSE, 
                                                                        scrollX = TRUE)))
  output$HOMICIDIOS_UF_VAR_PAF <- renderDataTable(datatable(HOMICIDIOS_UF_VAR_PAF,
                                                        rownames = FALSE,
                                                        options = list(lengthChange = FALSE, 
                                                                       paging = FALSE, 
                                                                       scrollX = TRUE,
                                                                       scrollY = "400px")))
  ##ACIDENTES
  output$ACIDENTAL_REG_VAR <- renderDataTable(datatable(ACIDENTAL_REG_VAR,
                                                     rownames = FALSE,
                                                     options = list(lengthChange = FALSE, 
                                                                    paging = FALSE, 
                                                                    scrollX = TRUE)))
  output$ACIDENTAL_UF_VAR <- renderDataTable(datatable(ACIDENTAL_UF_VAR,
                                                    rownames = FALSE,
                                                    options = list(lengthChange = FALSE, 
                                                                   paging = FALSE, 
                                                                   scrollX = TRUE,
                                                                   scrollY = "400px")))
  ##ACIDENTES PAF
  output$ACIDENTAL_REG_VAR_PAF <- renderDataTable(datatable(ACIDENTAL_REG_VAR_PAF,
                                                        rownames = FALSE,
                                                        options = list(lengthChange = FALSE, 
                                                                       paging = FALSE, 
                                                                       scrollX = TRUE)))
  output$ACIDENTAL_UF_VAR_PAF <- renderDataTable(datatable(ACIDENTAL_UF_VAR_PAF,
                                                       rownames = FALSE,
                                                       options = list(lengthChange = FALSE, 
                                                                      paging = FALSE, 
                                                                      scrollX = TRUE,
                                                                      scrollY = "400px")))
  ####plotando os gráficos de morte PAF####
  output$MORTES_REG_GRAF_PAF <- renderPlotly(Mortes_graf_reg_PAF)
  output$MORTES_NORTE_GRAF_PAF <- renderPlotly(Mortes_graf_uf_PAF_norte)
  output$MORTES_NORDESTE_GRAF_PAF <- renderPlotly(Mortes_graf_uf_PAF_nordeste)
  output$MORTES_SUL_GRAF_PAF <- renderPlotly(Mortes_graf_uf_PAF_sul)
  output$MORTES_SUDESTE_GRAF_PAF <- renderPlotly(Mortes_graf_uf_PAF_sudeste)
  output$MORTES_CENTRO_OESTE_GRAF_PAF <- renderPlotly(Mortes_graf_uf_PAF_centro_oeste)

  ####plotando os gráficos de homicidios####
  output$HOMICIDIOS_REG_GRAF <- renderPlotly(Mortes_Homicidios_graf_reg)
  output$HOMICIDIOS_NORTE_GRAF <- renderPlotly(Mortes_Homicidios_graf_uf_norte)
  output$HOMICIDIOS_NORDESTE_GRAF <- renderPlotly(Mortes_Homicidios_graf_uf_nordeste)
  output$HOMICIDIOS_SUL_GRAF <- renderPlotly(Mortes_Homicidios_graf_uf_sul)
  output$HOMICIDIOS_SUDESTE_GRAF <- renderPlotly(Mortes_Homicidios_graf_uf_sudeste)
  output$HOMICIDIOS_CENTRO_OESTE_GRAF <- renderPlotly(Mortes_Homicidios_graf_uf_centro_oeste)
  ####plotando os gráficos de homicidios PAF####
  output$HOMICIDIOS_REG_GRAF_PAF <- renderPlotly(Mortes_Homicidios_graf_reg_PAF)
  output$HOMICIDIOS_NORTE_GRAF_PAF <- renderPlotly(Mortes_Homicidios_graf_uf_PAF_norte)
  output$HOMICIDIOS_NORDESTE_GRAF_PAF <- renderPlotly(Mortes_Homicidios_graf_uf_PAF_nordeste)
  output$HOMICIDIOS_SUL_GRAF_PAF <- renderPlotly(Mortes_Homicidios_graf_uf_PAF_sul)
  output$HOMICIDIOS_SUDESTE_GRAF_PAF <- renderPlotly(Mortes_Homicidios_graf_uf_PAF_sudeste)
  output$HOMICIDIOS_CENTRO_OESTE_GRAF_PAF <- renderPlotly(Mortes_Homicidios_graf_uf_PAF_centro_oeste)

  ####plotando os gráficos de Suicidio####
  output$SUICIDIOS_REG_GRAF <- renderPlotly(Mortes_Suicidio_graf_reg)
  output$SUICIDIOS_NORTE_GRAF <- renderPlotly(Mortes_Suicidio_graf_uf_norte)
  output$SUICIDIOS_NORDESTE_GRAF <- renderPlotly(Mortes_Suicidio_graf_uf_nordeste)
  output$SUICIDIOS_SUL_GRAF <- renderPlotly(Mortes_Suicidio_graf_uf_sul)
  output$SUICIDIOS_SUDESTE_GRAF <- renderPlotly(Mortes_Suicidio_graf_uf_sudeste)
  output$SUICIDIOS_CENTRO_OESTE_GRAF <- renderPlotly(Mortes_Suicidio_graf_uf_centro_oeste)
  ####plotando os gráficos de Suicidio PAF####
  output$SUICIDIOS_REG_GRAF_PAF <- renderPlotly(Mortes_Suicidio_graf_reg_PAF)
  output$SUICIDIOS_NORTE_GRAF_PAF <- renderPlotly(Mortes_Suicidio_graf_uf_PAF_norte)
  output$SUICIDIOS_NORDESTE_GRAF_PAF <- renderPlotly(Mortes_Suicidio_graf_uf_PAF_nordeste)
  output$SUICIDIOS_SUL_GRAF_PAF <- renderPlotly(Mortes_Suicidio_graf_uf_PAF_sul)
  output$SUICIDIOS_SUDESTE_GRAF_PAF <- renderPlotly(Mortes_Suicidio_graf_uf_PAF_sudeste)
  output$SUICIDIOS_CENTRO_OESTE_GRAF_PAF <- renderPlotly(Mortes_Suicidio_graf_uf_PAF_centro_oeste)

  ####plotando os gráficos de Acidental####
  output$ACIDENTES_REG_GRAF <- renderPlotly(Mortes_Acidental_graf_reg)
  output$ACIDENTES_NORTE_GRAF <- renderPlotly(Mortes_Acidental_graf_uf_norte)
  output$ACIDENTES_NORDESTE_GRAF <- renderPlotly(Mortes_Acidental_graf_uf_nordeste)
  output$ACIDENTES_SUL_GRAF <- renderPlotly(Mortes_Acidental_graf_uf_sul)
  output$ACIDENTES_SUDESTE_GRAF <- renderPlotly(Mortes_Acidental_graf_uf_sudeste)
  output$ACIDENTES_CENTRO_OESTE_GRAF <- renderPlotly(Mortes_Acidental_graf_uf_centro_oeste)
  ####plotando os gráficos de Acidental PAF####
  output$ACIDENTES_REG_GRAF_PAF <- renderPlotly(Mortes_Acidental_graf_reg_PAF)
  output$ACIDENTES_NORTE_GRAF_PAF <- renderPlotly(Mortes_Acidental_graf_uf_PAF_norte)
  output$ACIDENTES_NORDESTE_GRAF_PAF <- renderPlotly(Mortes_Acidental_graf_uf_PAF_nordeste)
  output$ACIDENTES_SUL_GRAF_PAF <- renderPlotly(Mortes_Acidental_graf_uf_PAF_sul)
  output$ACIDENTES_SUDESTE_GRAF_PAF <- renderPlotly(Mortes_Acidental_graf_uf_PAF_sudeste)
  output$ACIDENTES_CENTRO_OESTE_GRAF_PAF <- renderPlotly(Mortes_Acidental_graf_uf_PAF_centro_oeste)

}


shinyApp(ui = ui, server = server)

