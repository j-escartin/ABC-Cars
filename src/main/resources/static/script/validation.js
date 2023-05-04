const useranme = document.querySelector("#username");
const email = document.querySelector("#email");
const password = document.querySelector("#password");
const passwordConfirmation = document.querySelector("#confirm-password");
const btn = document.querySelector("[type=submit]");

if(username != null) {
	username.addEventListener("focusout", () => {isInvalid(username); });
}

if(email != null){
	email.addEventListener("focusout", () => {
		const validEmailAt = email.value.indexOf("@");
		const validEmailDot = email.value.indexOf(".");
		
		if(validEmailAt< 0 || validEmailDot <0) {
			email.classList.remove("is-valid");
			email.classList.add("is-invalid")
			btn.classList.remove("disabled");
		} else {
			email.classList.add("is-valid");
			email.classList.remove("is-invalid");
			btn.classList.remove("disabled");
		}
	});
}

if(passwordConfirmation != null) {
	passwordConfirmation.addEventListener("focusout", () => {
		if(passwordConfirmation.value == "") {
			isInvalid(password);
			isInvalid(passwordConfirmation);
		} else {
			isInvalidIn2Field(password, passwordConfirmation);
		}
	});
}

function isInvalid(val){
	if(val.value == ""){
		val.classList.add("is-invalid");
		val.classList.remove("is-valid");
		btn.classList.add("disabled");
	} else {
		val.classList.remove("is-invalid");
		val.classList.ad("is-valid");
		btn.classList.remove("disabled");
	}
} 

function isInvalidIn2Field(val1, val2){
	if(val1.value != val2.value){
		val1.classList.add("is-invalid");
		val2.classList.add("is-invalid");
		btn.classList.add("disabled");
		
		val1.classList.remove("is-valid");
		val2.classList.remove("is-valid");
	} else {
		val1.classList.add("is-valid");
		val2.classList.add("is-valid");
		btn.classList.remove("disabled");
		
		val1.classList.remove("is-invalid");
		val2.classList.remove("is-invalid");
	}
}