% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_cond_A.R
\name{get_cond_alpha}
\alias{get_cond_alpha}
\title{Compute conditional alphas}
\usage{
get_cond_alpha(alphas, Gl, N.Gx, ridgeTerm = FALSE)
}
\arguments{
\item{alphas}{the marginal effects of SNPs on one exposure (Gx).}

\item{Gl}{the reference panel (Gl), such as 1000 Genome}

\item{N.Gx}{the sample size of the Gx. It can be a scalar.}

\item{ridgeTerm}{ridgeTerm = TRUE when the matrix L is singular. Matrix L is obtained from the cholesky decomposition of G0'G0. Default as FALSE}
}
\value{
A vector with conditional estimates which are converted from marginal estimates using the JAM model.
}
\description{
The get_cond_alpha function is to compute the conditional alpha vector for each X
If only one X in the model, please use get_cond_alpha instead of get_cond_A
A sub-step in the get_cond_A function
}
\examples{
data(Gl)
data(betas.Gy)
data(marginal_A)
get_cond_alpha(alphas = marginal_A[, 1], Gl = Gl, N.Gx = 339224, ridgeTerm = TRUE)
}
\references{
Lai Jiang, Shujing Xu, Nicholas Mancuso, Paul J. Newcombe, David V. Conti (2020).
A Hierarchical Approach Using Marginal Summary Statistics for Multiple Intermediates
in a Mendelian Randomization or Transcriptome Analysis. \emph{bioRxiv}
\url{https://doi.org/10.1101/2020.02.03.924241}.
}
\author{
Lai Jiang
}
