var Phasks = Phasks || {};

Phasks.Colors = {
	init: function() {
		this.setColorPicker();
		this.setModalActions();
	},
	setColorPicker: function() {
		$('.color-picker').minicolors()
	},
	setModalActions: function() {
		
		$('body')
			.on( 'ajax:beforeSend', '#new_color', function() {
				$(this).find('.actions input').attr('disabled', true).addClass('disabled');
			})
			.on( 'ajax:complete', '#new_color', function( e, response ) {
				if ( response.status == 201 ) {
					data = response.responseJSON;
					$(this).find('.actions input').removeAttr('disabled').removeClass('disabled');
					var item = $('#list-color table tbody tr').eq(0).clone();
					item.find('td').eq(0).html( data.name );
					item.find('td').eq(1).html( data.hex );
					$('#list-color table tbody').append( item );
					$(this).find('input[type="text"]').val( '' );
					
					var select = $('#project_color_id');
					if ( select.length ) {
						select.find('option:selected').removeAttr('selected');
						var option = $('<option>')
							.attr( 'selected', 'selected' )
							.attr( 'value', data.id )
							.html( data.name );
						select.append( option );
					}
					
					Phasks.showNotification( 'Cor adicionada com sucesso!', true );
				}
				else {
					Phasks.showNotification( 'Erro ao adicionar cor', false );
				}
			});
	}
};

$(function() { Phasks.Colors.init() });