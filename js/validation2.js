jQuery(document).ready(function(){

	jQuery('.editform').validate({
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
				required:"Edit Name is required"
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
			let validator = jQuery('.editform').validate();
			jQuery('#invalidCount').text("Total Invalid Fields : "+validator.numberOfInvalids());
		},
		submitHandler:function(form){
			jQuery('.editform').on('submit',function(event){
				event.preventDefault();
				formdata = jQuery(this).serialize();
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

	});

});