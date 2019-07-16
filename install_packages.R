libs <- c(
  'devtools',
  'tidyverse',
  'forecast',
  'lubridate',
  'timetk',
  'broom',
  'sweep',
  'dbplyr',
  'rsconnect'
)

gitlibs <- c(
  'snowflakedb/dplyr-snowflakedb'
)

install.packages(libs, repos="http://cran.rstudio.com/")

devtools::install_github(gitlibs)
devtools::install_github('tidyverse/multidplyr', ref="0085ded4048d7fbe5079616c40640dbf5982faf2")
