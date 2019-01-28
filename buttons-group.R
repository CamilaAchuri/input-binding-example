library(purrr)

buttonGroup <- function (id, labels, values) {
	tagList(
		tags$script(src = 'buttons-group.js'),
		tags$div(
			class = 'buttons-group',
			id = id,
			map(seq_along(labels), function (index) {
				tags$input(
					type = 'radio',
					value = values[index],
					name = id,
					labels[index]
				)
			})
		)
	)
}
