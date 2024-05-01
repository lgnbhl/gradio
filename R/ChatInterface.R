#' @title ChatInterface
#'
#' @description \url{https://www.gradio.app/docs/gradio/chatinterface}
#'
#' @param fn fn The function to wrap the chat interface around. 
#'  Should accept two parameters: a string input message and list of two-element 
#'  lists of the form [[user_message, bot_message], ...] representing the 
#'  chat history, and return a string response.
#' @param ... Additional arguments, see documentation.
#'
#' @return An gradio Python object.
#'
#' @examples
#' \dontrun{
#' library(gradio)
#' my_function <- function(message = NULL, history = NULL) {
#'   return(message)
#' }
#' 
#' demo <- ChatInterface(fn = my_function, title = "My Chatbot")
#' demo$launch()
#' }
#'
#' @export
ChatInterface <- function(fn, ...) {
  
  py_obj <- gradio$ChatInterface(fn = fn, ...)
  
  return(py_obj)
}
