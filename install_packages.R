# ─────────────────────────────────────────────────────────────
# Dependency installer — Applied Statistical Modelling in R
# Usage:  source("install_packages.R")
# ─────────────────────────────────────────────────────────────

required <- c(
  # Core data manipulation & visualisation
  "tidyverse", "lubridate", "scales", "broom",

  # Statistical modelling
  "car",           # VIF, Type II ANOVA
  "lmtest",        # Breusch-Pagan heteroscedasticity test
  "MASS",          # stepwise selection, robust methods
  "interactions",  # simple slopes, Johnson-Neyman intervals
  "boot",          # bootstrap validation

  # Visualisation & reporting
  "GGally", "corrplot", "gridExtra",
  "knitr", "kableExtra", "rmarkdown"
)

missing <- required[!required %in% installed.packages()[, "Package"]]

if (length(missing)) {
  message("Installing ", length(missing), " package(s): ",
          paste(missing, collapse = ", "))
  install.packages(missing, repos = "https://cloud.r-project.org")
} else {
  message("All dependencies already installed.")
}

invisible(lapply(required, function(p) {
  suppressPackageStartupMessages(library(p, character.only = TRUE))
}))

message("Environment ready — ", length(required), " packages loaded.")
