# R training book

[![Build Status](https://travis-ci.org/departmentfortransport/ds-r-training.svg?branch=book_setup)](https://travis-ci.org/departmentfortransport/ds-r-training) Available at: https://departmentfortransport.github.io/ds-r-training/



## To contribute

1. Clone the repo
2. Make a new branch for your chapter `git checkout -b name_of_branch`
3. Add/edit content in the `.Rmd` files. 
4. Create a pull request, review the content, and merge into master (merging into master will trigger the book website to be updated automatically)

### Packrat

[Packrat](https://github.com/rstudio/packrat) is used to ensure the book can be built using any packages used in the book. Make sure that you use packrat when working on the repo (run `packrat::restore()` to make sure you're library is the same as the books) and run `packrat::snapshot()` when you add a new package. 