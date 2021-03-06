% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/objects.R
\docType{class}
\name{SignalpResult-class}
\alias{SignalpResult-class}
\alias{SignalpResult}
\alias{setMatfasta}
\alias{setMatfasta,SignalpResult-method}
\alias{getMatfasta,SignalpResult-method}
\alias{getMatfasta}
\alias{setSPversion,SignalpResult-method}
\alias{setSPversion}
\alias{getSPversion,SignalpResult-method}
\alias{getSPversion}
\alias{setSPtibble,SignalpResult-method}
\alias{setSPtibble}
\alias{getSPtibble,SignalpResult-method}
\alias{getSPtibble}
\title{accessor functions for objects of SignalpResult S4 class, intermediate and
final outputs of the signalp prediction step}
\usage{
setMatfasta(theObject, mature_fasta)

\S4method{setMatfasta}{SignalpResult}(theObject, mature_fasta)

\S4method{getMatfasta}{SignalpResult}(theObject)

\S4method{setSPversion}{SignalpResult}(theObject, sp_version)

\S4method{getSPversion}{SignalpResult}(theObject)

\S4method{setSPtibble}{SignalpResult}(theObject, sp_tibble)

\S4method{getSPtibble}{SignalpResult}(theObject)
}
\arguments{
\item{theObject}{\code{\link{SignalpResult}} object}

\item{mature_fasta}{sequences with clipped signal peptides, AAStringSet
object}

\item{sp_version}{version of signalp used to generate SignalpResult object}

\item{sp_tibble}{parsed signalp output in tabular format}
}
\value{
SignalpResult object
}
\description{
accessor functions for objects of SignalpResult S4 class, intermediate and
final outputs of the signalp prediction step

accessors for SignalpResult objects
}
\section{Slots}{

\describe{
\item{\code{mature_fasta}}{fasta with mature sequences}

\item{\code{sp_version}}{version of \code{signalp} used to generate this object}

\item{\code{sp_tibble}}{Object of class tibble, columns:
\itemize{
\item gene_id - unique id of the sequence
\item Cmax - max raw cleavage site score (C-score)
\item Cpos - amino acid position with max C-score
\item Cparsed - sp2 and sp3: remove this field?
\item Ymax - max combied cleavage site score (Y-score)
\item Ypos - amino acid position with max Y-score
\item Smax - max signal peptide score
\item Spos - amino acid position with max S-score
\item Smean - the average S-score of the possible signal peptide
(from position 1 to the position immediately before the maximal Y-score)
\item Prediction - final desision on whether the protein is secreted
}}
}}

\examples{
# read fasta file in AAStringSet object
aa <- readAAStringSet(system.file("extdata","sample_prot_100.fasta",
package = "SecretSanta"))
# create an instance of CBSResult class
sr <- CBSResult(in_fasta = aa[1:20])
# run signalpeptide prediction and create fully populated instance of
# SignalpResult class
step1_sp2 <- signalp(sr, version = 2, organism = 'euk', run_mode = "starter",
legacy_method = 'hmm')
# access specific slots:
getOutfasta(step1_sp2)
getInfasta(step1_sp2)
getSPtibble(step1_sp2)
getSPversion(step1_sp2)
getMatfasta(step1_sp2)
}
