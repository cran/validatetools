#' Tools for validation rules
#'
#' `validatetools` is a utility package for managing validation rule sets
#' that are defined with [validate::validate()]. In production systems
#' validation rule sets tend to grow organically and accumulate redundant or
#' (partially) contradictory rules. `validatetools` helps to identify problems
#' with large rule sets and includes simplification methods for resolving
#' issues.
#' 
#' @section Problem detection:
#' 
#' The following methods allow for problem detection:
#' 
#' \itemize{
#'   \item [is_infeasible()] checks a rule set for feasibility, i.e. 
#'   if it contains contradicting rules making it infeasible. An infeasible system must be corrected to be useful, because 
#'   it means that no record can satisfy all rules.
#'   \item [detect_infeasible_rules()] detects which rules cause infeasibility.
#'   \item [detect_contradicting_if_rules()] detects which `if` rules are conflicting.
#'   \item [detect_boundary_num()] shows for each numerical variable the allowed range of values.
#'   \item [detect_boundary_cat()] shows for each categorical variable the allowed range of values.
#'   \item [detect_fixed_variables()] shows variables whose value is fixated by the rule set.
#'   \item [detect_redundancy()] shows which rules are already implied by other rules.
#' }
#' 
#' @section Simplifying rule set:
#'
#' The following methods detect possible simplifications and apply them to a rule set.
#' 
#' \itemize{
#'   \item [substitute_values()]: replace variables with constants. 
#'   \item [simplify_fixed_variables()]: substitute the fixed variables with their values in a rule set.
#'   \item [simplify_conditional()]: remove redundant (parts of) conditional rules.
#'   \item [remove_redundancy()]: remove redundant rules.
#' }
#' 
#' @references Statistical Data Cleaning with Applications in R, Mark van der Loo and Edwin de Jonge, ISBN: 978-1-118-89715-7
#' 
#' @name validatetools
#' @importFrom methods substituteDirect
#' @importFrom stats setNames
#' @importFrom utils head tail
#' @import validate
"_PACKAGE"
