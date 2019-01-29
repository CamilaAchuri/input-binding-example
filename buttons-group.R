library(purrr)

buttonGroup <- function (id, labels, values = NULL, file = NULL, format = NULL , class = "buttonStyle", classImg = "imageStyle") {
	
  format <- format %||% "png"
  file <- file %||% "img/btn/"
  print(file)
  tagList(
		tags$script(src = 'buttons-group.js'),
		tags$div(
			class = 'buttons-group',
			id = id,
			map(seq_along(labels), function (index) {
				tags$button(
					#type = 'button',
					id = values[index],
					#name = id,
					#value = labels[index],
					class = class,
					tags$img(src = paste0(file, labels[index], '.', format), class = classImg)
				)
			})
		)
	)
}
