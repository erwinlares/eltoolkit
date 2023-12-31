% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rac-csv.R
\name{rac_csv}
\alias{rac_csv}
\title{read-and-clean csv}
\usage{
rac_csv(path)
}
\arguments{
\item{path}{path is the file path to the csv file}
}
\value{
returns a tibble
}
\description{
rac_csv() leverages \code{readr::read_csv()} and \code{janitor::clean_names()} in order to read in a csv file \emph{and} clean the variable names in one fell swoop.
}
\examples{

\dontrun{
data <- fancy_csv(<path/filename.csv>)
}

}
