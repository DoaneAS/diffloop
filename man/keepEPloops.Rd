% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotation.R
\docType{methods}
\name{keepEPloops}
\alias{keepEPloops}
\alias{keepEPloops,loops,GRanges,GRanges-method}
\title{Keep enhancer-promoter loops}
\usage{
keepEPloops(lto, enhancer, promoter)

\S4method{keepEPloops}{loops,GRanges,GRanges}(lto, enhancer, promoter)
}
\arguments{
\item{lto}{A loops object whose loops will be annotated}

\item{enhancer}{GRanges object corresponding to locations of enhancer peaks}

\item{promoter}{GRanges object corresponding to locations of promoter regions}
}
\value{
A loops object with an additional row 'loop.type' in the rowData slot
in addition to the gene.tss (which has the gene name) and the
anchor.tss which shows the anchor(s) near the promoter region for the gene.
}
\description{
\code{keepEPloops} adds a column to the rowData slot of a loops
object that shows the corresponding TSS of a gene name based on
the promoter GRanges. The loops object is then subsetted and returns
only loops that are enhancer-promoter.
}
\details{
This function works similar to the \code{annotateLoops} function but
returns only enhancer-promoter loops that are defined in this function.
Additionally, this function returns the gene name(s) of the nearby 
transcription start sites in a comma-separted list if there are multiple.
These gene names are defined by the promoter GRanges mcol slot.
}
\examples{
rda<-paste(system.file('rda',package='diffloop'),'loops.small.rda',sep='/')
load(rda)
h3k27ac_j <- system.file('extdata','Jurkat_H3K27ac_chr1.narrowPeak',package='diffloop')
h3k27ac <- rmchr(padGRanges(bedToGRanges(h3k27ac_j), pad = 1000))
promoter <- padGRanges(getHumanTSS(c('1')), pad = 1000)
# small.ep <- keepEPloops(loops.small, h3k27ac, promoter)

}

