$(document).ready(function() {

  $("#new-caballo-link").on("click", function(event){
    event.preventDefault();
    var link = $(this).attr('href');

    $.ajax({
      url: link,
      type: "GET",
      success: function(response){
        $("#new-caballo-link").hide();
        $(".container").append(response);
      }
    });
  });

  $('.container').on("submit", 'form', function(event){
    event.preventDefault();

    var horseData = $(this).serialize();
    var link = $(this).attr('action');

    $.ajax({
      url: link,
      type: "POST",
      data: horseData,
      success: function(response){
        $(".container").append(response);
        // $(".container").append(caballo.name)
      }


    });
  });
});
