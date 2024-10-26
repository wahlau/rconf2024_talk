# Install required packages (if not already installed)
if (!require("knitr")) install.packages("knitr", dependencies = TRUE)
if (!require("tinytex")) install.packages("tinytex", dependencies = TRUE)

# complete the work flow
library(knitr)
library(tinytex)
# knit("rconf_knitr.tex")
knitr::knit2pdf("rconf_knitr.tex", output = 'output.tex')
