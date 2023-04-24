library(pliman)

path_soy <- "C:/Users/00090473/RWD"

grain <- image_import("seed.jpg", path = path_soy)
soy <- image_import("soybean.jpg", path = path_soy)
background <- image_import("back.jpg", path = path_soy)

image_combine(grain, soy, background, ncol = 3)

count2 <- 
  analyze_objects(grain,
                  index = "NB") # default


count <- 
  analyze_objects(grain,
                  show_contour = FALSE,
                  marker = "id",
                  show_segmentation = FALSE,
                  col_background = "white",
                  index = "NB") # default


(measures <- get_measures(count))


write.csv(measures, file = "seed info.csv", row.names = FALSE)

#See WD
