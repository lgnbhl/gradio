#' Install gradio Python module
#'
#' @param method method
#' @param conda conda
#'
#' @return (Invisible) `TRUE` if the Conda environment was created successfully.
#' @export
install_gradio <- function(method = "auto", conda = "auto") {
  reticulate::py_install("gradio", method = method, conda = conda)
  
  invisible(TRUE)
}
