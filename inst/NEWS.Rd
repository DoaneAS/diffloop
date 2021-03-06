\name{diffloopnews}
\title{diffloop News}
\encoding{UTF-8}

\section{Version 1.1.0}{
  \itemize{
    \item Normalization factors in differential loop calling are
    inferred from the loops object if present.
    \item Added functions to annotate loops with differential 
    expression and subset only differential enhancer-promoter loops.
    \item Added function to annotate anchors with numeric scores
    from .bigwig and .bed files.
    \item Functions that support integration of transcription data.
    \item Support for reading in files processed by mango now available
     in the loopsMake.mango function. 
    \item Implemented mango bias corrected statistics in mangoCorrection function.
    \item Significant rewrite of the vignette.
    \item Consolidation of loopFit object to loops object. 
  }
}

\section{Version 1.0.0}{
  \itemize{
    \item Initial release to Bioconductor.
    \item Added NEWS file.
    \item Fixes to documentation.
    \item Improved automated ploting including different colors.
    \item Enhanced loop annotation.
  }
}