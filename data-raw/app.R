library(gradio)

my_function <- function(message = NULL, history = NULL) {
  return(message)
}

demo <- ChatInterface(fn = my_function)
demo$launch(
  server_name = '0.0.0.0' # remove for testing
)
