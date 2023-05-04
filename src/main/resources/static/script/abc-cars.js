/**
 * For login Authentication
 */

//Disable Button

	(function(){
		'use strict';
		window.addEventListener('load', function(){
			//Getting forms for validation
			var forms = document.getElementsByClassName('needs-validation');
			//Looping over them to prevent submission
			var validation = Array.prototype.filter.call(forms, function(form){
				form.addEventListener('submit', function(event){
					if (form.checkValidity() === false){
						event.preventDefault();
						event.stopPropagation();
					}
					form.classList.add('was-validated');
				}, false);
			});
		}, false);
	})();
