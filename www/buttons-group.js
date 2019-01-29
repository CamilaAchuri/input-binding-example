var buttonGroupBinding = new Shiny.InputBinding();
var buttonClicked = undefined;

$.extend(buttonGroupBinding, {
  find: function(scope) {
		// Encuentra el elemento que se ha creado
		return $(scope).find('.buttons-group')
  },
  getValue: function(el) {
		// El manejador del evento
		// Devuelve valor a R
 //return
  if (!buttonClicked) {
    return null
  }
  var id = buttonClicked.getAttribute('id')
  return id
  },
   setValue: function(el, value) {
   //console.log(value)
  },
  subscribe: function(el, callback) {
		// Enlaza eventos al elemento que se creo	
		$(el).on('click.buttonGroupBinding', function (event) {
		  var target = event.target
		  if (!target.matches('button')) {
		    return
		  }
		  buttonClicked = target
		  callback();
		})
  },
  unsubscribe: function(el) {
  }
});

Shiny.inputBindings.register(buttonGroupBinding);
