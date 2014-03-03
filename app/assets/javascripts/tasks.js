var fileUploadErrors = {
  maxFileSize: 'File is too big',
  minFileSize: 'File is too small',
  acceptFileTypes: 'Filetype not allowed',
  maxNumberOfFiles: 'Max number of files exceeded',
  uploadedBytes: 'Uploaded bytes exceed file size',
  emptyResult: 'Empty file upload result'
};

var Phasks = Phasks || {};

Phasks.Tasks = {
	init: function() {
		this.setUpload();
		this.setDeleteFileItems();
	},
	setUpload: function() {
		$('#fileupload').fileupload({
			async: false
		});
	},
	setDeleteFileItems: function() {
		$('body')
			.on( 'ajax:beforeSend', '.box-files .item .btn-danger', function() {
				$(this).parent().fadeTo( 100, 0.3 );
			})
			.on( 'ajax:complete', '.box-files .item .btn-danger', function() {
				$(this).parent().fadeOut( 300 );
			});
	}
};

$(function() { Phasks.Tasks.init() });
