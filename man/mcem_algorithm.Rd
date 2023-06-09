% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mcem_algorithm.R
\name{mcem_algorithm}
\alias{mcem_algorithm}
\title{Monte Carlo Expectation Maximization (MCEM) algorithm to return the Maximum Likelihood Estimate (MLE) of DGP Parameters.}
\usage{
mcem_algorithm(
  ind_x,
  ig_parameter = 10^-2,
  increasing_rate = 0.5,
  prob_conf_interval = 0.9,
  iter_count_num = 5,
  x,
  mcem_parameter_setup_result,
  ipt_x = FALSE,
  missing_list = NULL,
  missing_num = NULL
)
}
\arguments{
\item{ind_x}{A logical value. ind_x = TRUE uses the model including the intercept term for subject-gene mean in within-MCEM-Gibbs sampler; otherwise uses the model without the intercept term.}

\item{ig_parameter}{A numeric scalar. Hyper-parameters for the prior Inverse-Gamma distribution.}

\item{increasing_rate}{A numeric scalar. Rate of increasing the sample size.}

\item{prob_conf_interval}{A numeric scalar. The probability that the true change in the Q-function is larger than the lower bound.}

\item{iter_count_num}{A numeric scalar. Maximum number of increasing the sample size; a larger number than this would end the algorithm.}

\item{x}{A list of n elements. Each element is a matrix of dimension (p, q_i), storing the gene expression observed at q_i time points for the ith subject.}

\item{mcem_parameter_setup_result}{A list of objects returned from the function 'mcem_parameter_setup'.}

\item{ipt_x}{A logical value. ind_x = TRUE denotes the need to impute for NAs of gene expression. The default value is ind_x = FALSE.}

\item{missing_list}{A list of n elements. Each element is a matrix of dimension (missing_num, 2): each row corresponds to the position of one NA that needs imputation; first and second columns denote the row and column indexes, respectively, of the NA in the corresponding person's matrix of gene expression.}

\item{missing_num}{A vector of n elements. Each element corresponds to a single person's number of NAs that needs imputation.}
}
\value{
The MLE of DGP parameters.
}
\description{
This function is used to return the MLE of DGP parameters.
}
\examples{
# See examples in vignette
vignette("bsfadgp_regular_data_example", package = "DGP4LCF")
vignette("bsfadgp_irregular_data_example", package = "DGP4LCF")

}
