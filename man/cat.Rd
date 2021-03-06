% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/cat.r
\name{cat}
\alias{cat}
\alias{cat_}
\alias{cat_aliases}
\alias{cat_allocation}
\alias{cat_count}
\alias{cat_fielddata}
\alias{cat_health}
\alias{cat_indices}
\alias{cat_master}
\alias{cat_nodes}
\alias{cat_pending_tasks}
\alias{cat_plugins}
\alias{cat_recovery}
\alias{cat_segments}
\alias{cat_shards}
\alias{cat_thread_pool}
\title{Use the cat Elasticsearch api.}
\usage{
cat_(verbose = FALSE, index = NULL, fields = NULL, ...)

cat_aliases(verbose = FALSE, index = NULL, fields = NULL, ...)

cat_allocation(verbose = FALSE, index = NULL, fields = NULL, ...)

cat_count(verbose = FALSE, index = NULL, fields = NULL, ...)

cat_segments(verbose = FALSE, index = NULL, fields = NULL, ...)

cat_health(verbose = FALSE, index = NULL, fields = NULL, ...)

cat_indices(verbose = FALSE, index = NULL, fields = NULL, ...)

cat_master(verbose = FALSE, index = NULL, fields = NULL, ...)

cat_nodes(verbose = FALSE, index = NULL, fields = NULL, ...)

cat_pending_tasks(verbose = FALSE, index = NULL, fields = NULL, ...)

cat_plugins(verbose = FALSE, index = NULL, fields = NULL, ...)

cat_recovery(verbose = FALSE, index = NULL, fields = NULL, ...)

cat_thread_pool(verbose = FALSE, index = NULL, fields = NULL, ...)

cat_shards(verbose = FALSE, index = NULL, fields = NULL, ...)

cat_fielddata(verbose = FALSE, index = NULL, fields = NULL, ...)
}
\arguments{
\item{verbose}{If TRUE (default) the url call used printed to console.}

\item{index}{Index name}

\item{fields}{Fields to return, only used with \code{fielddata}}

\item{...}{Curl args passed on to \code{\link[httr]{POST}}}
}
\description{
Use the cat Elasticsearch api.
}
\details{
See \url{http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/cat.html}
for the cat API documentation.

Note how \code{\link{cat_}} has an underscore at the end to avoid conflict with the function
\code{\link{cat}} in base R.
}
\examples{
\dontrun{
# list Elasticsearch cat endpoints
cat_()

# Do other cat operations
cat_aliases()
cat_aliases(index='plos')
cat_allocation()
cat_allocation(verbose=TRUE)
cat_count()
cat_count(index='plos')
cat_count(index='gbif')
cat_segments()
cat_segments(index='gbif')
cat_health()
cat_indices()
cat_master()
cat_nodes()
cat_pending_tasks()
cat_plugins()
cat_recovery(verbose=TRUE)
cat_recovery(index='gbif')
cat_thread_pool()
cat_thread_pool(verbose=TRUE)
cat_shards()
cat_fielddata()
cat_fielddata(fields='body')

# Curl options
library("httr")
cat_count(config=verbose())
}
}

