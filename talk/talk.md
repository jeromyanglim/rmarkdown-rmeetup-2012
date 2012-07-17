
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

## What is *reproducible analysis*?
* Reproducibility varies on a continuum
* I operationalise it as: 
    * code transforms raw data and meta-data into processed data,
    * code runs analyses on the data, and
    * code incorporates analyses into a report
* Ideally, the process has a one-click build
* Public sharing of document, code, and data is optional, but forms part of gold
standard of scientific openness

* Goes by many names, particularly "reproducible research", but I prefer "reproducible analysis".
 


\tiny{
See also: \url{http://stats.stackexchange.com/a/15006/183} 
\url{https://github.com/jeromyanglim/rmarkdown-rmeetup-2012/issues/11}}

## Aims of Reproducible

* Ability to reproduce analysis
* Increase accuracy
    * Ability to verify analyses are consistent with intentions
    * Ability to review analysis choices
* Increase clarity of communication
* Increased trustworthiness
    * Increased accuracy +
    * Ability for others to verify
* Extensibility
    * Ability to easily modify or re-use existing analyses

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
* knitr supports many markups: LaTeX, Markdown, HTML, reStructuredText
* knitr has really nice defaults
* Simplified figure production
     * automatically print ggplot2 and lattice figures
     * print figures by default
     * permit interspersing of figures and console output
* Greater extensibility: 
    * output options
    * supports languages other than R
* Simplified caching
* And more: <http://yihui.name/slides/2012-knitr-RStudio.html>

## Rstudio
* Benefits of Rstudio as IDE for R
    * Open source
    * Works on Linux, Mac, and Windows
    * Many useful features
    * It just works
    * Tight integration with knitr 

* But many other options
    * Emacs with ESS
    * Vim with R plugin
    * Eclipse with StatET
    * etc.

## Rstudio screenshot
\includegraphics[width=3in]{figures/rstudio-screenshot.png}


## R Code chunks

Global options: 


## Installation 
* Install Rstudio
* Install knitr `install.packages("knitr")`

## Inline R Code

* \texttt{\`r 2 + 2\` becomes \`4\` which becomes 4.
* `r I(2+2)`
*     Markdown              `4`                  4
    HTML             <code>4</code>            4


## Figures


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
## Links

* knitr: <http://yihui.name/knitr/>
* R Studio: <http://rstudio.org/>
* R Markdown with R Studio: <http://rstudio.org/docs/authoring/using_markdown>

* Places to ask questions
    * R on StackOverflow: <http://stackoverflow.com/questions/tagged/r>
    * LaTeX: <http://tex.stackexchange.com/>
    * knitr: <https://github.com/yihui/knitr/issues>




