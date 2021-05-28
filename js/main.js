jQuery(document).ready(function(){
	// alert("ready");
	jQuery('.dropdown-submenu a.test').mouseenter(function(){
		jQuery(this).next('ul').toggle();
	});

	var id = 0;
	jQuery('a.test').click(function(event){
		event.preventDefault();
		// get Table
		id = jQuery(this).attr('data-id');
				// console.log("id "+id);
				let scat = "id="+id;
				jQuery('#viewCat').empty().load('config/selectCat.php?'+scat);
	});

});