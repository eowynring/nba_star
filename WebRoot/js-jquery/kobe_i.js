	$(document).ready(function(e) {
		$("#honor_div_p").hide();
		$("#opp_firend_img2").hide();
		$("#input").hide();
        $("#honor_div").click(function(){
				$("i").hide();
				$("#honor_div_p").show();
				$(".honor_div").css("background-color","rgba(102,102,102,0.6)");
			})
		$("#opp_firend").click(function(){
			$("#opp_firend_img1").hide();
			$("#opp_firend_img2").show("slow");
			$("#opp_firend_p").css("color","rgba(0,51,204,1)");
			})
		
		$("#div_heart").click(function(){
			$("#input").show();
			})
		
    });