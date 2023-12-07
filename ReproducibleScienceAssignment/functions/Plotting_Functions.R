##---------------------------
##
## Script name: Plotting_Functions.R
##
## Purpose of script: Creation of functions to plot exploratory and results figures for Culmen Length against Culmen Depth in Chinstrap Penguins  
##
## Author: Candidate 1064939 
##
## Date Created: 2023-10-03
##
## ---------------------------

## Code to create a function to plot an exploratory figure of Culmen Length against Culmen Depth in Chinstrap pengiuns
#Name the function plot_culmen_figure and tell r to use the chinstrap_culmen_morphology_only data 
plot_culmen_exploratory_figure <- function(chinstrap_culmen_morphology_only){
  chinstrap_culmen_morphology_only %>% 
  ggplot(aes(x = culmen_length_mm,
             y = culmen_depth_mm
         )) +
  #this sets out what elements should be included in the plot and the data that is to be considered 
  #I am using Culmen Length (mm), culmen_length_mm, as my x variable and Culmen Depth (mm), culmen_depth_mm, as my y variable 
  geom_point(colour = "red", size=1.3) + 
  #This adds the data points to the graph, sets them to the size 1.3 and changes the colour of points to red
  labs(title="Culmen Length x Culmen Depth in Chinstrap Penguins from the PalmerPenguin dataset", x="Culmen Length (mm)", y="Culmen Depth (mm)") + 
  #This changes the labels on the graph of the title and axis
  theme_bw() + 
  #this is a preset theme that changes the colour of the background to white as well as other aesthetic properties
  theme(plot.title = element_text(hjust=0.5, size=10, vjust = 3), 
        axis.title.x = element_text(size=8, vjust=-2), 
        axis.title.y = element_text(size=8, vjust=2), 
        plot.margin = margin(t = 12, r=12, b=12, l=12)) }
#this changes the location of the axis labels and title so they are central and increases the margin size around them 

## ---------------------------
## Code to create a function to plot a results figure of Culmen Length against Culmen Depth in Chinstrap pengiuns
plot_culmen_results_figure <- function(chinstrap_culmen_morphology_only){
  chinstrap_culmen_morphology_only %>% 
    ggplot(aes(x = culmen_length_mm,
               y = culmen_depth_mm
    )) +
    #this sets out what elements should be included in the plot and the data that is to be considered 
    #the dataset to be used is the cleaned version containing only relavant data from PalmerPenguins (chinstrap_culmen_morphology_only)
    #I am using Culmen Length (mm), culmen_length_mm, as my x variable and Culmen Depth (mm), culmen_depth_mm, as my y variable 
    geom_point(colour = "black", size=1.3) + 
    #This adds the data points to the graph, sets them to the size 1.3 and changes the colour of points to red
    geom_smooth(method = "lm") + 
    labs(title="Culmen Length x Culmen Depth in Chinstrap Penguins from the PalmerPenguin dataset", x="Culmen Length (mm)", y="Culmen Depth (mm)") + 
    #This changes the labels on the graph of the title and axis
    theme_bw() + 
    #this is a preset theme that changes the colour of the background to white aswell as other aesthetic properties
    theme(plot.title = element_text(hjust=0.5, size=10, vjust = 3), 
          axis.title.x = element_text(size=9, vjust=-2), 
          axis.title.y = element_text(size=9, vjust=2), 
          plot.margin = margin(t = 12, r=12, b=12, l=12)) + 
    stat_cor(method = "pearson", label.y = 20.8, size=4)
  }

