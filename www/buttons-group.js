var buttonGroupBinding = new Shiny.InputBinding();

$.extend(buttonGroupBinding, {
  find: function(scope) {
		// Encuentra el elemento que se ha creado
		return $(scope).find('.buttons-group')
  },
  getValue: function(el) {
		// El manejador del evento
		// Devuelve valor a R
		return $('input:radio[name="' + (el.id) + '"]:checked').val();
  },
  subscribe: function(el, callback) {
		// Enlaza eventos al elemento que se creo	
		$(el).on('change.buttonGroupBinding', function (event) {
			callback();
		})
  },
  unsubscribe: function(el) {
  }
});

Shiny.inputBindings.register(buttonGroupBinding);
