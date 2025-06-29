% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fmapr.R
\name{fmapr}
\alias{fmapr}
\title{Apply a function row-wise on a data frame with parallelism}
\usage{
fmapr(.df, .f, ncores = NULL, pb = FALSE, ...)
}
\arguments{
\item{.df}{A data frame whose rows will be iterated over.}

\item{.f}{A function applied to each row, which receives a named list.}

\item{ncores}{Integer. Number of cores to use for parallel processing. Default is `NULL` (sequential).}

\item{pb}{Logical. Whether to display a progress bar. Default is `FALSE`.}

\item{...}{Additional arguments passed to `.f`.}
}
\value{
A list of results returned by applying `.f` to each row as a list.
}
\description{
Applies a function `.f` to each row of a data frame `.df`, with optional parallelism and progress bar.
Each row is converted to a named list before being passed to `.f`, enabling flexible access to variables by name.
}
\examples{
df <- data.frame(name = c("Mister", "Hipster"), age = c(30, 25))

# Create personalized messages
fmapr(df, function(row) paste(row$name, "is", row$age, "years old"))

# Row-wise model formulas
formulas <- data.frame(
  response = c("y1", "y2"),
  predictor = c("x1", "x2"),
  stringsAsFactors = FALSE
)

fmapr(formulas, function(row) {
  reformulate(row$predictor, row$response)
})

}
