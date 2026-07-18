#' Parallel Regression Specification (logical)
#'
#' Whether and how the parallel regression assumption is relaxed in an ordinal
#' regression model.
#'
#' @param values A logical value or `NULL`. See the examples below.
#'
#' @details This parameter is used by ordinal regression models specified by
#'   `parsnip::ordinal_reg()`, for example `parsnip::set_engine("clm")`. It
#'   controls whether the regression coefficients are shared across all ordinal
#'   thresholds (e.g. proportional odds in logit-linked models) or allowed to
#'   vary (generalized ordered logit). The default is `NULL` (not set), which
#'   uses the engine default.
#'
#'   In addition to logical values, formulas and lists are accepted:
#'
#'   * `TRUE ~ x1 + x2`: predictors on the RHS are parallel; all others are
#'     non-parallel.
#'   * `FALSE ~ x1 + x2`: predictors on the RHS are non-parallel; all others
#'     are parallel.
#'   * `c(TRUE ~ x1, FALSE ~ x2)`: `x1` is parallel, `x2` is non-parallel;
#'     no other predictors may be present.
#'
#'   Formula and list forms are not tunable through this parameter object.
#' @examples
#' values_parallel_reg
#' parallel_reg()
#' @export
parallel_reg <- function(values = values_parallel_reg) {
  new_qual_param(
    type = "logical",
    values = values,
    label = c(parallel_reg = "Parallel Regression"),
    finalize = NULL
  )
}

#' @rdname parallel_reg
#' @export
values_parallel_reg <- c(TRUE, FALSE)
