# reference: https://www.gradio.app/main/guides/deploying-gradio-with-docker
# idea: https://stackoverflow.com/a/73454736

FROM rocker/r-ver:4.1.0

WORKDIR /code
COPY app.R app.R

## Install R packages
RUN R -q -e 'install.packages("remotes")'
RUN R -q -e 'remotes::install_github("rstudio/reticulate")'
RUN R -q -e 'remotes::install_github("lgnbhl/gradio")'

# Install gradio
RUN R -q -e 'reticulate::install_miniconda()'
RUN R -q -e 'reticulate::conda_create(envname = "r-gradio", packages = c("python=3.8.13"))'
# RUN R -q -e 'reticulate::conda_list()'
RUN R -q -e 'reticulate::conda_install(envname = "r-gradio", packages = "gradio", pip = TRUE)'

ENV GRADIO_SERVER_NAME="0.0.0.0"

EXPOSE 7860

CMD ["Rscript", "app.R"]
