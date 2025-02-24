library(shiny)


ui <- fluidPage(
  theme = shinytheme('united'),
  
  titlePanel("User Guide"),
  sidebarLayout(
    sidebarPanel(),
    mainPanel(
      h1 ('About'),
      p("The Covid-19 Pandamic has started in Malaysia since early 2020. 
        After two years, Malaysia is transitioning from pandemic status to endemic phase.
        With the high vaccination role out and medical knowledge gained by healthcare providers,
        Malaysia is able reach endemicity - a constant rate of case for a particular infectious disease.
        However, it is for certain that even if 100% of population are vaccinated, Covid-19 will likely persist.
        Furthermore, there are threats of new mutated variants that evade immunity provided by vaccination."),
      br(),
      p("Therefore Keep CoviDown App is created to map out and analyze the current trend of vaccination rate per state, and measures how effective is the 
        vaccination program in reducing the severity of Covid-19 (reduction in ICU Covid-19 admission)
        and reducing mortality rate."),
      br(),
      br(),
      h1 ('User Guide'),
      h3('Summary Tab'),
                     p('- Maps Out the Total New Cases in Malaysia.'),
                     p('- Maps Out the Total New Deaths in Malaysia.'),
                     p('- Maps Out the Vaccination Uptake in Malaysia'),
      br(),
      h3('Vaccine Tab'),
      p("- Select the state on sidebar to view vaccine brand break down for each state"),
      br(),
      h3('Analysis Tab'),
      p("- Correlation Analysis Plot Between Vaccinated Population and Mortality Rate"),
      p("- Correlation Analysis Plot Between Vaccinated Population and ICU COVID admission rate"),
      br(),
      h3('Trends Tab'),
      p("- Pick date range on sidebar to view Covid-19 new cases and deaths"),
    )
  )
)


server <- function(input, output) {
  
}


shinyApp(ui = ui, server = server)