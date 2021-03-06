% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/objects.R
\docType{class}
\name{ErResult-class}
\alias{ErResult-class}
\alias{ErResult}
\alias{getRetainedfasta}
\alias{getRetainedfasta,ErResult-method}
\title{accessor functions for objects of ErResult S4 class, outputs of the
check_khedel function}
\usage{
getRetainedfasta(theObject)

\S4method{getRetainedfasta}{ErResult}(theObject)
}
\arguments{
\item{theObject}{an object of ErResult class}
}
\description{
accessor functions for objects of ErResult S4 class, outputs of the
check_khedel function

accessors for ErResult objects
}
\section{Slots}{

\describe{
\item{\code{retained_fasta}}{sequences with ER retention signals}

\item{\code{retained_fasta}}{sequences with ER retention signals}
}}

\examples{
aa <- readAAStringSet(system.file("extdata","small_prot.fasta",
package = "SecretSanta"), use.names = TRUE)
inp <- CBSResult(in_fasta = aa)
sp <- signalp(input_obj = inp, version = 4, organism = 'euk',
run_mode = 'starter')
er <- check_khdel(sp, pattern = "prosite")
class(er)
}
