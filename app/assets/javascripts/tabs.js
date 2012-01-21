function changeTab(e) {
  e.preventDefault();
  $("#tabs li a.active").removeClass("active");
  $(this).addClass("active");
  showInfo($(this).attr("href"));
}

function showInfo(activeDiv){
  $("#meaty-middle div").hide();
  $(activeDiv).show();
}


