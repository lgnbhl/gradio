#' @title Interface
#'
#' @description \url{https://www.gradio.app/docs/gradio/interface}
#'
#' @param fn fn The function to wrap an interface around. Often a machine learning 
#' model's prediction function. Each parameter of the function corresponds to 
#' one input component, and the function should return a single value or a 
#' tuple of values, with each element in the tuple corresponding to one output 
#' component.
#' @param inputs inputs 
#' @param outputs outputs 
#' @param ... Additional arguments, see documentation.
#'
#' @return An gradio Python object.
#'
#' @examples
#' \dontrun{
#' library(gradio)
#' greet <- function(name) {
#'   return(paste0("Hello, ", name , "!"))
#' }
#' 
#' demo <- Interface(
#'   fn=greet,
#'   inputs= list("text"),
#'   outputs= list("text"),
#' )
#' demo$launch()
#' }
#'
#' @export
Interface <- function(fn, inputs, outputs, ...) {
  
  py_obj <- gradio$Interface(
    fn = fn,
    inputs = inputs,
    outputs = outputs,
    ...
  )
  
  return(py_obj)
}
