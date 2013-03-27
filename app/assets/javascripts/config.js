$(document).ready(function() {
	$(".view-comments").on('click', function() {
		var url = $(this).data('url');

		window.location.href = url;
	});
});