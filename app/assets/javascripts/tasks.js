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
				$(this).closest('.item').fadeTo( 100, 0.3 );
			})
			.on( 'ajax:complete', '.box-files .item .btn-danger', function() {
				$(this).closest('.item').fadeOut( 300 );
			});
			
		$('body')
			.on( 'ajax:beforeSend', '.template-download .btn-danger', function() {
				$(this).closest('tr').fadeTo( 100, 0.3 );
			})
			.on( 'ajax:complete', '.template-download .btn-danger', function() {
				$(this).closest('tr').fadeOut( 300 );
			});
	}
};

$(function() { Phasks.Tasks.init() });
