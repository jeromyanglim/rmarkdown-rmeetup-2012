
# Introduction
## Types of documents
* Types
    * Journal articles, books, book chapters, theses
    * Preliminary analyses
    * Online content: web pages, blog posts, forum posts
    * Slide show presentations
    * Consulting reports

* Key Distinctions
    * online versus paper-based
    * document or presentation
    * audience: formal versus informal (e.g., self, collaborators)

# Markdown
## Overview of Markdown
* Ultra simplified and intuitive set of markup
* Limited set of markup
* HTML passed straight through
* Various extensions 
* Popular on websites: e.g., StackOverflow, GitHub, Reddit

## Headings

\includegraphics[width=4in]{figures/headings.png}

## Basic formatting
\includegraphics[width=4in]{figures/basic-formatting.png}

## Paragraphs
\includegraphics[width=4in]{figures/paragraphs.png}

## Dot points
\includegraphics[width=4in]{figures/dot-points.png}

## Equations
\includegraphics[width=4in]{figures/equations.png}

## Hyperlinks
\includegraphics[width=4in]{figures/links.png}

## Images
\includegraphics[width=4in]{figures/images.png}

## Code
\includegraphics[width=4in]{figures/code.png}

## Quotes
\includegraphics[width=4in]{figures/quote.png}


## Tables
\includegraphics[width=4in]{figures/tables.png}

## Raw HTML
\includegraphics[width=4in]{figures/html.png}



# knitr and R Markdown

## Benefits of knitr
## Benefits of Rstudio
* Open source
* Works on Linux, Mac, and Windows
* 

## R Code chunks

## Installation
* Install Rstudio
* Install knitr `install.packages("knitr")`

## Inline R Code

* \texttt{\`r 2 + 2\` becomes \`4\` which becomes 4.
* `r I(2+2)`
*     Markdown              `4`                  4
    HTML             <code>4</code>            4


## Tables
* Many options for creating HTML Tables: 
    * R packages: `xtable`, `googleVis`, `R2HTML`, `hwriter`
    * markdown extentions: github, pandoc
    * Custom R code 
* `xtable` is a reasonable option 
* For informal reports just use console output
* css can be added later to control table appearance


## `xtable` example

    print(xtable(my_data_frame, caption = "My Caption", 
        digits = 3), type = "html", 
        caption.placement = "top", 
        html.table.attributes = 
        "style=\"border: 1px solid black;\"")

\centerline{\includegraphics[height=1.5in]{figures/simple_table.png}}


## Rstudio

## Caching
Basic workflow:

* If knitting is quick, don't cache.
* If knitting takes more than ten seconds add \texttt{\`}`r
opts_chunk$set(cache=TRUE)`\texttt{\`} to the top of R Markdown file.
* If caching is causing problems, delete contents of `cache` folder, 
* But if caching is causing problems and knitting takes a long time, name R code
chunks and use the `dependson` option in knitr
(see http://yihui.name/knitr/options). 
Naming also permits selective deletion of named R code chunks in the
cache directory.

## R package: `markdown` 
* Devloped by Jeffrey Horner
* R Package that creates more options for converting Markdown to HTML

## Replicating R Studio 

    require(knitr) # required for knitting from rmd to md
    require(markdown) # required for md to html 
    knit('test.rmd', 'test.md') # creates md 
    markdownToHTML('test.md', 'test.html') # create html
    browseURL(paste('file://', 
        file.path(getwd(),'test.html'), 
        sep='')) # open file in browser

see `?markdownHTMLOptions` for more options. E.g.,

    markdownToHTML('test.md', 'test.html', 
        options='fragment_only')

# LaTeX
## knitr with LaTeX
* Sexpr
* Code chunk delimiters


# Conclusion
## Final thoughts




