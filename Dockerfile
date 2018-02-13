FROM bioconductor/release_core2
## install cimpl on top of Bioconductor's core2 image:
## this is built on base2, so it contains everything in base2,
## plus a selection of core Bioconductor packages.


MAINTAINER Alistair Rust


## install the R version of cimpl from it's GitHub repository
RUN mkdir /tmp/downloads && \
    cd /tmp/downloads && \
    git clone https://github.com/NKI-CCB/cimpl.git && \
    R CMD INSTALL cimpl


## pull in the mouse mm9 genome to be able to run the example
## vignette

## set BioConductor to a local mirror
## not sure if the EBI mirror is still a valid mirror
## RUN Rscript -e 'options(BioC_mirror = "http://mirrors.ebi.ac.uk/bioconductor");'

RUN Rscript -e 'biocLite(c("BSgenome.Mmusculus.UCSC.mm9"));'

