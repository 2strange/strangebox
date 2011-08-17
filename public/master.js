(function($) {
  $("form.delete-form").submit(function() {
    return confirm("Are you sure you want to delete this gem?");
  });
  
	
	$('h2.trigger').click(function(){
		$(this).next('.extra_info.hidden').hide().removeClass('hidden');
		$(this).next('.extra_info').slideToggle();
		$(this).toggleClass('aktiv');
	});

})(jQuery);
