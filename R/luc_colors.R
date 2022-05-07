#' Loyola Chicago color palettes
#'
#' @param reverse reverse color order
#' @param ... arguments passed to methods
#' @references \url{https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2}
#' @description Loyola Chicago themed \code{ggplot2} color palettes
#' @examples
#'
#' if (require(ggplot2)) {
#'   x <- ggplot(mtcars, aes(x = disp, y = mpg, color = mpg)) +
#'     geom_point()
#'   x + scale_color_luc_c(reverse = TRUE)
#'   x + scale_color_luc_cd(midpoint = 20)
#'   x + aes(color = factor(am)) + scale_color_luc_d()
#'   x + aes(color = factor(gear)) + scale_color_luc_d()
#'   x + aes(color = factor(carb)) + scale_color_luc_d()
#'   x + aes(color = factor(am)) + scale_fill_luc_d()
#'
#'   y <- ggplot(mtcars, aes(x = cyl, fill = factor(am))) + geom_bar(position = "dodge")
#'
#'   ggplot(mpg, aes(y = hwy, x = reorder(model, hwy), color = displ, fill = hwy)) +
#'     geom_col(position = "dodge") +
#'     coord_flip() +
#'     facet_wrap(~ year) +
#'     scale_fill_luc_cd(midpoint = 20) +
#'     scale_color_luc_c()
#' }
#' @export
#'

#' @rdname scale_color_luc_c
#' @export

scale_color_luc_c <- function(reverse = FALSE, ...) {
  colors <- grDevices::colorRampPalette(colors = luc_colors)(256)
  if (reverse) {
    colors <- rev(colors)
  }
  ggplot2::scale_color_gradientn(colours = colors, ...)
}

#' @rdname scale_fill_luc_c
#' @export

scale_fill_luc_c <- function(reverse = FALSE, ...) {
  colors <- grDevices::colorRampPalette(colors = luc_colors)(256)
  if (reverse) {
    colors <- rev(colors)
  }
  ggplot2::scale_fill_gradientn(colours = colors, ...)
}


#' @rdname scale_color_luc_cd
#' @export

scale_color_luc_cd <- function(reverse = FALSE, ...) {
  ends <- luc_colors[1:2]
  if (reverse) {
    ends <- rev(ends)
  }
  ggplot2::scale_color_gradient2(high = ends[1], low = ends[2], mid = "white", ...)
}

#' @rdname scale_fill_luc_cd
#' @export

scale_fill_luc_cd <- function(reverse = FALSE, ...) {
  ends <- luc_colors[1:2]
  if (reverse) {
    ends <- rev(ends)
  }
  ggplot2::scale_fill_gradient2(high = ends[1], low = ends[2], mid = "white", ...)
}


#' @rdname scale_color_luc_d
#' @export

scale_color_luc_d <- function(...) {
  ggplot2::discrete_scale("colour", "luc",
                          palette = luc_pal_categorical, ...)
}


#' @rdname scale_fill_luc_d
#' @export

scale_fill_luc_d <- function(...) {
  ggplot2::discrete_scale("fill", "luc",
                          palette = luc_pal_categorical, ...)
}


#' @rdname luc_pal_categorical
#' @param n number of colors
#' @export
#' @examples
#' luc_pal_categorical(2)

luc_pal_categorical <- function(n) {
  c(luc_colors[1], luc_colors[2], "gray60", "black", "white")[1:n]
}

luc_colors <- c("#922247", "#FEBD18")
