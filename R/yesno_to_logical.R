#' @title Yes-no-to-logical
#' @details
#' What it says on the tin. Returns `NA` if not a yes or a no
#'
#'
#' @param x `character`
#'
#' @returns `logical`
#' @export
#'
#' @examples
#'
#' yesno_to_logical(c("Yes", "No"))
yesno_to_logical <- function(x) {
  dplyr::case_when(
    x %in% c("Yes", "yes", "y") ~ TRUE,
    x %in% c("No", "no", "n") ~ FALSE,
    TRUE ~ NA
  )
}
