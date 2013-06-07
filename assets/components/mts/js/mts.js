var mts = new Object();
var hash;
var ckeditor;

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

function loadFunnel() {
    $('.mts-capture-layouts [data-key="' + mts.funnel.capture[0].layout + '"]').css('background-color', '#34ADEA');
    $('.mts-capture-themes [data-key="' + mts.funnel.capture[0].theme + '"]').css('background-color', '#34ADEA');
    $('#mts-capture-page-designer').html(mts.funnel.capture[0].content);
    $('#mts-capture-page-designer').addClass(mts.funnel.capture[0].layout);
    $('#mts-capture-page-designer').addClass(mts.funnel.capture[0].theme);
    
    $('.mts-value-layouts [data-key="' + mts.funnel.value.layout + '"]').css('background-color', '#34ADEA');
    $('.mts-value-themes [data-key="' + mts.funnel.value.theme + '"]').css('background-color', '#34ADEA');
    $('#mts-value-page-designer').html(mts.funnel.value.content);
    $('#mts-value-page-designer').addClass(mts.funnel.value.layout);
    $('#mts-value-page-designer').addClass(mts.funnel.value.theme);
}

/* ### capture page copy editor ### */
function initCaptureCopyPage() {

    /* toggle display */
    function toggleComponentDisplay(component_class, display) {
        var designer = $('.mts-page-designer');
        var component = $('.' + component_class, designer);
        if (display == 'Yes') {
            var component_content = component.html().replace(/\s/g, '');
            if (component_content == '' && component.hasClass('mts-copy')) {
                component.html('Click to edit');
            }
            component.show();
            if (component_class.indexOf('video') != -1) {
                if (page_zen_video_id || page_video_embed) {
                    $('.mts-video-delete').show();
                }
            }
            if (component_class.indexOf('bullets') != -1) {
                $('.mts-wizard-add-bullet').show();
            }
        }
        if (display == 'No') {
            component.hide();
            if (component_class.indexOf('video') != -1) {
                $('.mts-video-delete').hide();
            }
            if (component_class.indexOf('bullets') != -1) {
                $('.mts-wizard-add-bullet').hide();
            }
        }
    }

    /* modify display setting toggles */
    $('.mts-wizard-setting-group .btn-group button').on('click', function() {
        var display = $(this).html();
        var component_class = $(this).parent().data('display');
        toggleComponentDisplay(component_class, display);
    });

    /* display the button library */
    $('.mts-optin-submit button').on('click', function(e) {
        e.preventDefault();
        $('.mts-wizard-option').hide();
        $('#mts-wizard-option-capture-button').show();
        return false;
    });

    /* update button image */
    $('#mts-wizard-option-capture-button').on('click', 'li a', function(e) {
        e.preventDefault();
        $('.mts-optin-submit button img').attr('src', $('img', $(this)).attr('src'));
        return false;
    });

    /* open the option editor */
  $('.mts-page-preview').on('click', '.mts-wizard-edit-option', function(e) {
    e.preventDefault();
    $('html, body').animate({ scrollTop: 0 }, 'fast');
    $('.mts-wizard-option').hide();
    $('#mts-wizard-option-' + $(this).data('target')).show();
    return false;
  });
  
  /* close the option editor */
  $('.mts-wizard-option .cancel').on('click', function() {
    $(this).parent().hide();
    $('#mts-wizard-option-capture-settings').show();
  });
}

/* ### init loaded page ### */
function initPage() {
	$('input').tooltip();
    $('.mts-tooltip').tooltip();

    if (hash == '/#/app/funnels/capture-copy/') {
        initCaptureCopyPage();
    }

    $('.mts-edit-funnel').on('click', function(e) {
        e.preventDefault();
        hash = $(this).attr('href');
        var id = $(this).data('id');
        $.get('/api/service/load-funnel/' + id, function(data) {
            mts.funnel = data;
            loadContent(hash);
        }, 'json');
        return false;
    });

    $('.mts-delete-resource').on('click', function(e) {
        e.preventDefault();
        var confirmed = confirm("Are you sure?");
        if (!confirmed) {
            return false;
        }
        var id = $(this).data('id');
        $.ajax({
            type: 'DELETE',
            url: '/api/resource/' + id,
        }).done(function(data) {
            loadContent(hash, function() {});
        });
        return false;
    });

    $('.mts-action').on('click', function(e) {
        e.preventDefault();
        hash = $(this).attr('href');
        loadContent(hash, function() {});
        return false;
    });

    $('.mts-thumbnail-grid .thumbnail').on('click', function(e) {
        var layout = $(this).data('key');
        $('.mts-thumbnail-grid .thumbnail').css('background-color', '#fff');
        $('[data-key="' + layout + '"]').css('background-color', '#2f9cc7');
    });

    $('.mts-thumbnail-grid .thumbnail').on('click', function(e) {
        //funnel.capture.layout = $(this).data('key');
        //console.log(funnel.capture.layout);
    })

	$('form.mts-form button[type="submit"]').on('click', function(e) {
		e.preventDefault();
		var button = $(this);
		var form = button.parent().parent().parent();
		var action = form.attr('action');
		var data = form.serializeObject();
		button.addClass('disabled');
		button.html('Saving...');
		$.post('/api/' + action, data, function() {
			button.removeClass('disabled');
			button.html('Save');
		});
		return false;
	});
}

/* ### load app content ### */
var loadContent = function(hash, callback) {
    if (!hash.length) {
        hash = '/#/app/dashboard/';
    }
    var alias = hash.slice(2);
    $('#content').html('<p style="text-align:center;"><img src="http://res.cloudinary.com/mts/image/upload/v1364967974/mts_preloader_wq1suk.gif"></p>');
    $('#content').load(alias, function() {

        // funnel display
        if (mts.funnel) {
            loadFunnel();
        }

        initPage();

        console.log(mts);
    });
    if(typeof callback == "function"){
        callback.call(this, hash);
    }
};

/* ### init app ### */
$(document).ready(function() {
	$('.main-menu a').on('click', function(e) {
		e.preventDefault();
        hash = $(this).attr('href');
        $('.main-menu li').removeClass('active');
        $('[href="' + hash + '"]').parent().addClass('active');
		loadContent(hash, function() {});
		return false;
	});
	window.addEventListener('popstate', function(e) {
		//loadContent(location.hash);
	});
	//loadContent(location.hash);

	$('#mts-project-select').on('change', function(e) {
		e.preventDefault();
		$.post('/api/service/switch-project', { project: $(this).val() }, function() {
			loadContent(hash, function() {});
		});
		return false;
	})
	
});

