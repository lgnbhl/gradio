# global reference to gradio (will be initialized in .onLoad)
gradio <- NULL

.onLoad <- function(libname, pkgname) {
  # import modules
  # delay load module (will only be loaded when accessed via $)
  gradio <<- reticulate::import("gradio", delay_load = TRUE)
  
  invisible(TRUE)
}
