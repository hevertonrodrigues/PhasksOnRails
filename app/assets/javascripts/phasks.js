var Phasks = {
	init: function() {
		this.setLibs();
	},
	setLibs: function() {
  		$('body').on('click', 'a.lightbox', function( e ) {
  			e.preventDefault();
  			$.fancybox( this );
  		});
	}
};

$(function() { Phasks.init() });