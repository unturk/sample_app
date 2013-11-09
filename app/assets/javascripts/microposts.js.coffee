updateCountdown = -> 
  remaining = 140 - jQuery("#micropost_content").val().length
  final_text=""
  if remaining < 0
    final_text = "You can't post this!"
  else
    final_text = remaining + " characters remaining"
  #jQuery(".countdown").text remaining + " characters remaining"
  jQuery(".countdown").text final_text
  jQuery(".countdown").css "color", (if (140 >= remaining >= 21) then "gray")
  jQuery(".countdown").css "color", (if (21 > remaining >= 11) then "black")
  jQuery(".countdown").css "color", (if (11 > remaining)  then "red")

jQuery ->
  updateCountdown()
  $("#micropost_content").change updateCountdown
  $("#micropost_content").keyup updateCountdown