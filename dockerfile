FROM r-base:3.4.1
RUN apt-get update
RUN apt-get install -y  libcurl4-gnutls-dev libxml2-dev
RUN apt-get install -y libssl-dev
RUN Rscript -e 'source("https://bioconductor.org/biocLite.R"); biocLite(pkgs=c("sva","minfi","lumi","wateRmelon","limma","methylumi","ChAMP"))'
RUN Rscript -e 'install.packages(c("Hmisc","MASS","sandwich","lmtest"))'
