/**
 * Phasks
 * 
 * Biblioteca de funcoes 
 * 
 * @version 1.0.0
 * @since 04-03-2014
 */
var Phasks = {

	// Inicia metodos
	init: function() {
		this.setLibs();
	},

	// Adiciona bibliotecas comuns para todos modulos
	setLibs: function() {
  		$('body').on('click', 'a.lightbox', function( e ) {
  			e.preventDefault();
  			$.fancybox( this );
  		});
	},

	// Exibir notificacoes Growl
	showNotification: function( message, success_of_type ) {
		var type;
		if ( typeof success_of_type == 'boolean' ) {
			type = ( success_of_type ? 'success' : 'error' );
		} else {
			type = success_of_type;
		}
		$.bootstrapGrowl( message, { 
			'type': type 
		});
	}
};

$(function() { Phasks.init() });