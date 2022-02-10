r = getOption("repos")
r["CRAN"] = "http://cran.r-project.org"
options(repos = r)
install.packages("devtools")
devtools::install_github(
 "diyabc/diyabcGUI",
 subdir = "R-pkg"
)
library(diyabcGUI)
diyabcGUI::dl_all_latest_bin()