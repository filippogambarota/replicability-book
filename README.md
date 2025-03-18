
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

last update: 2025-03-18 (10:50)

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
    additions or any way to extend or improve the content you can submit
    a pull request on Github or contact the author (see the
    @sec-contributing section).
  - Line 18: TODO study a little bit how the PR method could work

## chapters/chapter5.qmd

  - Line 736: TODO fix the image, ggplot version
  - Line 905: TODO fix the image, ggplot version
  - Line 932: TODO fix the image, ggplot version

## chapters/chapter4.qmd

  - Line 0: TODO: table with method (rows), (colums)properties, id exact
    or extension, bayesian or not, open source code, citation
  - Line 11: TODO check the final table and the overall structure of the
    paper because it’s great also the references are amazing
  - Line 32: TODO the idea here is also to keep track of the methods
    providing a clear overview
  - Line 103: In light of the formalization presented in Chapter XXX and
    XXX we can formulate a general method to simulate data from the
    generative model ( TODO insert citation to figures lavagna e pavel
    ).
  - Line 105: TODO introduce here the notation for effect size and
    sampling variance

## chapters/changelog.qmd

  - Line 0: TODO adapt a changelog strategy as lakens
    <https://lakens.github.io/statistical_inferences/changelog.html>

## chapters/chapter3.qmd

  - Line 249: TODO: review and smooth this section
  - Line 265: TODO see if the remainder of the section can be shortened,
    it seems a bit repetitive
  - Line 356: TODO: review and smooth this section
  - Line 408: GIOVANNI: i have added a small section and simulation
    about typeM error by gelman. I think that is interesting because
    shows the amount of effect size inflation given the sample size when
    selecting for significance
  - Line 714: TODO: describe standardized vs unstandardized
  - Line 718: GIOVANNI: is sigma the residual variance or the effect
    size sampling variability?

## chapters/glossary.qmd

  - Line 0: TODO put better this glossary maybe using the
    <https://debruine.github.io/quarto-glossary/> package
