jQuery(document).ready(function(){

	jQuery('form').validate({
		rules:{
			name:{
				required:true,
			},
			parent_id:{
				required:true,
			},
			status:{
				required:true,
			}
		},
		messages:{
			name:{
				required:"Name is required"
			},
			parent_id:{
				required:"Parent ID is required"
			},
			status:{
				required:"Status is required"
			}
		},
		highlight:function(element){
			jQuery(element).addClass('e1');
		},
		unhighlight:function(element){
			jQuery(element).removeClass('e1');
		},
		invalidHandler:function(element){
			let validator = jQuery('.addform').validate();
			jQuery('#invalidCount').text("Total Invalid Fields : "+validator.numberOfInvalids());
		},
		submitHandler:function(form){
			let formName = jQuery('#form').attr('class');
			// alert(formName);
			if(formName=="addform"){
				jQuery('.addform').on('submit',function(event){
					event.preventDefault();
					// let invalidCount = jQuery('#invalidCount').attr('value');
				// alert(invalidCount);
				formdata = jQuery(this).serialize();
				jQuery.ajax({
					url : 'config/addCat.php',
					type : 'post',
					data : formdata,
					success : function(data){
						if(data.trim() == 'done'){
							// alert("done");
							swal('Added New Category',"",'success');
						}else{
							swal('Try Again',data,'error');
						}
					}
				});
			});
			}
			if(formName=="editform"){
				jQuery('.editform').on('submit',function(event){
					event.preventDefault();
					formdata = jQuery('form').serialize();
					jQuery.ajax({
						url : 'config/editCat.php',
						type : 'post',
						data : formdata,
						success : function(data){
							if(data == 'done'){
								swal('Category Edited',"",'success');
							}else{
								swal('Try Again',data,'error');
							}
						}
					});
				});
			}

		}

	});

});