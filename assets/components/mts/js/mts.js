function loadSettings() {
	$('#mts-settings-nav-tabs a').click(function(e) {
		e.preventDefault();
		$(this).tab('show');
	});
}

function loadContent(hash) {
    if (!hash.length) {
        hash = '#/dashboard';
    }
    $('.main-menu li').removeClass('active');
    $('[href="' + hash + '"]').parent().addClass('active');
	var alias = hash.slice(2) + '/';
	//$('#content').html('<p style="text-align:center;"><img src="http://res.cloudinary.com/mts/image/upload/v1364967974/mts_preloader_wq1suk.gif"></p>');
    $('#content').load('/app' + alias, function() {
    	if (hash == '/#/settings') {
    		loadSettings();
    	}
	});
}

$(document).ready(function() {
	$('.main-menu a').on('click', function(e) {
		e.preventDefault();
		loadContent($(this).attr('href'), function() {});
		return false;
	});
	window.addEventListener('popstate', function(e) {
		//loadContent(location.hash);
	});
	//loadContent(location.hash);

	$('#mts-project-select').on('change', function(e) {
		e.preventDefault();

		console.log($(this).val());
		return false;
	})
});