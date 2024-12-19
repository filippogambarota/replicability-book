
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

## Preview the book

The last updated version of the book can be found at:
`_book/index.html`. Just opening this file with a standard browser is
enough to navigate and see the final result. If the book is not
re-rendered the updates to the single `*.qmd` files will not be
integrated.

# Todoget Report

last update: 2024-12-19 (12:09)

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

- Line 167: TODO: review this formula too lenghty
- Line 238: TODO: review and smooth this section
- Line 255: TODO see if the remainder of the section can be shortened,
  it seems a bit repetitive
- Line 347: TODO: review and smooth this section
- Line 408: The selection process implicit in publication decisions
  increases the likelihood of observing extreme and statistically
  significant results as the original studies. The replications studies
  (without assuming heterogeneity) have usually higher sample sizes
  bringing estimated effects toward the true (and generally lower) mean
  effect. TODO describe better the figure and the simulation The
  @fig-hes shows a simulation where extreme values are selected from a
  population of effects centered on zero for an original experiment with
  a small sample size. Then, using the same effects we simulated other
  experiments with increasing sample size as usually done in replication
  projects. Clearly the effects shrink toward the mean and in this case
  are no longer significant. @Perugini2014-bx proposed a method to
  adjust the estimation of the original effect size when estimating the
  probability of replication. TODO check perugini work .
- Line 623: TODO check if pawel is actually estimating the probability
  of individual replication
- Line 630: The actual model will be discussed in Chapter x. But the
  crucial point is that when formalizing a replication is important to
  take into account all the sources of information as well as applyning
  an appropriate weight according to degree of heterogeneity between the
  original study and the replication study. The model has been applied
  to the data from the Psychological replication project TODO ref here
  suggesting better performance when including heterogeneity and the
  shrinkage factor. We adapted the @Pawel2020-cm model creating a more
  general version that can be easily declined for simulating and
  analyzing data from replication studies. The model is presented in
  @fig-general-model.
- Line 646: TODO: describe standardized vs unstandardized
- Line 654: TODO: describe and
- Line 765: TODO expand more here from pawel and maybe Ulrich, R., &
  Miller, J. (2020). Questionable research practices may have little
  effect on replicability. eLife, 9, e58237.
  <https://doi.org/10.7554/eLife.58237>
- Line 767: TODO: model in stan
- Line 771: TODO small section about the slides deck 3 of the last
  summer school with the meta-analysis model based on the hierarchical
  model above

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
