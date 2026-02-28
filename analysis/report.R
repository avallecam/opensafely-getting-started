library(tidyverse)

# Read CSV data from output folder
data <- read_csv(here::here("output", "dataset.csv.gz")) %>% 
    dplyr::mutate(patient_id = as.integer(patient_id))

# Create histogram
plot <- ggplot(data, aes(x = age)) +
    geom_histogram()

# Save as PNG
ggsave(
  plot = plot,
  filename = "report.png", path = here::here("output"),
)