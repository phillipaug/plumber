% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/serializer.R
\name{endpoint_serializer}
\alias{endpoint_serializer}
\title{Endpoint Serializer with Hooks}
\usage{
endpoint_serializer(
  serializer,
  preexec_hook = NULL,
  postexec_hook = NULL,
  aroundexec_hook = NULL
)
}
\arguments{
\item{serializer}{Serializer method to be used.  This method should already have its initialization arguments applied.}

\item{preexec_hook}{Function to be run directly before a \link{PlumberEndpoint} calls its route method.}

\item{postexec_hook}{Function to be run directly after a \link{PlumberEndpoint} calls its route method.}

\item{aroundexec_hook}{Function to be run around a \link{PlumberEndpoint} call. Must handle a \code{.next} argument to continue execution. \lifecycle{experimental}}
}
\description{
This method allows serializers to return \code{preexec}, \code{postexec}, and \code{aroundexec} (\lifecycle{experimental}) hooks in addition to a serializer.
This is useful for graphics device serializers which need a \code{preexec} and \code{postexec} hook to capture the graphics output.
}
\details{
\code{preexec} and \code{postexec} hooks happened directly before and after a route is executed.
These hooks are specific to a single \link{PlumberEndpoint}'s route calculation.
}
\examples{
# The definition of `serializer_device` returns
# * a `serializer_content_type` serializer
# * `aroundexec` hook
print(serializer_device)
}
