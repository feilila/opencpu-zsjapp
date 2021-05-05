# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

hello <- function(myname = ""){
  if(myname == ""){
    stop("Tell zsj your name!")
  }
  list(
    message = paste("hello", myname, "! This is", R.Version()$version.string)
  )
}

readfile <- function(zfile, ...){
  if(!grepl(".stdf.gz$", zfile)){
    stop("Uploaded file must be a .stdf.gz file!")
  }
  zz <- file(zfile, "rb")
  bindata <- readBin(zz,integer(),...);

  ww <- file("ccc.stdf.gz","wb")
  writeBin(bindata,ww)
  close(ww)
}
