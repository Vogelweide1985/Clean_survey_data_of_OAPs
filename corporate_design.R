library(RColorBrewer)

cd_theme <- function(base_size = 11,
                      base_family = "",
                      base_line_size = base_size / 170,
                      base_rect_size = base_size / 170){
      theme_minimal(base_size = base_size, 
                    base_family = base_family,
                    base_line_size = base_line_size) %+replace%
            theme(
                  plot.title = element_text(
                        color = rgb(25, 43, 65, maxColorValue = 255), 
                        face = "bold",
                        hjust = 0),
                  axis.title = element_text(
                        color = rgb(105, 105, 105, maxColorValue = 255),
                        size = rel(0.75)),
                  axis.text = element_text(
                        color = rgb(105, 105, 105, maxColorValue = 255),
                        size = rel(0.5)),
                  panel.grid.major = element_line(
                        rgb(105, 105, 105, maxColorValue = 255),
                        linetype = "blank"),   
                  panel.grid.minor = element_line(
                        rgb(105, 105, 105, maxColorValue = 255),
                        linetype = "blank", 
                        size = rel(4)),   
                  
                  complete = TRUE
            )
}
