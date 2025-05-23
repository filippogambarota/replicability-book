
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

last update: 2025-05-23 (17:42)

## chapters/\_chapter4-source.qmd

  - Line 0: TODO: table with method (rows), (colums)properties, id exact
    or extension, bayesian or not, open source code, citation
  - Line 11: TODO check the final table and the overall structure of the
    paper because it’s great also the references are amazing
  - Line 32: TODO the idea here is also to keep track of the methods
    providing a clear overview
  - Line 107: While real-world examples are important, to understand the
    replication methods from a statistical point of view, simulating
    simplified examples is a good strategies. Furthermore, simulating
    data is nowadays considered an important tool to teach and
    understand statistical methods TODO add reference about simulating
    for learning . In additions, Monte Carlo simulations are necessary
    to estimate statistical properties (e.g., statistical power or
    type-1 error rate) of complex models.

## chapters/changelog.qmd

  - Line 0: TODO adapt a changelog strategy as lakens
    <https://lakens.github.io/statistical_inferences/changelog.html>

## chapters/chapter3.qmd

  - Line 243: TODO: review and smooth this section
  - Line 259: TODO see if the remainder of the section can be shortened,
    it seems a bit repetitive
  - Line 350: TODO: review and smooth this section
  - Line 402: GIOVANNI: i have added a small section and simulation
    about typeM error by gelman. I think that is interesting because
    shows the amount of effect size inflation given the sample size when
    selecting for significance
  - Line 709: TODO: describe standardized vs unstandardized
  - Line 713: GIOVANNI: is sigma the residual variance or the effect
    size sampling variability?

## chapters/glossary.qmd

  - Line 0: TODO put better this glossary maybe using the
    <https://debruine.github.io/quarto-glossary/> package

## docs/chapters/chapter3.html

  - Line 475: TODO: review and smooth this section
  - Line 484: TODO see if the remainder of the section can be shortened,
    it seems a bit repetitive
  - Line 607: TODO: review and smooth this section
  - Line 654: GIOVANNI: i have added a small section and simulation
    about typeM error by gelman. I think that is interesting because
    shows the amount of effect size inflation given the sample size when
    selecting for significance
  - Line 756: TODO: describe standardized vs unstandardized
  - Line 758: GIOVANNI: is sigma the residual variance or the effect
    size sampling variability?
