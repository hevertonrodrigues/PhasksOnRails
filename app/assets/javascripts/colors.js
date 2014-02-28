var Phasks = Phasks || {};

Phasks.Colors = {
	init: function() {
		this.setColorPicker();
	},
	setColorPicker: function() {
		$('.color-picker').minicolors()
	}
};

$(function() { Phasks.Colors.init() });