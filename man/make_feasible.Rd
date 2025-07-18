% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/feasible.R
\name{make_feasible}
\alias{make_feasible}
\title{Make an infeasible system feasible.}
\usage{
make_feasible(x, ..., verbose = interactive())
}
\arguments{
\item{x}{\code{\link[validate:validator]{validate::validator()}} object with the validation rules.}

\item{...}{passed to \code{\link[=detect_infeasible_rules]{detect_infeasible_rules()}}}

\item{verbose}{if \code{TRUE} print information to the console}
}
\value{
\code{\link[validate:validator]{validate::validator()}} object with feasible rules.
}
\description{
Make an infeasible system feasible, by removing the minimum (weighted) number of rules, such that the remaining
rules are not conflicting.
This function uses \code{\link[=detect_infeasible_rules]{detect_infeasible_rules()}} for determining the rules to be removed.
Note that this may not result in your desired system, because some rules may be more important.
This can be mediated by supplying weights for the rules. Default weight is 1.
}
\details{
Also \code{make_feasible()} does not check for contradictions in \code{if} rules, so it is wise to also check
\code{detect_contradicting_if_rules()} after making the system feasible.
}
\examples{
rules <- validator( x > 0)

is_infeasible(rules)

# infeasible system!
rules <- validator( rule1 = x > 0
                  , rule2 = x < 0
                  )

is_infeasible(rules)

detect_infeasible_rules(rules, verbose=TRUE)

# but we want to keep rule1, so specify that it has an Inf weight
detect_infeasible_rules(rules, weight=c(rule1=Inf), verbose=TRUE)

# detect and remove
make_feasible(rules, weight=c(rule1=Inf), verbose = TRUE)

# find out the conflict with rule2
is_contradicted_by(rules, "rule2", verbose = TRUE)
}
\seealso{
Other feasibility: 
\code{\link{detect_boundary_cat}()},
\code{\link{detect_boundary_num}()},
\code{\link{detect_contradicting_if_rules}()},
\code{\link{detect_infeasible_rules}()},
\code{\link{is_contradicted_by}()},
\code{\link{is_infeasible}()}
}
\concept{feasibility}
