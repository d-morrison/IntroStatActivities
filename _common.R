# knitr chunk options ----------------------------------------------------------

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  message = FALSE,
  #cache = TRUE,
  echo = FALSE, # hide code unless otherwise noted in chunk options
  out.width = "70%",
  fig.align = 'center',
  fig.width = 6,
  fig.asp = 0.618,  # 1 / phi
  fig.show = "hold",
  message = FALSE
)
options(show.signif.stars = FALSE)

# packages ---------------------------------------------------------------------

suppressMessages(library(knitr))
suppressMessages(library(tidyverse))
suppressMessages(library(mosaic))
suppressMessages(library(car))
suppressMessages(library(readr))

# suppressMessages(library(ggmosaic))
# suppressMessages(library(skimr))
# suppressMessages(library(kableExtra))
# suppressMessages(library(janitor))
# suppressMessages(library(openintro))
# suppressMessages(library(scales))
# suppressMessages(library(infer))
# suppressMessages(library(patchwork))
# suppressMessages(library(gghighlight))
# suppressMessages(library(maps))
# suppressMessages(library(gridExtra))
# suppressMessages(library(ggraph))
# suppressMessages(library(igraph))
# suppressMessages(library(RColorBrewer))




# dplyr options ----------------------------------------------------------------

options(dplyr.print_min = 6, dplyr.print_max = 6)

# ggplot2 theme ----------------------------------------------------------------
# to be replaced with theme_openintro...

theme_set(theme_minimal(base_size = 14))

