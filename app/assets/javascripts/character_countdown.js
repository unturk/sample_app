function updateCountdown() {
  // 140 characters max
  var left = 140 - jQuery('#micropost_content').val().length;
  if(left == 1) {
    var charactersLeft = ' character left.';
    var color = "black";
  }
  else if(left < 0){
    var charactersLeft = ' extra character(s)!';
    var color = "red";
  }
  else if(left > 1 && left < 30){
  	var color = "black";
  	var charactersLeft = ' characters left.';
  }
  else{
    var charactersLeft = ' characters left.';
    var color = "gray";
  }
  jQuery('.countdown').text(Math.abs(left) + charactersLeft);
  
  jQuery(".countdown").css("color",color);
}

jQuery(document).ready(function($) {
  updateCountdown();
  $('#micropost_content').change(updateCountdown);
  $('#micropost_content').keyup(updateCountdown);
});