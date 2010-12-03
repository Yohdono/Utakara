$(document).ready(function(){
//	if ("#accepted option:selected".val() != 3)
		$("#timer").hide();
    $("#accepted").change(onSelectChange);
});

function onSelectChange(){
	var selected = $("#accepted option:selected");
	
	if (selected.val() == 3)
		$("#timer").show();
	else
		$("#timer").hide();
}
