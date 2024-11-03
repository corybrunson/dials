#' Ordinal Regression Link Function (character)
#'
#' The link function of an ordinal (generalized linear) regression model.
#'
#' @param values A character string of possible values. See
#'   `values_ordinal_link` in examples below.
#'
#' @details
#' This parameter is used in `parsnip::set_engine('polr')`.
#'
#' @examples
#' values_ordinal_link
#' ordinal_link()
#' @export
ordinal_link <- function(values = values_ordinal_link) {
  new_qual_param(
    type = "character",
    values = values,
    label = c(ordinal_link = "Ordinal Link"),
    finalize = NULL
  )
}

#' @rdname ordinal_link
#' @export
values_ordinal_link <- c("logistic", "probit", "loglog", "cloglog", "cauchit")
