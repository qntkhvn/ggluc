#' Loyola Chicago color palettes
#'
#' @param reverse reverse color order
#' @param ... additional method arguments
#' @references \url{https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2}
#' @references \url{https://www.luc.edu/umc/brandstandards/graphicidentity/colorpalette/}
#' @description Loyola University Chicago themed \code{ggplot2} color palettes
#' @examples
#'
#' if (require(ggplot2)) {
#'   ggplot(mtcars, aes(hp, mpg, color = mpg)) +
#'     geom_point(size = 4) +
#'     scale_color_luc_c(reverse = TRUE)
#' }
#' @export
#'


scale_color_luc_c <- function(reverse = FALSE, ...) {
  colors <- grDevices::colorRampPalette(colors = luc_colors)(256)
  if (reverse) {
    colors <- rev(colors)
  }
  ggplot2::scale_color_gradientn(colours = colors, ...)
}

#' @rdname scale_color_luc_c
#' @export


scale_fill_luc_c <- function(reverse = FALSE, ...) {
  colors <- grDevices::colorRampPalette(colors = luc_colors)(256)
  if (reverse) {
    colors <- rev(colors)
  }
  ggplot2::scale_fill_gradientn(colours = colors, ...)
}


#' @rdname scale_color_luc_c
#' @export

scale_color_luc_b <- function(reverse = FALSE, ...) {
  ends <- luc_colors[1:2]
  if (reverse) {
    ends <- rev(ends)
  }
  ggplot2::scale_color_gradient2(high = ends[1], low = ends[2], mid = "white", ...)
}


#' @rdname scale_color_luc_c
#' @export

scale_fill_luc_b <- function(reverse = FALSE, ...) {
  ends <- luc_colors[1:2]
  if (reverse) {
    ends <- rev(ends)
  }
  ggplot2::scale_fill_gradient2(high = ends[1], low = ends[2], mid = "white", ...)
}


#' @rdname scale_color_luc_c
#' @export

scale_color_luc_d <- function(...) {
  ggplot2::discrete_scale("colour", "luc",
                          palette = luc_palette, ...)
}


#' @rdname scale_color_luc_c
#' @export

scale_fill_luc_d <- function(...) {
  ggplot2::discrete_scale("fill", "luc",
                          palette = luc_palette, ...)
}


#' @rdname luc_palette
#' @param n number of colors
#' @export
#' @examples
#' luc_palette(2)

luc_palette <- function(n) {
  c(luc_colors[1], luc_colors[2], "gray60", "black", "white")[1:n]
}

luc_colors <- c("#922247", "#FEBD18")
