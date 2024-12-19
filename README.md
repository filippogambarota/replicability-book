
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Using the Project

## Modify the content

To modify the content just clone the repository, modify the file and
commit and push the changes. To modify the actual content of the book
(i.e., Chapters) you can modify the `quarto` (`.qmd`) files within
`chapters/`. Even if you do not re-render the files you modify the `qmd`
files and I will render the project. They are just plain text files.

## Rendering the book

In addition to file changing, it is possible to re-render the book.
However to do this one need to have **Quarto** installed along with all
the required packages used within each chapter.

If you want to render the book the best option is to:

- have R and R Studio installed (not mandatory R Studio but easier)
- have Quarto installed
- install the `renv` package within R Studio
  (`install.packages("renv")`)
- open the `rep3.Rproj` with R Studio

The `renv` package is a way to manage and install all the R packages
used in a project and should install all the required packages.

To re-render the book you can open a terminal within the book folder and
run:

``` bash
quarto render
```

This should render all chapters within the `_book` folder. Then you can
run:

``` bash
quarto preview
```

To open a live preview of the book. The first time will be slow the
rendering process but given the cache system, the next rendering will be
done only for changed files.

## Preview the book

The last updated version of the book can be found at:
`_book/index.html`. Just opening this file with a standard browser is
enough to navigate and see the final result. If the book is not
re-rendered the updates to the single `*.qmd` files will not be
integrated.

# Todoget Report

last update: 2024-12-19 (18:33)

## index.qmd

- Line 4: TODO expand this section a little bit
- Line 8: TODO describe book contents and chapters here
- Line 12: The book is written in [Quarto](https://quarto.org/). All
  materials and source code GitHub. The main language used in the
  statistical part of the book is [R](https://www.r-project.org/). In
  addition, we wrote several functions used in the examples collected
  into an R package TODO put R package name used through the book. You
  are free to fork, share and reuse contents. In addition, we consider
  the book as a shared resources thus if you have some suggestions,
  additions or any way to extend or improve the content you can submit a
  pull request on Github or contact the author (see the
  @sec-contributing section).
- Line 18: TODO study a little bit how the PR method could work

## chapters/chapter3.qmd

- Line 246: TODO: review and smooth this section
- Line 262: TODO see if the remainder of the section can be shortened,
  it seems a bit repetitive
- Line 353: TODO: review and smooth this section
- Line 708: TODO: describe standardized vs unstandardized
- Line 709: TODO: describe and
- Line 713: GIOVANNI: is sigma the residual variance or the effect size
  sampling variability?

## chapters/chapter4.qmd

- Line 0: TODO: table with method (rows), (colums)properties, id exact
  or extension, bayesian or not, open source code, citation
- Line 11: TODO check the final table and the overall structure of the
  paper because it’s great also the references are amazing
- Line 32: TODO the idea here is also to keep track of the methods
  providing a clear overview
- Line 103: In light of the formalization presented in Chapter XXX and
  XXX we can formulate a general method to simulate data from the
  generative model ( TODO insert citation to figures lavagna e pavel ).
- Line 105: TODO introduce here the notation for effect size and
  sampling variance

## chapters/glossary.qmd

- Line 0: TODO put better this glossary maybe using the
  <https://debruine.github.io/quarto-glossary/> package

## chapters/changelog.qmd

- Line 0: TODO adapt a changelog strategy as lakens
  <https://lakens.github.io/statistical_inferences/changelog.html>

## notes/multilevel-model.md

- Line 0: A natural extension of the previous model where is by
  including another hierarchical layer where $\mu_{\theta}$ effects are
  sampled from another distribution. This distribution can be considered
  as the probability distribution of true effects across a research
  field. Also the heterogeneity values can be considered as sampled from
  a probability distribution. In the @fig- we presented the model
  assuming to have two effects in a given research area. Given a certain
  ROPE TODO check if rope is defined we have a proportion of true and
  false effects ($\omega$) for each different effect across a research
  field.

## notes/README.rmd

- Line 77: TODO check if putting this
- Line 92: TODO check if putting this

## extra/miller2009.html

- Line 241: // TODO: Check when it could be a function
  (<https://github.com/zenorocha/clipboard.js/issues/860>)
- Line 352: // TODO in 1.5, we should make sure this works without a
  callout special case
