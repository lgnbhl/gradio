# Gradio
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)

## Install

```r
library(remotes)
remotes::install_github("lgnbhl/gradio")
```

### install gradio

```r
install_gradio()
```

## `Interface()`

Example using the `Interface()` function. 

```r
library(gradio)

greet <- function(name) {
  paste0("Hello ", name, "!")
}

demo <- Interface(fn=greet, inputs="text", outputs="text")
demo$launch()   
```

    Running on local URL:  http://127.0.0.1:7860
    
    To create a public link, set `share=True` in `launch()`.

<img src="man/figures/example-interface.png" alt="Example of Gradio interface"/>

## `ChatInterface()`

Example using the `ChatInterface()` function.

```r
library(gradio)

echo <- function(message, history) {
  return(message)
}

demo <- ChatInterface(
  fn = echo, 
  examples = list("hello", "hola", "salut"), 
  title = "Echo Bot"
)
demo$launch()   
```

    Running on local URL:  http://127.0.0.1:7860
    
    To create a public link, set `share=True` in `launch()`.

<img src="man/figures/example-chatinterface.png" alt="Example of Gradio ChatInterface"/>

