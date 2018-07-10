function datacheck() {
	var name = document.getElementById("courseName").value.length;
	if (name > 20) {
		name.value = "";
		alert("课程名不能超过20个字符");
		return false;
	}
	return true;
}