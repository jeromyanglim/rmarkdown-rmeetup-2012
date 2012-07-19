# Overview of repository
This repository includes the files used in 

* [YouTube Video of Talk](http://youtu.be/XqzHnYLr5BE)
* [PDF of Slides](https://github.com/jeromyanglim/rmarkdown-rmeetup-2012/blob/master/talk/main.pdf?raw=true)
* See the `examples` directory for four R Markdown examples. 
* While developing the presentation I tried to follow principles of open science by doing a lot of my thinking in a public way. This thinking is recorded using the github issue tracker. See the list of [issues here](https://github.com/jeromyanglim/rmarkdown-rmeetup-2012/issues?state=closed)
* The talk itself was a beamer presentation. I used raw latex for the header `talk/main.tex` and markdown (see `talk.md`) for the body which was converted by pandoc into latex beamer (see `talk/makefile`).

# Abstract of talk

Simple Reproducible Analysis with knitr, R Markdown, and RStudio

Reproducible analysis represents a process for transforming text, code, and data to produce reproducible artefacts including reports, journal articles, slideshows, theses, and books.  Reproducible analysis is important in both industry and academic settings for ensuring a high quality product.  R has always provided a powerful platform for reproducible analysis.  However, in the first half of 2012, several new tools have emerged that have substantially increased the ease with which reproducible analysis can be performed. In particular, knitr, R Markdown, and RStudio combine to create a user-friendly and powerful set of open source tools for reproducible analysis.

This talk will provide an introduction to Markdown and using knitr and R Markdown to produce reproducible reports.  In partiuclar, it will discuss caching slow analyses, producing attractive plots and tables, and using RStudio as an IDE.  The talk will also show how the markdown package on CRAN can be used to work with other R development environments and workflows for report production.  If time permits, the talk may touch on how knitr can be used with other markup languages including LaTeX and HTML.  

Jeromy Anglim is a Post Doctoral Fellow in the Melbourne Business School.  He has spent the last 10 years teaching statistics in university settings. He has also worked as a statistical consultant in market research, selection and recruitment, and organisational climate survey research.  He has been using R for the last five years and regularly blogs about the power of R at http://jeromyanglim.blogspot.com

Relevant links:

* knitr: http://yihui.name/knitr/ 
* RStudio: http://rstudio.org/
* Markdown: http://daringfireball.net/projects/markdown/
* R Markdown:
  http://jeromyanglim.blogspot.com.au/2012/05/getting-started-with-r-markdown-knitr.html
* R Reproducible Analysis: http://cran.r-project.org/web/views/ReproducibleResearch.html


# Suggestions
I sent out an online query about things that people might like me to cover:

* interested in a practical talk on using Sweave with R, both to be able to
  produce quality tables, and reports that can be updated with new data (ie,
  like monthly reports)
* Also, if you could touch on latex, as R users who don't have an academic
  background won't be familiar with this.
* From a practical perspective, knowing any issues to install either sweave or
  latex would be useful.
* "I would like to know how to integrate LaTex and R or exporting R results for
  writing reports or journal papers."
* "I'd be interested in hearing of any experiences you've had with creating
  reproducible presentations, as well as reports. I recently used the slidify
  package (http://ramnathv.github.com/slidify/) and would like to learn
  more."
* "RStudio as an IDE sounds interesting"
* "Text manipulation in R. Sed? Awk? Perl? Grep?"
* "I would be interested in automate LaTex to web enabled form of reporting"
* "How large a dataset can knitr deal with?"
*  "I am interested in how to use R to automate marketing operations reports
   including campaign reporting. Particularly if there is an ability to
   integrate through to MS Office products for commentary and end reporting"
* "Best way of producing reproducible and visually appealing slideshows."
* "integration of Knitr with RStudio, so I'm interested in learning more about
  that"
* integrate LaTex and R or exporting R results for writing reports or journal papers.
* I'm interested in how he uses RStudio & the applications of his reproducible
research (how does it get published? does he publish the whole report with
source? Share with his peers? Just remember it for later.
* I would be interested in experience-based best practices for keeping analyses
organised as well as reproducible. Any tips about streamlining the re-use of
analyses with different data sets would be good too.
* Latex
* I'm interested in reproducible analysis because it seems to offer the ability
to complete more experiments in less time. I'm most interested in the planning
that goes into it and how you would still have the flexibility to follow
results.
* Macros
* Any experience integrating with the new generation of javascript visualisation
tools like d3?
* workflow and good practice (e.g. spreading source code over multiple files vs
single file) in using Srstudio and markdown as an IDE, also in integrating them
with unit testing (e.g. Hadley Wickham's testthat package).



