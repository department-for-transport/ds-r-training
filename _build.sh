# Lint the Rmd files, if they fail then return an error in Travis
# note: this is a bit of a workaround as lintR doesn't seem to support
#       book linting out of the box.
for f in *.Rmd; do
lint_result=$(Rscript -e "lintr::lint('$f')")
echo $lint_result

  if [ -z "$lint_result" ];
  then
    echo "file $f passed"
  else
    echo "file $f failed lint"
  fi
done

# Build the book!
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
