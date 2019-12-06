#
# Author:   Yu Fen 
# Date:     Decemeber 6, 2019
# Purpose:  Visualize the distribution of sale price and waterfront 
#


# load necessary libraries ----
# install.packages("tidyverse")
library(tidyverse)

# set working directory ----
setwd("~/flatiron/project/housing_prices_project/")

# load necessary data ----
prices_df = read_csv("data/processed/residential.csv")

# filter data to only include sales price and porch flag ----
waterfront_df = 
  prices_df %>%
  select(saleprice, wfntlocation) %>%
  mutate(sale_price_per_100k = saleprice / 100000,
         waterfront_new = if_else(wfntlocation == 0, "No waterfront", "Waterfront"))

# visualize the distribution of sales price by porch ----
waterfront_df %>%
  ggplot(aes(x=sale_price_per_100k, fill=waterfront_new)) +
  geom_histogram() +
  xlab("Sale price per $100K") +
  ylab("Count") +
  labs(title="The distribution of King County home sale prices in 2018") +
  theme_minimal() +
  theme(legend.position="none", plot.title = element_text(hjust = 0.5)) +
  facet_grid(facets = vars(waterfront_new)) +
  ggsave("references/figures/waterfront_new_price_hist.png")

# Make the legend human readable!
# Better yet, have a discucssion if the legend is even necessary
# Make sure the color palette is something you like!




