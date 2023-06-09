% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/subject_specific_objects.R
\name{subject_specific_objects}
\alias{subject_specific_objects}
\title{Constructing subject-specific objects required for Gibbs sampler (for subjects with incomplete observations only).}
\usage{
subject_specific_objects(k, q, a_full, a_avail, cor_all)
}
\arguments{
\item{k}{A numeric scalar. Number of latent factors.}

\item{q}{A numeric scalar. Number of time points in the complete factor covariance matrix.}

\item{a_full}{A q-dimensional numeric vector. Complete time sorted from early to late.}

\item{a_avail}{A vector of time when gene expressions are available, sorted from early to late.}

\item{cor_all}{A matrix of dimension (kq, kq). Correlation matrix of latent factor scores.}
}
\value{
Subject-specific objects needed for Gibbs sampler.
}
\description{
Constructing subject-specific objects required for Gibbs sampler (for subjects with incomplete observations only).
}
\details{
This function is used to extract subject-specific factor covariance matrix from the complete factor covariance matrix, through constructing subject-specific indicator matrix, which indicates time indexes when gene expression are available.
}
\examples{
# See examples in vignette
vignette("bsfadgp_regular_data_example", package = "DGP4LCF")
vignette("bsfadgp_irregular_data_example", package = "DGP4LCF")

}
