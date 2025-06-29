% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/freduce.R
\name{freduce}
\alias{freduce}
\title{Functional reduce}
\usage{
freduce(
  .x,
  .f,
  .init = NULL,
  .right = FALSE,
  .accumulate = FALSE,
  .simplify = TRUE
)
}
\arguments{
\item{.x}{A vector or list to reduce.}

\item{.f}{A binary function to apply. Can be given as a function or quoted (e.g., `\`+\``).}

\item{.init}{Optional initial value passed to [Reduce()]. If `NULL`, reduction starts from the first two elements.}

\item{.right}{Logical. If `TRUE`, reduction is performed from right to left.}

\item{.accumulate}{Logical. If `TRUE`, returns a list of intermediate results (like a scan).}

\item{.simplify}{Logical. If `TRUE` and all intermediate results are length 1, the output is simplified to a vector.}
}
\value{
A single value (default) or a list/vector of intermediate results if `.accumulate = TRUE`.
}
\description{
Apply a binary function iteratively over a list or vector, reducing it to a single value or a sequence of intermediate results.
This is a wrapper around [Reduce()] that supports optional initial values, right-to-left evaluation,
accumulation of intermediate steps, and output simplification.
}
\examples{
freduce(1:5, `+`)                          # => 15
freduce(letters[1:4], paste0)             # => "abcd"
freduce(list(1, 2, 3), `*`)               # => 6
freduce(1:3, `+`, .init = 10)             # => 16
freduce(1:3, paste0, .right = TRUE)       # => "321"
freduce(1:4, `+`, .accumulate = TRUE)     # => c(1, 3, 6, 10)

}
