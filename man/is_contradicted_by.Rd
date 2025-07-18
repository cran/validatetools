% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/contradicted.R
\name{is_contradicted_by}
\alias{is_contradicted_by}
\title{Find out which rules are conflicting}
\usage{
is_contradicted_by(x, rule_name, verbose = interactive())
}
\arguments{
\item{x}{\code{\link[validate:validator]{validate::validator()}} object with rules.}

\item{rule_name}{\code{character} with the names of the rules that are causing infeasibility.}

\item{verbose}{if \code{TRUE} prints the}
}
\value{
\code{character} with conflicting rules.
}
\description{
Find out for a contradicting rule which rules are conflicting. This helps in determining and assessing conflicts in rule sets. Which
of the rules should stay and which should go?
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
\code{\link{is_infeasible}()},
\code{\link{make_feasible}()}
}
\concept{feasibility}
