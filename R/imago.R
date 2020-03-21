#' Read in an Imago world map
#'
#' The resultant simplefeatures object has a `iso3c` column
#' so you can bind values. A most-certainly non-iso3c value of
#' `lakes` is used to identify inland bodies of water.
#'
#' @param ... passed on to [sf::st_read()]
#' @export
#' @examples
#' plot(imago())
imago <- function(...) {
  st_read(
    system.file("geojson", "imago-final.geojson", package = "imago"), ...
  )
}