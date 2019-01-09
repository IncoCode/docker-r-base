FROM r-base:3.5.1

# install required tools
RUN apt-get update && \
    apt-get -y install openjdk-8-jdk \
                       libaio1 \
                       libcurl4-openssl-dev \
                       libssl-dev \
                       libxml2-dev && \
    apt-get -y autoremove; \
    apt-get -y autoclean; \
    apt-get clean

# install required libraries
RUN R CMD javareconf
COPY install_packages.R /
RUN Rscript install_packages.R
