### Data Science Capstone : Course Project
### ui.R file for the Shiny app
### Github repo : https://github.com/ckushaan/Capstone_Final_Project
suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Capstone Final Project",
                   tabPanel("Predict words",
                            HTML("<strong>Author: Kushan Sarathchandra</strong>"),
                            br(),
                            HTML("<strong>Date: 18/07/2021</strong>"),
                            #br(),
                            #img(src = "./headers.png"),
                            # Sidebar
                            sidebarLayout(
                                sidebarPanel(
                                    helpText("Start entering a phase to begin the next word prediction"),
                                    textInput("inputString", "Start the sentence here",value = ""),
                                    br(),
                                    br(),
                                    br(),
                                    br()
                                ),
                                mainPanel(
                                    h2("Next word predict as "),
                                    verbatimTextOutput("prediction"),
                                    strong("Sentence Input:"),
                                    tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'), 
                                    textOutput('text1'),
                                    br(),
                                    strong("Note:"),
                                    tags$style(type='text/css', '#text2 {background-color: rgba(255,255,0,0.40); color: black;}'),
                                    textOutput('text2')
                                )
                            )
                            
                   ),
                   tabPanel("About",
                            mainPanel(
                                img(src = "./banner.png"),
                                includeMarkdown("about.md")
                            )
                   )
)
)