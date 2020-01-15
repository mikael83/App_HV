
library(shiny)
library(RColorBrewer)
library(shinythemes)
library(shinydashboard)
library(ggplot2)


ui <- fluidPage(theme = "bootstrap.css", 
                tags$style(HTML("
        .nav-pills>li.active>a, .nav-pills>li.active>a:focus, .nav-pills>li.active>a:hover {
    color: #000000;
    background-color: #FFD700;
}")),  tags$style(HTML("
       a {
    color: #555;
    text-decoration: none;
}")),  tags$style(HTML("'
       .navbar-brand {
                  float: left;
                  height: 50px;
                  padding: 15px 15px;
                  font-size: 25px;
                  line-height: 20px;
}")),
     
               
     title  <- tags$a(href="http://saude.gov.br/saude-de-a-z/hepatite", tags$img(src="logo.jpg",height="100",width="200"),"Distribuição de medicamentos no Brasil e por UF", style =  "font-size: 28px", align = "center"), 
              
  
  navlistPanel( widths = c(2, 10),
    "Hepatite C",
    tabPanel("Total de tratamentos distribuidos e iniciados no ano", h3(textOutput("tratinidist2019"), column(5, plotOutput("plotinidist2019")))),
   tabPanel("Distribuição de medicamentos por UF", h3(textOutput("tratiniuf2019"), column(8, plotOutput("plotiniuf2019")))),
    tabPanel("Distribuição de tratamentos por medicamento"),
    tabPanel("Meta por estado/Meta Brasil"),
    tabPanel("Calculadora Apri"),
    "Hepatite B",
    tabPanel("Distribuição de medicamentos por UF", h3(textOutput("tratiniufb2019"), column(8, plotOutput("plotiniufb2019")))),
    "",
    tabPanel("Sobre"),
    tabPanel("")))


# Define server logic required to draw a histogram
server <- function(input, output) {

  ### Hepatite C
  
  ### Total de tratamentos distribuidos e iniciados no ano
  plotinidist2019 <- read.csv("/app/app_vigi/plotinidist2019.csv")
  
  output$tratinidist2019 = renderText("Total de tratamentos distribuídos e iniciados até 10/2019")
  output$plotinidist2019 <- renderPlot({
    ggplot(data=plotinidist2019, aes(x=tipo, y=plotinidist2019$Freq)) +
      geom_bar(stat="identity", fill="steelblue", width=0.5) +
      geom_text(aes(label=plotinidist2019$Freq), vjust=-0.3, size=3.5)+
      theme_minimal()  + labs(x="Tratamento", y = "Frequência") + labs(fill = "Tratamento") + ggtitle("Tratamentos 2019 (B182 e B171)")
  })
  
 ### Distribuição de medicamentos por UF
  meduf2019 <- read.csv("/app/app_vigi/meduf2019.csv")
  
 output$tratiniuf2019 = renderText("Distribuição de medicamentos por UF até 10/2019")
 output$plotiniuf2019 <- renderPlot({
    ggplot(data=meduf2019, aes(x=reorder(meduf2019$Var1, -Freq), y=meduf2019$Freq)) +
      geom_bar(stat="identity", fill="steelblue") +
     geom_text(aes(label=meduf2019$Freq), vjust=-0.3, size=3.5)+
     theme_minimal()  + labs(x="UF", y = "Frequência") + ggtitle("Tratamentos 2019 (B171 e B182 por UF) - Tratamentos iniciados")
    
 })
  
  
 
 ### Hepatite B
 

 ### Distribuição de medicamentos por UF
 medufb2019 <- read.csv("/app/app_vigi/medufb2019.csv")
 
 output$tratiniufb2019 = renderText("Distribuição de medicamentos por UF até 10/2019")
 output$plotiniufb2019 <- renderPlot({
   ggplot(data=medufb2019, aes(x=reorder(medufb2019$Var1, -Freq), y=medufb2019$Freq)) +
     geom_bar(stat="identity", fill="steelblue") +
     geom_text(aes(label=medufb2019$Freq), vjust=-0.3, size=3.5)+
     theme_minimal()  + labs(x="UF", y = "Frequência") + ggtitle("Tratamentos 2019 (B171 e B182 por UF) - Tratamentos iniciados")
   
 })
 
  

}

# Run the application 
shinyApp(ui = ui, server = server)
