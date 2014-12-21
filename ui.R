library(shiny)
shinyUI(fluidPage(
  titlePanel("App for summarizing number of earthquakes per hemisphere"),
  sidebarLayout(
    sidebarPanel(
      strong("Documentation"),
      br(),
      em("Description:"),
      p("This is a simple app which summarizes the number of earthquakes occurred in selected hemisphere for the period of January 1, 2000 to present. It also provides additional information of the highest magnitude Earthquake happened in that hemisphere and the place where it happened. App displays the numeric results as well as map and histogram."),
      em("Data:"),
      a("http://earthquake.usgs.gov"),
      p("The data is taken from the USGS website (above) for the period of January 1, 2000 to present."),
      em("How it works:"),
      p("Data is downloaded and stored in local directory and then it is loaded to R. Subset of the data is identified by user inputs of minimum Earthquake magnitude scale and hemisphere. Number of earthquakes is calculated from the subset."),
      em("Instructions for using the app:"),
      p("Initially when the app is loaded, values, map and plot are rendered only after clicking the 'submit' button. It will take a while to render the values after clicking the 'submit' button for the first time. First, select the earthquake magnitude by using the slider. This will set the minimum for Earthquake magnitude scale above which the data will be considered for summarization.For example, if the slider is set at 6.5, then all Earthquakes of magnitude 6.5 and above are considered for summarization. The default value for the slider is 7. Second, select the hemisphere where summarization is desired. The default value of hemisphere is 'Eastern'. Third, click the 'submit' button. Results will appear for the selected hemisphere with the slider value set as minimum for the Earthquake magnitude scale."),
          sliderInput("slider1", label = strong("Slide to select the earthquake magnitude scale to be set as minimum"), min = 6.0, max = 8.5,value=7.0, step = 0.1),
      br(),
      radioButtons("radio1", label = strong("Select the hemisphere"), choices = list("Eastern hemisphere" = "Eastern", "Western hemisphere" = "Western", "Northern hemisphere" = "Northern", "Southern hemisphere" = "Southern"), selected = "Eastern"), 
      br(),
      submitButton("Submit")
    ),
  mainPanel(
    h5("Earthquake magnitude scale - minimum selected"),
    verbatimTextOutput("oslider1"),
    h5("Hemisphere selected "),
    verbatimTextOutput("oradio1"),
    h5("Number of earthquakes in above hemisphere"),
    verbatimTextOutput("otext1"),
    h5("Highest magnitude Earthquake in this hemisphere"),
    verbatimTextOutput("otext2"),
    h5("Place in which earthquake of highest magnitude happened"),
    verbatimTextOutput("otext3"),
    h5("Map of earthquakes in selected hemisphere in world"),
    plotOutput("plotmap"),
    h5("Histogram of the earthquakes in the selected hemisphere and magnitude"),
    plotOutput("plothist")
        )
  )
  ))