% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/docs_bulk.r
\name{docs_bulk}
\alias{docs_bulk}
\title{Use the bulk API to create, index, update, or delete documents.}
\usage{
docs_bulk(filename, raw = FALSE, ...)
}
\arguments{
\item{filename}{Path to a file to load in the bulk API}

\item{raw}{(logical) Get raw JSON back or not.}

\item{...}{Pass on curl options to the \code{\link[httr]{POST}} call.}
}
\description{
Use the bulk API to create, index, update, or delete documents.
}
\details{
More on the Bulk API:
   \url{http://www.elasticsearch.org/guide/en/elasticsearch/guide/current/bulk.html}.
}
\examples{
\dontrun{
plosdat <- system.file("examples", "plos_data.json", package = "elastic")
docs_bulk(plosdat)
aliases_get()
index_delete(index='plos')
aliases_get()

# Curl options
library("httr")
plosdat <- system.file("examples", "plos_data.json", package = "elastic")
docs_bulk(plosdat, config=verbose())
}
}

