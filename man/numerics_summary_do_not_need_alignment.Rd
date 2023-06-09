% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/numerics_summary_do_not_need_alignment.R
\name{numerics_summary_do_not_need_alignment}
\alias{numerics_summary_do_not_need_alignment}
\title{Numerical summary for important continuous variables that do not need alignment.}
\usage{
numerics_summary_do_not_need_alignment(
  burnin = 0,
  thin_step = 1,
  pred_x_truth_indicator = FALSE,
  pred_x_truth = NULL,
  gibbs_after_mcem_combine_chains_result
)
}
\arguments{
\item{burnin}{A numeric scalar. The saved samples are already after burnin; therefore the default value for this parameter here is 0. Can discard further samples if needed.}

\item{thin_step}{A numeric scalar. The saved samples are already after thinning; therefore the default value for this parameter here is 1. Can be further thinned if needed.}

\item{pred_x_truth_indicator}{A logical value. pred_x_truth_indicator = TRUE means that truth of predicted gene expressions are available. The default value is FALSE.}

\item{pred_x_truth}{Only needed if pred_x_truth_inidcator = TRUE. An array of dimension (n, p, num_time_test), storing true gene expressions in the testing data.}

\item{gibbs_after_mcem_combine_chains_result}{A list of objects returned from the function 'gibbs_after_mcem_combine_chains'.}
}
\value{
Convergence assessment for important continuous variables that do not need alignment, and posterior summary for predicted gene expressions.
}
\description{
Numerical summary for important continuous variables that do not need alignment.
}
\details{
This function corresponds to Algorithm 2: Steps 3 and 4 in the main manuscript; therefore reader can consult the paper for more explanations.
}
\examples{
# See examples in vignette
vignette("bsfadgp_regular_data_example",  package = "DGP4LCF")

}
