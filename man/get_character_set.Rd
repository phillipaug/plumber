% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/content-types.R
\name{get_character_set}
\alias{get_character_set}
\title{Request character set}
\usage{
get_character_set(content_type = NULL)
}
\arguments{
\item{content_type}{Request Content-Type header}
}
\value{
Default to \code{UTF-8}. Otherwise return \code{charset} defined in request header.
}
\description{
Request character set
}
