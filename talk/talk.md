
# Introduction
## Motivation: How to create documents?
* Types and distinctions
    * Formal Documents: Journal articles, books, book chapters, theses,
    consulting reports, etc.
    * Informal documents: preliminary analyses, statistical homework, 
    * Online content: web pages, blog posts, forum posts
    * Browser metaphor versus page/slide-based metaphor

* Context
    * When to use reproducible analysis?
    * When to use knitr with R Markdown or LaTeX?

## What is *reproducible analysis*?
* Reproducibility varies on a continuum
* One particular form:
    * code transforms raw data and meta-data into processed data,
    * code runs analyses on the data, and
    * code incorporates analyses into a report
* Ideally, the process involves a one-click build
* Public sharing of document, code, and data is optional, but forms part of gold
standard of scientific openness

* Goes by many names, particularly "reproducible research", but I prefer "reproducible analysis".


\tiny{
See also: \url{http://stats.stackexchange.com/a/15006/183} 
\url{https://github.com/jeromyanglim/rmarkdown-rmeetup-2012/issues/11}}

## Aims of reproducible analysis

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

## Reproducible analysis in R
### Typically:
* Combine R and plain text file format to produce documents (e.g., pdfs,
HTML documents, etc.)

### Popular Instances
* Sweave
* brew
* knitr

\tiny{see also \url{http://cran.r-project.org/web/views/ReproducibleResearch.html}}

## Installation of software used in this talk

* R: <http://www.r-project.org/>
* R Studio: <http://rstudio.org/>
* In R:
    * `install.packages("knitr)`
    * `install.packages("markdown")`
    * `install.packages("xtable")`
    * `install.packages("ggplot2")`
    * `install.packages("lattice")`
* pandoc:
    * <http://johnmacfarlane.net/pandoc/>
* LaTeX distribution:
    * E.g., TeXLive, MikTeX <http://www.latex-project.org/ftp.html>

# Markdown
## What is markdown?
* Simple, readable, intuitive, light-weight markup
* Convert to HTML
* Raw HTML can be interspersed to add functionality
* Various extensions and flaours of markdown
* Popular on websites: e.g., StackOverflow, GitHub, Reddit

\tiny{see also: \url{http://daringfireball.net/projects/markdown/ }}

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


* Uses MathJaX to render LaTeX (and other) equations
* Inserts MathJaX script reference into HTML header

\tiny{getting started: \url{http://jeromyanglim.blogspot.com.au/2010/10/getting-started-with-writing.html}}

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
## knitr, R Markdown, and R Studio
* knitr: R Package developed by Yihui Xie for weaving R (and other languages) with various markup languages
* R Markdown: A file format that combines R code chunks and markdown text which is converted by knitr into markdown, and other formats (e.g., HTML, pdf, etc.).
* R Studio: Open source, cross-platform IDE for R.

## Benefits of knitr
* knitr supports many markups: LaTeX, Markdown, HTML, reStructuredText
* knitr has really nice defaults
* Tidy placement of generated files
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

## RMarkdown Examples
* *Introduction to R Markdown*
* *Statistics homework example*
* *Analysis of Winter Olympic Medals Example*

## Rstudio screenshot
\includegraphics[width=3in]{figures/rstudio-screenshot.png}


## R Code chunks
see http://yihui.name/knitr/options

    ```{r my_chunk_name, some_option='some_value'}
    some_r_code
    ```

## R Code chunks options
### Global options: 

    `r opts_chunk$set(opt = value)` # general form
    `r opts_chunk$set(cache=TRUE)` # e.g, global cache

### Some useful local options

* Hide console input: `echo=FALSE`
* Hide assorted messages: `warning=FALSE, error=FALSE, message=FALSE`
* Hide console output: `results="hide"`
* Display console input as is: `tidy=FALSE`
* Output raw markup:  `results="asis"`


## Inline R Code

    R Markdown     `r 2 + 2`       `r I(2+2)`
    Markdown           `4`             4
    HTML          <code>4</code>       4


## Figures
* Support for multiple figures in a code block
    * also see e.g., `par(mfrow=c(2,2))` or `grid.arrange` 
* Figures and console output can be interspersed in a code chunk
* Various code chunk options
    * see http://yihui.name/knitr/options
    * `fig.width` and `fig.height`
    * `dev` defaults to pdf for LaTeX and png for HTML/markdown


## Tables
* Many options for creating HTML Tables: 
    * R packages: `xtable`, `googleVis`, `R2HTML`, `hwriter`
    * markdown extentions: github, pandoc
    * Custom R code 
* `xtable` is a reasonable option 
* For informal reports just use console output
* css can be added later to control table appearance
* If you require sophisticated tables, you may want to switch to LaTeX


## `xtable` example

    print(xtable(my_data_frame, caption = "My Caption", 
        digits = 3), type = "html", 
        caption.placement = "top", 
        html.table.attributes = 
        "style=\"border: 1px solid black;\"")

\centerline{\includegraphics[height=1.5in]{figures/simple_table.png}}



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
* Maintained by Jeffrey Horner; Developed by devloped JJ Allaire, Jeffrey
Horner, Vicent Marti, and Natacha Porte
* R Package that creates more options for converting Markdown to HTML
* `markdownToHTML("file.md", "file.html", options=c(...))`
* The default options are `"hard_wrap", "use_xhml", "smartypants", "base64_images"`


## Replicating R Studio's `Knit to HTML`

    require(knitr) # for knitting from rmd to md
    require(markdown) # for md to html 
    knit('test.rmd', 'test.md') # creates md 
    markdownToHTML('test.md', 'test.html') # create html
    browseURL(paste('file://', 
        file.path(getwd(),'test.html'), 
        sep='')) # open file in browser

see `?markdownHTMLOptions` for more options. E.g.,

    markdownToHTML('test.md', 'test.html', 
        options='fragment_only')

## pandoc
* pandoc is a library and command-line tool for converting between many
document formats (e.g., HTML, markdown, pdf, LaTeX, docx; also supports multiple plain text slide formats such as beamer)
* Lots of options
* Often requires thought in order to minimise conversion issues


### Example 

    pandoc -s file.html -o file.pdf

## One-click build
* For simple documents, click `knit to HTML` in RStudio
* For complex documents use a command-line option:
    * e.g., `makefile`, `Rscript`, etc.
    * combine with `pandoc`, `knitr` options, `markdown` options, text manipulation tools (e.g., sed, awk, scripting languages) etc. to flexibly produce a varity of documents

# LaTeX
## Example of LaTeX
*If time permits, show example of knitr with LaTeX*


# Conclusion
## Final thoughts
* knitr and R Markdown
    * It makes reproducible analysis as simple as one click
    * Great tool for: 
        * quick analyses for self and colleagues
        * doing homework
        * creating teaching resources
        * blog posts, websites, etc. 
    * Scope to make more complex documents, but at a certain point it may be worth exploring other tools

* knitr and R LaTeX
    * Great for journal articles, theses, books (e.g., citations, cross-references, printed works, equations)

* As your needs get more complex
    * pandoc, makefiles, knitr options, markdown package options, scripts, etc.

## Links

* knitr: <http://yihui.name/knitr/>
* R Studio: <http://rstudio.org/>
* R Markdown with R Studio: <http://rstudio.org/docs/authoring/using_markdown>
* My Posts  <http://jeromyanglim.blogspot.com.au/search/label/reproducible%20research>

### Places to ask questions
* R on StackOverflow: <http://stackoverflow.com/questions/tagged/r>
* LaTeX: <http://tex.stackexchange.com/>
* knitr: <https://github.com/yihui/knitr/issues>

## Thank You

\begin{center}
\LARGE{Questions?}
\end{center}


