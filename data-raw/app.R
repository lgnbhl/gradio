library(reticulate)

#py_install("gradio", method = "conda")

gr <- reticulate::import("gradio")

my_function <- function(message = NULL, history = NULL) {
  return(message)
}

demo <- ChatInterface(fn = my_function)
demo$launch(
  #server_name = '0.0.0.0' # remove for testing
)

greet <- function(name) {
  return(paste0("Hello, ", name , "!"))
}

demo = gr$Interface(
  fn=greet,
  inputs= list("text"),
  outputs= list("text"),
)

demo$launch(
  server_name = "0.0.0.0"
)
