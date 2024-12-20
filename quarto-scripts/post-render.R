# render the rmd
rmarkdown::render("README.rmd", clean = TRUE, quiet = TRUE)

# git add all _book, detailed commit on qmd files

system("git add _book/")
system("git commit -m 'updating book'")

# git add all _freeze/
system("git add _freeze/")
system("git commit -m 'updating quarto cache'")

system("git add todoget.md")
system("git commit -m 'updating todo list'")