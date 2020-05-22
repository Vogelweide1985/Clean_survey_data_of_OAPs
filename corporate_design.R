library(RColorBrewer)

cd_theme <- function(base_size = 11,
                      base_family = "",
                      base_line_size = base_size / 170,
                      base_rect_size = base_size / 170){
      theme_minimal(base_size = base_size, 
                    base_family = base_family,
                    base_line_size = base_line_size) %+replace%
            theme(plot.background = element_rect(
                  fill = "#F1FFE7"
                  ),
                  plot.title = element_text(
                        color = rgb(25, 43, 65, maxColorValue = 255), 
                        face = "bold",
                        hjust = 0.001,
                        vjust = 2),
                  plot.subtitle = element_text(
                        color = rgb(25, 43, 65, maxColorValue = 255), 
                        face = "plain",
                        hjust = 0.005,
                        size = 11,
                        vjust = 1),
                  axis.title = element_text(
                        size = rel(1),
                        face = "bold"),
                  axis.text = element_text(
                        color = rgb(105, 105, 105, maxColorValue = 255),
                        size = rel(1)),
                  axis.line  = element_line(
                        linetype = "solid", 
                        colour = rgb(105, 105, 105, maxColorValue = 255),
                        size = rel(1)
                  ),
                  axis.line.y  = element_line(
                        linetype = "blank", 
                        colour = rgb(105, 105, 105, maxColorValue = 255),
                        size = rel(1)
                  ),
                  panel.grid.major.x = element_line(
                        rgb(105, 105, 105, maxColorValue = 255),
                        linetype = "blank"),   
                  panel.grid.major.y = element_line(
                        rgb(105, 105, 105, maxColorValue = 255),
                        linetype = "dotted", size =0.5),   
                  panel.grid.minor = element_line(
                        rgb(105, 105, 105, maxColorValue = 255),
                        linetype = "blank", 
                        size = rel(4)),   
                  
                  complete = TRUE
            )
}

cd_background <- c("#F1FFE7")
cd_main <- c( "#337CA0", "#C1FF31", "#DAC4F7", "#CF5C36")
cd_gradient <- c("337CA0", "438B94", "539987", "62A87B", "72B66F", "82C562", 
                 "92D356", "92D356", "A1E24A", "B1F03D", "C1FF31")
cd_diverging <- "tbd"


### Tests ####

ggplot(iris, aes(x= Species, y = Sepal.Length)) + geom_boxplot(fill = cd_main[1:3]) + cd_theme() +
      ggtitle("This is a Title", "This is a subtitle") 

ggplot(iris, aes(x= 1:nrow(iris), y = Sepal.Length)) + geom_point(color = cd_main[1]) + cd_theme() +
      ggtitle("This is a Title", "This is a subtitle") 
