% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sugar.R
\docType{methods}
\name{padGRanges}
\alias{padGRanges}
\alias{padGRanges,GRanges-method}
\title{Pad a GRanges object}
\usage{
padGRanges(gro, upstream = 0, downstream = 0, pad = 0)

\S4method{padGRanges}{GRanges}(gro, upstream = 0, downstream = 0, pad = 0)
}
\arguments{
\item{gro}{A granges object}

\item{upstream}{Distance in BP added upstream}

\item{downstream}{Distance in BP added downstream}

\item{pad}{Distance in BP added}
}
\value{
A GRanges object with adjusted start and end values
}
\description{
\code{padGRanges} takes a GRanges object and adds or substracts 
distance based on user-defined input. Upstream and downstream
consider strand information when available. Specify only either
pad or upstream/downstream when using
}
\examples{
#Read in CTCF Jurkat peaks in
ctcf_j <- system.file('extdata','Jurkat_CTCF_chr1.narrowPeak',package = 'diffloop')
ctcf <- bedToGRanges(ctcf_j)
ctcf.pad <- padGRanges(ctcf, pad = 1000)


}

