/**
 * member.js
 */
 var contextPath="/herb";
 
	$(function(){
		
		
		
		
		function validate_userid(id){
			var pattern = new RegExp(/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i);
			return pattern.test(id);
		}
		var passwordRule = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*-])[a-zA-Z0-9!@#$%^&*-]{8,20}$/;
	});
	
