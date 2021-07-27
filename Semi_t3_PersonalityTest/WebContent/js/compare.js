function check() {
	let nameInput = document.com.name; 
	let nno = "`-=~!@#$%^&*()_+[]{}\|,./<>?";

	if(isEmpty(nameInput)|| lessThan(nameInput, 1)) {
		alert('닉네임을 입력해주세요');
		
		nInput.value = "";
		nInput.focus();

		return false;
		
	} for(let i = 0; i < input.value.lenth; i++) {
		if(nno.indexOf(input.value[i]) == -1) {
		alert('특수문자는 사용이 안됩니다');
			return false;
	}
			
		}
			return true;
		}
		