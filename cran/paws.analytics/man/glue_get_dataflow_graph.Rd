% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_get_dataflow_graph}
\alias{glue_get_dataflow_graph}
\title{Transforms a Python script into a directed acyclic graph (DAG)}
\usage{
glue_get_dataflow_graph(PythonScript)
}
\arguments{
\item{PythonScript}{The Python script to transform.}
}
\description{
Transforms a Python script into a directed acyclic graph (DAG).
}
\section{Request syntax}{
\preformatted{svc$get_dataflow_graph(
  PythonScript = "string"
)
}
}

\keyword{internal}
