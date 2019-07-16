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
  'tidyverse/multidplyr',
  'snowflakedb/dplyr-snowflakedb'
)

install.packages(libs, repos="http://cran.rstudio.com/")

devtools::install_github(gitlibs)
