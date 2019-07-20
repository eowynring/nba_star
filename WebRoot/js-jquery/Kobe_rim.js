	$(document).ready(function(e) {
        $("#div_p").hide();
		$("#div2_p").hide();
		$("#fa-italic").click(function(){
			$("#div_p").show();
			})
		$("#fa-italic").mouseleave(function(){
			$("#div_p").hide();
			})
		$("#fa-italic2").click(function(){
			$("#div2_p").show();
			})
		$("#fa-italic2").mouseleave(function(){
			$("#div2_p").hide();
			})
    });