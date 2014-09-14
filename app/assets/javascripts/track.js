var Track = {
	init: function (){
		// $('#new_event').on("ajax:sucess",this.appendEvent)
		// debugger
		// $('#new_event').on("ajax:failure",this.addFail)
		$('#new_track').on('submit',this.submitForm);
	},
	appendEvent: function (){
		console.log("yeay")
		$('.event-list').append('fdf')
	},
	addFail: function (){
	},
	submitForm: function (e) {
		e.preventDefault();
    var $form = $(this);
    $.ajax({
      url: $form.prop('action'),
      type: $form.prop('method'),
      data: $form.serialize()
    }).done(function(data) {
    	$('.event-list').append("<li> <a href='/events/" + data.id + "'>" + data.name + "</a></li>")
    }).error(function(xhr) {
    	console.log('server error');
    })
    return false;
	}

}

