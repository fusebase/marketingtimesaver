var hash;

jQuery.fn.serializeObject = function(options) {

    options = jQuery.extend({}, options);

    var self = this,
        json = {},
        push_counters = {},
        patterns = {
            "validate": /^[a-zA-Z][a-zA-Z0-9_]*(?:\[(?:\d*|[a-zA-Z0-9_]+)\])*$/,
            "key":      /[a-zA-Z0-9_]+|(?=\[\])/g,
            "push":     /^$/,
            "fixed":    /^\d+$/,
            "named":    /^[a-zA-Z0-9_]+$/
        };

    this.build = function(base, key, value){
        base[key] = value;
        return base;
    };

    this.push_counter = function(key){
        if(push_counters[key] === undefined){
            push_counters[key] = 0;
        }
        return push_counters[key]++;
    };

    jQuery.each(jQuery(this).serializeArray(), function(){

        // skip invalid keys
        if(!patterns.validate.test(this.name)){
            return;
        }

        var k,
            keys = this.name.match(patterns.key),
            merge = this.value,
            reverse_key = this.name;

        while((k = keys.pop()) !== undefined){

            // adjust reverse_key
            reverse_key = reverse_key.replace(new RegExp("\\[" + k + "\\]$"), '');

            // push
            if(k.match(patterns.push)){
                merge = self.build([], self.push_counter(reverse_key), merge);
            }

            // fixed
            else if(k.match(patterns.fixed)){
                merge = self.build([], k, merge);
            }

            // named
            else if(k.match(patterns.named)){
                merge = self.build({}, k, merge);
            }
        }

        json = jQuery.extend(true, json, merge);
    });

    return json;
}
	
function initPage() {
	$('input').tooltip();

	$('form button[type="submit"]').on('click', function(e) {
		e.preventDefault();
		var button = $(this);
		var form = button.parent().parent().parent();
		var action = form.attr('action');
		var data = form.serializeObject();
		button.addClass('disabled');
		button.html('Saving...');
		$.post('/api/v1/' + action, data, function() {
			button.removeClass('disabled');
			button.html('Save');
		});
		return false;
	});
}

function loadContent(hash) {
    if (!hash.length) {
        hash = '#/dashboard';
    }
    $('.main-menu li').removeClass('active');
    $('[href="' + hash + '"]').parent().addClass('active');
	var alias = hash.slice(2) + '/';
	//$('#content').html('<p style="text-align:center;">
	//<img src="http://res.cloudinary.com/mts/image/upload/v1364967974/mts_preloader_wq1suk.gif"></p>');
    $('#content').load('/app' + alias, function() {
    	initPage();
	});
}

$(document).ready(function() {
	$('.main-menu a').on('click', function(e) {
		e.preventDefault();
		loadContent($(this).attr('href'), function() {});
		hash = $(this).attr('href');
		return false;
	});
	window.addEventListener('popstate', function(e) {
		//loadContent(location.hash);
	});
	//loadContent(location.hash);

	$('#mts-project-select').on('change', function(e) {
		e.preventDefault();
		$.post('/api/v1/switch-project', { project: $(this).val() }, function() {
			loadContent(hash, function() {});
		});
		return false;
	})

	
});