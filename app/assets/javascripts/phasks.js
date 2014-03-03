var Phasks = {
	init: function() {
		this.setLibs();
	},
	setLibs: function() {
  		$("a.lightbox").fancybox();
	}
};

$(function() { Phasks.init() });